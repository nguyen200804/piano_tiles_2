package com.cmcm.dmc.sdk.g;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.text.TextUtils;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {
    private static a c = null;

    /* renamed from: a, reason: collision with root package name */
    private String f763a = "";

    /* renamed from: b, reason: collision with root package name */
    private boolean f764b = false;

    /* renamed from: com.cmcm.dmc.sdk.g.a$a, reason: collision with other inner class name */
    private static class C0010a implements b {

        /* renamed from: a, reason: collision with root package name */
        private IBinder f767a;

        C0010a(IBinder iBinder) {
            this.f767a = iBinder;
        }

        @Override // com.cmcm.dmc.sdk.g.b
        public String a() {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.f767a.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readString();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        @Override // com.cmcm.dmc.sdk.g.b
        public boolean a(boolean z) {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                obtain.writeInt(z ? 1 : 0);
                this.f767a.transact(2, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readInt() != 0;
            } catch (SecurityException e) {
                return false;
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.f767a;
        }
    }

    private a() {
    }

    public static IInterface a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
        return (queryLocalInterface == null || !(queryLocalInterface instanceof b)) ? new C0010a(iBinder) : queryLocalInterface;
    }

    static d a(Context context) {
        try {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
            d dVar = new d();
            Intent intent = new Intent("com.google.android.gms.ads.identifier.service.STARS");
            intent.setPackage("com.google.android.gms");
            try {
                if (context.bindService(intent, dVar, 1)) {
                    return dVar;
                }
            } catch (SecurityException e) {
            }
            return null;
        } catch (PackageManager.NameNotFoundException e2) {
            return null;
        }
    }

    public static a b() {
        if (c == null) {
            c = new a();
        }
        return c;
    }

    public String a() {
        return this.f763a;
    }

    public void b(final Context context) {
        if (TextUtils.isEmpty(this.f763a)) {
            new Thread(new Runnable() { // from class: com.cmcm.dmc.sdk.g.a.1
                /* JADX WARN: Removed duplicated region for block: B:14:0x002c  */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void run() {
                    /*
                        r8 = this;
                        r1 = 0
                        android.content.Context r0 = r2
                        boolean r0 = com.cmcm.dmc.sdk.a.j.a(r0)
                        if (r0 == 0) goto L43
                        android.content.Context r0 = r2
                        com.cmcm.dmc.sdk.g.d r3 = com.cmcm.dmc.sdk.g.a.a(r0)
                        if (r3 == 0) goto L43
                        r2 = 0
                        android.os.IBinder r0 = r3.a()     // Catch: java.lang.Exception -> L44
                        android.os.IInterface r0 = com.cmcm.dmc.sdk.g.a.a(r0)     // Catch: java.lang.Exception -> L44
                        com.cmcm.dmc.sdk.g.b r0 = (com.cmcm.dmc.sdk.g.b) r0     // Catch: java.lang.Exception -> L44
                        java.lang.String r2 = r0.a()     // Catch: java.lang.Exception -> L44
                        r4 = 0
                        boolean r0 = r0.a(r4)     // Catch: java.lang.Exception -> L6d
                        r1 = r2
                    L26:
                        boolean r2 = android.text.TextUtils.isEmpty(r1)
                        if (r2 != 0) goto L3e
                        com.cmcm.dmc.sdk.g.a r2 = com.cmcm.dmc.sdk.g.a.this
                        java.lang.String r2 = com.cmcm.dmc.sdk.g.a.a(r2)
                        monitor-enter(r2)
                        com.cmcm.dmc.sdk.g.a r4 = com.cmcm.dmc.sdk.g.a.this     // Catch: java.lang.Throwable -> L68
                        com.cmcm.dmc.sdk.g.a.a(r4, r1)     // Catch: java.lang.Throwable -> L68
                        com.cmcm.dmc.sdk.g.a r1 = com.cmcm.dmc.sdk.g.a.this     // Catch: java.lang.Throwable -> L68
                        com.cmcm.dmc.sdk.g.a.a(r1, r0)     // Catch: java.lang.Throwable -> L68
                        monitor-exit(r2)     // Catch: java.lang.Throwable -> L68
                    L3e:
                        android.content.Context r0 = r2     // Catch: java.lang.IllegalArgumentException -> L6b
                        r0.unbindService(r3)     // Catch: java.lang.IllegalArgumentException -> L6b
                    L43:
                        return
                    L44:
                        r0 = move-exception
                        r7 = r0
                        r0 = r2
                        r2 = r7
                    L48:
                        java.lang.String r4 = "AdvertisingIdHelper"
                        java.lang.StringBuilder r5 = new java.lang.StringBuilder
                        r5.<init>()
                        java.lang.String r6 = ""
                        java.lang.StringBuilder r5 = r5.append(r6)
                        java.lang.String r2 = r2.getMessage()
                        java.lang.StringBuilder r2 = r5.append(r2)
                        java.lang.String r2 = r2.toString()
                        com.cmcm.dmc.sdk.a.i.a(r4, r2)
                        r7 = r1
                        r1 = r0
                        r0 = r7
                        goto L26
                    L68:
                        r0 = move-exception
                        monitor-exit(r2)     // Catch: java.lang.Throwable -> L68
                        throw r0
                    L6b:
                        r0 = move-exception
                        goto L43
                    L6d:
                        r0 = move-exception
                        r7 = r0
                        r0 = r2
                        r2 = r7
                        goto L48
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.cmcm.dmc.sdk.g.a.AnonymousClass1.run():void");
                }
            }).start();
        }
    }
}
