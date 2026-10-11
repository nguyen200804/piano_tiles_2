package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.MediationNativeListener;
import com.google.android.gms.ads.mediation.NativeAdMapper;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzgr implements MediationBannerListener, MediationInterstitialListener, MediationNativeListener {
    private final zzgl zzbpk;
    private NativeAdMapper zzbpl;

    public zzgr(zzgl zzglVar) {
        this.zzbpk = zzglVar;
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public void onAdClicked(MediationBannerAdapter mediationBannerAdapter) {
        com.google.android.gms.common.internal.zzab.zzhi("onAdClicked must be called on the main UI thread.");
        com.google.android.gms.ads.internal.util.client.zzb.zzcv("Adapter called onAdClicked.");
        try {
            this.zzbpk.onAdClicked();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzd("Could not call onAdClicked.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public void onAdClicked(MediationInterstitialAdapter mediationInterstitialAdapter) {
        com.google.android.gms.common.internal.zzab.zzhi("onAdClicked must be called on the main UI thread.");
        com.google.android.gms.ads.internal.util.client.zzb.zzcv("Adapter called onAdClicked.");
        try {
            this.zzbpk.onAdClicked();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzd("Could not call onAdClicked.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public void onAdClicked(MediationNativeAdapter mediationNativeAdapter) {
        com.google.android.gms.common.internal.zzab.zzhi("onAdClicked must be called on the main UI thread.");
        NativeAdMapper zzms = zzms();
        if (zzms == null) {
            com.google.android.gms.ads.internal.util.client.zzb.zzcx("Could not call onAdClicked since NativeAdMapper is null.");
            return;
        }
        if (!zzms.getOverrideClickHandling()) {
            com.google.android.gms.ads.internal.util.client.zzb.zzcv("Could not call onAdClicked since setOverrideClickHandling is not set to true");
            return;
        }
        com.google.android.gms.ads.internal.util.client.zzb.zzcv("Adapter called onAdClicked.");
        try {
            this.zzbpk.onAdClicked();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzd("Could not call onAdClicked.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public void onAdClosed(MediationBannerAdapter mediationBannerAdapter) {
        com.google.android.gms.common.internal.zzab.zzhi("onAdClosed must be called on the main UI thread.");
        com.google.android.gms.ads.internal.util.client.zzb.zzcv("Adapter called onAdClosed.");
        try {
            this.zzbpk.onAdClosed();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzd("Could not call onAdClosed.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public void onAdClosed(MediationInterstitialAdapter mediationInterstitialAdapter) {
        com.google.android.gms.common.internal.zzab.zzhi("onAdClosed must be called on the main UI thread.");
        com.google.android.gms.ads.internal.util.client.zzb.zzcv("Adapter called onAdClosed.");
        try {
            this.zzbpk.onAdClosed();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzd("Could not call onAdClosed.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public void onAdClosed(MediationNativeAdapter mediationNativeAdapter) {
        com.google.android.gms.common.internal.zzab.zzhi("onAdClosed must be called on the main UI thread.");
        com.google.android.gms.ads.internal.util.client.zzb.zzcv("Adapter called onAdClosed.");
        try {
            this.zzbpk.onAdClosed();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzd("Could not call onAdClosed.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public void onAdFailedToLoad(MediationBannerAdapter mediationBannerAdapter, int i) {
        com.google.android.gms.common.internal.zzab.zzhi("onAdFailedToLoad must be called on the main UI thread.");
        com.google.android.gms.ads.internal.util.client.zzb.zzcv(new StringBuilder(55).append("Adapter called onAdFailedToLoad with error. ").append(i).toString());
        try {
            this.zzbpk.onAdFailedToLoad(i);
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzd("Could not call onAdFailedToLoad.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public void onAdFailedToLoad(MediationInterstitialAdapter mediationInterstitialAdapter, int i) {
        com.google.android.gms.common.internal.zzab.zzhi("onAdFailedToLoad must be called on the main UI thread.");
        com.google.android.gms.ads.internal.util.client.zzb.zzcv(new StringBuilder(55).append("Adapter called onAdFailedToLoad with error ").append(i).append(".").toString());
        try {
            this.zzbpk.onAdFailedToLoad(i);
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzd("Could not call onAdFailedToLoad.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public void onAdFailedToLoad(MediationNativeAdapter mediationNativeAdapter, int i) {
        com.google.android.gms.common.internal.zzab.zzhi("onAdFailedToLoad must be called on the main UI thread.");
        com.google.android.gms.ads.internal.util.client.zzb.zzcv(new StringBuilder(55).append("Adapter called onAdFailedToLoad with error ").append(i).append(".").toString());
        try {
            this.zzbpk.onAdFailedToLoad(i);
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzd("Could not call onAdFailedToLoad.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public void onAdImpression(MediationNativeAdapter mediationNativeAdapter) {
        com.google.android.gms.common.internal.zzab.zzhi("onAdImpression must be called on the main UI thread.");
        NativeAdMapper zzms = zzms();
        if (zzms == null) {
            com.google.android.gms.ads.internal.util.client.zzb.zzcx("Could not call onAdImpression since NativeAdMapper is null. ");
            return;
        }
        if (!zzms.getOverrideImpressionRecording()) {
            com.google.android.gms.ads.internal.util.client.zzb.zzcv("Could not call onAdImpression since setOverrideImpressionRecording is not set to true");
            return;
        }
        com.google.android.gms.ads.internal.util.client.zzb.zzcv("Adapter called onAdImpression.");
        try {
            this.zzbpk.onAdImpression();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzd("Could not call onAdImpression.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public void onAdLeftApplication(MediationBannerAdapter mediationBannerAdapter) {
        com.google.android.gms.common.internal.zzab.zzhi("onAdLeftApplication must be called on the main UI thread.");
        com.google.android.gms.ads.internal.util.client.zzb.zzcv("Adapter called onAdLeftApplication.");
        try {
            this.zzbpk.onAdLeftApplication();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzd("Could not call onAdLeftApplication.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public void onAdLeftApplication(MediationInterstitialAdapter mediationInterstitialAdapter) {
        com.google.android.gms.common.internal.zzab.zzhi("onAdLeftApplication must be called on the main UI thread.");
        com.google.android.gms.ads.internal.util.client.zzb.zzcv("Adapter called onAdLeftApplication.");
        try {
            this.zzbpk.onAdLeftApplication();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzd("Could not call onAdLeftApplication.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public void onAdLeftApplication(MediationNativeAdapter mediationNativeAdapter) {
        com.google.android.gms.common.internal.zzab.zzhi("onAdLeftApplication must be called on the main UI thread.");
        com.google.android.gms.ads.internal.util.client.zzb.zzcv("Adapter called onAdLeftApplication.");
        try {
            this.zzbpk.onAdLeftApplication();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzd("Could not call onAdLeftApplication.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public void onAdLoaded(MediationBannerAdapter mediationBannerAdapter) {
        com.google.android.gms.common.internal.zzab.zzhi("onAdLoaded must be called on the main UI thread.");
        com.google.android.gms.ads.internal.util.client.zzb.zzcv("Adapter called onAdLoaded.");
        try {
            this.zzbpk.onAdLoaded();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzd("Could not call onAdLoaded.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public void onAdLoaded(MediationInterstitialAdapter mediationInterstitialAdapter) {
        com.google.android.gms.common.internal.zzab.zzhi("onAdLoaded must be called on the main UI thread.");
        com.google.android.gms.ads.internal.util.client.zzb.zzcv("Adapter called onAdLoaded.");
        try {
            this.zzbpk.onAdLoaded();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzd("Could not call onAdLoaded.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public void onAdLoaded(MediationNativeAdapter mediationNativeAdapter, NativeAdMapper nativeAdMapper) {
        com.google.android.gms.common.internal.zzab.zzhi("onAdLoaded must be called on the main UI thread.");
        com.google.android.gms.ads.internal.util.client.zzb.zzcv("Adapter called onAdLoaded.");
        this.zzbpl = nativeAdMapper;
        try {
            this.zzbpk.onAdLoaded();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzd("Could not call onAdLoaded.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public void onAdOpened(MediationBannerAdapter mediationBannerAdapter) {
        com.google.android.gms.common.internal.zzab.zzhi("onAdOpened must be called on the main UI thread.");
        com.google.android.gms.ads.internal.util.client.zzb.zzcv("Adapter called onAdOpened.");
        try {
            this.zzbpk.onAdOpened();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzd("Could not call onAdOpened.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public void onAdOpened(MediationInterstitialAdapter mediationInterstitialAdapter) {
        com.google.android.gms.common.internal.zzab.zzhi("onAdOpened must be called on the main UI thread.");
        com.google.android.gms.ads.internal.util.client.zzb.zzcv("Adapter called onAdOpened.");
        try {
            this.zzbpk.onAdOpened();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzd("Could not call onAdOpened.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public void onAdOpened(MediationNativeAdapter mediationNativeAdapter) {
        com.google.android.gms.common.internal.zzab.zzhi("onAdOpened must be called on the main UI thread.");
        com.google.android.gms.ads.internal.util.client.zzb.zzcv("Adapter called onAdOpened.");
        try {
            this.zzbpk.onAdOpened();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzd("Could not call onAdOpened.", e);
        }
    }

    public NativeAdMapper zzms() {
        return this.zzbpl;
    }
}
