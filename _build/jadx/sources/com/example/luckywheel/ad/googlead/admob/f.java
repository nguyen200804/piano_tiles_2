package com.example.luckywheel.ad.googlead.admob;

import android.content.Context;
import com.example.luckywheel.ad.h;
import com.google.android.gms.ads.formats.NativeAppInstallAd;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class f implements NativeAppInstallAd.OnAppInstallAdLoadedListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Context f2301a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ h.a f2302b;
    final /* synthetic */ a c;

    f(a aVar, Context context, h.a aVar2) {
        this.c = aVar;
        this.f2301a = context;
        this.f2302b = aVar2;
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd.OnAppInstallAdLoadedListener
    public void onAppInstallAdLoaded(NativeAppInstallAd nativeAppInstallAd) {
        this.c.a(this.f2301a, nativeAppInstallAd);
        if (this.f2302b != null) {
            this.f2302b.a();
        }
    }
}
