package com.mnt.impl.h;

import com.mnt.AdError;
import com.mnt.IAdListener;
import com.mnt.MntInterstitial;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class f implements IAdListener {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ IAdListener f4050a;

    /* renamed from: b, reason: collision with root package name */
    private /* synthetic */ MntInterstitial f4051b;

    f(IAdListener iAdListener, MntInterstitial mntInterstitial) {
        this.f4050a = iAdListener;
        this.f4051b = mntInterstitial;
    }

    @Override // com.mnt.IAdListener
    public final void onAdLoadFinish(Object obj) {
        this.f4050a.onAdLoadFinish(this.f4051b);
    }

    @Override // com.mnt.IAdListener
    public final void onAdError(AdError adError) {
        this.f4050a.onAdError(adError);
    }

    @Override // com.mnt.IAdListener
    public final void onAdShowed() {
        this.f4050a.onAdShowed();
    }

    @Override // com.mnt.IAdListener
    public final void onAdClosed() {
        this.f4050a.onAdClosed();
    }

    @Override // com.mnt.IAdListener
    public final void onAdClicked() {
        this.f4050a.onAdClicked();
    }
}
