package com.facebook.ads.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.text.TextUtils;
import com.facebook.ads.internal.util.g;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.mopub.common.GpsHelper;
import java.lang.reflect.Method;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class g {

    /* renamed from: a, reason: collision with root package name */
    public static final String f2725a = g.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private final String f2726b;
    private final boolean c;
    private final c d;

    private static final class a implements IInterface {

        /* renamed from: a, reason: collision with root package name */
        private IBinder f2727a;

        a(IBinder iBinder) {
            this.f2727a = iBinder;
        }

        public String a() {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.f2727a.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readString();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.f2727a;
        }

        public boolean b() {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                obtain.writeInt(1);
                this.f2727a.transact(2, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readInt() != 0;
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }
    }

    private static final class b implements ServiceConnection {

        /* renamed from: a, reason: collision with root package name */
        private AtomicBoolean f2728a;

        /* renamed from: b, reason: collision with root package name */
        private final BlockingQueue<IBinder> f2729b;

        private b() {
            this.f2728a = new AtomicBoolean(false);
            this.f2729b = new LinkedBlockingDeque();
        }

        public IBinder a() {
            if (this.f2728a.compareAndSet(true, true)) {
                throw new IllegalStateException("Binder already consumed");
            }
            return this.f2729b.take();
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                this.f2729b.put(iBinder);
            } catch (InterruptedException e) {
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    public enum c {
        SHARED_PREFS,
        FB4A,
        DIRECT,
        REFLECTION,
        SERVICE
    }

    private g(String str, boolean z, c cVar) {
        this.f2726b = str;
        this.c = z;
        this.d = cVar;
    }

    private static g a(Context context) {
        try {
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(context);
            if (advertisingIdInfo != null) {
                return new g(advertisingIdInfo.getId(), advertisingIdInfo.isLimitAdTrackingEnabled(), c.DIRECT);
            }
        } catch (Throwable th) {
        }
        return null;
    }

    public static g a(Context context, g.a aVar) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("Cannot get advertising info on main thread.");
        }
        if (aVar != null && !TextUtils.isEmpty(aVar.f2882b)) {
            return new g(aVar.f2882b, aVar.c, c.FB4A);
        }
        g a2 = a(context);
        if (a2 == null || TextUtils.isEmpty(a2.a())) {
            a2 = b(context);
        }
        return (a2 == null || TextUtils.isEmpty(a2.a())) ? c(context) : a2;
    }

    private static g b(Context context) {
        Object a2;
        Method a3 = com.facebook.ads.internal.util.g.a("com.google.android.gms.common.GooglePlayServicesUtil", "isGooglePlayServicesAvailable", (Class<?>[]) new Class[]{Context.class});
        if (a3 == null) {
            return null;
        }
        Object a4 = com.facebook.ads.internal.util.g.a((Object) null, a3, context);
        if (a4 == null || ((Integer) a4).intValue() != 0) {
            return null;
        }
        Method a5 = com.facebook.ads.internal.util.g.a("com.google.android.gms.ads.identifier.AdvertisingIdClient", "getAdvertisingIdInfo", (Class<?>[]) new Class[]{Context.class});
        if (a5 != null && (a2 = com.facebook.ads.internal.util.g.a((Object) null, a5, context)) != null) {
            Method a6 = com.facebook.ads.internal.util.g.a(a2.getClass(), "getId", (Class<?>[]) new Class[0]);
            Method a7 = com.facebook.ads.internal.util.g.a(a2.getClass(), GpsHelper.IS_LIMIT_AD_TRACKING_ENABLED_KEY, (Class<?>[]) new Class[0]);
            if (a6 == null || a7 == null) {
                return null;
            }
            return new g((String) com.facebook.ads.internal.util.g.a(a2, a6, new Object[0]), ((Boolean) com.facebook.ads.internal.util.g.a(a2, a7, new Object[0])).booleanValue(), c.REFLECTION);
        }
        return null;
    }

    private static g c(Context context) {
        b bVar = new b();
        Intent intent = new Intent("com.google.android.gms.ads.identifier.service.STARS");
        intent.setPackage("com.google.android.gms");
        if (context.bindService(intent, bVar, 1)) {
            try {
                a aVar = new a(bVar.a());
                return new g(aVar.a(), aVar.b(), c.SERVICE);
            } catch (Exception e) {
            } finally {
                context.unbindService(bVar);
            }
        }
        return null;
    }

    public String a() {
        return this.f2726b;
    }

    public boolean b() {
        return this.c;
    }

    public c c() {
        return this.d;
    }
}
