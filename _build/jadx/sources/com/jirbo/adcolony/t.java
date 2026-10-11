package com.jirbo.adcolony;

import android.app.Activity;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.jirbo.adcolony.a;
import com.jirbo.adcolony.ap;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class t {
    static boolean B;
    static boolean C;
    static Activity E;
    static boolean F;
    static ai G;
    static g H;
    static ADCVideo I;
    static ADCVideo J;
    static a K;
    static b L;
    static boolean M;
    static boolean N;
    static boolean O;
    static boolean P;
    static int Q;
    static String R;
    static String S;
    static String T;
    static String U;
    static String V;
    static boolean Y;
    static long Z;
    static HashMap af;
    static boolean d;
    static boolean f;
    static boolean g;
    static double h;
    static boolean i;
    static boolean j;
    static g k;
    static boolean l;
    static boolean m;
    static boolean n;
    static boolean o;
    static boolean p;
    static boolean q;
    static boolean r;

    /* renamed from: a, reason: collision with root package name */
    public static String f3850a = null;

    /* renamed from: b, reason: collision with root package name */
    public static final String f3851b = null;
    static af c = new af();
    static int e = 2;
    static boolean s = false;
    static boolean t = true;
    static int u = 0;
    static double v = 1.0d;
    static boolean w = false;
    static boolean x = false;
    static boolean y = false;
    static boolean z = false;
    static boolean A = true;
    static boolean D = false;
    static ArrayList<String> W = new ArrayList<>();
    static a.c X = new a.c();
    static int aa = 0;
    static ArrayList<Bitmap> ab = new ArrayList<>();
    static ArrayList<q> ac = new ArrayList<>();
    static ArrayList<h> ad = new ArrayList<>();
    static ArrayList<o> ae = new ArrayList<>();

    static void a(Activity activity) {
        if (activity != E && activity != null) {
            E = activity;
            K = new a();
            L = new b();
            if (!j) {
                new ap.a();
            }
        }
    }

    static void b(Activity activity) {
        m = false;
        a(activity);
        G = null;
        d = ah.i();
        if (F) {
            F = false;
            l = false;
            c = new af();
        }
    }

    static boolean a() {
        return E == null;
    }

    static Activity b() {
        if (E == null) {
            throw new j("AdColony.configure() must be called before any other AdColony methods. If you have called AdColony.configure(), the Activity reference you passed in via AdColony.configure()/AdColony.resume() is null OR you have not called AdColony.resume() as appropriate.");
        }
        return E;
    }

    static boolean c() {
        return F || n || !l;
    }

    static boolean d() {
        return (!l || F || n) ? false : true;
    }

    static void a(String str) {
        F = true;
        d(str);
    }

    static void a(RuntimeException runtimeException) {
        F = true;
        d(runtimeException.toString());
        runtimeException.printStackTrace();
    }

    static void e() {
        b();
    }

    static void a(int i2) {
        e = i2;
        al.f3721a.f = i2 <= 0;
        al.f3722b.f = i2 <= 1;
        al.c.f = i2 <= 2;
        al.d.f = i2 <= 3;
        if (i2 <= 0) {
            b("DEVELOPER LOGGING ENABLED");
        }
        if (i2 <= 1) {
            c("DEBUG LOGGING ENABLED");
        }
    }

    static void a(int i2, String str) {
        if (e <= i2) {
            switch (i2) {
                case 0:
                case 1:
                    Log.d("AdColony", str);
                    break;
                case 2:
                    Log.i("AdColony", str);
                    break;
                case 3:
                    Log.e("AdColony", str);
                    break;
            }
        }
    }

    static void b(String str) {
        a(0, str);
    }

    static void c(String str) {
        a(1, str);
    }

    static void d(String str) {
        a(3, str);
    }

    static int e(String str) {
        return c.a(str);
    }

    static boolean f(String str) {
        return c.b(str);
    }

    static String g(String str) {
        return c.c(str);
    }

    static void a(String str, g gVar) {
        c.a(str, (String) null, gVar);
    }

    static void a(String str, String str2, g gVar) {
        c.a(str, str2, gVar);
    }

    static void f() {
        boolean a2;
        boolean z2;
        if (c != null && ad.size() != 0 && af != null) {
            for (Map.Entry entry : af.entrySet()) {
                boolean booleanValue = ((Boolean) entry.getValue()).booleanValue();
                if (f.a((String) entry.getKey())) {
                    a2 = c.b((String) entry.getKey(), true, false);
                } else {
                    a2 = c.a((String) entry.getKey(), true, false);
                }
                if (f.b((String) entry.getKey()) && E != null) {
                    z2 = new o(b(), (String) entry.getKey(), 300, true).b(true);
                } else {
                    z2 = E == null ? false : a2;
                }
                if (booleanValue != z2) {
                    af.put(entry.getKey(), Boolean.valueOf(z2));
                    for (int i2 = 0; i2 < ad.size(); i2++) {
                        ad.get(i2).a(z2, (String) entry.getKey());
                    }
                }
            }
        }
    }

    static void a(g gVar) {
        k = gVar;
    }

    static class a extends Handler {

        /* renamed from: a, reason: collision with root package name */
        g f3852a;

        a() {
        }

        public void a(g gVar) {
            if (gVar == null) {
                this.f3852a = t.H;
            } else {
                this.f3852a = gVar;
            }
            sendMessage(obtainMessage(1));
        }

        public void b(g gVar) {
            if (gVar == null) {
                this.f3852a = t.H;
            } else {
                this.f3852a = gVar;
            }
            sendMessage(obtainMessage(0));
        }

        @Override // android.os.Handler
        public void handleMessage(Message m) {
            switch (m.what) {
                case 0:
                    t.a("skip", this.f3852a);
                    if (t.H != null) {
                        t.H.f3833a = 1;
                        t.H.d();
                        break;
                    }
                    break;
                case 1:
                    a.g gVar = new a.g();
                    if (t.J.E.P) {
                        gVar.b("html5_endcard_loading_started", t.J.j);
                    }
                    if (t.J.E.P) {
                        gVar.b("html5_endcard_loading_finished", t.J.k);
                    }
                    if (t.J.E.P) {
                        gVar.b("html5_endcard_loading_time", t.J.o);
                    }
                    if (t.J.E.P) {
                        gVar.b("html5_endcard_loading_timeout", t.J.l);
                    }
                    if (t.J.p < 60000.0d) {
                        gVar.b("endcard_time_spent", t.J.p);
                    }
                    gVar.b("endcard_dissolved", t.J.m);
                    ADCVideo aDCVideo = t.J;
                    gVar.b("replay", ADCVideo.e);
                    gVar.b("reward", t.J.n);
                    t.c.d.a("continue", gVar, this.f3852a);
                    if (t.H != null) {
                        t.H.f3833a = 4;
                        t.H.d();
                        break;
                    }
                    break;
            }
        }
    }

    static class b extends Handler {
        b() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message m) {
            String str = (String) m.obj;
            int i = m.what;
            boolean z = str != null;
            if (!z) {
                str = "";
            }
            s sVar = new s(z, str, i);
            for (int i2 = 0; i2 < t.ac.size(); i2++) {
                t.ac.get(i2).a(sVar);
            }
        }

        public void a(boolean z, String str, int i) {
            if (!z) {
                str = null;
            }
            sendMessage(obtainMessage(i, str));
        }
    }

    static void a(aj ajVar) {
        c.a(ajVar);
    }
}
