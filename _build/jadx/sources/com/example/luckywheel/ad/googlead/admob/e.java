package com.example.luckywheel.ad.googlead.admob;

import android.content.Context;
import com.example.luckywheel.ad.h;
import com.google.android.gms.ads.formats.NativeContentAd;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class e implements NativeContentAd.OnContentAdLoadedListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Context f2299a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ h.a f2300b;
    final /* synthetic */ a c;

    e(a aVar, Context context, h.a aVar2) {
        this.c = aVar;
        this.f2299a = context;
        this.f2300b = aVar2;
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd.OnContentAdLoadedListener
    public void onContentAdLoaded(NativeContentAd nativeContentAd) {
        this.c.a(this.f2299a, nativeContentAd);
        if (this.f2300b != null) {
            this.f2300b.a();
        }
    }
}
