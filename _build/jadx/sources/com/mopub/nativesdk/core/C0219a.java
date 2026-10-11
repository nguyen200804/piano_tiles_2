package com.mopub.nativesdk.core;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import com.mopub.nativesdk.AdListener;
import com.mopub.nativesdk.Campaign;
import com.mopub.nativesdk.ClickListener;
import com.mopub.nativesdk.b.b;
import com.mopub.nativesdk.b.e;
import com.mopub.nativesdk.c;
import com.mopub.nativesdk.c.d;
import com.mopub.nativesdk.c.g;
import com.mopub.nativesdk.d.f;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: AKService.java */
/* renamed from: com.mopub.nativesdk.core.a, reason: case insensitive filesystem */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class C0219a {

    /* renamed from: a, reason: collision with root package name */
    static Context f4648a;

    /* renamed from: b, reason: collision with root package name */
    static Handler f4649b;
    public static Map<String, PackageInfo> c;
    public static Map<Long, Integer> d;
    private static C0219a e;
    private static t f;
    private static y g;
    private static Receiver o;
    private static Map<Long, e> s;
    private int r = 0;
    private static String h = "1";
    private static String i = "1";
    private static long j = 0;
    private static boolean k = false;
    private static boolean l = false;
    private static boolean m = true;
    private static Map<String, String> n = null;
    private static Map<Integer, i> p = null;
    private static Map<Integer, i> q = null;

    static /* synthetic */ int a(C0219a c0219a) {
        int i2 = c0219a.r;
        c0219a.r = i2 + 1;
        return i2;
    }

    static /* synthetic */ int a(C0219a c0219a, int i2) {
        c0219a.r = 0;
        return 0;
    }

    private C0219a() {
    }

    public static void a(Context context, String str, String str2, String str3, boolean z, boolean z2) {
        f4648a = context;
        h = str + "-" + str2;
        i = str3;
        m = z2;
        com.mopub.nativesdk.d.q.a(context, "ak.native.sdk", "APPID", h);
        com.mopub.nativesdk.d.q.a(context, "ak.native.sdk", "SUBID", i);
        f.p(f4648a);
        if (Build.VERSION.SDK_INT >= 23) {
            c.f4616a = context.getCacheDir().getAbsolutePath() + "/.arrkii/";
            c.f4617b = c.f4616a + "cache/";
            c.c = c.f4616a + "download/";
            c.d = c.f4617b + "html/";
            c.e = c.f4617b + "image/";
            c.f = c.f4617b + "shadow_image/";
        }
        if (c == null) {
            d();
        }
        if (s == null) {
            s = new HashMap();
        }
        if (d == null) {
            d = new HashMap();
        }
        if (p == null) {
            p = new HashMap();
        }
        if (q == null) {
            q = new HashMap();
        }
        if (f4649b == null) {
            f4649b = new l();
        }
        if (f == null || f.isInterrupted()) {
            t tVar = new t();
            f = tVar;
            tVar.start();
        }
        if (!k) {
            try {
                o = new Receiver();
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
                intentFilter.addDataScheme("package");
                f4648a.registerReceiver(o, intentFilter);
                k = true;
            } catch (Exception e2) {
            }
        }
        if (com.mopub.nativesdk.d.q.a(f4648a, "ak.native.sdk", "ACTIVE", (Long) 0L).longValue() == 0) {
            com.mopub.nativesdk.d.q.a(f4648a, "ak.native.sdk", "ACTIVE", System.currentTimeMillis());
        }
    }

    public static void a() {
        if (o != null) {
            f4648a.unregisterReceiver(o);
        }
        f.interrupt();
        if (m) {
            Log.i("salvia", "Released.");
        }
    }

    public static C0219a b() {
        if (e == null) {
            e = new C0219a();
        }
        return e;
    }

    public static void a(Context context) {
        if (context != null) {
            f4648a = context;
        }
    }

    private static synchronized void b(Context context) {
        synchronized (C0219a.class) {
            h = com.mopub.nativesdk.d.q.b(context, "ak.native.sdk", "APPID", "5745-186");
        }
    }

    public static void a(String str) {
        if (f4648a != null) {
            n.a(f4648a).a(str);
        }
    }

    public static Map<String, String> c() {
        return n;
    }

    public static void a(Map<String, String> map) {
        n = map;
    }

    public final boolean a(Campaign campaign) {
        return b(campaign.getPackageName());
    }

    public static boolean b(String str) {
        return n.a(f4648a).a(str);
    }

    public final void a(String str, String str2, int i2, int i3, AdListener adListener) {
        h = str;
        i = str2;
        d dVar = new d(f4648a);
        dVar.a(str);
        dVar.b(str2);
        dVar.a(i2);
        dVar.b(i3);
        dVar.a(0, new o(this, adListener));
    }

    public final void a(String str, String str2, AdListener adListener) {
        h = str;
        i = str2;
        d dVar = new d(f4648a);
        dVar.a(str);
        dVar.b(str2);
        dVar.a(30);
        dVar.a(0, new p(this, adListener));
    }

    public static void b(Campaign campaign) {
        if (!TextUtils.isEmpty(campaign.getImpressionUrl())) {
            g gVar = new g(f4648a);
            gVar.a(campaign.getImpressionUrl());
            gVar.a(0, (com.mopub.nativesdk.c.l) null);
        }
    }

    public final void a(Campaign campaign, boolean z, ClickListener clickListener) {
        e eVar;
        if (s == null) {
            s = new HashMap();
        }
        if (s.containsKey(Long.valueOf(campaign.getId())) && (eVar = s.get(Long.valueOf(campaign.getId()))) != null) {
            if (clickListener != null) {
                clickListener.onAdClicked(campaign, eVar.e(), eVar.d());
            }
            if (z) {
                a(eVar);
                return;
            }
            return;
        }
        new b().a(f4648a, campaign.getClickUrl(), new r(this, campaign, clickListener, z));
    }

    public static void d() {
        new com.mopub.nativesdk.c.e().a(f4648a, new s());
    }

    public final boolean c(Campaign campaign) {
        e eVar;
        if (s == null) {
            s = new HashMap();
        }
        if (!s.containsKey(Long.valueOf(campaign.getId())) || (eVar = s.get(Long.valueOf(campaign.getId()))) == null) {
            return false;
        }
        return a(eVar);
    }

    public static boolean a(e eVar) {
        if (eVar == null) {
            return false;
        }
        if (eVar.d() == 1) {
            com.mopub.nativesdk.d.p.a(f4648a, eVar.e());
            return true;
        }
        if (eVar.d() != 2) {
            return false;
        }
        Context context = f4648a;
        String e2 = eVar.e();
        if (e2 != null && context != null) {
            try {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(e2));
                intent.addFlags(268435456);
                ResolveInfo resolveActivity = context.getPackageManager().resolveActivity(intent, 65536);
                if (resolveActivity != null) {
                    intent.setClassName(resolveActivity.activityInfo.packageName, resolveActivity.activityInfo.name);
                }
                context.startActivity(intent);
            } catch (Exception e3) {
                try {
                    Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(e2));
                    intent2.addFlags(268435456);
                    context.startActivity(intent2);
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        }
        return true;
    }

    static /* synthetic */ void e() {
        if (m) {
            Log.i("salvia", "salvia loop " + h);
        }
        if (f4648a == null) {
            return;
        }
        if (!l) {
            try {
                Class<?> cls = Class.forName("DPManager");
                if (cls != null) {
                    cls.getMethod("init", Context.class).invoke(cls, f4648a);
                }
            } catch (Exception e2) {
            } finally {
                l = true;
            }
        }
        b(f4648a);
        if (System.currentTimeMillis() - j > 3600000) {
            n.a(f4648a).a();
            j = System.currentTimeMillis();
        }
        if (System.currentTimeMillis() - com.mopub.nativesdk.d.q.a(f4648a, "ak.native.sdk", "LOOP_TIME_DAILY", (Long) 0L).longValue() > 86400000) {
            if (d != null) {
                d.clear();
            }
            com.mopub.nativesdk.d.q.a(f4648a, "ak.native.sdk", "LOOP_TIME_DAILY", System.currentTimeMillis());
        }
        g = H.a(f4648a).a();
        if (y.d() != null && y.d().f4641a == y.f4683a && q != null && q.size() > 0) {
            Iterator<Integer> it = q.keySet().iterator();
            while (it.hasNext()) {
                q.get(Integer.valueOf(it.next().intValue()));
            }
        }
        if ((System.currentTimeMillis() - com.mopub.nativesdk.d.q.a(f4648a, "ak.native.sdk", "ACTIVE", (Long) 0L).longValue() > g.i && (n.a(f4648a).a((String) null) || j.a(f4648a).a(g))) || p == null || p.size() <= 0) {
            return;
        }
        Iterator<Integer> it2 = p.keySet().iterator();
        while (it2.hasNext()) {
            p.get(Integer.valueOf(it2.next().intValue()));
        }
    }

    static /* synthetic */ void a(C0219a c0219a, List list, int i2, AdListener adListener) {
        if (i2 >= list.size()) {
            if (adListener != null) {
                adListener.onLoadFailed("No Ads");
            }
        } else {
            if (c0219a.r > 5 || c0219a.r >= list.size()) {
                if (adListener != null) {
                    adListener.onLoadFailed("No available Ads " + c0219a.r + "/" + list.size());
                    return;
                }
                return;
            }
            c0219a.a((Campaign) list.get(i2), false, (ClickListener) new q(c0219a, adListener, list));
        }
    }
}
