package com.google.android.gms.common.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.zzd;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public interface zzs extends IInterface {

    public static abstract class zza extends Binder implements zzs {

        /* renamed from: com.google.android.gms.common.internal.zzs$zza$zza, reason: collision with other inner class name */
        private static class C0133zza implements zzs {
            private IBinder zzahn;

            C0133zza(IBinder iBinder) {
                this.zzahn = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzahn;
            }

            @Override // com.google.android.gms.common.internal.zzs
            public com.google.android.gms.dynamic.zzd zzank() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.ICertData");
                    this.zzahn.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return zzd.zza.zzfc(obtain2.readStrongBinder());
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.google.android.gms.common.internal.zzs
            public int zzanl() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.ICertData");
                    this.zzahn.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.common.internal.ICertData");
        }

        public static zzs zzdr(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ICertData");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzs)) ? new C0133zza(iBinder) : (zzs) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.common.internal.ICertData");
                    com.google.android.gms.dynamic.zzd zzank = zzank();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(zzank != null ? zzank.asBinder() : null);
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.common.internal.ICertData");
                    int zzanl = zzanl();
                    parcel2.writeNoException();
                    parcel2.writeInt(zzanl);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.common.internal.ICertData");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    com.google.android.gms.dynamic.zzd zzank() throws RemoteException;

    int zzanl() throws RemoteException;
}
