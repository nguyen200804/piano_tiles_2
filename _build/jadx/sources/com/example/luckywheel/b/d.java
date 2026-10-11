package com.example.luckywheel.b;

import android.content.Context;
import com.example.luckywheel.a.e;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d extends com.example.luckywheel.a.e {
    private int c;

    public d(Context context, int i, e.a aVar) {
        super(context, aVar);
        this.c = i;
    }

    @Override // com.example.luckywheel.a.a
    public String a() {
        return "/mission/confirm/sdk/ad_points";
    }

    @Override // com.example.luckywheel.a.a
    public void b() {
        this.f2276b.put("appkey", g.a().b());
        this.f2276b.put("token", l.a().c());
        this.f2276b.put("wuid", l.a().d());
        this.f2276b.put("star_num", Integer.valueOf(this.c));
    }
}
