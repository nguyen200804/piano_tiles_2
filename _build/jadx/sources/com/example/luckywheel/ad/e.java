package com.example.luckywheel.ad;

import android.content.Context;
import com.example.luckywheel.ad.h;
import java.util.ArrayList;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class e extends g {

    /* renamed from: b, reason: collision with root package name */
    private static e f2291b;

    private e() {
    }

    public static e c() {
        if (f2291b == null) {
            f2291b = new e();
        }
        return f2291b;
    }

    @Override // com.example.luckywheel.ad.a
    public void a() {
        if (this.f2285a == null) {
            this.f2285a = new ArrayList();
            this.f2285a.add(new com.example.luckywheel.ad.googlead.admob.b());
            this.f2285a.add(new com.example.luckywheel.ad.googlead.a.a());
            this.f2285a.add(new com.example.luckywheel.ad.googlead.admob.a());
        }
    }

    @Override // com.example.luckywheel.ad.a
    public void a(Context context, h.b bVar) {
        super.a(context, bVar);
    }
}
