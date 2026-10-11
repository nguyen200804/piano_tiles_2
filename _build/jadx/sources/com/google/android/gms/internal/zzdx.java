package com.google.android.gms.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.internal.zzdr;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public interface zzdx extends IInterface {

    public static abstract class zza extends Binder implements zzdx {

        /* renamed from: com.google.android.gms.internal.zzdx$zza$zza, reason: collision with other inner class name */
        private static class C0160zza implements zzdx {
            private IBinder zzahn;

            C0160zza(IBinder iBinder) {
                this.zzahn = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzahn;
            }

            @Override // com.google.android.gms.internal.zzdx
            public void destroy() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
                    this.zzahn.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzdx
            public String getAdvertiser() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
                    this.zzahn.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzdx
            public String getBody() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
                    this.zzahn.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzdx
            public String getCallToAction() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
                    this.zzahn.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzdx
            public Bundle getExtras() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
                    this.zzahn.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzdx
            public String getHeadline() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
                    this.zzahn.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzdx
            public List getImages() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
                    this.zzahn.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readArrayList(getClass().getClassLoader());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzdx
            public com.google.android.gms.dynamic.zzd zzkv() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
                    this.zzahn.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return zzd.zza.zzfc(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzdx
            public zzdr zzky() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
                    this.zzahn.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    return zzdr.zza.zzy(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.ads.internal.formats.client.INativeContentAd");
        }

        public static zzdx zzac(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzdx)) ? new C0160zza(iBinder) : (zzdx) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 2:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
                    com.google.android.gms.dynamic.zzd zzkv = zzkv();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(zzkv != null ? zzkv.asBinder() : null);
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
                    String headline = getHeadline();
                    parcel2.writeNoException();
                    parcel2.writeString(headline);
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
                    List images = getImages();
                    parcel2.writeNoException();
                    parcel2.writeList(images);
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
                    String body = getBody();
                    parcel2.writeNoException();
                    parcel2.writeString(body);
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
                    zzdr zzky = zzky();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(zzky != null ? zzky.asBinder() : null);
                    return true;
                case 7:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
                    String callToAction = getCallToAction();
                    parcel2.writeNoException();
                    parcel2.writeString(callToAction);
                    return true;
                case 8:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
                    String advertiser = getAdvertiser();
                    parcel2.writeNoException();
                    parcel2.writeString(advertiser);
                    return true;
                case 9:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
                    Bundle extras = getExtras();
                    parcel2.writeNoException();
                    if (extras != null) {
                        parcel2.writeInt(1);
                        extras.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 10:
                    parcel.enforceInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
                    destroy();
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void destroy() throws RemoteException;

    String getAdvertiser() throws RemoteException;

    String getBody() throws RemoteException;

    String getCallToAction() throws RemoteException;

    Bundle getExtras() throws RemoteException;

    String getHeadline() throws RemoteException;

    List getImages() throws RemoteException;

    com.google.android.gms.dynamic.zzd zzkv() throws RemoteException;

    zzdr zzky() throws RemoteException;
}
