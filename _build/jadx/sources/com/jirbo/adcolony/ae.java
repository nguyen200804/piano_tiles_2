package com.jirbo.adcolony;

import android.os.Build;
import com.jirbo.adcolony.a;
import com.jirbo.adcolony.an;
import com.unity3d.ads.metadata.MediationMetaData;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ae {
    static String c = "https://androidads23.adcolony.col/configure";
    String A;
    String B;
    String C;
    String D;
    String E;
    String F;
    String G;
    String H;
    String I;
    String J;
    String K;
    boolean L;
    boolean M;

    /* renamed from: a, reason: collision with root package name */
    af f3699a;
    a.g i;
    String j;
    String[] k;
    an.e l;
    an.a m;
    String t;
    String u;
    a.c v;
    String w;
    String y;
    String z;

    /* renamed from: b, reason: collision with root package name */
    String f3700b = "2.3.0";
    int d = 300;
    int e = 0;
    boolean f = false;
    boolean g = false;
    a.g h = new a.g();
    double n = 0.0d;
    String o = "android";
    String p = "android_native";
    String q = "1.0";
    String r = "google";
    boolean s = false;
    String x = "";

    ae(af afVar) {
        this.f3699a = afVar;
    }

    void a(String str) {
        if (str == null) {
            str = "";
        }
        for (String str2 : str.split(",")) {
            String[] split = str2.split(":");
            if (split.length == 2) {
                String str3 = split[0];
                String str4 = split[1];
                if (str3.equals(MediationMetaData.KEY_VERSION)) {
                    this.q = str4;
                } else if (str3.equals("store")) {
                    if (str4.toLowerCase().equals("google") || str4.toLowerCase().equals("amazon")) {
                        this.r = str4;
                    } else {
                        throw new j("Origin store in client options must be set to either 'google' or 'amazon'");
                    }
                } else if (str3.equals("skippable")) {
                    this.s = false;
                }
            } else if (split[0].equals("skippable")) {
                this.s = false;
            }
        }
    }

    void a() {
        while (!f.f3828b && this.e < 60) {
            try {
                this.e++;
                Thread.sleep(50L);
            } catch (Exception e) {
            }
        }
        this.e = 0;
        this.f3699a.g.a();
        this.K = a(ah.f3718a, "");
        this.L = ah.f3719b;
        this.t = a(ah.a(), "");
        this.u = !this.K.equals("") ? "" : a(u.b(this.t), "");
        this.w = a(ah.b(), "");
        if (this.y == null) {
            this.y = a(ah.e(), "");
        }
        this.z = a(ah.k(), "");
        this.A = a(ah.l(), "");
        this.E = a(ah.j(), "en");
        this.F = a(ah.m(), "");
        this.G = a(ah.n(), "");
        this.J = a("" + Build.VERSION.SDK_INT, "");
        this.C = a(ah.h(), "");
        this.D = "";
        this.H = a("" + ah.c(), "");
        this.I = a("" + ah.d(), "");
        this.M = u.c() && u.d();
        t.T = this.G;
        t.U = this.f3700b;
        if (t.d) {
            this.B = "tablet";
        } else {
            this.B = "phone";
        }
        this.v = new a.c();
        if (u.a("com.android.vending") || u.a("com.android.market")) {
            this.v.a("google");
        }
        if (u.a("com.amazon.venezia")) {
            this.v.a("amazon");
        }
        if (al.f3722b.f) {
            al.f3722b.a("sdk_version:").b((Object) this.f3700b);
            al.f3722b.a("ad_manifest_url:").b((Object) c);
            al.f3722b.a("app_id:").b((Object) this.j);
            al.f3722b.a("zone_ids:").b(this.k);
            al.f3722b.a("os_name:").b((Object) this.o);
            al.f3722b.a("sdk_type:").b((Object) this.p);
            al.f3722b.a("app_version:").b((Object) this.q);
            al.f3722b.a("origin_store:").b((Object) this.r);
            al.f3722b.a("skippable:").b(this.s);
            al.f3722b.a("android_id:").b((Object) this.t);
            al.f3722b.a("android_id_sha1:").b((Object) this.u);
            al.f3722b.a("available_stores:").b(this.v);
            al.f3722b.a("carrier_name:").b((Object) this.w);
            al.f3722b.a("custom_id:").b((Object) this.x);
            al.f3722b.a("device_id:").b((Object) this.y);
            al.f3722b.a("device_manufacturer:").b((Object) this.z);
            al.f3722b.a("device_model:").b((Object) this.A);
            al.f3722b.a("device_type:").b((Object) this.B);
            al.f3722b.a("imei:").b((Object) this.C);
            al.f3722b.a("imei_sha1:").b((Object) this.D);
            al.f3722b.a("language:").b((Object) this.E);
            al.f3722b.a("open_udid:").b((Object) this.F);
            al.f3722b.a("os_version:").b((Object) this.G);
        }
        a.g gVar = new a.g();
        gVar.b("os_name", this.o);
        gVar.b("os_version", this.G);
        gVar.b("device_api", this.J);
        gVar.b("app_version", this.q);
        gVar.b("android_id_sha1", this.u);
        gVar.b("device_id", this.y);
        gVar.b("open_udid", this.F);
        gVar.b("device_type", this.B);
        gVar.b("ln", this.E);
        gVar.b("device_brand", this.z);
        gVar.b("device_model", this.A);
        gVar.b("screen_width", ah.f());
        gVar.b("screen_height", ah.g());
        gVar.b("sdk_type", this.p);
        gVar.b("sdk_version", this.f3700b);
        gVar.b("origin_store", this.r);
        gVar.a("available_stores", (a.i) this.v);
        gVar.b("imei_sha1", this.D);
        gVar.b("memory_class", this.H);
        gVar.b("memory_used_mb", this.I);
        gVar.b("advertiser_id", this.K);
        gVar.b("limit_tracking", this.L);
        gVar.b("immersion", this.M);
        this.i = gVar;
        this.f3699a.f.a();
        this.f3699a.c.a();
        this.f3699a.d.a();
        this.f3699a.f3702b.a();
        this.f3699a.e.a();
        this.g = true;
        t.c.f3702b.i.n = new an.h();
        this.f3699a.f3702b.f();
        if (this.f3699a.f3702b.i.i == null || this.f3699a.f3702b.i.i.equals("")) {
            this.f3699a.f3702b.i.i = "all";
        }
        if (this.f3699a.f3702b.i.j == null || this.f3699a.f3702b.i.j.equals("")) {
            this.f3699a.f3702b.i.j = "all";
        }
    }

    String a(String str, String str2) {
        return str != null ? str : str2;
    }

    void b(String str) {
        a(str, (an.a) null);
    }

    void a(String str, an.a aVar) {
        this.l = this.f3699a.f3702b.i.n.a(str);
        if (this.l != null) {
            if (aVar == null) {
                this.m = this.l.i();
            } else {
                this.m = aVar;
            }
            if (this.m != null) {
                ao aoVar = this.f3699a.c;
                an.d dVar = this.m.y;
                this.h.b("video_enabled", dVar.f3747a);
                this.h.b("video_filepath", dVar.b());
                this.h.b("video_width", dVar.f3748b);
                this.h.b("video_height", dVar.c);
                this.h.b("video_duration", dVar.k);
                this.h.b("engagement_delay", dVar.m.e);
                this.h.b("skip_delay", dVar.l.e);
                this.h.b("browser_close_image_normal", aoVar.b(this.m.u.k.f));
                this.h.b("browser_close_image_down", aoVar.b(this.m.u.k.h));
                this.h.b("browser_reload_image_normal", aoVar.b(this.m.u.m.f));
                this.h.b("browser_reload_image_down", aoVar.b(this.m.u.m.h));
                this.h.b("browser_back_image_normal", aoVar.b(this.m.u.j.f));
                this.h.b("browser_back_image_down", aoVar.b(this.m.u.j.h));
                this.h.b("browser_forward_image_normal", aoVar.b(this.m.u.l.f));
                this.h.b("browser_forward_image_down", aoVar.b(this.m.u.l.h));
                this.h.b("browser_stop_image_normal", aoVar.b(this.m.u.i.f));
                this.h.b("browser_stop_image_down", aoVar.b(this.m.u.i.h));
                this.h.b("browser_glow_button", aoVar.b(this.m.u.f3775a));
                this.h.b("browser_icon", aoVar.b(this.m.u.h.d));
                this.h.b("mute", aoVar.b(this.m.z.j.d));
                this.h.b("unmute", aoVar.b(this.m.z.k.d));
                this.h.b("poster_image", aoVar.b(this.m.z.g.f3785a));
                this.h.b("thumb_image", aoVar.b(this.m.z.f.f3787a));
                this.h.b("advertiser_name", this.m.z.c);
                this.h.b("description", this.m.z.d);
                this.h.b("title", this.m.z.e);
                this.h.b("click_to_install", this.m.z.g.c.equals("install"));
                this.h.b("store_url", this.m.z.g.d);
                this.h.b("native_engagement_enabled", this.m.z.h.f3783a);
                this.h.b("native_engagement_type", this.m.z.h.c);
                this.h.b("native_engagement_command", this.m.z.h.e);
                this.h.b("native_engagement_label", this.m.z.h.d);
                this.h.b("skip_video_image_normal", aoVar.b(dVar.l.f));
                this.h.b("skip_video_image_down", aoVar.b(dVar.l.h));
                this.h.b("engagement_image_normal", aoVar.b(dVar.m.f));
                this.h.b("engagement_image_down", aoVar.b(dVar.m.h));
                this.h.b("engagement_height", dVar.m.c);
                this.h.b("image_overlay_enabled", dVar.n.f3764a);
                this.h.b("image_overlay_filepath", aoVar.b(dVar.n.f));
                this.h.b("haptics_enabled", dVar.o.f3771a);
                this.h.b("haptics_filepath", aoVar.b(dVar.o.f3772b));
                this.h.b("v4iap_enabled", this.m.A.c);
                this.h.b("product_id", this.m.A.f3743a);
                this.h.b("in_progress", this.m.A.f3744b);
                b();
            }
        }
    }

    void c(String str) {
        this.l = this.f3699a.f3702b.i.n.a(str);
        this.m = this.l.i();
        ao aoVar = this.f3699a.c;
        an.d dVar = this.m.y;
        this.h.b("video_enabled", dVar.f3747a);
        this.h.b("video_filepath", dVar.b());
        this.h.b("video_width", dVar.f3748b);
        this.h.b("video_height", dVar.c);
        this.h.b("video_duration", dVar.k);
        t.h = dVar.k;
        this.h.b("engagement_delay", dVar.m.e);
        this.h.b("skip_delay", dVar.l.e);
        b();
        an.j jVar = this.m.v;
        this.h.b("pre_popup_bg", aoVar.b(jVar.f3758b.d.e));
        this.h.b("v4vc_logo", aoVar.b(jVar.f3758b.d.l.d));
        this.h.b("no_button_normal", aoVar.b(jVar.f3758b.d.n.f));
        this.h.b("no_button_down", aoVar.b(jVar.f3758b.d.n.h));
        this.h.b("yes_button_normal", aoVar.b(jVar.f3758b.d.m.f));
        this.h.b("yes_button_down", aoVar.b(jVar.f3758b.d.m.h));
        this.h.b("done_button_normal", aoVar.b(jVar.c.d.m.f));
        this.h.b("done_button_down", aoVar.b(jVar.c.d.m.h));
        this.h.b("browser_close_image_normal", aoVar.b(this.m.u.k.f));
        this.h.b("browser_close_image_down", aoVar.b(this.m.u.k.h));
        this.h.b("browser_reload_image_normal", aoVar.b(this.m.u.m.f));
        this.h.b("browser_reload_image_down", aoVar.b(this.m.u.m.h));
        this.h.b("browser_back_image_normal", aoVar.b(this.m.u.j.f));
        this.h.b("browser_back_image_down", aoVar.b(this.m.u.j.h));
        this.h.b("browser_forward_image_normal", aoVar.b(this.m.u.l.f));
        this.h.b("browser_forward_image_down", aoVar.b(this.m.u.l.h));
        this.h.b("browser_stop_image_normal", aoVar.b(this.m.u.i.f));
        this.h.b("browser_stop_image_down", aoVar.b(this.m.u.i.h));
        this.h.b("browser_glow_button", aoVar.b(this.m.u.f3775a));
        this.h.b("browser_icon", aoVar.b(this.m.u.h.d));
        this.h.b("skip_video_image_normal", aoVar.b(dVar.l.f));
        this.h.b("skip_video_image_down", aoVar.b(dVar.l.h));
        this.h.b("engagement_image_normal", aoVar.b(dVar.m.f));
        this.h.b("engagement_image_down", aoVar.b(dVar.m.h));
        this.h.b("engagement_height", dVar.m.c);
        this.h.b("image_overlay_enabled", dVar.n.f3764a);
        this.h.b("image_overlay_filepath", aoVar.b(dVar.n.f));
        this.h.b("haptics_enabled", dVar.o.f3771a);
        this.h.b("haptics_filepath", aoVar.b(dVar.o.f3772b));
        this.h.b("v4iap_enabled", this.m.A.c);
        this.h.b("product_id", this.m.A.f3743a);
        this.h.b("in_progress", this.m.A.f3744b);
    }

    void b() {
        an.ae aeVar = this.m.x.h;
        an.q qVar = this.m.x.i;
        ao aoVar = this.f3699a.c;
        if (!this.m.x.d) {
            this.h.b("end_card_enabled", this.m.x.d);
            return;
        }
        if (qVar.a()) {
            t.M = true;
            t.R = qVar.g;
            t.S = aoVar.b(qVar.f.f3780b);
            this.h.b("close_image_normal", aoVar.b(qVar.j.f));
            this.h.b("close_image_down", aoVar.b(qVar.j.h));
            this.h.b("reload_image_normal", aoVar.b(qVar.i.f));
            this.h.b("reload_image_down", aoVar.b(qVar.i.h));
        } else {
            t.M = false;
            this.h.b("end_card_filepath", aoVar.b(aeVar.d));
            this.h.b("info_image_normal", aoVar.b(aeVar.f.f));
            this.h.b("info_image_down", aoVar.b(aeVar.f.h));
            this.h.b("info_url", aeVar.f.j);
            this.h.b("replay_image_normal", aoVar.b(aeVar.h.f));
            this.h.b("replay_image_down", aoVar.b(aeVar.h.h));
            this.h.b("continue_image_normal", aoVar.b(aeVar.i.f));
            this.h.b("continue_image_down", aoVar.b(aeVar.i.h));
            this.h.b("download_image_normal", aoVar.b(aeVar.g.f));
            this.h.b("download_image_down", aoVar.b(aeVar.g.h));
            this.h.b("download_url", aeVar.g.j);
        }
        an.d dVar = this.m.y;
        this.h.b("end_card_enabled", this.m.x.d);
        this.h.b("load_timeout_enabled", this.m.x.i.c);
        this.h.b("load_timeout", this.m.x.i.f3770b);
        this.h.b("hardware_acceleration_disabled", this.f3699a.f3702b.i.e);
    }
}
