package com.mnt.impl.h;

import com.mnt.AdError;
import com.mnt.IAdListener;
import com.mnt.MntRectangleBanner;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class e implements IAdListener {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ IAdListener f4048a;

    /* renamed from: b, reason: collision with root package name */
    private /* synthetic */ MntRectangleBanner f4049b;

    e(IAdListener iAdListener, MntRectangleBanner mntRectangleBanner) {
        this.f4048a = iAdListener;
        this.f4049b = mntRectangleBanner;
    }

    @Override // com.mnt.IAdListener
    public final void onAdLoadFinish(Object obj) {
        this.f4048a.onAdLoadFinish(this.f4049b);
    }

    @Override // com.mnt.IAdListener
    public final void onAdError(AdError adError) {
        this.f4048a.onAdError(adError);
    }

    @Override // com.mnt.IAdListener
    public final void onAdShowed() {
        this.f4048a.onAdShowed();
    }

    @Override // com.mnt.IAdListener
    public final void onAdClosed() {
        this.f4048a.onAdClosed();
    }

    @Override // com.mnt.IAdListener
    public final void onAdClicked() {
        this.f4048a.onAdClicked();
    }
}
