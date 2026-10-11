package com.duapps.ad.base;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

/* compiled from: GoogleAdvertisingIdClient.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class e {

    /* compiled from: GoogleAdvertisingIdClient.java */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        private final String f2030a;

        /* renamed from: b, reason: collision with root package name */
        private final boolean f2031b;

        a(String str, boolean z) {
            this.f2030a = str;
            this.f2031b = z;
        }

        public String a() {
            return this.f2030a;
        }
    }

    public static a a(Context context) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("Cannot be called from the main thread");
        }
        b bVar = new b();
        Intent intent = new Intent("com.google.android.gms.ads.identifier.service.STARS");
        intent.setPackage("com.google.android.gms");
        if (context.bindService(intent, bVar, 1)) {
            try {
                c cVar = new c(bVar.a());
                return new a(cVar.a(), cVar.a(true));
            } finally {
                context.unbindService(bVar);
            }
        }
        return null;
    }

    /* compiled from: GoogleAdvertisingIdClient.java */
    private static class b implements ServiceConnection {

        /* renamed from: a, reason: collision with root package name */
        boolean f2032a = false;

        /* renamed from: b, reason: collision with root package name */
        private final BlockingQueue<IBinder> f2033b = new LinkedBlockingQueue();

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                this.f2033b.put(iBinder);
            } catch (InterruptedException e) {
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }

        public IBinder a() {
            if (this.f2032a) {
                throw new IllegalStateException("Binder already consumed");
            }
            this.f2032a = true;
            return this.f2033b.take();
        }
    }

    /* compiled from: GoogleAdvertisingIdClient.java */
    private static final class c implements IInterface {

        /* renamed from: a, reason: collision with root package name */
        private IBinder f2034a;

        public c(IBinder iBinder) {
            this.f2034a = iBinder;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.f2034a;
        }

        public String a() {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.f2034a.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readString();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        public boolean a(boolean z) {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                obtain.writeInt(z ? 1 : 0);
                this.f2034a.transact(2, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readInt() != 0;
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }
    }
}
