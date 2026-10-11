package com.duapps.ad.stats;

import com.duapps.ad.entity.AdData;
import com.duapps.ad.inmobi.IMData;
import org.json.JSONObject;

/* compiled from: ToolDataWrapper.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class f extends b {
    public AdData d;
    public IMData e;
    public String f;
    private String g;
    private int h;
    private long i;
    private int j;
    private String k;
    private int l;
    private com.duapps.ad.base.j m;
    private String n;
    private int o;
    private int p;
    private boolean q;
    private boolean r;
    private int s;

    public f(AdData adData) {
        this(adData, "");
    }

    public f(AdData adData, String str) {
        super(adData.x, adData.y, adData.z);
        this.d = adData;
        this.i = adData.f2122b;
        this.h = adData.m;
        this.g = adData.d;
        this.j = adData.n;
        this.k = adData.i;
        this.l = adData.A;
        this.n = adData.w;
        this.o = adData.H;
        this.p = adData.f2121a;
        this.f = str;
    }

    public f(IMData iMData) {
        this(iMData, "");
    }

    public f(IMData iMData, String str) {
        super(iMData.f2158a, iMData.f2159b, iMData.d);
        this.i = iMData.e;
        this.h = 0;
        this.g = null;
        this.j = iMData.g;
        this.k = iMData.r;
        this.l = iMData.h;
        this.n = iMData.c;
        this.f = str;
    }

    public String a() {
        return this.g;
    }

    public long b() {
        return this.i;
    }

    public int c() {
        return this.j;
    }

    public int d() {
        return this.l;
    }

    public void a(com.duapps.ad.base.j jVar) {
        this.m = jVar;
    }

    public com.duapps.ad.base.j e() {
        return this.m;
    }

    public AdData f() {
        return this.d;
    }

    public boolean g() {
        return this.j == 0;
    }

    public boolean h() {
        return this.j == 1;
    }

    public String i() {
        return this.k;
    }

    public int j() {
        return this.f2253b;
    }

    public String k() {
        return this.c;
    }

    public String l() {
        return this.n;
    }

    public int m() {
        return this.o;
    }

    public boolean n() {
        return this.q;
    }

    public void a(boolean z) {
        this.q = z;
    }

    public boolean o() {
        return this.r;
    }

    public void b(boolean z) {
        this.r = z;
    }

    public int p() {
        return this.s;
    }

    public int q() {
        return this.p;
    }

    public void a(int i) {
        this.s = i;
    }

    public static JSONObject a(f fVar) {
        JSONObject jSONObject = new JSONObject();
        if (fVar.d != null) {
            jSONObject.put("data", AdData.a(fVar.d));
        } else if (fVar.e != null) {
            jSONObject.put("data", IMData.a(fVar.e));
        }
        return jSONObject;
    }

    public static f a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        JSONObject jSONObject2 = jSONObject.getJSONObject("data");
        if ("download".equals(jSONObject2.optString("channel"))) {
            return new f(AdData.a(jSONObject2));
        }
        if ("inmobi".equals(jSONObject2.optString("channel"))) {
            return new f(IMData.a(jSONObject2));
        }
        return null;
    }
}
