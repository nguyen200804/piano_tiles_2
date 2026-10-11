package com.mopub.nativesdk.d;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* compiled from: AdvertisingIdClient.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class d implements IInterface {

    /* renamed from: a, reason: collision with root package name */
    private IBinder f4692a;

    public d(IBinder iBinder) {
        this.f4692a = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f4692a;
    }

    public final String a() {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
            this.f4692a.transact(1, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readString();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    public final boolean a(boolean z) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
            obtain.writeInt(1);
            this.f4692a.transact(2, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readInt() != 0;
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}
