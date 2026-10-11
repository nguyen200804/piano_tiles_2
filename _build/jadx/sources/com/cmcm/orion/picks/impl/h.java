package com.cmcm.orion.picks.impl;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import com.cmcm.orion.adsdk.R;
import com.cmcm.orion.picks.impl.a;
import com.cmcm.orion.picks.impl.g;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: VastModel.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class h implements Serializable {
    private static final String[] D = {"X907"};
    private String C;
    private double E;
    private int F;

    /* renamed from: a, reason: collision with root package name */
    private String f983a;

    /* renamed from: b, reason: collision with root package name */
    private String f984b;
    private String c;
    private String d;
    private long e;
    private String f;
    private List<c> g;
    private List<a> h;
    private Map<g.a, List<b>> i;
    private String j;
    private String k;
    private c l;
    private boolean m;
    private com.cmcm.orion.picks.a.a.a n;
    private String u;
    private int v;
    private Map<g.a, List<String>> w;
    private String z;
    private boolean o = false;
    private boolean p = false;
    private boolean q = false;
    private boolean r = false;
    private boolean s = false;
    private boolean t = false;
    private boolean x = false;
    private boolean y = false;
    private int A = 64;
    private double B = 0.0d;

    public final void a(String str) {
        try {
            this.B = Double.valueOf(str).doubleValue();
        } catch (Exception e) {
        }
    }

    public final double a() {
        return this.B;
    }

    public final void b(String str) {
        this.C = str;
    }

    public final String b() {
        return this.C;
    }

    public final void c(String str) {
        try {
            this.A = Integer.valueOf(str).intValue();
        } catch (Exception e) {
        }
    }

    public final int c() {
        return this.A;
    }

    public final void d(String str) {
        this.z = str;
    }

    /* compiled from: VastModel.java */
    public static class b implements Serializable {

        /* renamed from: a, reason: collision with root package name */
        private String f987a;

        /* renamed from: b, reason: collision with root package name */
        private String f988b;
        private String c;
        private boolean d;

        public final String a() {
            return this.f988b;
        }

        public final String b() {
            return this.c;
        }

        public final void a(String str) {
            this.f987a = str;
        }

        public final void b(String str) {
            this.f988b = str;
        }

        public final void c(String str) {
            this.c = str;
        }

        public final boolean c() {
            return this.d;
        }

        public final void d() {
            this.d = true;
        }

        public final String toString() {
            return "LinearTracking{event='" + this.f987a + "', offset='" + this.f988b + "', trackingUrl='" + this.c + "'}";
        }
    }

    /* compiled from: VastModel.java */
    public static class c implements Serializable {

        /* renamed from: a, reason: collision with root package name */
        private int f989a;

        /* renamed from: b, reason: collision with root package name */
        private int f990b;
        private int c;
        private String d;
        private String e;
        private boolean f;
        private boolean g;
        private String h;
        private String i;
        private String j;
        private boolean k;

        public final int a() {
            return this.f989a;
        }

        public final int b() {
            return this.f990b;
        }

        public final String c() {
            return this.h;
        }

        public final void a(String str) {
            this.e = str;
        }

        public final void a(int i) {
            this.f989a = i;
        }

        public final void b(int i) {
            this.f990b = i;
        }

        public final void c(int i) {
            this.c = i;
        }

        public final void b(String str) {
            this.d = str;
        }

        public final void a(boolean z) {
            this.f = z;
        }

        public final void b(boolean z) {
            this.g = z;
        }

        public final void c(String str) {
            this.h = str;
        }

        public final void d(String str) {
            this.i = str;
        }

        public final void e(String str) {
            this.j = str;
        }

        public final void c(boolean z) {
            this.k = z;
        }

        public final String toString() {
            return "MediaFile{videoWidth=" + this.f989a + ", videoHeight=" + this.f990b + ", bitrate=" + this.c + ", id='" + this.d + "', delivery='" + this.e + "', scalable=" + this.f + ", maintainAspectRatio=" + this.g + ", videoUrl='" + this.h + "', videoType='" + this.i + "', encode='" + this.j + "', isLandscape='" + this.k + "'}";
        }
    }

    /* compiled from: VastModel.java */
    public class a implements Serializable {

        /* renamed from: b, reason: collision with root package name */
        private int f986b;
        private int c;
        private String d;
        private List<String> e;
        private Map<g.a, List<String>> f;

        public a() {
        }

        public final int a() {
            return this.f986b;
        }

        public final int b() {
            return this.c;
        }

        public final List<String> c() {
            return this.e;
        }

        public final Map<g.a, List<String>> d() {
            if (this.f == null) {
                this.f = new HashMap();
            }
            return this.f;
        }

        public final void a(int i) {
            this.f986b = i;
        }

        public final void b(int i) {
            this.c = i;
        }

        public final void a(String str) {
            this.d = str;
        }

        public final void a(List<String> list) {
            this.e = list;
        }

        public final String toString() {
            return "CompanionAds{adWidth=" + this.f986b + ", adHeight=" + this.c + ", adId=" + this.d + ", staticResourceList=" + this.e + ", companionReportUrls=" + this.f + '}';
        }
    }

    public final Map<g.a, List<String>> d() {
        if (this.w == null) {
            this.w = new HashMap();
        }
        return this.w;
    }

    public final Map<g.a, List<b>> e() {
        if (this.i == null) {
            this.i = new HashMap();
        }
        return this.i;
    }

    public final String f() {
        return this.f984b;
    }

    public final String g() {
        return this.c;
    }

    public final String h() {
        return this.d;
    }

    public final void i() {
        this.o = true;
        if (this.n == null) {
            return;
        }
        com.cmcm.orion.picks.a.b.a(this.n.d(), this.n, null);
    }

    public final long j() {
        return this.e;
    }

    public final void a(long j) {
        this.e = j;
    }

    public final String k() {
        return this.f;
    }

    public final List<c> l() {
        return this.g;
    }

    public final List<a> m() {
        return this.h;
    }

    public final String n() {
        return this.j;
    }

    public final boolean o() {
        return this.m;
    }

    public final com.cmcm.orion.picks.a.a.a p() {
        return this.n;
    }

    public final String q() {
        return this.u;
    }

    public final int r() {
        return this.v;
    }

    public final void e(String str) {
        this.f983a = str;
    }

    public final void f(String str) {
        this.f984b = str;
    }

    public final void g(String str) {
        this.c = str;
    }

    public final void h(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.d = str.trim();
        } else {
            try {
                this.d = com.cmcm.orion.adsdk.e.a().getResources().getString(R.string.brand_learn_more_text);
            } catch (Exception e) {
            }
        }
    }

    public final void a(com.cmcm.orion.picks.a.a.a aVar) {
        this.n = aVar;
        if (!TextUtils.isEmpty(this.f984b)) {
            aVar.f(this.f984b);
        }
        aVar.d(this.A);
        if (!TextUtils.isEmpty(this.z)) {
            aVar.e(this.z);
        }
        if (!TextUtils.isEmpty(this.f)) {
            aVar.j(this.f);
        }
    }

    public final void i(String str) {
        this.f = str;
    }

    public final void a(List<c> list) {
        this.g = list;
    }

    public final void b(List<a> list) {
        this.h = list;
    }

    public final void j(String str) {
        this.j = str;
    }

    public final void a(boolean z) {
        this.m = z;
    }

    public final void k(String str) {
        this.u = str;
    }

    public final void a(int i) {
        this.v = i;
    }

    public final void l(String str) {
        this.k = str;
    }

    public final String a(Context context) {
        if (this.l == null) {
            this.l = b(context);
        }
        if (this.l != null) {
            return this.l.c();
        }
        return null;
    }

    public final boolean s() {
        return this.p;
    }

    public final void b(boolean z) {
        this.p = z;
    }

    public final boolean t() {
        return this.q;
    }

    public final void c(boolean z) {
        this.q = z;
    }

    public final boolean u() {
        return this.r;
    }

    public final void d(boolean z) {
        this.r = z;
    }

    public final boolean v() {
        return this.s;
    }

    public final void e(boolean z) {
        this.s = z;
    }

    public final void f(boolean z) {
        this.t = z;
    }

    public final boolean w() {
        return this.t;
    }

    public final void g(boolean z) {
        this.x = z;
    }

    public static boolean m(String str) {
        return System.currentTimeMillis() - i.b(a.AnonymousClass1.b(str)) > 3600000;
    }

    public final c b(Context context) {
        c cVar;
        double d;
        c a2;
        boolean z = false;
        if (this.l != null) {
            return this.l;
        }
        List<c> list = this.g;
        if (list == null || list.isEmpty()) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 10) {
            if (D != null && D.length > 0) {
                for (String str : D) {
                    if (Build.MODEL.equals(str)) {
                        break;
                    }
                }
            }
            z = true;
            if (z && (a2 = a(list, "vp8")) != null) {
                return a2;
            }
        }
        c a3 = a(list, "mp4");
        if (a3 != null) {
            return a3;
        }
        if (context != null) {
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            int width = defaultDisplay.getWidth();
            int height = defaultDisplay.getHeight();
            float f = context.getResources().getDisplayMetrics().density;
            if (f <= 0.0f) {
                f = 1.0f;
            }
            int max = Math.max(width, height);
            int min = Math.min(width, height);
            this.E = max / min;
            this.F = (int) ((min / f) * (max / f));
        }
        double d2 = Double.POSITIVE_INFINITY;
        Iterator<c> it = list.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (TextUtils.isEmpty(next.c())) {
                it.remove();
            } else {
                int a4 = next.a();
                int b2 = next.b();
                if (a4 > 0 && b2 > 0) {
                    double abs = (Math.abs(Math.log((a4 * b2) / this.F)) * 30.0d) + (Math.abs(Math.log((a4 / b2) / this.E)) * 70.0d);
                    if (abs < d2) {
                        cVar = next;
                        d = abs;
                    } else {
                        cVar = a3;
                        d = d2;
                    }
                    d2 = d;
                    a3 = cVar;
                }
            }
        }
        return a3;
    }

    private static c a(List<c> list, String str) {
        if (list == null || list.isEmpty() || TextUtils.isEmpty(str)) {
            return null;
        }
        for (c cVar : list) {
            if (str.equals(cVar.j)) {
                return cVar;
            }
        }
        return null;
    }

    public final String toString() {
        return "VastModel{id='" + this.f983a + "', adTitle='" + this.f984b + "', description='" + this.c + "', button='" + this.d + "', clickThrough='" + this.f + "', mediaFile=" + this.g + ", companionAds=" + this.h + ", iconUrl='" + this.j + "', vastTag='" + this.k + "', videoUrl='" + (this.l != null ? this.l.c() : "null") + "', isWapperType=" + this.m + ", ad=" + this.n + ", vastAdTagUrl='" + this.u + "', wapperFrequency=" + this.v + ", reportEventUrls=" + this.w + '}';
    }
}
