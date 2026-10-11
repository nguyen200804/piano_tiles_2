package com.mnt.impl.view;

import android.content.Context;
import com.mnt.AdError;
import com.mnt.IAdListener;
import com.mnt.impl.dsp.d;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class c implements d.a {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ BannerView f4102a;

    public c(BannerView bannerView) {
        this.f4102a = bannerView;
    }

    @Override // com.mnt.impl.dsp.d.a
    public final void a(com.mnt.impl.dsp.c cVar) {
        Context context;
        String str;
        IAdListener iAdListener;
        IAdListener iAdListener2;
        this.f4102a.m = cVar;
        BannerView bannerView = this.f4102a;
        context = this.f4102a.f4094a;
        str = this.f4102a.g;
        BannerView.a(bannerView, com.mnt.impl.d.a(context, cVar, str, new d(this, cVar)));
        iAdListener = this.f4102a.f4095b;
        if (iAdListener != null) {
            this.f4102a.l = true;
            iAdListener2 = this.f4102a.f4095b;
            iAdListener2.onAdLoadFinish(null);
        }
    }

    @Override // com.mnt.impl.dsp.d.a
    public final void a() {
        IAdListener iAdListener;
        IAdListener iAdListener2;
        iAdListener = this.f4102a.f4095b;
        if (iAdListener != null) {
            iAdListener2 = this.f4102a.f4095b;
            iAdListener2.onAdError(AdError.NO_OFFERS);
        }
    }

    @Override // com.mnt.impl.dsp.d.a
    public final void b() {
        BannerView.f(this.f4102a);
    }
}
