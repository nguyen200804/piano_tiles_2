package com.cmplay.gaid;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;

/* compiled from: AdvertisingIdHelper.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {
    private static a c = null;

    /* renamed from: a, reason: collision with root package name */
    private String f1363a = "";

    /* renamed from: b, reason: collision with root package name */
    private boolean f1364b = false;

    static b a(Context context) {
        try {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
            b bVar = new b();
            Intent intent = new Intent("com.google.android.gms.ads.identifier.service.STARS");
            intent.setPackage("com.google.android.gms");
            try {
                if (context.bindService(intent, bVar, 1)) {
                    return bVar;
                }
            } catch (SecurityException e) {
            }
            return null;
        } catch (PackageManager.NameNotFoundException e2) {
            return null;
        }
    }

    /* compiled from: AdvertisingIdHelper.java */
    /* renamed from: com.cmplay.gaid.a$a, reason: collision with other inner class name */
    private static class C0043a implements AdvertisingIdInterface {

        /* renamed from: a, reason: collision with root package name */
        private IBinder f1367a;

        C0043a(IBinder iBinder) {
            this.f1367a = iBinder;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.f1367a;
        }

        @Override // com.cmplay.gaid.AdvertisingIdInterface
        public String a() throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.f1367a.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readString();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        @Override // com.cmplay.gaid.AdvertisingIdInterface
        public boolean a(boolean z) throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                obtain.writeInt(z ? 1 : 0);
                this.f1367a.transact(2, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readInt() != 0;
            } catch (SecurityException e) {
                return false;
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }
    }

    public static IInterface a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
        return (queryLocalInterface == null || !(queryLocalInterface instanceof AdvertisingIdInterface)) ? new C0043a(iBinder) : queryLocalInterface;
    }

    public void b(final Context context) {
        if (TextUtils.isEmpty(this.f1363a)) {
            new Thread(new Runnable() { // from class: com.cmplay.gaid.a.1
                /* JADX WARN: Removed duplicated region for block: B:16:0x002d  */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void run() {
                    /*
                        r6 = this;
                        r1 = 0
                        android.content.Context r0 = r2
                        boolean r0 = com.cmplay.util.v.a(r0)
                        if (r0 != 0) goto La
                    L9:
                        return
                    La:
                        android.content.Context r0 = r2
                        com.cmplay.gaid.b r3 = com.cmplay.gaid.a.a(r0)
                        if (r3 == 0) goto L9
                        r2 = 0
                        android.os.IBinder r0 = r3.a()     // Catch: android.os.RemoteException -> L5e java.lang.InterruptedException -> L69
                        android.os.IInterface r0 = com.cmplay.gaid.a.a(r0)     // Catch: android.os.RemoteException -> L5e java.lang.InterruptedException -> L69
                        com.cmplay.gaid.AdvertisingIdInterface r0 = (com.cmplay.gaid.AdvertisingIdInterface) r0     // Catch: android.os.RemoteException -> L5e java.lang.InterruptedException -> L69
                        java.lang.String r2 = r0.a()     // Catch: android.os.RemoteException -> L5e java.lang.InterruptedException -> L69
                        r4 = 0
                        boolean r0 = r0.a(r4)     // Catch: java.lang.InterruptedException -> L77 android.os.RemoteException -> L7c
                        r1 = r2
                    L27:
                        boolean r2 = android.text.TextUtils.isEmpty(r1)
                        if (r2 != 0) goto L56
                        com.cmplay.gaid.a r2 = com.cmplay.gaid.a.this
                        java.lang.String r2 = com.cmplay.gaid.a.a(r2)
                        monitor-enter(r2)
                        com.cmplay.gaid.a r4 = com.cmplay.gaid.a.this     // Catch: java.lang.Throwable -> L74
                        com.cmplay.gaid.a.a(r4, r1)     // Catch: java.lang.Throwable -> L74
                        com.cmplay.gaid.a r1 = com.cmplay.gaid.a.this     // Catch: java.lang.Throwable -> L74
                        com.cmplay.gaid.a.a(r1, r0)     // Catch: java.lang.Throwable -> L74
                        monitor-exit(r2)     // Catch: java.lang.Throwable -> L74
                        com.cmplay.gaid.a r0 = com.cmplay.gaid.a.this
                        java.lang.String r0 = com.cmplay.gaid.a.a(r0)
                        boolean r0 = android.text.TextUtils.isEmpty(r0)
                        if (r0 != 0) goto L56
                        java.lang.String r0 = "key_gaid"
                        com.cmplay.gaid.a r1 = com.cmplay.gaid.a.this
                        java.lang.String r1 = com.cmplay.gaid.a.a(r1)
                        com.cmplay.util.aa.a(r0, r1)
                    L56:
                        android.content.Context r0 = r2     // Catch: java.lang.IllegalArgumentException -> L5c
                        r0.unbindService(r3)     // Catch: java.lang.IllegalArgumentException -> L5c
                        goto L9
                    L5c:
                        r0 = move-exception
                        goto L9
                    L5e:
                        r0 = move-exception
                        r5 = r0
                        r0 = r2
                        r2 = r5
                    L62:
                        r2.printStackTrace()
                        r5 = r1
                        r1 = r0
                        r0 = r5
                        goto L27
                    L69:
                        r0 = move-exception
                        r5 = r0
                        r0 = r2
                        r2 = r5
                    L6d:
                        r2.printStackTrace()
                        r5 = r1
                        r1 = r0
                        r0 = r5
                        goto L27
                    L74:
                        r0 = move-exception
                        monitor-exit(r2)     // Catch: java.lang.Throwable -> L74
                        throw r0
                    L77:
                        r0 = move-exception
                        r5 = r0
                        r0 = r2
                        r2 = r5
                        goto L6d
                    L7c:
                        r0 = move-exception
                        r5 = r0
                        r0 = r2
                        r2 = r5
                        goto L62
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.cmplay.gaid.a.AnonymousClass1.run():void");
                }
            }).start();
        }
    }

    public static a a() {
        if (c == null) {
            c = new a();
        }
        return c;
    }

    private a() {
    }
}
