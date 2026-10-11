package com.example.luckywheel.ad;

import android.content.Context;
import android.util.Log;
import com.example.luckywheel.ad.h;
import com.google.android.gms.ads.formats.NativeAd;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d extends h<NativeAd> {
    private Context e;
    private String f;

    public d(Context context, String str) {
        this.e = context;
        this.f = str;
    }

    @Override // com.example.luckywheel.ad.h
    public void a(h.b bVar) {
        com.example.luckywheel.ad.googlead.admob.c.a().a(this.e, new j(this, bVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.example.luckywheel.ad.h
    public void a(NativeAd nativeAd) {
        this.f2306b = a(this.f);
        Log.d("new_ad", "AdmobAdObject placementId = " + this.f + ", priority = " + this.f2306b);
        this.c = 3600000L;
        this.d = System.currentTimeMillis();
        this.f2305a = nativeAd;
    }

    @Override // com.example.luckywheel.ad.h
    public boolean a() {
        return com.example.luckywheel.ad.googlead.admob.c.a().c() != null;
    }
}
