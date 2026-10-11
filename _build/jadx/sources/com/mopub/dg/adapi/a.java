package com.mopub.dg.adapi;

import com.mopub.dg.c.l;
import com.mopub.dg.d.n;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class a implements l {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ DGAdApi f4252a;

    a(DGAdApi dGAdApi) {
        this.f4252a = dGAdApi;
    }

    @Override // com.mopub.dg.c.l
    public void onDataFail() {
        ApiAdsListener apiAdsListener;
        ApiStatusListener apiStatusListener;
        ApiStatusListener apiStatusListener2;
        ApiAdsListener apiAdsListener2;
        apiAdsListener = this.f4252a.d;
        if (apiAdsListener != null) {
            apiAdsListener2 = this.f4252a.d;
            apiAdsListener2.onAdError();
        }
        apiStatusListener = this.f4252a.e;
        if (apiStatusListener != null) {
            apiStatusListener2 = this.f4252a.e;
            apiStatusListener2.onStatusEvent("Cache_Ad_Fail", "");
            n.a("Cache_Ad_Fail");
        }
    }

    @Override // com.mopub.dg.c.l
    public void onDataListSuccess(List list) {
        ApiAdsListener apiAdsListener;
        ApiStatusListener apiStatusListener;
        ApiStatusListener apiStatusListener2;
        ApiAdsListener apiAdsListener2;
        ApiAdsListener apiAdsListener3;
        ApiStatusListener apiStatusListener3;
        ApiStatusListener apiStatusListener4;
        ApiAdsListener apiAdsListener4;
        if (list == null || list.size() <= 0) {
            apiAdsListener = this.f4252a.d;
            if (apiAdsListener != null) {
                apiAdsListener2 = this.f4252a.d;
                apiAdsListener2.onAdError();
            }
            apiStatusListener = this.f4252a.e;
            if (apiStatusListener != null) {
                apiStatusListener2 = this.f4252a.e;
                apiStatusListener2.onStatusEvent("Cache_No_Ad", "");
                n.a("Cache_No_Ad");
                return;
            }
            return;
        }
        apiAdsListener3 = this.f4252a.d;
        if (apiAdsListener3 != null) {
            apiAdsListener4 = this.f4252a.d;
            apiAdsListener4.onAdLoaded(list);
        }
        apiStatusListener3 = this.f4252a.e;
        if (apiStatusListener3 != null) {
            apiStatusListener4 = this.f4252a.e;
            apiStatusListener4.onStatusEvent("Cache_Ad_Success", "");
            n.a("Cache_Ad_Success");
        }
    }

    public void onDataSuccess(AdData adData) {
        ApiAdsListener apiAdsListener;
        ApiAdsListener apiAdsListener2;
        apiAdsListener = this.f4252a.d;
        if (apiAdsListener != null) {
            apiAdsListener2 = this.f4252a.d;
            apiAdsListener2.onOneAdLoaded(adData);
        }
    }
}
