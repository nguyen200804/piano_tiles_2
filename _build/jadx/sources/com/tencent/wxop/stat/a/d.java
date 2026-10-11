package com.tencent.wxop.stat.a;

import android.content.Context;
import com.tencent.wxop.stat.b.l;
import com.tencent.wxop.stat.b.r;
import com.tencent.wxop.stat.t;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class d {
    protected static String bt = null;
    protected int L;
    protected long aZ = System.currentTimeMillis() / 1000;

    /* renamed from: b, reason: collision with root package name */
    protected String f4818b;
    protected int bf;
    protected com.tencent.wxop.stat.b.c bp;
    protected String bq;
    protected String br;
    protected String bs;
    protected boolean bu;
    protected Context bv;
    private com.tencent.wxop.stat.f bw;

    d(Context context, int i, com.tencent.wxop.stat.f fVar) {
        this.f4818b = null;
        this.bp = null;
        this.bq = null;
        this.br = null;
        this.bs = null;
        this.bu = false;
        this.bw = null;
        this.bv = context;
        this.L = i;
        this.br = com.tencent.wxop.stat.c.e(context);
        this.bs = l.D(context);
        this.f4818b = com.tencent.wxop.stat.c.d(context);
        if (fVar != null) {
            this.bw = fVar;
            if (l.e(fVar.S())) {
                this.f4818b = fVar.S();
            }
            if (l.e(fVar.T())) {
                this.br = fVar.T();
            }
            if (l.e(fVar.getVersion())) {
                this.bs = fVar.getVersion();
            }
            this.bu = fVar.U();
        }
        this.bq = com.tencent.wxop.stat.c.g(context);
        this.bp = t.s(context).t(context);
        if (ac() != e.NETWORK_DETECTOR) {
            this.bf = l.K(context).intValue();
        } else {
            this.bf = -e.NETWORK_DETECTOR.r();
        }
        if (com.tencent.a.a.a.a.h.e(bt)) {
            return;
        }
        String h = com.tencent.wxop.stat.c.h(context);
        bt = h;
        if (l.e(h)) {
            return;
        }
        bt = "0";
    }

    private boolean c(JSONObject jSONObject) {
        try {
            r.a(jSONObject, "ky", this.f4818b);
            jSONObject.put("et", ac().r());
            if (this.bp != null) {
                jSONObject.put("ui", this.bp.b());
                r.a(jSONObject, "mc", this.bp.ar());
                int as = this.bp.as();
                jSONObject.put("ut", as);
                if (as == 0 && l.N(this.bv) == 1) {
                    jSONObject.put("ia", 1);
                }
            }
            r.a(jSONObject, "cui", this.bq);
            if (ac() != e.SESSION_ENV) {
                r.a(jSONObject, "av", this.bs);
                r.a(jSONObject, "ch", this.br);
            }
            if (this.bu) {
                jSONObject.put("impt", 1);
            }
            r.a(jSONObject, "mid", bt);
            jSONObject.put("idx", this.bf);
            jSONObject.put("si", this.L);
            jSONObject.put("ts", this.aZ);
            jSONObject.put("dts", l.a(this.bv, false));
            return b(jSONObject);
        } catch (Throwable th) {
            return false;
        }
    }

    public final Context J() {
        return this.bv;
    }

    public final boolean X() {
        return this.bu;
    }

    public abstract e ac();

    public final long ad() {
        return this.aZ;
    }

    public final com.tencent.wxop.stat.f ae() {
        return this.bw;
    }

    public final String af() {
        try {
            JSONObject jSONObject = new JSONObject();
            c(jSONObject);
            return jSONObject.toString();
        } catch (Throwable th) {
            return "";
        }
    }

    public abstract boolean b(JSONObject jSONObject);
}
