package com.mopub.mobileads.dfp.adapters;

import android.app.Activity;
import android.util.Log;
import android.view.View;
import com.google.ads.AdRequest;
import com.google.ads.AdSize;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationBannerListener;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationInterstitialListener;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubInterstitial;
import com.mopub.mobileads.MoPubView;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class MoPubAdapter implements MediationBannerAdapter<MoPubExtras, MoPubServerParameters>, MediationInterstitialAdapter<MoPubExtras, MoPubServerParameters> {

    /* renamed from: a, reason: collision with root package name */
    private MoPubView f4485a;

    /* renamed from: b, reason: collision with root package name */
    private MoPubInterstitial f4486b;

    @Override // com.google.ads.mediation.MediationAdapter
    public Class<MoPubExtras> getAdditionalParametersType() {
        return MoPubExtras.class;
    }

    @Override // com.google.ads.mediation.MediationAdapter
    public Class<MoPubServerParameters> getServerParametersType() {
        return MoPubServerParameters.class;
    }

    @Override // com.google.ads.mediation.MediationBannerAdapter
    public void requestBannerAd(MediationBannerListener listener, Activity activity, MoPubServerParameters serverParameters, AdSize adSize, MediationAdRequest mediationAdRequest, MoPubExtras extras) {
        this.f4485a = new MoPubView(activity);
        this.f4485a.setBannerAdListener(new a(listener));
        this.f4485a.setAdUnitId(serverParameters.adUnitId);
        if (mediationAdRequest.isTesting()) {
            this.f4485a.setTesting(true);
        }
        if (mediationAdRequest.getLocation() != null) {
            this.f4485a.setLocation(mediationAdRequest.getLocation());
        }
        this.f4485a.setKeywords(a(mediationAdRequest));
        MoPubView moPubView = this.f4485a;
    }

    @Override // com.google.ads.mediation.MediationInterstitialAdapter
    public void requestInterstitialAd(MediationInterstitialListener listener, Activity activity, MoPubServerParameters serverParameters, MediationAdRequest mediationAdRequest, MoPubExtras extras) {
        this.f4486b = new MoPubInterstitial(activity, serverParameters.adUnitId);
        this.f4486b.setInterstitialAdListener(new b(listener));
        if (mediationAdRequest.isTesting()) {
            this.f4486b.setTesting(true);
        }
        this.f4486b.setKeywords(a(mediationAdRequest));
        this.f4486b.load();
    }

    private String a(MediationAdRequest mediationAdRequest) {
        return "tp=dfp_custom_1.0" + (mediationAdRequest.getAgeInYears() != null ? ",m_age:" + mediationAdRequest.getAgeInYears() : "") + (mediationAdRequest.getBirthday() != null ? ",m_birthday:" + mediationAdRequest.getBirthday() : "") + (mediationAdRequest.getGender() != null ? ",m_gender:" + mediationAdRequest.getGender() : "");
    }

    @Override // com.google.ads.mediation.MediationAdapter
    public void destroy() {
        if (this.f4485a != null) {
            this.f4485a.destroy();
            this.f4485a = null;
        }
        if (this.f4486b != null) {
            this.f4486b.destroy();
            this.f4486b = null;
        }
    }

    @Override // com.google.ads.mediation.MediationBannerAdapter
    public View getBannerView() {
        return this.f4485a;
    }

    private class a implements MoPubView.BannerAdListener {
        private static /* synthetic */ int[] c;

        /* renamed from: b, reason: collision with root package name */
        private MediationBannerListener f4488b;

        static /* synthetic */ int[] a() {
            int[] iArr = c;
            if (iArr == null) {
                iArr = new int[MoPubErrorCode.values().length];
                try {
                    iArr[MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR.ordinal()] = 6;
                } catch (NoSuchFieldError e) {
                }
                try {
                    iArr[MoPubErrorCode.ADAPTER_NOT_FOUND.ordinal()] = 5;
                } catch (NoSuchFieldError e2) {
                }
                try {
                    iArr[MoPubErrorCode.CANCELLED.ordinal()] = 4;
                } catch (NoSuchFieldError e3) {
                }
                try {
                    iArr[MoPubErrorCode.INTERNAL_ERROR.ordinal()] = 3;
                } catch (NoSuchFieldError e4) {
                }
                try {
                    iArr[MoPubErrorCode.MRAID_LOAD_ERROR.ordinal()] = 10;
                } catch (NoSuchFieldError e5) {
                }
                try {
                    iArr[MoPubErrorCode.NETWORK_INVALID_STATE.ordinal()] = 9;
                } catch (NoSuchFieldError e6) {
                }
                try {
                    iArr[MoPubErrorCode.NETWORK_NO_FILL.ordinal()] = 8;
                } catch (NoSuchFieldError e7) {
                }
                try {
                    iArr[MoPubErrorCode.NETWORK_TIMEOUT.ordinal()] = 7;
                } catch (NoSuchFieldError e8) {
                }
                try {
                    iArr[MoPubErrorCode.NO_FILL.ordinal()] = 1;
                } catch (NoSuchFieldError e9) {
                }
                try {
                    iArr[MoPubErrorCode.SERVER_ERROR.ordinal()] = 2;
                } catch (NoSuchFieldError e10) {
                }
                try {
                    iArr[MoPubErrorCode.UNSPECIFIED.ordinal()] = 13;
                } catch (NoSuchFieldError e11) {
                }
                try {
                    iArr[MoPubErrorCode.VIDEO_CACHE_ERROR.ordinal()] = 11;
                } catch (NoSuchFieldError e12) {
                }
                try {
                    iArr[MoPubErrorCode.VIDEO_DOWNLOAD_ERROR.ordinal()] = 12;
                } catch (NoSuchFieldError e13) {
                }
                c = iArr;
            }
            return iArr;
        }

        public a(MediationBannerListener mediationBannerListener) {
            this.f4488b = mediationBannerListener;
        }

        @Override // com.mopub.mobileads.MoPubView.BannerAdListener
        public void onBannerClicked(MoPubView moPubView) {
            this.f4488b.onClick(MoPubAdapter.this);
            this.f4488b.onPresentScreen(MoPubAdapter.this);
        }

        @Override // com.mopub.mobileads.MoPubView.BannerAdListener
        public void onBannerCollapsed(MoPubView moPubView) {
            this.f4488b.onDismissScreen(MoPubAdapter.this);
        }

        @Override // com.mopub.mobileads.MoPubView.BannerAdListener
        public void onBannerExpanded(MoPubView moPubView) {
            this.f4488b.onPresentScreen(MoPubAdapter.this);
        }

        @Override // com.mopub.mobileads.MoPubView.BannerAdListener
        public void onBannerFailed(MoPubView moPubView, MoPubErrorCode moPubErrorCode) {
            switch (a()[moPubErrorCode.ordinal()]) {
                case 1:
                    this.f4488b.onFailedToReceiveAd(MoPubAdapter.this, AdRequest.ErrorCode.NO_FILL);
                    break;
                case 2:
                    this.f4488b.onFailedToReceiveAd(MoPubAdapter.this, AdRequest.ErrorCode.INVALID_REQUEST);
                    break;
                case 7:
                    this.f4488b.onFailedToReceiveAd(MoPubAdapter.this, AdRequest.ErrorCode.NETWORK_ERROR);
                    break;
                default:
                    this.f4488b.onFailedToReceiveAd(MoPubAdapter.this, AdRequest.ErrorCode.INTERNAL_ERROR);
                    break;
            }
        }

        @Override // com.mopub.mobileads.MoPubView.BannerAdListener
        public void onBannerLoaded(MoPubView moPubView) {
            this.f4488b.onReceivedAd(MoPubAdapter.this);
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialAdapter
    public void showInterstitial() {
        if (this.f4486b.isReady()) {
            this.f4486b.show();
        } else {
            Log.d("Mopub", "Interstitial was not ready. Unable to load the interstitial");
        }
    }

    private class b implements MoPubInterstitial.InterstitialAdListener {
        private static /* synthetic */ int[] c;

        /* renamed from: b, reason: collision with root package name */
        private MediationInterstitialListener f4490b;

        static /* synthetic */ int[] a() {
            int[] iArr = c;
            if (iArr == null) {
                iArr = new int[MoPubErrorCode.values().length];
                try {
                    iArr[MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR.ordinal()] = 6;
                } catch (NoSuchFieldError e) {
                }
                try {
                    iArr[MoPubErrorCode.ADAPTER_NOT_FOUND.ordinal()] = 5;
                } catch (NoSuchFieldError e2) {
                }
                try {
                    iArr[MoPubErrorCode.CANCELLED.ordinal()] = 4;
                } catch (NoSuchFieldError e3) {
                }
                try {
                    iArr[MoPubErrorCode.INTERNAL_ERROR.ordinal()] = 3;
                } catch (NoSuchFieldError e4) {
                }
                try {
                    iArr[MoPubErrorCode.MRAID_LOAD_ERROR.ordinal()] = 10;
                } catch (NoSuchFieldError e5) {
                }
                try {
                    iArr[MoPubErrorCode.NETWORK_INVALID_STATE.ordinal()] = 9;
                } catch (NoSuchFieldError e6) {
                }
                try {
                    iArr[MoPubErrorCode.NETWORK_NO_FILL.ordinal()] = 8;
                } catch (NoSuchFieldError e7) {
                }
                try {
                    iArr[MoPubErrorCode.NETWORK_TIMEOUT.ordinal()] = 7;
                } catch (NoSuchFieldError e8) {
                }
                try {
                    iArr[MoPubErrorCode.NO_FILL.ordinal()] = 1;
                } catch (NoSuchFieldError e9) {
                }
                try {
                    iArr[MoPubErrorCode.SERVER_ERROR.ordinal()] = 2;
                } catch (NoSuchFieldError e10) {
                }
                try {
                    iArr[MoPubErrorCode.UNSPECIFIED.ordinal()] = 13;
                } catch (NoSuchFieldError e11) {
                }
                try {
                    iArr[MoPubErrorCode.VIDEO_CACHE_ERROR.ordinal()] = 11;
                } catch (NoSuchFieldError e12) {
                }
                try {
                    iArr[MoPubErrorCode.VIDEO_DOWNLOAD_ERROR.ordinal()] = 12;
                } catch (NoSuchFieldError e13) {
                }
                c = iArr;
            }
            return iArr;
        }

        public b(MediationInterstitialListener mediationInterstitialListener) {
            this.f4490b = mediationInterstitialListener;
        }

        @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
        public void onInterstitialDismissed(MoPubInterstitial moPubInterstitial) {
            this.f4490b.onDismissScreen(MoPubAdapter.this);
        }

        @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
        public void onInterstitialFailed(MoPubInterstitial moPubInterstitial, MoPubErrorCode moPubErrorCode) {
            switch (a()[moPubErrorCode.ordinal()]) {
                case 1:
                    this.f4490b.onFailedToReceiveAd(MoPubAdapter.this, AdRequest.ErrorCode.NO_FILL);
                    break;
                case 2:
                    this.f4490b.onFailedToReceiveAd(MoPubAdapter.this, AdRequest.ErrorCode.INVALID_REQUEST);
                    break;
                case 7:
                    this.f4490b.onFailedToReceiveAd(MoPubAdapter.this, AdRequest.ErrorCode.NETWORK_ERROR);
                    break;
                default:
                    this.f4490b.onFailedToReceiveAd(MoPubAdapter.this, AdRequest.ErrorCode.INTERNAL_ERROR);
                    break;
            }
        }

        @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
        public void onInterstitialLoaded(MoPubInterstitial moPubInterstitial) {
            this.f4490b.onReceivedAd(MoPubAdapter.this);
        }

        @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
        public void onInterstitialShown(MoPubInterstitial moPubInterstitial) {
            this.f4490b.onPresentScreen(MoPubAdapter.this);
        }

        @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
        public void onInterstitialClicked(MoPubInterstitial arg0) {
        }
    }
}
