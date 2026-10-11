package android.support.v4.app;

import android.app.Notification;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public interface INotificationSideChannel extends IInterface {
    void cancel(String str, int i, String str2) throws RemoteException;

    void cancelAll(String str) throws RemoteException;

    void notify(String str, int i, String str2, Notification notification) throws RemoteException;

    public static abstract class Stub extends Binder implements INotificationSideChannel {
        private static final String DESCRIPTOR = "android.support.v4.app.INotificationSideChannel";
        static final int TRANSACTION_cancel = 2;
        static final int TRANSACTION_cancelAll = 3;
        static final int TRANSACTION_notify = 1;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static INotificationSideChannel asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface queryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof INotificationSideChannel)) {
                return (INotificationSideChannel) queryLocalInterface;
            }
            return new Proxy(obj);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            Notification notification;
            switch (code) {
                case 1:
                    data.enforceInterface(DESCRIPTOR);
                    String readString = data.readString();
                    int readInt = data.readInt();
                    String readString2 = data.readString();
                    if (data.readInt() != 0) {
                        notification = (Notification) Notification.CREATOR.createFromParcel(data);
                    } else {
                        notification = null;
                    }
                    notify(readString, readInt, readString2, notification);
                    return true;
                case 2:
                    data.enforceInterface(DESCRIPTOR);
                    cancel(data.readString(), data.readInt(), data.readString());
                    return true;
                case 3:
                    data.enforceInterface(DESCRIPTOR);
                    cancelAll(data.readString());
                    return true;
                case 1598968902:
                    reply.writeString(DESCRIPTOR);
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }

        private static class Proxy implements INotificationSideChannel {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // android.support.v4.app.INotificationSideChannel
            public void notify(String packageName, int id, String tag, Notification notification) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(packageName);
                    obtain.writeInt(id);
                    obtain.writeString(tag);
                    if (notification != null) {
                        obtain.writeInt(1);
                        notification.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.app.INotificationSideChannel
            public void cancel(String packageName, int id, String tag) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(packageName);
                    obtain.writeInt(id);
                    obtain.writeString(tag);
                    this.mRemote.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.app.INotificationSideChannel
            public void cancelAll(String packageName) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(packageName);
                    this.mRemote.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }
    }
}
