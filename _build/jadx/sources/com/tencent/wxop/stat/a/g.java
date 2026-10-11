package com.tencent.wxop.stat.a;

import android.content.Context;
import com.tencent.wxop.stat.b.l;
import com.tencent.wxop.stat.b.r;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class g extends d {

    /* renamed from: a, reason: collision with root package name */
    private static String f4819a = null;
    private String aR;
    private String aS;

    public g(Context context, int i, com.tencent.wxop.stat.f fVar) {
        super(context, i, fVar);
        this.aR = null;
        this.aS = null;
        this.aR = com.tencent.wxop.stat.g.r(context).b();
        if (f4819a == null) {
            f4819a = l.C(context);
        }
    }

    @Override // com.tencent.wxop.stat.a.d
    public final e ac() {
        return e.NETWORK_MONITOR;
    }

    public final void b(String str) {
        this.aS = str;
    }

    @Override // com.tencent.wxop.stat.a.d
    public final boolean b(JSONObject jSONObject) {
        r.a(jSONObject, "op", f4819a);
        r.a(jSONObject, "cn", this.aR);
        jSONObject.put("sp", this.aS);
        return true;
    }
}
