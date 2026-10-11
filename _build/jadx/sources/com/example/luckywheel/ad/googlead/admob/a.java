package com.example.luckywheel.ad.googlead.admob;

import android.content.Context;
import com.example.luckywheel.ad.h;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeAdOptions;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a extends com.example.luckywheel.ad.b {
    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, NativeAd nativeAd) {
        if (nativeAd == null) {
            return;
        }
        c.a().a(nativeAd);
        com.example.luckywheel.ad.d dVar = new com.example.luckywheel.ad.d(context, a());
        dVar.a(nativeAd, b());
        this.f2290a.add(dVar);
    }

    @Override // com.example.luckywheel.ad.b
    public String a() {
        return com.example.luckywheel.b.a.a().a(g());
    }

    @Override // com.example.luckywheel.ad.b
    public void a(Context context, h.a aVar) {
        new AdLoader.Builder(context, a()).forAppInstallAd(new f(this, context, aVar)).forContentAd(new e(this, context, aVar)).withAdListener(new d(this)).withNativeAdOptions(new NativeAdOptions.Builder().setRequestMultipleImages(false).setReturnUrlsForImageAssets(true).build()).build();
        new AdRequest.Builder().build();
    }

    @Override // com.example.luckywheel.ad.b
    public int b() {
        return 0;
    }

    public String g() {
        return "admob_native";
    }
}
