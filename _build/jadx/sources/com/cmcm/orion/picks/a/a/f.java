package com.cmcm.orion.picks.a.a;

import android.text.TextUtils;
import java.util.Map;

/* compiled from: BusinessPublicData.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    private String f831a;

    /* renamed from: b, reason: collision with root package name */
    private int f832b;
    private int c;
    private String d;
    private String e;
    private String l;
    private Map<String, String> n;
    private String o;
    private String f = "";
    private int g = 0;
    private String h = null;
    private String i = "";
    private String j = "";
    private String k = "";
    private int m = 0;
    private int p = 0;

    private f() {
    }

    public static f a(String str, String str2, int i) {
        f fVar = new f();
        fVar.f831a = str;
        fVar.o = str2;
        fVar.f832b = com.cmcm.orion.utils.b.d(com.cmcm.orion.adsdk.e.b());
        fVar.c = i;
        fVar.d = com.cmcm.orion.utils.b.a();
        fVar.e = String.format("%s_%s", com.cmcm.orion.utils.b.c(com.cmcm.orion.adsdk.e.a()), com.cmcm.orion.utils.b.d(com.cmcm.orion.adsdk.e.a()));
        fVar.g = com.cmcm.orion.utils.b.e(com.cmcm.orion.adsdk.e.a());
        fVar.i = com.cmcm.orion.utils.b.a(com.cmcm.orion.adsdk.e.a());
        fVar.j = com.cmcm.orion.utils.internal.a.a.c().a();
        fVar.k = com.cmcm.orion.utils.b.b(com.cmcm.orion.adsdk.e.a());
        fVar.l = com.cmcm.orion.adsdk.e.c();
        fVar.p = com.cmcm.orion.utils.c.b(com.cmcm.orion.adsdk.e.a());
        return fVar;
    }

    public final void a(int i) {
        this.m = i;
    }

    public final void a(Map<String, String> map) {
        this.n = map;
    }

    public final f a(String str) {
        this.h = str;
        return this;
    }

    public final String a() {
        StringBuilder sb = new StringBuilder();
        sb.append("ac=" + this.c).append("&pos=" + this.f831a).append("&mid=" + this.f832b).append("&aid=" + this.d).append("&lan=" + this.e).append("&ext=" + this.f).append("&cmver=" + this.g).append("&mcc=" + (TextUtils.isEmpty(this.i) ? "" : this.i)).append("&mnc=" + (TextUtils.isEmpty(this.k) ? "" : this.k)).append("&gaid=" + this.j).append("&pl=2&v=25").append("&channelid=" + this.l).append("&lp=" + this.m).append("&lv=4.3.4").append("&at=" + System.currentTimeMillis()).append("&tabid=" + this.o).append("&nt=" + String.valueOf(this.p));
        if (this.h != null) {
            sb.append("&rf=" + this.h);
        }
        if (this.n != null && !this.n.isEmpty()) {
            for (String str : this.n.keySet()) {
                sb.append("&").append(str).append("=").append(this.n.get(str));
            }
        }
        return sb.toString();
    }
}
