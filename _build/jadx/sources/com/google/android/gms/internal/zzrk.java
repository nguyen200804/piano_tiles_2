package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.zzrj;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public interface zzrk extends IInterface {

    public static abstract class zza extends Binder implements zzrk {

        /* renamed from: com.google.android.gms.internal.zzrk$zza$zza, reason: collision with other inner class name */
        private static class C0196zza implements zzrk {
            private IBinder zzahn;

            C0196zza(IBinder iBinder) {
                this.zzahn = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzahn;
            }

            @Override // com.google.android.gms.internal.zzrk
            public void zza(zzrj zzrjVar) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.common.internal.service.ICommonService");
                    obtain.writeStrongBinder(zzrjVar != null ? zzrjVar.asBinder() : null);
                    this.zzahn.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public static zzrk zzea(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.service.ICommonService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzrk)) ? new C0196zza(iBinder) : (zzrk) queryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.common.internal.service.ICommonService");
                    zza(zzrj.zza.zzdz(parcel.readStrongBinder()));
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.common.internal.service.ICommonService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(zzrj zzrjVar) throws RemoteException;
}
