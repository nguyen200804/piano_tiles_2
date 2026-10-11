package com.mnt.a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class e implements IInterface {

    /* renamed from: a, reason: collision with root package name */
    private IBinder f3914a;

    public e(IBinder iBinder) {
        this.f3914a = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f3914a;
    }

    public final String a() {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(com.mnt.impl.e.ab);
            this.f3914a.transact(1, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readString();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    public final boolean b() {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(com.mnt.impl.e.ac);
            obtain.writeInt(1);
            this.f3914a.transact(2, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readInt() != 0;
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}
