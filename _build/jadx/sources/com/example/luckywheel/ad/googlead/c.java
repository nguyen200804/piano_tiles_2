package com.example.luckywheel.ad.googlead;

import com.example.luckywheel.ad.googlead.a;
import com.example.luckywheel.ad.h;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.InterstitialAd;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class c extends AdListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ InterstitialAd f2303a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ h.a f2304b;
    final /* synthetic */ a.C0064a c;

    c(a.C0064a c0064a, InterstitialAd interstitialAd, h.a aVar) {
        this.c = c0064a;
        this.f2303a = interstitialAd;
        this.f2304b = aVar;
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdFailedToLoad(int i) {
        super.onAdFailedToLoad(i);
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdLoaded() {
        super.onAdLoaded();
        a.this.a(this.f2303a);
        if (this.f2304b != null) {
            this.f2304b.a();
        }
    }
}
