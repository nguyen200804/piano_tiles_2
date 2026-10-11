package com.google.android.gms.ads;

import android.content.Context;
import android.support.annotation.RequiresPermission;
import android.util.AttributeSet;
import com.google.android.gms.ads.purchase.InAppPurchaseListener;
import com.google.android.gms.ads.purchase.PlayStorePurchaseListener;
import com.google.android.gms.internal.zzin;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class NativeExpressAdView extends BaseAdView {
    public NativeExpressAdView(Context context) {
        super(context, 2);
    }

    public NativeExpressAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 2);
    }

    public NativeExpressAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, 2);
    }

    @Override // com.google.android.gms.ads.BaseAdView
    public /* bridge */ /* synthetic */ void destroy() {
        super.destroy();
    }

    @Override // com.google.android.gms.ads.BaseAdView
    public /* bridge */ /* synthetic */ AdListener getAdListener() {
        return super.getAdListener();
    }

    @Override // com.google.android.gms.ads.BaseAdView
    public /* bridge */ /* synthetic */ AdSize getAdSize() {
        return super.getAdSize();
    }

    @Override // com.google.android.gms.ads.BaseAdView
    public /* bridge */ /* synthetic */ String getAdUnitId() {
        return super.getAdUnitId();
    }

    @Override // com.google.android.gms.ads.BaseAdView
    public /* bridge */ /* synthetic */ InAppPurchaseListener getInAppPurchaseListener() {
        return super.getInAppPurchaseListener();
    }

    @Override // com.google.android.gms.ads.BaseAdView
    public /* bridge */ /* synthetic */ String getMediationAdapterClassName() {
        return super.getMediationAdapterClassName();
    }

    public VideoController getVideoController() {
        return this.zzaih.getVideoController();
    }

    public VideoOptions getVideoOptions() {
        return this.zzaih.getVideoOptions();
    }

    @Override // com.google.android.gms.ads.BaseAdView
    public /* bridge */ /* synthetic */ boolean isLoading() {
        return super.isLoading();
    }

    @Override // com.google.android.gms.ads.BaseAdView
    @RequiresPermission("android.permission.INTERNET")
    public /* bridge */ /* synthetic */ void loadAd(AdRequest adRequest) {
    }

    @Override // com.google.android.gms.ads.BaseAdView
    public /* bridge */ /* synthetic */ void pause() {
        super.pause();
    }

    @Override // com.google.android.gms.ads.BaseAdView
    public /* bridge */ /* synthetic */ void resume() {
        super.resume();
    }

    @Override // com.google.android.gms.ads.BaseAdView
    public /* bridge */ /* synthetic */ void setAdListener(AdListener adListener) {
        super.setAdListener(adListener);
    }

    @Override // com.google.android.gms.ads.BaseAdView
    public /* bridge */ /* synthetic */ void setAdSize(AdSize adSize) {
    }

    @Override // com.google.android.gms.ads.BaseAdView
    public /* bridge */ /* synthetic */ void setAdUnitId(String str) {
        super.setAdUnitId(str);
    }

    @Override // com.google.android.gms.ads.BaseAdView
    public /* bridge */ /* synthetic */ void setInAppPurchaseListener(InAppPurchaseListener inAppPurchaseListener) {
        super.setInAppPurchaseListener(inAppPurchaseListener);
    }

    @Override // com.google.android.gms.ads.BaseAdView
    public /* bridge */ /* synthetic */ void setPlayStorePurchaseParams(PlayStorePurchaseListener playStorePurchaseListener, String str) {
        super.setPlayStorePurchaseParams(playStorePurchaseListener, str);
    }

    public void setVideoOptions(VideoOptions videoOptions) {
        this.zzaih.setVideoOptions(videoOptions);
    }
}
