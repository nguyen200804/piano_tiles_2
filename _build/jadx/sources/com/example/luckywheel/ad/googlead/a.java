package com.example.luckywheel.ad.googlead;

import android.content.Context;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.example.luckywheel.ad.h;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.InterstitialAd;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class a extends com.example.luckywheel.ad.b {

    /* renamed from: b, reason: collision with root package name */
    private C0064a f2292b = new C0064a();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.example.luckywheel.ad.googlead.a$a, reason: collision with other inner class name */
    class C0064a {
        private C0064a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(Context context, String str, @NonNull h.a aVar) {
            if (context == null || TextUtils.isEmpty(str)) {
                return;
            }
            InterstitialAd interstitialAd = new InterstitialAd(context);
            interstitialAd.setAdUnitId(str);
            interstitialAd.setAdListener(new c(this, interstitialAd, aVar));
            a(interstitialAd);
        }

        private void a(InterstitialAd interstitialAd) {
            new AdRequest.Builder().build();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(InterstitialAd interstitialAd) {
        if (interstitialAd == null) {
            return;
        }
        com.example.luckywheel.ad.c cVar = new com.example.luckywheel.ad.c();
        cVar.a(interstitialAd, b());
        this.f2290a.add(cVar);
    }

    @Override // com.example.luckywheel.ad.b
    public void a(Context context, h.a aVar) {
        this.f2292b.a(context, a(), aVar);
    }
}
