package com.duapps.ad.base;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.duapps.ad.entity.AdData;
import java.net.URI;
import java.util.List;

/* compiled from: DuAdNetwork.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    static final String f2018a = a.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    public static boolean f2019b = false;
    public static volatile boolean c;
    private static a d;
    private static String e;
    private static InterfaceC0056a f;
    private com.duapps.ad.c.a g;
    private Context h;
    private com.duapps.ad.c.a.d i;
    private final com.duapps.ad.c.b j = new com.duapps.ad.c.b() { // from class: com.duapps.ad.base.a.1
        @Override // com.duapps.ad.c.b
        public void a(String str, String str2) {
            boolean a2 = com.duapps.ad.c.b.c.a(a.this.h, str);
            boolean s = m.s(a.this.h);
            com.duapps.ad.stats.c.a(a.this.h, str2, a2, str, s);
            if (s && !TextUtils.isEmpty(str) && !a2) {
                a.b(a.this.h, str, false);
            }
        }
    };

    /* compiled from: DuAdNetwork.java */
    /* renamed from: com.duapps.ad.base.a$a, reason: collision with other inner class name */
    public interface InterfaceC0056a {
        String a();
    }

    public static String a() {
        return e;
    }

    public static String b() {
        if (f != null) {
            return f.a();
        }
        return null;
    }

    private a(Context context) {
        this.h = context;
        c = true;
        a(context.getApplicationContext());
        com.duapps.ad.stats.a.a(context);
        this.i = new com.duapps.ad.c.a.d(context.getApplicationContext());
        this.i.a();
        this.g = com.duapps.ad.c.a.a(context);
        this.g.a();
        this.g.a(this.j);
    }

    public static void a(Context context, String str) {
        p.a(context).a(str);
        synchronized (a.class) {
            if (d == null) {
                d = new a(context.getApplicationContext());
            }
        }
    }

    private void a(Context context) {
        if (TextUtils.isEmpty(p.b(context))) {
            h.d(f2018a, "app_license should not null");
        }
    }

    public static void a(Context context, Intent intent) {
        if (context == null || intent == null) {
            if (h.a()) {
                h.c(f2018a, "Params error.");
                return;
            }
            return;
        }
        String action = intent.getAction();
        if (!"android.intent.action.PACKAGE_ADDED".equals(action)) {
            if (h.a()) {
                h.c(f2018a, "Not ACTION_PACKAGE_ADDED: " + action);
                return;
            }
            return;
        }
        boolean booleanExtra = intent.getBooleanExtra("android.intent.extra.REPLACING", false);
        if (h.a()) {
            h.c(f2018a, "ACTION_PACKAGE_ADDED, replaceing? " + booleanExtra);
        }
        String dataString = intent.getDataString();
        String schemeSpecificPart = dataString == null ? null : URI.create(dataString).getSchemeSpecificPart();
        com.duapps.ad.stats.h.a(context, schemeSpecificPart, booleanExtra ? 1 : 0);
        if (!booleanExtra) {
            b(context, schemeSpecificPart);
        }
    }

    private static void b(Context context, String str) {
        List<com.duapps.ad.stats.f> f2;
        n a2 = n.a(context);
        com.duapps.ad.stats.f b2 = a2.b(str);
        if (b2 == null) {
            if (h.a()) {
                h.c(f2018a, "Non-click item, skip.");
            }
            b(context, str, false);
        } else {
            if (m.l(context) > 0 && ((f2 = a2.f(str)) == null || f2.size() == 0)) {
                b(context, str, false);
            }
            com.duapps.ad.stats.h.f(context, b2);
            a2.c(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Context context, String str, boolean z) {
        com.duapps.ad.stats.f d2 = n.a(context).d(str);
        if (d2 == null) {
            if (m.B(context)) {
                com.duapps.ad.c.a.e.a(context).a(c, str);
            }
            com.duapps.ad.stats.h.a(context, new com.duapps.ad.stats.f(AdData.a(context, -999, null, str, null)), z ? -2L : -1L);
        } else if (com.duapps.ad.c.a.a.a(context).a(str)) {
            h.c(f2018a, "TiggerPreParse:packageName:" + str + ";id=" + d2.b() + ";preParse=" + d2.m());
            d2.a(true);
            d2.a(z ? 1 : -1);
            new com.duapps.ad.stats.d(context).e(d2, d2.i());
            n.a(context).e(str);
        }
    }
}
