package com.mnt.impl.h;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;
import com.mnt.LogUtil;
import com.mnt.MntAdConfig;
import com.mnt.MntBanner;
import com.mnt.MntBroadcastReceiver;
import com.mnt.MntBuild;
import com.mnt.MntInterstitial;
import com.mnt.MntNative;
import com.mnt.MntRectangleBanner;
import com.mnt.impl.b.h;
import com.mnt.impl.b.j;
import com.mnt.impl.b.k;
import java.util.regex.Pattern;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private static boolean f4042a;

    /* renamed from: b, reason: collision with root package name */
    private static final Pattern f4043b;

    static {
        String str = com.mnt.impl.e.jq;
        f4042a = false;
        f4043b = Pattern.compile(com.mnt.impl.e.jr);
    }

    public static synchronized void a(Context context, String str, MntAdConfig mntAdConfig) {
        synchronized (a.class) {
            try {
                k.j(context);
                if (mntAdConfig != null && !TextUtils.isEmpty(mntAdConfig.getChannel()) && f4043b.matcher(mntAdConfig.getChannel()).find()) {
                    Toast.makeText(context, com.mnt.impl.e.js, 1).show();
                } else if (TextUtils.isEmpty(str)) {
                    Toast.makeText(context, com.mnt.impl.e.jt, 1).show();
                } else {
                    String j = h.j(context);
                    if (!TextUtils.isEmpty(j) && j.equals(k.a(j.f3951b))) {
                        h.f(context);
                    }
                    h.a(context, str, mntAdConfig);
                    com.mnt.impl.b.e.b();
                    com.mnt.impl.b.c a2 = com.mnt.impl.b.c.a(context);
                    Intent intent = new Intent();
                    intent.setAction(com.mnt.impl.b.c.f3935a);
                    try {
                        a2.f = PendingIntent.getBroadcast(a2.f3936b, 0, intent, 134217728);
                    } catch (Exception e) {
                    }
                    a2.c.setInexactRepeating(0, System.currentTimeMillis(), (long) (3600000.0d + (Math.random() * 7200000.0d)), a2.f);
                    com.mnt.impl.j.d.a(context);
                    if (!f4042a) {
                        com.mnt.impl.i.b.a.a(context).a((String) null);
                        if (Build.VERSION.SDK_INT >= 16) {
                            if (com.mnt.impl.d.c.c == null) {
                                com.mnt.impl.d.c.c = new com.mnt.impl.d.c(context);
                            }
                            com.mnt.impl.d.c cVar = com.mnt.impl.d.c.c;
                            if (cVar.d != null) {
                                com.mnt.impl.d.e eVar = cVar.d;
                                eVar.f3965b.getContentResolver().registerContentObserver(com.mnt.impl.d.e.f3964a, true, eVar.g);
                            }
                            com.mnt.impl.d.e a3 = com.mnt.impl.d.e.a(context);
                            b bVar = new b(context);
                            a3.h = false;
                            if (!a3.f.contains(bVar)) {
                                synchronized (a3.f) {
                                    a3.f.add(bVar);
                                }
                            }
                        }
                        if (!k.f(context)) {
                            try {
                                IntentFilter intentFilter = new IntentFilter(com.mnt.impl.g.f4038a);
                                intentFilter.addAction(com.mnt.impl.g.f4039b);
                                intentFilter.addDataScheme(com.mnt.impl.e.jz);
                                context.getApplicationContext().registerReceiver(new MntBroadcastReceiver(), intentFilter);
                            } catch (Throwable th) {
                            }
                        }
                        f4042a = true;
                    }
                    if (str.equals(k.a(j.f3951b))) {
                        Log.i(com.mnt.impl.e.ju, com.mnt.impl.e.jv + k.e(context));
                    } else {
                        Log.i(com.mnt.impl.e.jw, com.mnt.impl.e.jx + k.e(context));
                    }
                    LogUtil.showToast(context, com.mnt.impl.e.jy + 128);
                }
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
    }

    public static void a(Object obj) {
        if (obj != null) {
            try {
                if (obj instanceof MntBuild) {
                    MntBuild mntBuild = (MntBuild) obj;
                    new com.mnt.impl.f.b(mntBuild.mContext, mntBuild.mPlacementId, new c(mntBuild)).c();
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public static void a(Context context) {
        try {
            com.mnt.impl.b.c a2 = com.mnt.impl.b.c.a(context);
            if (a2.f3936b != null && a2.d != null) {
                a2.f3936b.unregisterReceiver(a2.d);
            }
            a2.d = null;
            new Intent().setAction(com.mnt.impl.b.c.f3935a);
            if (a2.f != null) {
                a2.c.cancel(a2.f);
            }
            a2.f = null;
            com.mnt.impl.b.c.e = null;
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    static /* synthetic */ void a(MntBuild mntBuild) {
        MntInterstitial mntInterstitial = new MntInterstitial(mntBuild.getContext(), mntBuild);
        mntInterstitial.setAdListener(new f(mntBuild.mAdListener, mntInterstitial));
        mntInterstitial.load();
    }

    static /* synthetic */ void b(MntBuild mntBuild) {
        MntBanner mntBanner = new MntBanner(mntBuild.getContext(), mntBuild);
        mntBanner.setAdListener(new d(mntBuild.mAdListener, mntBanner));
        mntBanner.load();
    }

    static /* synthetic */ void c(MntBuild mntBuild) {
        MntRectangleBanner mntRectangleBanner = new MntRectangleBanner(mntBuild.getContext(), mntBuild);
        mntRectangleBanner.setAdListener(new e(mntBuild.mAdListener, mntRectangleBanner));
        mntRectangleBanner.load();
    }

    static /* synthetic */ void d(MntBuild mntBuild) {
        MntNative mntNative = new MntNative(mntBuild.getContext(), mntBuild.mPlacementId);
        mntNative.setAdListener(new g(mntBuild.mAdListener, mntNative));
        mntNative.load(mntBuild);
    }
}
