package com.cmcm.orion.utils.internal.a;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import android.text.TextUtils;
import com.cmcm.orion.picks.a.a.h;
import com.cmcm.orion.utils.e;

/* compiled from: AdvertisingIdHelper.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class a {
    private static a e = null;

    /* renamed from: a, reason: collision with root package name */
    private boolean f1104a = false;

    /* renamed from: b, reason: collision with root package name */
    private boolean f1105b = false;
    private String c = "";
    private boolean d = false;

    private static boolean b(Context context) {
        try {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
            return true;
        } catch (Exception e2) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static c c(Context context) {
        if (!b(context)) {
            return null;
        }
        try {
            c cVar = new c();
            Intent intent = new Intent("com.google.android.gms.ads.identifier.service.STARS");
            intent.setPackage("com.google.android.gms");
            if (context.bindService(intent, cVar, 1)) {
                return cVar;
            }
            return null;
        } catch (SecurityException e2) {
            return null;
        }
    }

    public static IInterface a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
        return (queryLocalInterface == null || !(queryLocalInterface instanceof b)) ? new b(iBinder) : queryLocalInterface;
    }

    public final String a() {
        if (!this.f1104a) {
            synchronized ("AdvertisingIdHelper") {
                if (!this.f1104a) {
                    if (!this.f1105b) {
                        this.f1105b = true;
                        new Thread(new Runnable() { // from class: com.cmcm.orion.utils.internal.a.a.2
                            /* JADX WARN: Removed duplicated region for block: B:17:0x002e  */
                            @Override // java.lang.Runnable
                            /*
                                Code decompiled incorrectly, please refer to instructions dump.
                                To view partially-correct add '--show-bad-code' argument
                            */
                            public final void run() {
                                /*
                                    r6 = this;
                                    android.content.Context r3 = com.cmcm.orion.adsdk.e.a()
                                    com.cmcm.orion.utils.internal.a.c r4 = com.cmcm.orion.utils.internal.a.a.a(r3)
                                    if (r4 != 0) goto L10
                                    com.cmcm.orion.utils.internal.a.a r0 = com.cmcm.orion.utils.internal.a.a.this
                                    com.cmcm.orion.utils.internal.a.a.a(r0)
                                Lf:
                                    return
                                L10:
                                    r2 = 0
                                    r1 = 0
                                    android.os.IBinder r0 = r4.a()     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L52
                                    android.os.IInterface r0 = com.cmcm.orion.utils.internal.a.a.a(r0)     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L52
                                    com.cmcm.orion.utils.internal.a.b r0 = (com.cmcm.orion.utils.internal.a.b) r0     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L52
                                    java.lang.String r2 = r0.a()     // Catch: java.lang.Exception -> L44 java.lang.Throwable -> L52
                                    boolean r0 = r0.b()     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L59
                                    r3.unbindService(r4)     // Catch: java.lang.IllegalArgumentException -> L41
                                    r1 = r2
                                L28:
                                    boolean r2 = android.text.TextUtils.isEmpty(r1)
                                    if (r2 != 0) goto L3b
                                    com.cmcm.orion.utils.internal.a.a r2 = com.cmcm.orion.utils.internal.a.a.this
                                    com.cmcm.orion.utils.internal.a.a.a(r2, r1)
                                    com.cmcm.orion.utils.internal.a.a r2 = com.cmcm.orion.utils.internal.a.a.this
                                    com.cmcm.orion.utils.internal.a.a.a(r2, r0)
                                    com.cmcm.orion.picks.a.a.h.f(r1)
                                L3b:
                                    com.cmcm.orion.utils.internal.a.a r0 = com.cmcm.orion.utils.internal.a.a.this
                                    com.cmcm.orion.utils.internal.a.a.a(r0)
                                    goto Lf
                                L41:
                                    r1 = move-exception
                                    r1 = r2
                                    goto L28
                                L44:
                                    r0 = move-exception
                                    r0 = r2
                                L46:
                                    r3.unbindService(r4)     // Catch: java.lang.IllegalArgumentException -> L4d
                                    r5 = r1
                                    r1 = r0
                                    r0 = r5
                                    goto L28
                                L4d:
                                    r2 = move-exception
                                    r5 = r1
                                    r1 = r0
                                    r0 = r5
                                    goto L28
                                L52:
                                    r0 = move-exception
                                    r3.unbindService(r4)     // Catch: java.lang.IllegalArgumentException -> L57
                                L56:
                                    throw r0
                                L57:
                                    r1 = move-exception
                                    goto L56
                                L59:
                                    r0 = move-exception
                                    r0 = r2
                                    goto L46
                                */
                                throw new UnsupportedOperationException("Method not decompiled: com.cmcm.orion.utils.internal.a.a.AnonymousClass2.run():void");
                            }
                        }).start();
                        e.c(new Runnable() { // from class: com.cmcm.orion.utils.internal.a.a.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                a.a(a.this);
                            }
                        });
                    }
                    if (!e.a()) {
                        try {
                            "AdvertisingIdHelper".wait();
                        } catch (Exception e2) {
                        }
                    }
                }
            }
        }
        if (TextUtils.isEmpty(this.c)) {
            this.c = h.c();
        }
        return this.c;
    }

    public final boolean b() {
        return this.d;
    }

    public static a c() {
        if (e == null) {
            e = new a();
        }
        return e;
    }

    private a() {
    }

    static /* synthetic */ void a(a aVar) {
        try {
            synchronized ("AdvertisingIdHelper") {
                aVar.f1104a = true;
                "AdvertisingIdHelper".notifyAll();
            }
        } catch (Exception e2) {
        }
    }
}
