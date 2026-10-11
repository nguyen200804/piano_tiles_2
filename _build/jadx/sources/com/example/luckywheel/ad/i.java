package com.example.luckywheel.ad;

import com.example.luckywheel.ad.h;
import com.google.android.gms.ads.AdListener;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class i extends AdListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ h.b f2307a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ c f2308b;

    i(c cVar, h.b bVar) {
        this.f2308b = cVar;
        this.f2307a = bVar;
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdClosed() {
        super.onAdClosed();
        if (this.f2307a != null) {
            this.f2307a.b();
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdLeftApplication() {
        com.example.luckywheel.c.a aVar;
        com.example.luckywheel.c.a aVar2;
        aVar = this.f2308b.e;
        if (aVar != null) {
            aVar2 = this.f2308b.e;
            aVar2.a((byte) 4);
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdOpened() {
        super.onAdOpened();
        if (this.f2307a != null) {
            this.f2307a.a();
        }
    }
}
