package com.jirbo.adcolony;

import com.jirbo.adcolony.a;
import com.jirbo.adcolony.an;
import com.jirbo.adcolony.b;
import com.mopub.mobileads.VastExtensionXmlManager;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class as implements b.a {

    /* renamed from: a, reason: collision with root package name */
    af f3799a;
    int f;

    /* renamed from: b, reason: collision with root package name */
    ArrayList<a> f3800b = new ArrayList<>();
    ArrayList<a> c = new ArrayList<>();
    int d = 0;
    boolean e = false;
    HashMap<Integer, Boolean> g = new HashMap<>();

    as(af afVar) {
        this.f3799a = afVar;
    }

    void a(String str, g gVar) {
        if (this.f3799a != null && this.f3799a.f3702b != null && this.f3799a.f3702b.i != null && this.f3799a.f3702b.i.n != null && this.f3799a.f3702b.i.n.a(str) != null) {
            al.f3721a.a("Ad request for zone ").b((Object) str);
            an.e a2 = this.f3799a.f3702b.i.n.a(str);
            if (a2 != null && a2.l != null && a2.l.f3751a != null) {
                a.g gVar2 = new a.g();
                if (gVar.f3834b == 0) {
                    gVar2.b("request_denied", false);
                } else {
                    gVar2.b("request_denied", true);
                }
                gVar2.b("request_denied_reason", gVar.f3834b);
                a("request", a2.l.f3751a, gVar2, gVar);
                al.f3721a.a("Tracking ad request - URL : ").b((Object) a2.l.f3751a);
            }
        }
    }

    void a(String str, a.g gVar) {
        an.m mVar = this.f3799a.f3702b.i.k;
        if (mVar != null) {
            a(str, mVar.h.d(str), gVar);
        }
        an.af afVar = this.f3799a.f3702b.i.l;
        if (afVar != null) {
            a(str, afVar.d.get(str));
        }
    }

    void b(String str, g gVar) {
        a(str, (a.g) null, gVar);
    }

    void a(String str, a.g gVar, g gVar2) {
        if (str == null) {
            al.d.b((Object) "No such event type:").b((Object) str);
            return;
        }
        if (str.equals("start") || str.equals("native_start")) {
            t.c.e.j++;
        }
        if (gVar == null) {
            gVar = new a.g();
            gVar.b("replay", gVar2.p);
        }
        gVar.b("s_imp_count", t.c.e.j);
        a(str, gVar2.v.get(str), gVar, gVar2);
        a(str, gVar2.w.get(str));
    }

    void a(String str, String str2, a.g gVar) {
        a(str, str2, gVar, null);
    }

    void a(String str, String str2, a.g gVar, g gVar2) {
        if (str2 != null && !str2.equals("")) {
            if (gVar == null) {
                gVar = new a.g();
            }
            String a2 = u.a();
            if (gVar2 != null) {
                gVar.b("asi", gVar2.h);
            }
            double b2 = u.b() - this.f3799a.e.g;
            if (b2 <= 0.0d || b2 < 604800.0d) {
            }
            gVar.b("s_time", t.c.e.i);
            gVar.b("sid", this.f3799a.e.k);
            gVar.b("guid", a2);
            gVar.b("guid_key", u.b(a2 + "DUBu6wJ27y6xs7VWmNDw67DD"));
            a aVar = new a();
            aVar.f3801a = str;
            aVar.f3802b = str2;
            al.f3721a.b((Object) "EVENT ---------------------------");
            al.f3721a.a("EVENT - TYPE = ").b((Object) str);
            al.f3721a.a("EVENT - URL  = ").b((Object) str2);
            aVar.c = gVar.o();
            if (str.equals("reward_v4vc")) {
                aVar.d = gVar.d("v4vc_name");
                aVar.h = gVar.f("v4vc_amount");
            }
            this.f3800b.add(aVar);
            this.e = true;
            t.o = true;
        }
    }

    void a(String str, ArrayList<String> arrayList) {
        if (arrayList != null && arrayList.size() != 0) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < arrayList.size()) {
                    String str2 = arrayList.get(i2);
                    a aVar = new a();
                    aVar.f3801a = str;
                    aVar.f3802b = str2;
                    aVar.l = true;
                    this.f3800b.add(aVar);
                    i = i2 + 1;
                } else {
                    this.e = true;
                    t.o = true;
                    return;
                }
            }
        }
    }

    void a(double d, g gVar) {
        double d2 = gVar.k;
        if (d >= d2) {
            if (d2 < 0.25d && d >= 0.25d) {
                if (f.a(gVar.c) || !gVar.g.equals("native")) {
                    b("first_quartile", gVar);
                } else {
                    b("native_first_quartile", gVar);
                }
            }
            if (d2 < 0.5d && d >= 0.5d) {
                if (f.a(gVar.c) || !gVar.g.equals("native")) {
                    b("midpoint", gVar);
                } else {
                    b("native_midpoint", gVar);
                }
            }
            if (d2 < 0.75d && d >= 0.75d) {
                if (f.a(gVar.c) || !gVar.g.equals("native")) {
                    b("third_quartile", gVar);
                } else {
                    b("native_third_quartile", gVar);
                }
            }
            if (d2 < 1.0d && d >= 1.0d && !gVar.g.equals("native")) {
                al.f3721a.a("Tracking ad event - complete");
                a.g gVar2 = new a.g();
                if (gVar.o) {
                    gVar2.b("ad_slot", t.c.e.j);
                } else {
                    gVar2.b("ad_slot", t.c.e.j);
                }
                gVar2.b("replay", gVar.p);
                a("complete", gVar2, gVar);
                gVar.e.q = false;
            }
            gVar.k = d;
        }
    }

    void a() {
        b();
        this.d = 0;
    }

    void b() {
        t.o = true;
        a.c c = ak.c(new ag("tracking_info.txt"));
        if (c != null) {
            this.f3800b.clear();
            for (int i = 0; i < c.f_(); i++) {
                a.g a2 = c.a(i);
                a aVar = new a();
                aVar.f3801a = a2.d(VastExtensionXmlManager.TYPE);
                aVar.f3802b = a2.d("url");
                aVar.c = a2.a("payload", (String) null);
                aVar.f = a2.f("attempts");
                aVar.l = a2.g("third_party");
                if (aVar.f3801a.equals("v4vc_callback") || aVar.f3801a.equals("reward_v4vc")) {
                    aVar.d = a2.d("v4vc_name");
                    aVar.h = a2.f("v4vc_amount");
                }
                this.f3800b.add(aVar);
            }
        }
        al.f3721a.a("Loaded ").a(this.f3800b.size()).b((Object) " events");
    }

    void c() {
        this.c.clear();
        this.c.addAll(this.f3800b);
        this.f3800b.clear();
        a.c cVar = new a.c();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.c.size()) {
                a aVar = this.c.get(i2);
                if (!aVar.j) {
                    this.f3800b.add(aVar);
                    a.g gVar = new a.g();
                    gVar.b(VastExtensionXmlManager.TYPE, aVar.f3801a);
                    gVar.b("url", aVar.f3802b);
                    if (aVar.c != null) {
                        gVar.b("payload", aVar.c);
                    }
                    gVar.b("attempts", aVar.f);
                    if (aVar.d != null) {
                        gVar.b("v4vc_name", aVar.d);
                        gVar.b("v4vc_amount", aVar.h);
                    }
                    if (aVar.l) {
                        gVar.b("third_party", true);
                    }
                    cVar.a(gVar);
                }
                i = i2 + 1;
            } else {
                this.c.clear();
                al.f3721a.a("Saving tracking_info (").a(this.f3800b.size()).b((Object) " events)");
                ak.a(new ag("tracking_info.txt"), cVar);
                return;
            }
        }
    }

    void d() {
        if (this.e) {
            this.e = false;
            c();
        }
        e();
    }

    void e() {
        if (this.f3800b.size() != 0) {
            while (this.f3800b.size() > 1000) {
                this.f3800b.remove(this.f3800b.size() - 1);
            }
            if (aq.c()) {
                double b2 = u.b();
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 < this.f3800b.size()) {
                        a aVar = this.f3800b.get(i2);
                        if (aVar.e < b2 && !aVar.k) {
                            if (this.d != 5) {
                                this.d++;
                                aVar.k = true;
                                if (aVar.f3801a.equals("v4vc_callback")) {
                                    int i3 = this.f;
                                    this.f = i3 + 1;
                                    aVar.i = i3;
                                    this.g.put(Integer.valueOf(aVar.i), Boolean.valueOf(t.f));
                                }
                                b a2 = new b(this.f3799a, aVar.f3802b, this).a(aVar);
                                if (aVar.l) {
                                    a2.h = true;
                                }
                                if (aVar.c != null) {
                                    a2.a("application/json", aVar.c);
                                }
                                al.f3722b.a("Submitting '").a(aVar.f3801a).b((Object) "' event.");
                                a2.a();
                                t.o = true;
                            } else {
                                return;
                            }
                        }
                        i = i2 + 1;
                    } else {
                        return;
                    }
                }
            }
        }
    }

    @Override // com.jirbo.adcolony.b.a
    public void a(b bVar) {
        boolean z;
        t.o = true;
        this.e = true;
        this.d--;
        a aVar = (a) bVar.e;
        al.f3721a.a("on_download_finished - event.type = ").b((Object) aVar.f3801a);
        aVar.k = false;
        boolean z2 = bVar.i;
        if (z2 && aVar.c != null) {
            a.g b2 = ak.b(bVar.m);
            if (b2 != null) {
                z2 = b2.d("status").equals("success");
                if (z2 && aVar.f3801a.equals("reward_v4vc")) {
                    if (b2.g("v4vc_status")) {
                        String d = b2.d("v4vc_callback");
                        if (d.length() > 0) {
                            a aVar2 = new a();
                            aVar2.f3801a = "v4vc_callback";
                            aVar2.f3802b = d;
                            aVar2.d = aVar.d;
                            aVar2.h = aVar.h;
                            this.f3800b.add(aVar2);
                        } else {
                            if (t.I != null) {
                                t.I.n = true;
                            }
                            al.f3721a.b((Object) "Client-side V4VC success");
                        }
                    } else {
                        al.f3721a.b((Object) "Client-side V4VC failure");
                    }
                }
            } else {
                z2 = false;
            }
        }
        if (z2 && aVar.f3801a.equals("v4vc_callback")) {
            al.f3721a.b((Object) "v4vc_callback response:").b((Object) bVar.m);
            if (bVar.m.indexOf("vc_success") != -1 && this.g.get(Integer.valueOf(aVar.i)).booleanValue()) {
                if (t.I != null) {
                    t.I.n = true;
                }
                al.f3721a.b((Object) "v4vc_callback success");
                this.f3799a.a(true, aVar.d, aVar.h);
                z = z2;
            } else if (bVar.m.indexOf("vc_decline") != -1 || bVar.m.indexOf("vc_noreward") != -1) {
                al.c.a("Server-side V4VC failure: ").b((Object) bVar.c);
                al.f3721a.b((Object) "v4vc_callback declined");
                this.f3799a.a(false, "", 0);
                z = z2;
            } else {
                al.c.a("Server-side V4VC failure: ").b((Object) bVar.c);
                z = false;
            }
        } else {
            z = z2;
        }
        if (z) {
            al.f3721a.a("Event submission SUCCESS for type: ").b((Object) aVar.f3801a);
            aVar.j = true;
        } else {
            al.f3721a.a("Event submission FAILED for type: ").a(aVar.f3801a).a(" on try ").b(aVar.f + 1);
            aVar.f++;
            if (aVar.f >= 24) {
                al.d.b((Object) "Discarding event after 24 attempts to report.");
                aVar.j = true;
                if (aVar.f3801a.equals("v4vc_callback")) {
                    this.f3799a.a(false, "", 0);
                }
            } else {
                int i = aVar.g > 0 ? aVar.g * 3 : 20;
                if (i > 10000) {
                    i = 10000;
                }
                al.f3721a.a("Retrying in ").a(i).a(" seconds (attempt ").a(aVar.f).b((Object) ")");
                aVar.g = i;
                aVar.e = u.b() + i;
            }
        }
        if (!this.f3799a.e.f3804b) {
            c();
        }
    }

    static class a {

        /* renamed from: a, reason: collision with root package name */
        String f3801a;

        /* renamed from: b, reason: collision with root package name */
        String f3802b;
        String c;
        String d;
        double e;
        int f;
        int g;
        int h;
        int i = -1;
        boolean j;
        boolean k;
        boolean l;

        a() {
        }
    }
}
