package com.facebook.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import com.mopub.common.GpsHelper;
import java.lang.reflect.Method;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: AttributionIdentifiers.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private static final String f3188a = c.class.getCanonicalName();
    private static c g;

    /* renamed from: b, reason: collision with root package name */
    private String f3189b;
    private String c;
    private String d;
    private boolean e;
    private long f;

    private static c b(Context context) {
        c c = c(context);
        if (c == null) {
            c d = d(context);
            if (d == null) {
                return new c();
            }
            return d;
        }
        return c;
    }

    private static c c(Context context) {
        Object a2;
        try {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                throw new com.facebook.i("getAndroidId cannot be called on the main thread.");
            }
            Method a3 = aa.a("com.google.android.gms.common.GooglePlayServicesUtil", "isGooglePlayServicesAvailable", (Class<?>[]) new Class[]{Context.class});
            if (a3 == null) {
                return null;
            }
            Object a4 = aa.a((Object) null, a3, context);
            if (!(a4 instanceof Integer) || ((Integer) a4).intValue() != 0) {
                return null;
            }
            Method a5 = aa.a("com.google.android.gms.ads.identifier.AdvertisingIdClient", "getAdvertisingIdInfo", (Class<?>[]) new Class[]{Context.class});
            if (a5 != null && (a2 = aa.a((Object) null, a5, context)) != null) {
                Method a6 = aa.a(a2.getClass(), "getId", (Class<?>[]) new Class[0]);
                Method a7 = aa.a(a2.getClass(), GpsHelper.IS_LIMIT_AD_TRACKING_ENABLED_KEY, (Class<?>[]) new Class[0]);
                if (a6 == null || a7 == null) {
                    return null;
                }
                c cVar = new c();
                cVar.c = (String) aa.a(a2, a6, new Object[0]);
                cVar.e = ((Boolean) aa.a(a2, a7, new Object[0])).booleanValue();
                return cVar;
            }
            return null;
        } catch (Exception e) {
            aa.a("android_id", e);
            return null;
        }
    }

    private static c d(Context context) {
        b bVar = new b();
        Intent intent = new Intent("com.google.android.gms.ads.identifier.service.STARS");
        intent.setPackage("com.google.android.gms");
        try {
            if (context.bindService(intent, bVar, 1)) {
                a aVar = new a(bVar.a());
                c cVar = new c();
                cVar.c = aVar.a();
                cVar.e = aVar.b();
                return cVar;
            }
        } catch (Exception e) {
            aa.a("android_id", e);
        } finally {
            context.unbindService(bVar);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x00ed  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.facebook.internal.c a(android.content.Context r8) {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.c.a(android.content.Context):com.facebook.internal.c");
    }

    private static c a(c cVar) {
        cVar.f = System.currentTimeMillis();
        g = cVar;
        return cVar;
    }

    public String a() {
        return this.f3189b;
    }

    public String b() {
        return this.c;
    }

    public String c() {
        return this.d;
    }

    public boolean d() {
        return this.e;
    }

    @Nullable
    private static String e(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            return packageManager.getInstallerPackageName(context.getPackageName());
        }
        return null;
    }

    /* compiled from: AttributionIdentifiers.java */
    private static final class b implements ServiceConnection {

        /* renamed from: a, reason: collision with root package name */
        private AtomicBoolean f3191a;

        /* renamed from: b, reason: collision with root package name */
        private final BlockingQueue<IBinder> f3192b;

        private b() {
            this.f3191a = new AtomicBoolean(false);
            this.f3192b = new LinkedBlockingDeque();
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName name, IBinder service) {
            try {
                this.f3192b.put(service);
            } catch (InterruptedException e) {
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName name) {
        }

        public IBinder a() throws InterruptedException {
            if (this.f3191a.compareAndSet(true, true)) {
                throw new IllegalStateException("Binder already consumed");
            }
            return this.f3192b.take();
        }
    }

    /* compiled from: AttributionIdentifiers.java */
    private static final class a implements IInterface {

        /* renamed from: a, reason: collision with root package name */
        private IBinder f3190a;

        a(IBinder iBinder) {
            this.f3190a = iBinder;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.f3190a;
        }

        public String a() throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.f3190a.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readString();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        public boolean b() throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                obtain.writeInt(1);
                this.f3190a.transact(2, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readInt() != 0;
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }
    }
}
