package com.mnt.impl.view;

import com.mnt.AdError;
import com.mnt.IAdListener;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class i implements com.mnt.impl.f.a {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ RectangleBannerView f4110a;

    i(RectangleBannerView rectangleBannerView) {
        this.f4110a = rectangleBannerView;
    }

    @Override // com.mnt.impl.f.a
    public final void a(String str) {
        List list;
        List list2;
        IAdListener iAdListener;
        IAdListener iAdListener2;
        this.f4110a.l++;
        list = this.f4110a.g;
        if (list != null) {
            int i = this.f4110a.l;
            list2 = this.f4110a.g;
            if (i == list2.size()) {
                iAdListener = this.f4110a.c;
                if (iAdListener != null) {
                    this.f4110a.j = true;
                    iAdListener2 = this.f4110a.c;
                    iAdListener2.onAdLoadFinish(null);
                }
                RectangleBannerView.h(this.f4110a);
                RectangleBannerView.i(this.f4110a);
            }
        }
    }

    @Override // com.mnt.impl.f.a
    public final void a() {
        IAdListener iAdListener;
        IAdListener iAdListener2;
        iAdListener = this.f4110a.c;
        if (iAdListener != null) {
            this.f4110a.j = false;
            iAdListener2 = this.f4110a.c;
            iAdListener2.onAdError(AdError.NO_OFFERS);
        }
    }
}
