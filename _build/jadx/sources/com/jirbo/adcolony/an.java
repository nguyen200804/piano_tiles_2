package com.jirbo.adcolony;

import com.cmplay.base.util.webview.util.NetworkUtil;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.jirbo.adcolony.a;
import com.mopub.mobileads.VastExtensionXmlManager;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class an {

    static class l {

        /* renamed from: a, reason: collision with root package name */
        boolean f3760a;

        /* renamed from: b, reason: collision with root package name */
        boolean f3761b;
        String c;
        String d;
        boolean f;
        double g;
        String h;
        String i;
        String j;
        m k;
        af l;
        ArrayList<String> m;
        p o;
        boolean e = false;
        h n = new h();

        l() {
        }

        boolean a(String str, boolean z, boolean z2) {
            e a2;
            if (this.f3760a && (a2 = this.n.a(str)) != null) {
                return a2.a(z, z2);
            }
            return false;
        }

        boolean a(a.g gVar) {
            if (gVar == null) {
                return false;
            }
            this.f3760a = gVar.g("enabled");
            this.f3761b = gVar.g("log_screen_overlay");
            this.c = gVar.d("last_country");
            this.d = gVar.d("last_ip");
            this.f = gVar.g("collect_iap_enabled");
            this.g = gVar.e("media_pool_size");
            this.h = gVar.d("log_level");
            this.i = gVar.d("view_network_pass_filter");
            this.j = gVar.d("cache_network_pass_filter");
            this.e = gVar.g("hardware_acceleration_disabled");
            if (this.i == null || this.i.equals("")) {
                this.i = "all";
            }
            if (this.j == null || this.j.equals("")) {
                this.j = "all";
            }
            this.k = new m();
            if (!this.k.a(gVar.a("tracking"))) {
                return false;
            }
            this.l = new af();
            if (!this.l.a(gVar.a("third_party_tracking"))) {
                return false;
            }
            this.m = gVar.c("console_messages");
            al.f3721a.b((Object) "Parsing zones");
            if (!this.n.a(gVar.b("zones"))) {
                return false;
            }
            this.o = new p();
            if (!this.o.a(gVar.a("device"))) {
                return false;
            }
            al.f3721a.b((Object) "Finished parsing app info");
            return true;
        }

        void a() {
            al.f3721a.b((Object) "Caching media");
            if (this.f3760a) {
                for (int i = 0; i < this.n.b(); i++) {
                    this.n.a(i).l();
                }
            }
        }
    }

    static class p {

        /* renamed from: a, reason: collision with root package name */
        String f3768a;

        p() {
        }

        boolean a(a.g gVar) {
            if (gVar == null) {
                return false;
            }
            this.f3768a = gVar.a(VastExtensionXmlManager.TYPE, (String) null);
            com.jirbo.adcolony.t.V = this.f3768a;
            return true;
        }
    }

    static class m {

        /* renamed from: a, reason: collision with root package name */
        String f3762a;

        /* renamed from: b, reason: collision with root package name */
        String f3763b;
        String c;
        String d;
        String e;
        String f;
        String g;
        a.g h;

        m() {
        }

        boolean a(a.g gVar) {
            if (gVar != null) {
                this.f3762a = gVar.a("update", (String) null);
                this.f3763b = gVar.a("install", (String) null);
                this.c = gVar.a("dynamic_interests", (String) null);
                this.d = gVar.a("user_meta_data", (String) null);
                this.e = gVar.a("in_app_purchase", (String) null);
                this.g = gVar.a("session_end", (String) null);
                this.f = gVar.a("session_start", (String) null);
                this.h = new a.g();
                this.h.b("update", this.f3762a);
                this.h.b("install", this.f3763b);
                this.h.b("dynamic_interests", this.c);
                this.h.b("user_meta_data", this.d);
                this.h.b("in_app_purchase", this.e);
                this.h.b("session_end", this.g);
                this.h.b("session_start", this.f);
                com.jirbo.adcolony.ag agVar = new com.jirbo.adcolony.ag("iap_cache.txt");
                a.c c = ak.c(agVar);
                if (c != null) {
                    for (int i = 0; i < c.f_(); i++) {
                        com.jirbo.adcolony.t.c.d.a("in_app_purchase", c.a(i, new a.g()));
                    }
                    agVar.c();
                    com.jirbo.adcolony.t.X.j();
                }
                com.jirbo.adcolony.t.D = true;
            }
            return true;
        }
    }

    static class i {
        String A;
        String B;
        String C;
        a.g D = new a.g();

        /* renamed from: a, reason: collision with root package name */
        String f3755a;

        /* renamed from: b, reason: collision with root package name */
        String f3756b;
        String c;
        String d;
        String e;
        String f;
        String g;
        String h;
        String i;
        String j;
        String k;
        String l;
        String m;
        String n;
        String o;
        String p;
        String q;
        String r;
        String s;
        String t;
        String u;
        String v;
        String w;
        String x;
        String y;
        String z;

        i() {
        }

        boolean a(a.g gVar) {
            if (gVar != null) {
                this.f3755a = gVar.a("replay", (String) null);
                this.f3756b = gVar.a("card_shown", (String) null);
                this.c = gVar.a("html5_interaction", (String) null);
                this.d = gVar.a("cancel", (String) null);
                this.e = gVar.a("download", (String) null);
                this.f = gVar.a("skip", (String) null);
                this.g = gVar.a("info", (String) null);
                this.h = gVar.a("custom_event", (String) null);
                this.i = gVar.a("midpoint", (String) null);
                this.j = gVar.a("card_dissolved", (String) null);
                this.k = gVar.a("start", (String) null);
                this.l = gVar.a("third_quartile", (String) null);
                this.m = gVar.a("complete", (String) null);
                this.n = gVar.a("continue", (String) null);
                this.o = gVar.a("in_video_engagement", (String) null);
                this.p = gVar.a("reward_v4vc", (String) null);
                this.r = gVar.a("first_quartile", (String) null);
                this.q = gVar.a("v4iap", (String) null);
                this.s = gVar.a("video_expanded", (String) null);
                this.t = gVar.a("sound_mute", (String) null);
                this.u = gVar.a("sound_unmute", (String) null);
                this.v = gVar.a("video_paused", (String) null);
                this.w = gVar.a("video_resumed", (String) null);
                this.x = gVar.a("native_start", (String) null);
                this.y = gVar.a("native_first_quartile", (String) null);
                this.z = gVar.a("native_midpoint", (String) null);
                this.A = gVar.a("native_third_quartile", (String) null);
                this.B = gVar.a("native_complete", (String) null);
                this.C = gVar.a("native_overlay_click", (String) null);
                this.D.b("replay", this.f3755a);
                this.D.b("card_shown", this.f3756b);
                this.D.b("html5_interaction", this.c);
                this.D.b("cancel", this.d);
                this.D.b("download", this.e);
                this.D.b("skip", this.f);
                this.D.b("info", this.g);
                this.D.b("custom_event", this.h);
                this.D.b("midpoint", this.i);
                this.D.b("card_dissolved", this.j);
                this.D.b("start", this.k);
                this.D.b("third_quartile", this.l);
                this.D.b("complete", this.m);
                this.D.b("continue", this.n);
                this.D.b("in_video_engagement", this.o);
                this.D.b("reward_v4vc", this.p);
                this.D.b("first_quartile", this.r);
                this.D.b("v4iap", this.q);
                this.D.b("video_expanded", this.s);
                this.D.b("sound_mute", this.t);
                this.D.b("sound_unmute", this.u);
                this.D.b("video_paused", this.v);
                this.D.b("video_resumed", this.w);
                this.D.b("native_start", this.x);
                this.D.b("native_first_quartile", this.y);
                this.D.b("native_midpoint", this.z);
                this.D.b("native_third_quartile", this.A);
                this.D.b("native_complete", this.B);
                this.D.b("native_overlay_click", this.C);
            }
            return true;
        }
    }

    static class af {

        /* renamed from: a, reason: collision with root package name */
        ArrayList<String> f3739a = new ArrayList<>();

        /* renamed from: b, reason: collision with root package name */
        ArrayList<String> f3740b = new ArrayList<>();
        ArrayList<String> c = new ArrayList<>();
        HashMap<String, ArrayList<String>> d = new HashMap<>();

        af() {
        }

        boolean a(a.g gVar) {
            if (gVar == null) {
                return false;
            }
            ArrayList<String> c = gVar.c("update");
            this.f3739a = c;
            if (c == null) {
                return false;
            }
            ArrayList<String> c2 = gVar.c("install");
            this.f3740b = c2;
            if (c2 == null) {
                return false;
            }
            ArrayList<String> c3 = gVar.c("session_start");
            this.c = c3;
            if (c3 == null) {
                return false;
            }
            this.d.put("update", this.f3739a);
            this.d.put("install", this.f3740b);
            this.d.put("session_start", this.c);
            return true;
        }
    }

    static class ag {

        /* renamed from: a, reason: collision with root package name */
        ArrayList<String> f3741a = new ArrayList<>();

        /* renamed from: b, reason: collision with root package name */
        ArrayList<String> f3742b = new ArrayList<>();
        ArrayList<String> c = new ArrayList<>();
        ArrayList<String> d = new ArrayList<>();
        ArrayList<String> e = new ArrayList<>();
        ArrayList<String> f = new ArrayList<>();
        ArrayList<String> g = new ArrayList<>();
        ArrayList<String> h = new ArrayList<>();
        ArrayList<String> i = new ArrayList<>();
        ArrayList<String> j = new ArrayList<>();
        ArrayList<String> k = new ArrayList<>();
        ArrayList<String> l = new ArrayList<>();
        ArrayList<String> m = new ArrayList<>();
        ArrayList<String> n = new ArrayList<>();
        ArrayList<String> o = new ArrayList<>();
        ArrayList<String> p = new ArrayList<>();
        ArrayList<String> q = new ArrayList<>();
        ArrayList<String> r = new ArrayList<>();
        ArrayList<String> s = new ArrayList<>();
        ArrayList<String> t = new ArrayList<>();
        ArrayList<String> u = new ArrayList<>();
        ArrayList<String> v = new ArrayList<>();
        ArrayList<String> w = new ArrayList<>();
        ArrayList<String> x = new ArrayList<>();
        ArrayList<String> y = new ArrayList<>();
        ArrayList<String> z = new ArrayList<>();
        ArrayList<String> A = new ArrayList<>();
        ArrayList<String> B = new ArrayList<>();
        HashMap<String, ArrayList<String>> C = new HashMap<>();

        ag() {
        }

        boolean a(a.g gVar) {
            if (gVar == null) {
                return false;
            }
            this.f3741a = gVar.c("replay");
            this.f3742b = gVar.c("card_shown");
            this.c = gVar.c("html5_interaction");
            this.d = gVar.c("cancel");
            this.e = gVar.c("download");
            this.f = gVar.c("skip");
            this.g = gVar.c("info");
            this.h = gVar.c("midpoint");
            this.i = gVar.c("card_dissolved");
            this.j = gVar.c("start");
            this.k = gVar.c("third_quartile");
            this.l = gVar.c("complete");
            this.m = gVar.c("continue");
            this.n = gVar.c("in_video_engagement");
            this.o = gVar.c("reward_v4vc");
            this.p = gVar.c("first_quartile");
            this.q = gVar.c("v4iap");
            this.r = gVar.c("video_expanded");
            this.s = gVar.c("sound_mute");
            this.t = gVar.c("sound_unmute");
            this.u = gVar.c("video_paused");
            this.v = gVar.c("video_resumed");
            this.w = gVar.c("native_start");
            this.x = gVar.c("native_first_quartile");
            this.y = gVar.c("native_midpoint");
            this.z = gVar.c("native_third_quartile");
            this.A = gVar.c("native_complete");
            this.B = gVar.c("native_overlay_click");
            this.C.put("replay", this.f3741a);
            this.C.put("card_shown", this.f3742b);
            this.C.put("html5_interaction", this.c);
            this.C.put("cancel", this.d);
            this.C.put("download", this.e);
            this.C.put("skip", this.f);
            this.C.put("info", this.g);
            this.C.put("midpoint", this.h);
            this.C.put("card_dissolved", this.i);
            this.C.put("start", this.j);
            this.C.put("third_quartile", this.k);
            this.C.put("complete", this.l);
            this.C.put("continue", this.m);
            this.C.put("in_video_engagement", this.n);
            this.C.put("reward_v4vc", this.o);
            this.C.put("first_quartile", this.p);
            this.C.put("v4iap", this.q);
            this.C.put("video_expanded", this.r);
            this.C.put("sound_mute", this.s);
            this.C.put("sound_unmute", this.t);
            this.C.put("video_paused", this.u);
            this.C.put("video_resumed", this.v);
            this.C.put("native_start", this.w);
            this.C.put("native_first_quartile", this.x);
            this.C.put("native_midpoint", this.y);
            this.C.put("native_third_quartile", this.z);
            this.C.put("native_complete", this.A);
            this.C.put("native_overlay_click", this.B);
            return true;
        }
    }

    static class h {

        /* renamed from: a, reason: collision with root package name */
        ArrayList<e> f3754a = new ArrayList<>();

        h() {
        }

        boolean a(a.c cVar) {
            if (cVar == null) {
                com.jirbo.adcolony.t.g = false;
                return false;
            }
            for (int i = 0; i < cVar.f_(); i++) {
                a.g a2 = cVar.a(i);
                e a3 = a(a2.d("uuid"));
                if (a3 == null) {
                    a3 = new e();
                }
                if (!a3.a(a2)) {
                    com.jirbo.adcolony.t.g = false;
                    return false;
                }
                this.f3754a.add(a3);
            }
            com.jirbo.adcolony.t.g = false;
            return true;
        }

        void a() {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.f3754a.size()) {
                    if (this.f3754a.get(i2).m != null) {
                        this.f3754a.get(i2).m.a();
                    }
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }

        int b() {
            return this.f3754a.size();
        }

        e a(int i) {
            return this.f3754a.get(i);
        }

        e a(String str) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.f3754a.size()) {
                    e eVar = this.f3754a.get(i2);
                    if (!eVar.f3749a.equals(str)) {
                        i = i2 + 1;
                    } else {
                        return eVar;
                    }
                } else {
                    return null;
                }
            }
        }
    }

    static class e {

        /* renamed from: a, reason: collision with root package name */
        String f3749a;

        /* renamed from: b, reason: collision with root package name */
        a.g f3750b;
        int c;
        int d;
        int e;
        int f;
        boolean g;
        boolean h;
        boolean i;
        ArrayList<String> k;
        f l;
        k m;
        g n;
        long q;
        com.jirbo.adcolony.z r;
        a.c j = new a.c();
        long o = 600000;
        long p = 60000;
        int s = 0;

        e() {
        }

        boolean a() {
            if (this.m == null) {
                return true;
            }
            Iterator<a> it = this.m.f3759a.iterator();
            int i = 0;
            while (it.hasNext()) {
                i = !it.next().b() ? i + 1 : i;
            }
            return i < this.f;
        }

        boolean b() {
            if (this.s % this.n.f != 0) {
                return false;
            }
            this.s = 0;
            return true;
        }

        boolean c() {
            return a(false, true);
        }

        /* JADX WARN: Code restructure failed: missing block: B:22:0x0089, code lost:
        
            if (r2 != null) goto L26;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x008b, code lost:
        
            com.jirbo.adcolony.t.aa = 6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:?, code lost:
        
            return com.jirbo.adcolony.al.c.b("Ad is not ready to be played, as AdColony currently has no videos available to be played in zone " + r7.f3749a + ".");
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x00bc, code lost:
        
            if (a(r2) != 0) goto L37;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:?, code lost:
        
            return false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:?, code lost:
        
            return true;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        boolean a(boolean r8, boolean r9) {
            /*
                r7 = this;
                r0 = 1
                r1 = 0
                if (r9 != 0) goto L9
                boolean r0 = r7.a(r8)
            L8:
                return r0
            L9:
                boolean r2 = r7.g
                if (r2 == 0) goto L11
                boolean r2 = r7.h
                if (r2 != 0) goto L35
            L11:
                com.jirbo.adcolony.t.aa = r0
                com.jirbo.adcolony.al r0 = com.jirbo.adcolony.al.c
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.String r2 = "Ad is not ready to be played, as zone "
                java.lang.StringBuilder r1 = r1.append(r2)
                java.lang.String r2 = r7.f3749a
                java.lang.StringBuilder r1 = r1.append(r2)
                java.lang.String r2 = " is disabled or inactive."
                java.lang.StringBuilder r1 = r1.append(r2)
                java.lang.String r1 = r1.toString()
                boolean r0 = r0.b(r1)
                goto L8
            L35:
                com.jirbo.adcolony.an$k r2 = r7.m
                int r2 = r2.b()
                if (r2 == 0) goto L45
                java.util.ArrayList<java.lang.String> r2 = r7.k
                int r2 = r2.size()
                if (r2 != 0) goto L6a
            L45:
                r0 = 5
                com.jirbo.adcolony.t.aa = r0
                com.jirbo.adcolony.al r0 = com.jirbo.adcolony.al.c
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.String r2 = "Ad is not ready to be played, as AdColony currently has no videos available to be played in zone "
                java.lang.StringBuilder r1 = r1.append(r2)
                java.lang.String r2 = r7.f3749a
                java.lang.StringBuilder r1 = r1.append(r2)
                java.lang.String r2 = "."
                java.lang.StringBuilder r1 = r1.append(r2)
                java.lang.String r1 = r1.toString()
                boolean r0 = r0.b(r1)
                goto L8
            L6a:
                java.util.ArrayList<java.lang.String> r2 = r7.k
                int r5 = r2.size()
                r3 = 0
                r4 = r1
            L72:
                if (r4 >= r5) goto Lc1
                com.jirbo.adcolony.an$a r2 = r7.i()
                if (r2 != 0) goto L83
                com.jirbo.adcolony.al r0 = com.jirbo.adcolony.al.c
                java.lang.String r1 = "Ad is not ready to be played due to an unknown error."
                boolean r0 = r0.b(r1)
                goto L8
            L83:
                boolean r6 = r2.a()
                if (r6 == 0) goto Lb1
            L89:
                if (r2 != 0) goto Lb8
                r0 = 6
                com.jirbo.adcolony.t.aa = r0
                com.jirbo.adcolony.al r0 = com.jirbo.adcolony.al.c
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.String r2 = "Ad is not ready to be played, as AdColony currently has no videos available to be played in zone "
                java.lang.StringBuilder r1 = r1.append(r2)
                java.lang.String r2 = r7.f3749a
                java.lang.StringBuilder r1 = r1.append(r2)
                java.lang.String r2 = "."
                java.lang.StringBuilder r1 = r1.append(r2)
                java.lang.String r1 = r1.toString()
                boolean r0 = r0.b(r1)
                goto L8
            Lb1:
                r7.k()
                int r2 = r4 + 1
                r4 = r2
                goto L72
            Lb8:
                int r2 = r7.a(r2)
                if (r2 != 0) goto L8
                r0 = r1
                goto L8
            Lc1:
                r2 = r3
                goto L89
            */
            throw new UnsupportedOperationException("Method not decompiled: com.jirbo.adcolony.an.e.a(boolean, boolean):boolean");
        }

        /* JADX WARN: Code restructure failed: missing block: B:20:0x0035, code lost:
        
            if (r1 == null) goto L32;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x003b, code lost:
        
            if (a(r1) == 0) goto L33;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x003d, code lost:
        
            return true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:?, code lost:
        
            return false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:?, code lost:
        
            return false;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        boolean a(boolean r7) {
            /*
                r6 = this;
                r0 = 0
                if (r7 != 0) goto L6
                com.jirbo.adcolony.t.f()
            L6:
                boolean r1 = r6.g
                if (r1 == 0) goto Le
                boolean r1 = r6.h
                if (r1 != 0) goto Lf
            Le:
                return r0
            Lf:
                com.jirbo.adcolony.an$k r1 = r6.m
                int r1 = r1.b()
                if (r1 == 0) goto Le
                java.util.ArrayList<java.lang.String> r1 = r6.k
                int r1 = r1.size()
                if (r1 == 0) goto Le
                java.util.ArrayList<java.lang.String> r1 = r6.k
                int r4 = r1.size()
                r2 = 0
                r3 = r0
            L27:
                if (r3 >= r4) goto L46
                com.jirbo.adcolony.an$a r1 = r6.i()
                if (r1 == 0) goto Le
                boolean r5 = r1.a()
                if (r5 == 0) goto L3f
            L35:
                if (r1 == 0) goto Le
                int r1 = r6.a(r1)
                if (r1 == 0) goto Le
                r0 = 1
                goto Le
            L3f:
                r6.k()
                int r1 = r3 + 1
                r3 = r1
                goto L27
            L46:
                r1 = r2
                goto L35
            */
            throw new UnsupportedOperationException("Method not decompiled: com.jirbo.adcolony.an.e.a(boolean):boolean");
        }

        boolean d() {
            if (this.c <= 1) {
                return false;
            }
            com.jirbo.adcolony.t.c.g.f3695b = true;
            com.jirbo.adcolony.z zVar = this.r;
            int i = zVar.f3881b;
            zVar.f3881b = i + 1;
            if (i == 0) {
                return false;
            }
            if (this.r.f3881b >= this.c) {
                this.r.f3881b = 0;
            }
            return true;
        }

        synchronized int a(a aVar) {
            return aVar.p ? 0 : 1;
        }

        boolean e() {
            return b(true);
        }

        boolean b(boolean z) {
            if (!z) {
                return f();
            }
            if (!this.g || !this.h) {
                com.jirbo.adcolony.t.aa = 1;
                return al.c.b("Ad is not ready, as zone " + this.f3749a + " is disabled or inactive.");
            }
            if (this.m.b() == 0) {
                com.jirbo.adcolony.t.aa = 5;
                return al.c.b("Ad is not ready, as there are currently no ads to play in zone " + this.f3749a + ".");
            }
            if (!this.m.c().v.f3757a) {
                return true;
            }
            com.jirbo.adcolony.t.aa = 14;
            return al.c.b("Ad is not ready, as zone " + this.f3749a + " is V4VC enabled and must be played using an AdColonyV4VCAd object.");
        }

        boolean f() {
            return this.g && this.h && this.m.b() != 0 && !this.m.c().v.f3757a;
        }

        boolean g() {
            return c(true);
        }

        boolean c(boolean z) {
            if (!z) {
                return h();
            }
            if (!this.g || !this.h) {
                com.jirbo.adcolony.t.aa = 1;
                return al.c.b("Ad is not ready, as zone " + this.f3749a + " is disabled or inactive.");
            }
            if (this.m.b() == 0) {
                com.jirbo.adcolony.t.aa = 5;
                return al.c.b("Ad is not ready, as there are currently no ads to play in zone " + this.f3749a + ".");
            }
            if (this.m.c().v.f3757a) {
                return true;
            }
            com.jirbo.adcolony.t.aa = 15;
            return al.c.b("Ad is not ready, as zone " + this.f3749a + " is not V4VC enabled and must be played using an AdColonyVideoAd object.");
        }

        boolean h() {
            return this.g && this.h && this.m.b() != 0 && this.m.c().v.f3757a;
        }

        a i() {
            if (this.k.size() > 0) {
                return this.m.a(this.k.get(this.r.c % this.k.size()));
            }
            return null;
        }

        a j() {
            if (this.k.size() > 0) {
                return this.m.b(this.r.c % this.k.size());
            }
            return null;
        }

        void k() {
            if (this.k.size() > 0) {
                this.r.c = (this.r.c + 1) % this.k.size();
            }
        }

        boolean a(a.g gVar) {
            if (gVar == null) {
                return false;
            }
            this.f3750b = gVar;
            this.f3749a = gVar.d("uuid");
            this.g = gVar.g("enabled");
            this.h = gVar.g("active");
            this.q = Long.parseLong(gVar.a("last_config_ms", "0")) == 0 ? System.currentTimeMillis() : Long.parseLong(gVar.d("last_config_ms"));
            this.i = gVar.g("clear_ad_queue");
            if (!this.g || !this.h) {
                return true;
            }
            this.c = gVar.f("play_interval");
            this.d = gVar.f("daily_play_cap");
            this.e = gVar.f("session_play_cap");
            this.f = gVar.a("min_ad_thresh", 1);
            this.p = gVar.a("min_config_win", 60) * 1000;
            this.o = gVar.a("max_config_win", NetworkUtil.NATIVE_ERROR) * 1000;
            this.k = new ArrayList<>();
            ArrayList<String> c = gVar.c("play_order");
            this.k = c;
            if (c == null) {
                return false;
            }
            this.l = new f();
            if (!this.l.a(gVar.a("tracking"))) {
                return false;
            }
            if (this.m == null || this.i) {
                this.m = new k();
            }
            if (!this.m.a(gVar.b("ads"))) {
                return false;
            }
            if (!com.jirbo.adcolony.t.r) {
                al.c.a("Finished parsing response for zone \"").a(this.f3749a).a("\": ").a(this.m.b()).b((Object) " ad(s). Attempting to cache media assets.");
            }
            this.n = new g();
            if (!this.n.a(gVar.a("v4vc"))) {
                return false;
            }
            this.r = com.jirbo.adcolony.t.c.g.a(this.f3749a);
            al.f3721a.b((Object) "Finished parsing zone");
            return true;
        }

        void l() {
            if (this.g && this.h) {
                for (int i = 0; i < this.m.b(); i++) {
                    this.m.a(i).d();
                }
            }
        }
    }

    static class f {

        /* renamed from: a, reason: collision with root package name */
        String f3751a;

        f() {
        }

        boolean a(a.g gVar) {
            if (gVar != null) {
                this.f3751a = gVar.a("request", (String) null);
            }
            return true;
        }
    }

    static class k {

        /* renamed from: a, reason: collision with root package name */
        ArrayList<a> f3759a = new ArrayList<>();

        k() {
        }

        void a() {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.f3759a.size()) {
                    a aVar = this.f3759a.get(i2);
                    if (aVar.b() && !aVar.r) {
                        com.jirbo.adcolony.t.f();
                        aVar.r = true;
                    }
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }

        boolean a(a.c cVar) {
            if (cVar == null) {
                return false;
            }
            for (int i = 0; i < this.f3759a.size(); i++) {
                if (this.f3759a.get(i).b()) {
                    this.f3759a.remove(i);
                }
            }
            for (int i2 = 0; i2 < cVar.f_(); i2++) {
                a aVar = new a();
                if (!aVar.a(cVar.a(i2))) {
                    return false;
                }
                this.f3759a.add(aVar);
            }
            return true;
        }

        int b() {
            return this.f3759a.size();
        }

        a a(int i) {
            return this.f3759a.get(i);
        }

        a c() {
            return this.f3759a.get(0);
        }

        a a(String str) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.f3759a.size()) {
                    a aVar = this.f3759a.get(i2);
                    if (!aVar.f3727a.equals(str)) {
                        i = i2 + 1;
                    } else {
                        return aVar;
                    }
                } else {
                    return null;
                }
            }
        }

        a b(int i) {
            while (i < this.f3759a.size()) {
                a aVar = this.f3759a.get(i);
                if (!aVar.z.f3781a) {
                    i++;
                } else {
                    return aVar;
                }
            }
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 < this.f3759a.size()) {
                    a aVar2 = this.f3759a.get(i3);
                    if (!aVar2.z.f3781a) {
                        i2 = i3 + 1;
                    } else {
                        return aVar2;
                    }
                } else {
                    return null;
                }
            }
        }
    }

    static class b {

        /* renamed from: a, reason: collision with root package name */
        String f3743a;

        /* renamed from: b, reason: collision with root package name */
        String f3744b;
        boolean c;

        b() {
        }

        boolean a() {
            return true;
        }

        boolean a(a.g gVar) {
            if (gVar == null) {
                return false;
            }
            this.c = gVar.g("enabled");
            if (!this.c) {
                return true;
            }
            this.f3743a = gVar.c("product_ids").get(0);
            this.f3744b = gVar.d("in_progress");
            return true;
        }
    }

    static class a {
        b A;

        /* renamed from: a, reason: collision with root package name */
        String f3727a;

        /* renamed from: b, reason: collision with root package name */
        String f3728b;
        int c;
        int d;
        int e;
        int f;
        int g;
        int h;
        long i;
        boolean j;
        boolean k;
        boolean l;
        boolean m;
        boolean n;
        boolean o;
        boolean p;
        boolean q;
        boolean r;
        u s;
        ag t;
        t u;
        j v;
        i w;
        o x;
        d y;
        w z;

        a() {
        }

        boolean a() {
            if (!this.u.a()) {
                return false;
            }
            if (this.v.f3757a && !this.v.a()) {
                return false;
            }
            if (!this.z.f3781a || this.z.a()) {
                return (!this.x.d || this.x.a()) && this.y.a() && this.A.a() && !b();
            }
            return false;
        }

        boolean b() {
            return this.p || System.currentTimeMillis() - this.i > ((long) (this.h * 1000));
        }

        boolean c() {
            return this.q;
        }

        boolean a(a.g gVar) {
            if (gVar == null) {
                return false;
            }
            this.f3727a = gVar.d("uuid");
            this.f3728b = gVar.d("title");
            this.c = gVar.f("ad_campaign_id");
            this.d = gVar.f("ad_id");
            this.e = gVar.f("ad_group_id");
            this.f = gVar.f("cpcv_bid");
            this.g = gVar.f("net_earnings");
            this.h = gVar.a("expires", 660);
            this.j = gVar.g("enable_in_app_store");
            this.k = gVar.g("video_events_on_replays");
            this.l = gVar.g("test_ad");
            this.m = gVar.g("fullscreen");
            this.n = gVar.g("house_ad");
            this.o = gVar.g("contracted");
            this.r = false;
            this.i = System.currentTimeMillis();
            this.s = new u();
            if (!this.s.a(gVar.a("limits"))) {
                return false;
            }
            this.t = new ag();
            if (!this.t.a(gVar.a("third_party_tracking"))) {
                return false;
            }
            this.u = new t();
            if (!this.u.a(gVar.a("in_app_browser"))) {
                return false;
            }
            this.z = new w();
            if (!this.z.a(gVar.a("native"))) {
                return false;
            }
            this.v = new j();
            if (!this.v.a(gVar.a("v4vc"))) {
                return false;
            }
            this.w = new i();
            if (!this.w.a(gVar.a("ad_tracking"))) {
                return false;
            }
            this.x = new o();
            if (!this.x.a(gVar.a("companion_ad"))) {
                return false;
            }
            this.y = new d();
            if (!this.y.a(gVar.a("video"))) {
                return false;
            }
            this.A = new b();
            if (!this.A.a(gVar.a("v4iap"))) {
                return false;
            }
            al.f3722b.b((Object) "Finished parsing ad");
            return true;
        }

        void d() {
            this.v.b();
            this.u.b();
            this.z.b();
            this.x.b();
            this.y.c();
        }
    }

    static class x {

        /* renamed from: a, reason: collision with root package name */
        boolean f3783a;

        /* renamed from: b, reason: collision with root package name */
        boolean f3784b;
        String c;
        String d;
        String e;

        x() {
        }

        boolean a(a.g gVar) {
            if (gVar == null) {
                return false;
            }
            this.f3783a = gVar.g("enabled");
            if (!this.f3783a) {
                return true;
            }
            this.f3784b = gVar.g("in_app");
            this.c = gVar.d("click_action_type");
            this.e = gVar.d("click_action");
            this.d = gVar.d("label");
            return true;
        }
    }

    static class y {

        /* renamed from: a, reason: collision with root package name */
        String f3785a;

        /* renamed from: b, reason: collision with root package name */
        String f3786b;
        String c;
        String d;

        y() {
        }

        boolean a(a.g gVar) {
            if (gVar == null) {
                return false;
            }
            this.f3785a = gVar.d("image");
            this.f3786b = gVar.d("last_modified");
            this.c = gVar.d("click_action_type");
            this.d = gVar.d("click_action");
            return true;
        }
    }

    static class z {

        /* renamed from: a, reason: collision with root package name */
        String f3787a;

        /* renamed from: b, reason: collision with root package name */
        String f3788b;

        z() {
        }

        boolean a(a.g gVar) {
            if (gVar == null) {
                return false;
            }
            this.f3787a = gVar.d("image");
            this.f3788b = gVar.d("last_modified");
            return true;
        }
    }

    static class w {

        /* renamed from: a, reason: collision with root package name */
        boolean f3781a;

        /* renamed from: b, reason: collision with root package name */
        boolean f3782b;
        String c;
        String d;
        String e;
        z f;
        y g;
        x h;
        boolean i;
        s j;
        s k;

        w() {
        }

        boolean a(a.g gVar) {
            if (gVar == null) {
                return false;
            }
            this.f3781a = gVar.g("enabled");
            this.c = gVar.d("advertiser_name");
            this.d = gVar.d("description");
            this.e = gVar.d("title");
            this.i = false;
            this.f = new z();
            if (!this.f.a(gVar.a("thumb"))) {
                return false;
            }
            this.g = new y();
            if (!this.g.a(gVar.a("poster"))) {
                return false;
            }
            this.j = new s();
            if (!this.j.a(gVar.a("mute"))) {
                return false;
            }
            this.f3782b = this.j.f;
            this.k = new s();
            if (!this.k.a(gVar.a("unmute"))) {
                return false;
            }
            this.h = new x();
            return this.h.a(gVar.a("overlay"));
        }

        boolean a() {
            return this.f3781a && com.jirbo.adcolony.t.c.c.a(this.g.f3785a) && com.jirbo.adcolony.t.c.c.a(this.f.f3787a) && this.j.a() && this.k.a() && !this.i;
        }

        void b() {
            com.jirbo.adcolony.t.c.c.a(this.g.f3785a, this.g.f3786b);
            com.jirbo.adcolony.t.c.c.a(this.f.f3787a, this.f.f3788b);
            this.j.b();
            this.k.b();
        }
    }

    static class u {

        /* renamed from: a, reason: collision with root package name */
        int f3777a;

        /* renamed from: b, reason: collision with root package name */
        int f3778b;
        int c;
        int d;
        int e;
        int f;
        int g;
        int h;

        u() {
        }

        boolean a(a.g gVar) {
            if (gVar == null) {
                return false;
            }
            this.f3777a = -1;
            this.f3778b = -1;
            this.c = -1;
            this.d = -1;
            this.e = -1;
            this.f = -1;
            this.g = -1;
            this.h = -1;
            return true;
        }
    }

    static class t {

        /* renamed from: a, reason: collision with root package name */
        String f3775a;

        /* renamed from: b, reason: collision with root package name */
        String f3776b;
        String c;
        String d;
        String e;
        String f;
        String g;
        s h;
        n i;
        n j;
        n k;
        n l;
        n m;

        t() {
        }

        boolean a() {
            return com.jirbo.adcolony.t.c.c.a(this.f3775a) && com.jirbo.adcolony.t.c.c.a(this.c) && com.jirbo.adcolony.t.c.c.a(this.e) && this.h.a() && this.i.a() && this.j.a() && this.k.a() && this.l.a() && this.m.a();
        }

        boolean a(a.g gVar) {
            if (gVar == null) {
                return false;
            }
            this.f3775a = gVar.d("tiny_glow_image");
            this.f3776b = gVar.d("tiny_glow_image_last_modified;");
            this.c = gVar.d("background_bar_image");
            this.d = gVar.d("background_bar_image_last_modified");
            this.e = gVar.d("background_tile_image");
            this.f = gVar.d("background_tile_image_last_modified");
            this.g = gVar.d(FacebookAdapter.KEY_BACKGROUND_COLOR);
            this.h = new s();
            if (!this.h.a(gVar.a("logo"))) {
                return false;
            }
            this.h = new s();
            if (!this.h.a(gVar.a("logo"))) {
                return false;
            }
            this.i = new n();
            if (!this.i.a(gVar.a("stop"))) {
                return false;
            }
            this.j = new n();
            if (!this.j.a(gVar.a("back"))) {
                return false;
            }
            this.k = new n();
            if (!this.k.a(gVar.a("close"))) {
                return false;
            }
            this.l = new n();
            if (!this.l.a(gVar.a("forward"))) {
                return false;
            }
            this.m = new n();
            return this.m.a(gVar.a("reload"));
        }

        void b() {
            com.jirbo.adcolony.t.c.c.a(this.f3775a, this.f3776b);
            com.jirbo.adcolony.t.c.c.a(this.c, this.d);
            com.jirbo.adcolony.t.c.c.a(this.e, this.f);
            this.h.b();
            this.i.b();
            this.j.b();
            this.k.b();
            this.l.b();
            this.m.b();
        }
    }

    static class g {

        /* renamed from: a, reason: collision with root package name */
        boolean f3752a;

        /* renamed from: b, reason: collision with root package name */
        c f3753b;
        int c;
        String d;
        boolean e;
        int f;

        g() {
        }

        boolean a(a.g gVar) {
            if (gVar == null) {
                return false;
            }
            this.f3752a = gVar.g("enabled");
            if (!this.f3752a) {
                return true;
            }
            this.f3753b = new c();
            if (!this.f3753b.a(gVar.a("limits"))) {
                return false;
            }
            this.c = gVar.f("reward_amount");
            this.d = gVar.d("reward_name");
            this.e = gVar.g("client_side");
            this.f = gVar.f("videos_per_reward");
            return true;
        }
    }

    static class c {

        /* renamed from: a, reason: collision with root package name */
        int f3745a;

        /* renamed from: b, reason: collision with root package name */
        int f3746b;
        int c;

        c() {
        }

        boolean a(a.g gVar) {
            if (gVar == null) {
                return false;
            }
            this.f3745a = -1;
            this.f3746b = -1;
            this.c = -1;
            return true;
        }
    }

    static class j {

        /* renamed from: a, reason: collision with root package name */
        boolean f3757a;

        /* renamed from: b, reason: collision with root package name */
        ad f3758b;
        ab c;

        j() {
        }

        boolean a() {
            return this.f3758b.a() && this.c.a();
        }

        boolean a(a.g gVar) {
            if (gVar == null) {
                return false;
            }
            this.f3757a = gVar.g("enabled");
            if (!this.f3757a) {
                return true;
            }
            this.f3758b = new ad();
            if (!this.f3758b.a(gVar.a("pre_popup"))) {
                return false;
            }
            this.c = new ab();
            return this.c.a(gVar.a("post_popup"));
        }

        void b() {
            if (this.f3757a) {
                this.f3758b.b();
                this.c.b();
            }
        }
    }

    static class ad {

        /* renamed from: a, reason: collision with root package name */
        String f3735a;

        /* renamed from: b, reason: collision with root package name */
        String f3736b;
        s c;
        ac d;

        ad() {
        }

        boolean a() {
            return com.jirbo.adcolony.t.c.c.a(this.f3735a) && this.c.a() && this.d.a();
        }

        boolean a(a.g gVar) {
            this.f3735a = gVar.d("background_image");
            this.f3736b = gVar.d("background_image_last_modified");
            this.c = new s();
            if (!this.c.a(gVar.a("background_logo"))) {
                return false;
            }
            this.d = new ac();
            return this.d.a(gVar.a("dialog"));
        }

        void b() {
            com.jirbo.adcolony.t.c.c.a(this.f3735a, this.f3736b);
            this.c.b();
            this.d.b();
        }
    }

    static class ac {

        /* renamed from: a, reason: collision with root package name */
        int f3733a;

        /* renamed from: b, reason: collision with root package name */
        String f3734b;
        int c;
        int d;
        String e;
        String f;
        String g;
        String h;
        String i;
        String j;
        String k;
        s l;
        n m;
        n n;

        ac() {
        }

        boolean a() {
            return com.jirbo.adcolony.t.c.c.a(this.e) && this.l.a() && this.m.a();
        }

        boolean a(a.g gVar) {
            this.f3733a = gVar.f("scale");
            this.f3734b = gVar.d("label_reward");
            this.c = gVar.f(VastIconXmlManager.WIDTH);
            this.d = gVar.f(VastIconXmlManager.HEIGHT);
            this.e = gVar.d("image");
            this.f = gVar.d("image_last_modified");
            this.g = gVar.d("label");
            this.h = gVar.d("label_rgba");
            this.i = gVar.d("label_shadow_rgba");
            this.j = gVar.d("label_fraction");
            this.k = gVar.d("label_html");
            this.l = new s();
            if (!this.l.a(gVar.a("logo"))) {
                return false;
            }
            this.m = new n();
            if (!this.m.a(gVar.a("option_yes"))) {
                return false;
            }
            this.n = new n();
            return this.n.a(gVar.a("option_no"));
        }

        void b() {
            com.jirbo.adcolony.t.c.c.a(this.e, this.f);
            this.l.b();
            this.m.b();
            this.n.b();
        }
    }

    static class ab {

        /* renamed from: a, reason: collision with root package name */
        String f3731a;

        /* renamed from: b, reason: collision with root package name */
        String f3732b;
        s c;
        aa d;

        ab() {
        }

        boolean a() {
            return com.jirbo.adcolony.t.c.c.a(this.f3731a) && this.c.a() && this.d.a();
        }

        boolean a(a.g gVar) {
            this.f3731a = gVar.d("background_image");
            this.f3732b = gVar.d("background_image_last_modified");
            this.c = new s();
            if (!this.c.a(gVar.a("background_logo"))) {
                return false;
            }
            this.d = new aa();
            return this.d.a(gVar.a("dialog"));
        }

        void b() {
            com.jirbo.adcolony.t.c.c.a(this.f3731a, this.f3732b);
            this.d.b();
        }
    }

    static class aa {

        /* renamed from: a, reason: collision with root package name */
        int f3729a;

        /* renamed from: b, reason: collision with root package name */
        String f3730b;
        int c;
        int d;
        String e;
        String f;
        String g;
        String h;
        String i;
        String j;
        String k;
        s l;
        n m;

        aa() {
        }

        boolean a() {
            return com.jirbo.adcolony.t.c.c.a(this.e) && this.l.a() && this.m.a();
        }

        boolean a(a.g gVar) {
            this.f3729a = gVar.f("scale");
            this.f3730b = gVar.d("label_reward");
            this.c = gVar.f(VastIconXmlManager.WIDTH);
            this.d = gVar.f(VastIconXmlManager.HEIGHT);
            this.e = gVar.d("image");
            this.f = gVar.d("image_last_modified");
            this.g = gVar.d("label");
            this.h = gVar.d("label_rgba");
            this.i = gVar.d("label_shadow_rgba");
            this.j = gVar.d("label_fraction");
            this.k = gVar.d("label_html");
            this.l = new s();
            if (!this.l.a(gVar.a("logo"))) {
                return false;
            }
            this.m = new n();
            return this.m.a(gVar.a("option_done"));
        }

        void b() {
            com.jirbo.adcolony.t.c.c.a(this.e, this.f);
            this.l.b();
            this.m.b();
        }
    }

    static class s {

        /* renamed from: a, reason: collision with root package name */
        int f3773a;

        /* renamed from: b, reason: collision with root package name */
        int f3774b;
        int c;
        String d;
        String e;
        boolean f;

        s() {
        }

        boolean a() {
            if (this.f) {
                return com.jirbo.adcolony.t.c.c.a(this.d);
            }
            return true;
        }

        boolean a(a.g gVar) {
            if (gVar == null) {
                return false;
            }
            this.f = gVar.a("enabled", true);
            this.f3773a = gVar.f(VastIconXmlManager.WIDTH);
            this.f3774b = gVar.f(VastIconXmlManager.HEIGHT);
            this.c = gVar.f("scale");
            this.d = gVar.d("image");
            this.e = gVar.d("image_last_modified");
            if (!this.e.equals("")) {
                return true;
            }
            this.e = gVar.d("last_modified");
            return true;
        }

        void b() {
            com.jirbo.adcolony.t.c.c.a(this.d, this.e);
        }
    }

    static class r {

        /* renamed from: a, reason: collision with root package name */
        boolean f3771a;

        /* renamed from: b, reason: collision with root package name */
        String f3772b;
        String c;

        r() {
        }

        boolean a() {
            return !this.f3771a || com.jirbo.adcolony.t.c.c.a(this.f3772b);
        }

        boolean a(a.g gVar) {
            if (gVar == null) {
                return false;
            }
            this.f3771a = gVar.a("enabled", false);
            this.f3772b = gVar.d("file_url");
            this.c = gVar.d("last_modified");
            return true;
        }

        void b() {
            com.jirbo.adcolony.t.c.c.a(this.f3772b, this.c);
        }
    }

    static class n {

        /* renamed from: a, reason: collision with root package name */
        boolean f3764a;

        /* renamed from: b, reason: collision with root package name */
        int f3765b;
        int c;
        int d;
        int e;
        String f;
        String g;
        String h;
        String i;
        String j;
        String k;
        String l;
        String m;
        String n;
        String o;
        String p;

        n() {
        }

        boolean a() {
            if (this.f3764a) {
                return com.jirbo.adcolony.t.c.c.a(this.f) && com.jirbo.adcolony.t.c.c.a(this.h);
            }
            return true;
        }

        boolean a(a.g gVar) {
            if (gVar == null) {
                return false;
            }
            this.f3764a = gVar.a("enabled", true);
            this.e = gVar.f("delay");
            this.f3765b = gVar.f(VastIconXmlManager.WIDTH);
            this.c = gVar.f(VastIconXmlManager.HEIGHT);
            this.d = gVar.f("scale");
            this.f = gVar.d("image_normal");
            this.g = gVar.d("image_normal_last_modified");
            this.h = gVar.d("image_down");
            this.i = gVar.d("image_down_last_modified");
            this.j = gVar.d("click_action");
            this.k = gVar.d("click_action_type");
            this.l = gVar.d("label");
            this.m = gVar.d("label_rgba");
            this.n = gVar.d("label_shadow_rgba");
            this.o = gVar.d("label_html");
            this.p = gVar.d("event");
            return true;
        }

        void b() {
            com.jirbo.adcolony.t.c.c.a(this.f, this.g);
            com.jirbo.adcolony.t.c.c.a(this.h, this.i);
        }
    }

    static class o {

        /* renamed from: a, reason: collision with root package name */
        String f3766a;

        /* renamed from: b, reason: collision with root package name */
        int f3767b;
        int c;
        boolean d;
        boolean e;
        boolean f;
        double g;
        ae h;
        q i;

        o() {
        }

        boolean a() {
            if (this.i.f3769a && !this.i.a()) {
                return false;
            }
            if (this.d) {
                return this.h.a() || this.i.a();
            }
            return true;
        }

        boolean a(a.g gVar) {
            if (gVar == null) {
                return false;
            }
            this.d = gVar.g("enabled");
            if (!this.d) {
                return true;
            }
            this.f3766a = gVar.d("uuid");
            this.f3767b = gVar.f("ad_id");
            this.c = gVar.f("ad_campaign_id");
            this.e = gVar.g("dissolve");
            this.f = gVar.g("enable_in_app_store");
            this.g = gVar.e("dissolve_delay");
            this.h = new ae();
            if (!this.h.a(gVar.a("static"))) {
                return false;
            }
            this.i = new q();
            return this.i.a(gVar.a("html5"));
        }

        void b() {
            if (this.d) {
                this.h.b();
                this.i.b();
            }
        }
    }

    static class ae {

        /* renamed from: a, reason: collision with root package name */
        boolean f3737a;

        /* renamed from: b, reason: collision with root package name */
        int f3738b;
        int c;
        String d;
        String e;
        n f;
        n g;
        n h;
        n i;

        ae() {
        }

        boolean a() {
            if (this.f3737a) {
                return com.jirbo.adcolony.t.c.c.a(this.d) && this.h.a() && this.i.a() && this.g.a() && this.f.a();
            }
            return true;
        }

        boolean a(a.g gVar) {
            if (gVar == null) {
                return false;
            }
            this.f3737a = gVar.g("enabled");
            if (!this.f3737a) {
                return true;
            }
            this.f3738b = gVar.f(VastIconXmlManager.WIDTH);
            this.c = gVar.f(VastIconXmlManager.HEIGHT);
            this.d = gVar.d("background_image");
            this.e = gVar.d("background_image_last_modified");
            if (com.jirbo.adcolony.t.f3851b != null) {
                this.d = com.jirbo.adcolony.t.f3851b;
            }
            this.h = new n();
            if (!this.h.a(gVar.a("replay"))) {
                return false;
            }
            this.i = new n();
            if (!this.i.a(gVar.a("continue"))) {
                return false;
            }
            this.g = new n();
            if (!this.g.a(gVar.a("download"))) {
                return false;
            }
            this.f = new n();
            return this.f.a(gVar.a("info"));
        }

        void b() {
            if (this.f3737a) {
                com.jirbo.adcolony.t.c.c.a(this.d, this.e);
                this.h.b();
                this.i.b();
                this.g.b();
                this.f.b();
            }
        }
    }

    static class q {

        /* renamed from: a, reason: collision with root package name */
        boolean f3769a;

        /* renamed from: b, reason: collision with root package name */
        double f3770b;
        boolean c;
        boolean d;
        String e;
        v f;
        String g;
        s h;
        n i;
        n j;

        q() {
        }

        boolean a() {
            if (aq.c()) {
                return this.f3769a && this.f.a() && this.h.a() && this.i.a() && this.j.a();
            }
            com.jirbo.adcolony.t.aa = 8;
            return al.c.b("Ad not ready due to no network connection.");
        }

        boolean a(a.g gVar) {
            if (gVar == null) {
                return false;
            }
            this.f3769a = gVar.g("enabled");
            this.f3770b = gVar.e("load_timeout");
            this.c = gVar.g("load_timeout_enabled");
            this.d = gVar.g("load_spinner_enabled");
            this.e = gVar.d(FacebookAdapter.KEY_BACKGROUND_COLOR);
            this.g = gVar.d("html5_tag");
            this.f = new v();
            if (!this.f.a(gVar.a("mraid_js"))) {
                return false;
            }
            this.h = new s();
            if (!this.h.a(gVar.a("background_logo"))) {
                return false;
            }
            this.i = new n();
            if (!this.i.a(gVar.a("replay"))) {
                return false;
            }
            this.j = new n();
            return this.j.a(gVar.a("close"));
        }

        void b() {
            if (this.f3769a) {
                if (this.f != null) {
                    this.f.b();
                }
                if (this.h != null) {
                    this.h.b();
                }
                if (this.i != null) {
                    this.i.b();
                }
                if (this.j != null) {
                    this.j.b();
                }
            }
        }
    }

    static class v {

        /* renamed from: a, reason: collision with root package name */
        boolean f3779a;

        /* renamed from: b, reason: collision with root package name */
        String f3780b;
        String c;

        v() {
        }

        boolean a() {
            return !this.f3779a || com.jirbo.adcolony.t.c.c.a(this.f3780b);
        }

        boolean a(a.g gVar) {
            if (gVar == null) {
                return false;
            }
            this.f3779a = gVar.g("enabled");
            if (!this.f3779a) {
                return true;
            }
            this.f3780b = gVar.d("url");
            this.c = gVar.d("last_modified");
            return true;
        }

        void b() {
            com.jirbo.adcolony.t.c.c.a(this.f3780b, this.c);
        }
    }

    static class d {

        /* renamed from: a, reason: collision with root package name */
        boolean f3747a;

        /* renamed from: b, reason: collision with root package name */
        int f3748b;
        int c;
        String d;
        String e;
        String f;
        String g;
        String h;
        String i;
        String j;
        double k;
        n l;
        n m;
        n n;
        r o;

        d() {
        }

        boolean a() {
            if (!this.f3747a) {
                return true;
            }
            if (com.jirbo.adcolony.t.c.c.a(this.d) && this.l.a() && this.m.a() && this.o.a() && this.n.a()) {
                if (com.jirbo.adcolony.t.c.f3702b.i.i.equals("online") && !aq.c()) {
                    com.jirbo.adcolony.t.aa = 9;
                    return al.c.b("Video not ready due to VIEW_FILTER_ONLINE");
                }
                if (com.jirbo.adcolony.t.c.f3702b.i.i.equals("wifi") && !aq.a()) {
                    com.jirbo.adcolony.t.aa = 9;
                    return al.c.b("Video not ready due to VIEW_FILTER_WIFI");
                }
                if (com.jirbo.adcolony.t.c.f3702b.i.i.equals("cell") && !aq.b()) {
                    com.jirbo.adcolony.t.aa = 9;
                    return al.c.b("Video not ready due to VIEW_FILTER_CELL");
                }
                if (!com.jirbo.adcolony.t.c.f3702b.i.i.equals("offline") || !aq.c()) {
                    return true;
                }
                com.jirbo.adcolony.t.aa = 9;
                return al.c.b("Video not ready due to VIEW_FILTER_OFFLINE");
            }
            return false;
        }

        String b() {
            return com.jirbo.adcolony.t.c.c.b(this.d);
        }

        boolean a(a.g gVar) {
            if (gVar == null) {
                return false;
            }
            this.f3747a = gVar.g("enabled");
            if (!this.f3747a) {
                return true;
            }
            this.f3748b = gVar.f(VastIconXmlManager.WIDTH);
            this.c = gVar.f(VastIconXmlManager.HEIGHT);
            this.d = gVar.d("url");
            this.e = gVar.d("last_modified");
            this.f = gVar.d("video_frame_rate");
            this.g = gVar.d("audio_channels");
            this.h = gVar.d("audio_codec");
            this.i = gVar.d("audio_sample_rate");
            this.j = gVar.d("video_codec");
            this.k = gVar.e(VastIconXmlManager.DURATION);
            this.l = new n();
            if (!this.l.a(gVar.a("skip_video"))) {
                return false;
            }
            this.m = new n();
            if (!this.m.a(gVar.a("in_video_engagement"))) {
                return false;
            }
            this.o = new r();
            if (!this.o.a(gVar.a("haptic"))) {
                return false;
            }
            this.n = new n();
            return this.n.a(gVar.a("in_video_engagement").a("image_overlay"));
        }

        void c() {
            com.jirbo.adcolony.t.c.c.a(this.d, this.e);
            this.m.b();
            this.l.b();
            this.o.b();
            this.n.b();
        }
    }
}
