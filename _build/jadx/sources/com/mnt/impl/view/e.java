package com.mnt.impl.view;

import com.mnt.AdError;
import com.mnt.IAdListener;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class e implements com.mnt.impl.f.a {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ BannerView f4105a;

    e(BannerView bannerView) {
        this.f4105a = bannerView;
    }

    @Override // com.mnt.impl.f.a
    public final void a(String str) {
        List list;
        List list2;
        IAdListener iAdListener;
        IAdListener iAdListener2;
        this.f4105a.n++;
        list = this.f4105a.h;
        if (list != null) {
            int i = this.f4105a.n;
            list2 = this.f4105a.h;
            if (i == list2.size()) {
                iAdListener = this.f4105a.f4095b;
                if (iAdListener != null) {
                    this.f4105a.l = true;
                    iAdListener2 = this.f4105a.f4095b;
                    iAdListener2.onAdLoadFinish(null);
                }
                BannerView.h(this.f4105a);
                BannerView.i(this.f4105a);
            }
        }
    }

    @Override // com.mnt.impl.f.a
    public final void a() {
        IAdListener iAdListener;
        IAdListener iAdListener2;
        iAdListener = this.f4105a.f4095b;
        if (iAdListener != null) {
            this.f4105a.l = false;
            iAdListener2 = this.f4105a.f4095b;
            iAdListener2.onAdError(AdError.NO_OFFERS);
        }
    }
}
