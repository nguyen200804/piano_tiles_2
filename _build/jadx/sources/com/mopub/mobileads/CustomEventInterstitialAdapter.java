package com.mopub.mobileads;

import android.content.Context;
import android.os.Handler;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.mopub.common.AdReport;
import com.mopub.common.DataKeys;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.CustomEventInterstitial;
import com.mopub.mobileads.factories.CustomEventInterstitialFactory;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class CustomEventInterstitialAdapter implements CustomEventInterstitial.CustomEventInterstitialListener {
    public static final int DEFAULT_INTERSTITIAL_TIMEOUT_DELAY = 30000;

    /* renamed from: a, reason: collision with root package name */
    private final MoPubInterstitial f4365a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f4366b;
    private a c;
    private CustomEventInterstitial d;
    private Context e;
    private Map<String, Object> f;
    private Map<String, String> g;
    private final Handler h;
    private final Runnable i;

    interface a {
        void onCustomEventInterstitialClicked();

        void onCustomEventInterstitialDismissed();

        void onCustomEventInterstitialFailed(MoPubErrorCode moPubErrorCode);

        void onCustomEventInterstitialLoaded();

        void onCustomEventInterstitialShown();
    }

    public CustomEventInterstitialAdapter(@NonNull MoPubInterstitial moPubInterstitial, @NonNull String className, @NonNull Map<String, String> serverExtras, long broadcastIdentifier, @Nullable AdReport adReport) {
        Preconditions.checkNotNull(serverExtras);
        this.h = new Handler();
        this.f4365a = moPubInterstitial;
        this.e = this.f4365a.getContext();
        this.i = new Runnable() { // from class: com.mopub.mobileads.CustomEventInterstitialAdapter.1
            @Override // java.lang.Runnable
            public void run() {
                MoPubLog.d("Third-party network timed out.");
                CustomEventInterstitialAdapter.this.onInterstitialFailed(MoPubErrorCode.NETWORK_TIMEOUT);
                CustomEventInterstitialAdapter.this.c();
            }
        };
        MoPubLog.d("Attempting to invoke custom event: " + className);
        try {
            this.d = CustomEventInterstitialFactory.create(className);
            this.g = new TreeMap(serverExtras);
            this.f = this.f4365a.getLocalExtras();
            if (this.f4365a.getLocation() != null) {
                this.f.put("location", this.f4365a.getLocation());
            }
            this.f.put(DataKeys.BROADCAST_IDENTIFIER_KEY, Long.valueOf(broadcastIdentifier));
            this.f.put(DataKeys.AD_REPORT_KEY, adReport);
        } catch (Exception e) {
            MoPubLog.d("Couldn't locate or instantiate custom event: " + className + ".");
            this.f4365a.onCustomEventInterstitialFailed(MoPubErrorCode.ADAPTER_NOT_FOUND);
        }
    }

    void a() {
        if (!d() && this.d != null) {
            this.h.postDelayed(this.i, f());
            try {
                this.d.loadInterstitial(this.e, this, this.f, this.g);
            } catch (Exception e) {
                MoPubLog.d("Loading a custom event interstitial threw an exception.", e);
                onInterstitialFailed(MoPubErrorCode.INTERNAL_ERROR);
            }
        }
    }

    void b() {
        if (!d() && this.d != null) {
            try {
                this.d.showInterstitial();
            } catch (Exception e) {
                MoPubLog.d("Showing a custom event interstitial threw an exception.", e);
                onInterstitialFailed(MoPubErrorCode.INTERNAL_ERROR);
            }
        }
    }

    void c() {
        if (this.d != null) {
            try {
                this.d.onInvalidate();
            } catch (Exception e) {
                MoPubLog.d("Invalidating a custom event interstitial threw an exception.", e);
            }
        }
        this.d = null;
        this.e = null;
        this.g = null;
        this.f = null;
        this.c = null;
        this.f4366b = true;
    }

    boolean d() {
        return this.f4366b;
    }

    void a(a aVar) {
        this.c = aVar;
    }

    private void e() {
        this.h.removeCallbacks(this.i);
    }

    private int f() {
        if (this.f4365a == null || this.f4365a.b() == null || this.f4365a.b().intValue() < 0) {
            return 30000;
        }
        return this.f4365a.b().intValue() * 1000;
    }

    @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
    public void onInterstitialLoaded() {
        if (!d()) {
            e();
            if (this.c != null) {
                this.c.onCustomEventInterstitialLoaded();
            }
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
    public void onInterstitialFailed(MoPubErrorCode errorCode) {
        if (!d() && this.c != null) {
            if (errorCode == null) {
                errorCode = MoPubErrorCode.UNSPECIFIED;
            }
            e();
            this.c.onCustomEventInterstitialFailed(errorCode);
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
    public void onInterstitialShown() {
        if (!d() && this.c != null) {
            this.c.onCustomEventInterstitialShown();
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
    public void onInterstitialClicked() {
        if (!d() && this.c != null) {
            this.c.onCustomEventInterstitialClicked();
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
    public void onLeaveApplication() {
        onInterstitialClicked();
    }

    @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
    public void onInterstitialDismissed() {
        if (!d() && this.c != null) {
            this.c.onCustomEventInterstitialDismissed();
        }
    }
}
