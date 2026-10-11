package com.jirbo.adcolony;

import com.jirbo.adcolony.an;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class g implements Serializable {

    /* renamed from: b, reason: collision with root package name */
    int f3834b;
    String c;
    an.e d;
    an.a e;
    int m;
    boolean n;
    boolean o;
    boolean p;
    boolean q;
    boolean r;
    o s;
    i t;

    /* renamed from: a, reason: collision with root package name */
    int f3833a = 0;
    String f = "";
    String g = "";
    String h = "";
    String i = "";
    String j = "";
    double k = 0.0d;
    double l = 0.0d;
    k u = k.NONE;
    HashMap<String, String> v = new HashMap<>();
    HashMap<String, ArrayList<String>> w = new HashMap<>();

    abstract boolean a(boolean z);

    abstract boolean c();

    abstract void d();

    abstract boolean e();

    public boolean a() {
        return this.f3833a == 1;
    }

    public boolean b() {
        return this.f3833a == 3;
    }

    boolean f() {
        return b(false);
    }

    boolean b(boolean z) {
        if (this.f3833a == 4) {
            return true;
        }
        if (!c() && !z) {
            return false;
        }
        if (!a(true) && z) {
            return false;
        }
        this.d = t.c.f(this.c);
        this.e = z ? this.d.j() : this.d.i();
        if (this.e == null) {
            return false;
        }
        this.v.put("replay", this.e.w.f3755a);
        this.v.put("card_shown", this.e.w.f3756b);
        this.v.put("html5_interaction", this.e.w.c);
        this.v.put("cancel", this.e.w.d);
        this.v.put("download", this.e.w.e);
        this.v.put("skip", this.e.w.f);
        this.v.put("info", this.e.w.g);
        this.v.put("custom_event", this.e.w.h);
        this.v.put("midpoint", this.e.w.i);
        this.v.put("card_dissolved", this.e.w.j);
        this.v.put("start", this.e.w.k);
        this.v.put("third_quartile", this.e.w.l);
        this.v.put("complete", this.e.w.m);
        this.v.put("continue", this.e.w.n);
        this.v.put("in_video_engagement", this.e.w.o);
        this.v.put("reward_v4vc", this.e.w.p);
        this.v.put("v4iap", this.e.w.q);
        this.v.put("first_quartile", this.e.w.r);
        this.v.put("video_expanded", this.e.w.s);
        this.v.put("sound_mute", this.e.w.t);
        this.v.put("sound_unmute", this.e.w.u);
        this.v.put("video_paused", this.e.w.v);
        this.v.put("video_resumed", this.e.w.w);
        this.v.put("native_start", this.e.w.x);
        this.v.put("native_first_quartile", this.e.w.y);
        this.v.put("native_midpoint", this.e.w.z);
        this.v.put("native_third_quartile", this.e.w.A);
        this.v.put("native_complete", this.e.w.B);
        this.v.put("native_overlay_click", this.e.w.C);
        this.w.put("replay", this.e.t.f3741a);
        this.w.put("card_shown", this.e.t.f3742b);
        this.w.put("html5_interaction", this.e.t.c);
        this.w.put("cancel", this.e.t.d);
        this.w.put("download", this.e.t.e);
        this.w.put("skip", this.e.t.f);
        this.w.put("midpoint", this.e.t.h);
        this.w.put("card_dissolved", this.e.t.i);
        this.w.put("start", this.e.t.j);
        this.w.put("third_quartile", this.e.t.k);
        this.w.put("complete", this.e.t.l);
        this.w.put("continue", this.e.t.m);
        this.w.put("in_video_engagement", this.e.t.n);
        this.w.put("reward_v4vc", this.e.t.o);
        this.w.put("v4iap", this.e.t.q);
        this.w.put("first_quartile", this.e.t.p);
        this.w.put("video_expanded", this.e.t.r);
        this.w.put("sound_mute", this.e.t.s);
        this.w.put("sound_unmute", this.e.t.t);
        this.w.put("video_paused", this.e.t.u);
        this.w.put("video_resumed", this.e.t.v);
        this.w.put("native_start", this.e.t.w);
        this.w.put("native_first_quartile", this.e.t.x);
        this.w.put("native_midpoint", this.e.t.y);
        this.w.put("native_third_quartile", this.e.t.z);
        this.w.put("native_complete", this.e.t.A);
        this.w.put("native_overlay_click", this.e.t.B);
        return true;
    }
}
