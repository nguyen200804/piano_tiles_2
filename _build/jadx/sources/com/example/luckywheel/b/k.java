package com.example.luckywheel.b;

import android.content.Context;
import com.example.luckywheel.a.e;
import com.example.luckywheel.b.j;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class k extends com.example.luckywheel.a.e {
    private int c;
    private int d;
    private int e;

    public k(Context context, j.c cVar, e.a aVar) {
        super(context, aVar);
        this.c = cVar.f2322a;
        this.d = cVar.f2323b;
        this.e = cVar.c;
    }

    @Override // com.example.luckywheel.a.a
    public String a() {
        return "/mission/confirm/sdk/conversion";
    }

    @Override // com.example.luckywheel.a.a
    public void b() {
        this.f2276b.put("appkey", g.a().b());
        this.f2276b.put("appid", g.a().d());
        this.f2276b.put("token", l.a().c());
        this.f2276b.put("wuid", l.a().d());
        this.f2276b.put("typeid", Integer.valueOf(this.c));
        this.f2276b.put("num", Integer.valueOf(this.e));
        this.f2276b.put("rate", Integer.valueOf(this.d));
    }
}
