package com.unity3d.ads.device;

import android.annotation.TargetApi;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.unity3d.ads.log.DeviceLog;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

@TargetApi(9)
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AdvertisingId {
    private static final String ADVERTISING_ID_SERVICE_NAME = "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService";
    private static AdvertisingId instance = null;
    private String advertisingIdentifier = null;
    private boolean limitedAdvertisingTracking = false;

    private static AdvertisingId getInstance() {
        if (instance == null) {
            instance = new AdvertisingId();
        }
        return instance;
    }

    public static void init(Context context) {
        getInstance().fetchAdvertisingId(context);
    }

    public static String getAdvertisingTrackingId() {
        return getInstance().advertisingIdentifier;
    }

    public static boolean getLimitedAdTracking() {
        return getInstance().limitedAdvertisingTracking;
    }

    private void fetchAdvertisingId(Context context) {
        GoogleAdvertisingServiceConnection googleAdvertisingServiceConnection = new GoogleAdvertisingServiceConnection();
        Intent intent = new Intent("com.google.android.gms.ads.identifier.service.STARS");
        intent.setPackage("com.google.android.gms");
        try {
        } catch (Exception e) {
            DeviceLog.exception("Couldn't get advertising info", e);
        } finally {
            context.unbindService(googleAdvertisingServiceConnection);
        }
        if (context.bindService(intent, googleAdvertisingServiceConnection, 1)) {
            GoogleAdvertisingInfo create = GoogleAdvertisingInfo.GoogleAdvertisingInfoBinder.create(googleAdvertisingServiceConnection.getBinder());
            this.advertisingIdentifier = create.getId();
            this.limitedAdvertisingTracking = create.getEnabled(true);
        }
    }

    private interface GoogleAdvertisingInfo extends IInterface {
        boolean getEnabled(boolean z) throws RemoteException;

        String getId() throws RemoteException;

        public static abstract class GoogleAdvertisingInfoBinder extends Binder implements GoogleAdvertisingInfo {
            public static GoogleAdvertisingInfo create(IBinder binder) {
                if (binder == null) {
                    return null;
                }
                IInterface queryLocalInterface = binder.queryLocalInterface(AdvertisingId.ADVERTISING_ID_SERVICE_NAME);
                if (queryLocalInterface != null && (queryLocalInterface instanceof GoogleAdvertisingInfo)) {
                    return (GoogleAdvertisingInfo) queryLocalInterface;
                }
                return new GoogleAdvertisingInfoImplementation(binder);
            }

            @Override // android.os.Binder
            public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
                switch (code) {
                    case 1:
                        data.enforceInterface(AdvertisingId.ADVERTISING_ID_SERVICE_NAME);
                        String id = getId();
                        reply.writeNoException();
                        reply.writeString(id);
                        return true;
                    case 2:
                        data.enforceInterface(AdvertisingId.ADVERTISING_ID_SERVICE_NAME);
                        boolean enabled = getEnabled(data.readInt() != 0);
                        reply.writeNoException();
                        reply.writeInt(enabled ? 1 : 0);
                        return true;
                    default:
                        return super.onTransact(code, data, reply, flags);
                }
            }

            private static class GoogleAdvertisingInfoImplementation implements GoogleAdvertisingInfo {
                private final IBinder _binder;

                GoogleAdvertisingInfoImplementation(IBinder binder) {
                    this._binder = binder;
                }

                @Override // android.os.IInterface
                public IBinder asBinder() {
                    return this._binder;
                }

                @Override // com.unity3d.ads.device.AdvertisingId.GoogleAdvertisingInfo
                public String getId() throws RemoteException {
                    Parcel obtain = Parcel.obtain();
                    Parcel obtain2 = Parcel.obtain();
                    try {
                        obtain.writeInterfaceToken(AdvertisingId.ADVERTISING_ID_SERVICE_NAME);
                        this._binder.transact(1, obtain, obtain2, 0);
                        obtain2.readException();
                        return obtain2.readString();
                    } finally {
                        obtain2.recycle();
                        obtain.recycle();
                    }
                }

                @Override // com.unity3d.ads.device.AdvertisingId.GoogleAdvertisingInfo
                public boolean getEnabled(boolean paramBoolean) throws RemoteException {
                    Parcel obtain = Parcel.obtain();
                    Parcel obtain2 = Parcel.obtain();
                    try {
                        obtain.writeInterfaceToken(AdvertisingId.ADVERTISING_ID_SERVICE_NAME);
                        obtain.writeInt(paramBoolean ? 1 : 0);
                        this._binder.transact(2, obtain, obtain2, 0);
                        obtain2.readException();
                        return obtain2.readInt() != 0;
                    } finally {
                        obtain2.recycle();
                        obtain.recycle();
                    }
                }
            }
        }
    }

    private class GoogleAdvertisingServiceConnection implements ServiceConnection {
        private final BlockingQueue<IBinder> _binderQueue;
        boolean _consumed;

        private GoogleAdvertisingServiceConnection() {
            this._consumed = false;
            this._binderQueue = new LinkedBlockingQueue();
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName name, IBinder service) {
            try {
                this._binderQueue.put(service);
            } catch (InterruptedException e) {
                DeviceLog.debug("Couldn't put service to binder que");
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName name) {
        }

        public IBinder getBinder() throws InterruptedException {
            if (this._consumed) {
                throw new IllegalStateException();
            }
            this._consumed = true;
            return this._binderQueue.take();
        }
    }
}
