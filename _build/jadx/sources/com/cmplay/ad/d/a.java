package com.cmplay.ad.d;

import android.app.Activity;
import com.cmplay.ad.b;
import com.cmplay.ad.c;
import com.cmplay.tile2.ui.AppActivity;
import com.mopub.common.MoPub;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubInterstitial;

/* compiled from: MopubInterstitialADS.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a extends b implements MoPubInterstitial.InterstitialAdListener {

    /* renamed from: b, reason: collision with root package name */
    private static a f1155b;

    /* renamed from: a, reason: collision with root package name */
    MoPubInterstitial f1156a;
    private String c = "e9e18c808b23464a8b4bd7cb330c737d";
    private c d;

    private a() {
        prepare();
    }

    public static a a() {
        if (f1155b == null) {
            synchronized (a.class) {
                if (f1155b == null) {
                    f1155b = new a();
                }
            }
        }
        return f1155b;
    }

    @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
    public void onInterstitialLoaded(MoPubInterstitial interstitial) {
    }

    @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
    public void onInterstitialFailed(MoPubInterstitial interstitial, MoPubErrorCode errorCode) {
    }

    @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
    public void onInterstitialShown(MoPubInterstitial interstitial) {
        if (this.d != null) {
            this.d.b();
        }
    }

    @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
    public void onInterstitialClicked(MoPubInterstitial interstitial) {
    }

    @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
    public void onInterstitialDismissed(MoPubInterstitial interstitial) {
        if (this.d != null) {
            this.d.c();
        }
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public void onResume(Activity activity) {
        MoPub.onResume(activity);
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public void onPaused(Activity activity) {
        MoPub.onPause(activity);
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public void prepare() {
        if (this.f1156a == null && AppActivity.c() != null) {
            this.f1156a = new MoPubInterstitial(AppActivity.c(), this.c);
            this.f1156a.setInterstitialAdListener(this);
        }
        if (this.f1156a != null && !this.f1156a.isReady()) {
            this.f1156a.load();
        }
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public boolean canShow(int reportFrom) {
        return true;
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public boolean show(int reportFrom) {
        boolean z = false;
        try {
            if (this.f1156a != null) {
                z = this.f1156a.show();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        com.cmplay.util.c.b("MopubInterstitialADS", "MopubInterstitialADS isShow = " + z);
        return z;
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public void setListener(c l) {
        this.d = l;
    }
}
