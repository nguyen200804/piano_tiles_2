package com.tencent.wxop.stat.a;

import android.content.Context;
import java.util.Map;
import java.util.Properties;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class a extends d {
    protected b bj;
    private long bk;

    public a(Context context, int i, String str, com.tencent.wxop.stat.f fVar) {
        super(context, i, fVar);
        this.bj = new b();
        this.bk = -1L;
        this.bj.f4816a = str;
    }

    public final b ab() {
        return this.bj;
    }

    @Override // com.tencent.wxop.stat.a.d
    public final e ac() {
        return e.CUSTOM;
    }

    @Override // com.tencent.wxop.stat.a.d
    public final boolean b(JSONObject jSONObject) {
        Properties p;
        jSONObject.put("ei", this.bj.f4816a);
        if (this.bk > 0) {
            jSONObject.put("du", this.bk);
        }
        if (this.bj.bl != null) {
            jSONObject.put("ar", this.bj.bl);
            return true;
        }
        if (this.bj.f4816a != null && (p = com.tencent.wxop.stat.e.p(this.bj.f4816a)) != null && p.size() > 0) {
            if (this.bj.bm == null || this.bj.bm.length() == 0) {
                this.bj.bm = new JSONObject(p);
            } else {
                for (Map.Entry entry : p.entrySet()) {
                    try {
                        this.bj.bm.put(entry.getKey().toString(), entry.getValue());
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
        jSONObject.put("kv", this.bj.bm);
        return true;
    }
}
