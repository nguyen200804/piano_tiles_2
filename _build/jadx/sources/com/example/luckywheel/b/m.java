package com.example.luckywheel.b;

import android.content.Context;
import com.example.luckywheel.a.e;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class m extends com.example.luckywheel.a.e {
    public m(Context context, e.a aVar) {
        super(context, aVar);
    }

    @Override // com.example.luckywheel.a.a
    public String a() {
        return "/mission/confirm/sdk/user_auth";
    }

    @Override // com.example.luckywheel.a.a
    public void b() {
        this.f2276b.put("appkey", g.a().b());
        this.f2276b.put("appid", g.a().d());
        this.f2276b.put("peerid", g.a().c());
    }
}
