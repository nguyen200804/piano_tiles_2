package com.mnt.impl.view;

import android.content.Context;
import com.mnt.AdError;
import com.mnt.IAdListener;
import com.mnt.impl.dsp.d;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class g implements d.a {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ RectangleBannerView f4107a;

    public g(RectangleBannerView rectangleBannerView) {
        this.f4107a = rectangleBannerView;
    }

    @Override // com.mnt.impl.dsp.d.a
    public final void a(com.mnt.impl.dsp.c cVar) {
        Context context;
        String str;
        IAdListener iAdListener;
        IAdListener iAdListener2;
        this.f4107a.k = cVar;
        RectangleBannerView rectangleBannerView = this.f4107a;
        context = this.f4107a.f4096a;
        str = this.f4107a.f;
        RectangleBannerView.a(rectangleBannerView, com.mnt.impl.d.a(context, cVar, str, new h(this, cVar)));
        iAdListener = this.f4107a.c;
        if (iAdListener != null) {
            this.f4107a.j = true;
            iAdListener2 = this.f4107a.c;
            iAdListener2.onAdLoadFinish(null);
        }
    }

    @Override // com.mnt.impl.dsp.d.a
    public final void a() {
        IAdListener iAdListener;
        IAdListener iAdListener2;
        iAdListener = this.f4107a.c;
        if (iAdListener != null) {
            iAdListener2 = this.f4107a.c;
            iAdListener2.onAdError(AdError.NO_OFFERS);
        }
    }

    @Override // com.mnt.impl.dsp.d.a
    public final void b() {
        RectangleBannerView.f(this.f4107a);
    }
}
