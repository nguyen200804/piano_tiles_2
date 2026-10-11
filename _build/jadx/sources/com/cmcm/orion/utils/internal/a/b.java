package com.cmcm.orion.utils.internal.a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: AdvertisingIdInterface.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class b implements IInterface {

    /* renamed from: a, reason: collision with root package name */
    private IBinder f1108a;

    public final String a() throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
            this.f1108a.transact(1, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readString();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    public final boolean b() throws RemoteException {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
            obtain.writeInt(0);
            this.f1108a.transact(2, obtain, obtain2, 0);
            obtain2.readException();
            r0 = obtain2.readInt() != 0;
        } catch (SecurityException e) {
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
        return r0;
    }

    b(IBinder iBinder) {
        this.f1108a = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f1108a;
    }
}
