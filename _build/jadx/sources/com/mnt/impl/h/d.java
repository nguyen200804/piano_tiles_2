package com.mnt.impl.h;

import com.mnt.AdError;
import com.mnt.IAdListener;
import com.mnt.MntBanner;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class d implements IAdListener {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ IAdListener f4046a;

    /* renamed from: b, reason: collision with root package name */
    private /* synthetic */ MntBanner f4047b;

    d(IAdListener iAdListener, MntBanner mntBanner) {
        this.f4046a = iAdListener;
        this.f4047b = mntBanner;
    }

    @Override // com.mnt.IAdListener
    public final void onAdLoadFinish(Object obj) {
        this.f4046a.onAdLoadFinish(this.f4047b);
    }

    @Override // com.mnt.IAdListener
    public final void onAdError(AdError adError) {
        this.f4046a.onAdError(adError);
    }

    @Override // com.mnt.IAdListener
    public final void onAdShowed() {
        this.f4046a.onAdShowed();
    }

    @Override // com.mnt.IAdListener
    public final void onAdClosed() {
        this.f4046a.onAdClosed();
    }

    @Override // com.mnt.IAdListener
    public final void onAdClicked() {
        this.f4046a.onAdClicked();
    }
}
