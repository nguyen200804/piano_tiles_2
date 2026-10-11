package com.example.luckywheel.ad;

import android.util.Log;
import com.example.luckywheel.ad.h;
import com.google.android.gms.ads.InterstitialAd;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c extends h<InterstitialAd> {
    private com.example.luckywheel.c.a e = com.example.luckywheel.b.g.a().e();

    /* JADX WARN: Multi-variable type inference failed */
    private void b(h.b bVar) {
        if (this.f2305a == 0 || !((InterstitialAd) this.f2305a).isLoaded()) {
            return;
        }
        ((InterstitialAd) this.f2305a).setAdListener(new i(this, bVar));
        ((InterstitialAd) this.f2305a).show();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.example.luckywheel.ad.h
    public void a(h.b bVar) {
        b(bVar);
        Log.d("new_ad", "AdmobAdObject show : " + ((InterstitialAd) this.f2305a).getAdUnitId());
        if (this.e != null) {
            this.e.a((byte) 3);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.example.luckywheel.ad.h
    public void a(InterstitialAd interstitialAd) {
        String adUnitId = interstitialAd.getAdUnitId();
        this.f2306b = a(adUnitId);
        Log.d("new_ad", "AdmobAdObject placementId = " + adUnitId + ", priority = " + this.f2306b);
        this.c = 3600000L;
        this.d = System.currentTimeMillis();
        this.f2305a = interstitialAd;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.example.luckywheel.ad.h
    public boolean a() {
        if (this.f2305a == 0 || !((InterstitialAd) this.f2305a).isLoaded()) {
            return false;
        }
        return com.example.luckywheel.ad.a.a.a(this.c, this.d);
    }
}
