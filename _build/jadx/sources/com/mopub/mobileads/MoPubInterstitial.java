package com.mopub.mobileads;

import android.content.Context;
import android.location.Location;
import android.os.Handler;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.mopub.common.AdFormat;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.AdTypeTranslator;
import com.mopub.mobileads.CustomEventInterstitialAdapter;
import com.mopub.mobileads.factories.CustomEventInterstitialAdapterFactory;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class MoPubInterstitial implements CustomEventInterstitialAdapter.a {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private MoPubInterstitialView f4381a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private CustomEventInterstitialAdapter f4382b;

    @Nullable
    private InterstitialAdListener c;

    @NonNull
    private Context d;

    @NonNull
    private Handler e;

    @NonNull
    private final Runnable f;

    @NonNull
    private volatile a g;

    public interface InterstitialAdListener {
        void onInterstitialClicked(MoPubInterstitial moPubInterstitial);

        void onInterstitialDismissed(MoPubInterstitial moPubInterstitial);

        void onInterstitialFailed(MoPubInterstitial moPubInterstitial, MoPubErrorCode moPubErrorCode);

        void onInterstitialLoaded(MoPubInterstitial moPubInterstitial);

        void onInterstitialShown(MoPubInterstitial moPubInterstitial);
    }

    @VisibleForTesting
    enum a {
        IDLE,
        LOADING,
        READY,
        SHOWING,
        DESTROYED
    }

    public MoPubInterstitial(@NonNull Context context, @NonNull String adUnitId) {
        this.d = context;
        this.f4381a = new MoPubInterstitialView(this.d);
        this.f4381a.setAdUnitId(adUnitId);
        this.g = a.IDLE;
        this.e = new Handler();
        this.f = new Runnable() { // from class: com.mopub.mobileads.MoPubInterstitial.1
            @Override // java.lang.Runnable
            public void run() {
                MoPubLog.d("Expiring unused Interstitial ad.");
                MoPubInterstitial.this.a(a.IDLE, true);
                if (!a.SHOWING.equals(MoPubInterstitial.this.g) && !a.DESTROYED.equals(MoPubInterstitial.this.g)) {
                    MoPubInterstitial.this.f4381a.a(MoPubErrorCode.EXPIRED);
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(@NonNull a aVar) {
        return a(aVar, false);
    }

    @VisibleForTesting
    synchronized boolean a(@NonNull a aVar, boolean z) {
        boolean z2 = true;
        synchronized (this) {
            Preconditions.checkNotNull(aVar);
            switch (this.g) {
                case LOADING:
                    switch (aVar) {
                        case LOADING:
                            if (!z) {
                                MoPubLog.d("Already loading an interstitial.");
                            }
                            z2 = false;
                            break;
                        case SHOWING:
                            MoPubLog.d("Interstitial is not ready to be shown yet.");
                            z2 = false;
                            break;
                        case DESTROYED:
                            c();
                            break;
                        case IDLE:
                            e();
                            this.g = a.IDLE;
                            break;
                        case READY:
                            this.g = a.READY;
                            if (AdTypeTranslator.CustomEventType.isMoPubSpecific(this.f4381a.a())) {
                                this.e.postDelayed(this.f, 14400000L);
                                break;
                            }
                            break;
                        default:
                            z2 = false;
                            break;
                    }
                case SHOWING:
                    switch (aVar) {
                        case LOADING:
                            if (!z) {
                                MoPubLog.d("Interstitial already showing. Not loading another.");
                            }
                            z2 = false;
                            break;
                        case SHOWING:
                            MoPubLog.d("Already showing an interstitial. Cannot show it again.");
                            z2 = false;
                            break;
                        case DESTROYED:
                            c();
                            break;
                        case IDLE:
                            if (z) {
                                MoPubLog.d("Cannot force refresh while showing an interstitial.");
                                z2 = false;
                                break;
                            } else {
                                e();
                                this.g = a.IDLE;
                                break;
                            }
                        default:
                            z2 = false;
                            break;
                    }
                case DESTROYED:
                    MoPubLog.d("MoPubInterstitial destroyed. Ignoring all requests.");
                    z2 = false;
                    break;
                case IDLE:
                    switch (aVar) {
                        case LOADING:
                            e();
                            this.g = a.LOADING;
                            if (z) {
                                this.f4381a.forceRefresh();
                                break;
                            } else {
                                MoPubInterstitialView moPubInterstitialView = this.f4381a;
                                break;
                            }
                        case SHOWING:
                            MoPubLog.d("No interstitial loading or loaded.");
                            z2 = false;
                            break;
                        case DESTROYED:
                            c();
                            break;
                        default:
                            z2 = false;
                            break;
                    }
                case READY:
                    switch (aVar) {
                        case LOADING:
                            MoPubLog.d("Interstitial already loaded. Not loading another.");
                            if (this.c != null) {
                                this.c.onInterstitialLoaded(this);
                            }
                            z2 = false;
                            break;
                        case SHOWING:
                            d();
                            this.g = a.SHOWING;
                            this.e.removeCallbacks(this.f);
                            break;
                        case DESTROYED:
                            c();
                            break;
                        case IDLE:
                            if (!z) {
                                z2 = false;
                                break;
                            } else {
                                e();
                                this.g = a.IDLE;
                                break;
                            }
                        default:
                            z2 = false;
                            break;
                    }
                default:
                    z2 = false;
                    break;
            }
        }
        return z2;
    }

    private void c() {
        e();
        this.f4381a.setBannerAdListener(null);
        this.f4381a.destroy();
        this.e.removeCallbacks(this.f);
        this.g = a.DESTROYED;
    }

    public void load() {
        a(a.LOADING);
    }

    public boolean show() {
        return a(a.SHOWING);
    }

    public void forceRefresh() {
        a(a.IDLE, true);
        a(a.LOADING, true);
    }

    public boolean isReady() {
        return this.g == a.READY;
    }

    boolean a() {
        return this.g == a.DESTROYED;
    }

    Integer b() {
        return this.f4381a.c();
    }

    private void d() {
        if (this.f4382b != null) {
            this.f4382b.b();
        }
    }

    private void e() {
        if (this.f4382b != null) {
            this.f4382b.c();
            this.f4382b = null;
        }
    }

    public void setKeywords(@Nullable String keywords) {
        this.f4381a.setKeywords(keywords);
    }

    @Nullable
    public String getKeywords() {
        return this.f4381a.getKeywords();
    }

    @NonNull
    public Context getContext() {
        return this.d;
    }

    @Nullable
    public Location getLocation() {
        return this.f4381a.getLocation();
    }

    public void destroy() {
        a(a.DESTROYED);
    }

    public void setInterstitialAdListener(@Nullable InterstitialAdListener listener) {
        this.c = listener;
    }

    @Nullable
    public InterstitialAdListener getInterstitialAdListener() {
        return this.c;
    }

    public void setTesting(boolean testing) {
        this.f4381a.setTesting(testing);
    }

    public boolean getTesting() {
        return this.f4381a.getTesting();
    }

    public void setLocalExtras(Map<String, Object> extras) {
        this.f4381a.setLocalExtras(extras);
    }

    @NonNull
    public Map<String, Object> getLocalExtras() {
        return this.f4381a.getLocalExtras();
    }

    @Override // com.mopub.mobileads.CustomEventInterstitialAdapter.a
    public void onCustomEventInterstitialLoaded() {
        if (!a()) {
            a(a.READY);
            if (this.c != null) {
                this.c.onInterstitialLoaded(this);
            }
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitialAdapter.a
    public void onCustomEventInterstitialFailed(@NonNull MoPubErrorCode errorCode) {
        if (!a() && !this.f4381a.b(errorCode)) {
            a(a.IDLE);
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitialAdapter.a
    public void onCustomEventInterstitialShown() {
        if (!a()) {
            this.f4381a.b();
            if (this.c != null) {
                this.c.onInterstitialShown(this);
            }
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitialAdapter.a
    public void onCustomEventInterstitialClicked() {
        if (!a()) {
            this.f4381a.d();
            if (this.c != null) {
                this.c.onInterstitialClicked(this);
            }
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitialAdapter.a
    public void onCustomEventInterstitialDismissed() {
        if (!a()) {
            a(a.IDLE);
            if (this.c != null) {
                this.c.onInterstitialDismissed(this);
            }
        }
    }

    public class MoPubInterstitialView extends MoPubView {
        public MoPubInterstitialView(Context context) {
            super(context);
            setAutorefreshEnabled(false);
        }

        @Nullable
        String a() {
            return this.f4388b.getCustomEventClassName();
        }

        @Override // com.mopub.mobileads.MoPubView
        public AdFormat getAdFormat() {
            return AdFormat.INTERSTITIAL;
        }

        @Override // com.mopub.mobileads.MoPubView
        protected void a(String str, Map<String, String> map) {
            if (this.f4388b != null) {
                if (!TextUtils.isEmpty(str)) {
                    if (MoPubInterstitial.this.f4382b != null) {
                        MoPubInterstitial.this.f4382b.c();
                    }
                    MoPubLog.d("Loading custom event interstitial adapter.");
                    MoPubInterstitial.this.f4382b = CustomEventInterstitialAdapterFactory.create(MoPubInterstitial.this, str, map, this.f4388b.getBroadcastIdentifier(), this.f4388b.getAdReport());
                    MoPubInterstitial.this.f4382b.a(MoPubInterstitial.this);
                    MoPubInterstitial.this.f4382b.a();
                    return;
                }
                MoPubLog.d("Couldn't invoke custom event because the server did not specify one.");
                b(MoPubErrorCode.ADAPTER_NOT_FOUND);
            }
        }

        protected void b() {
            MoPubLog.d("Tracking impression for interstitial.");
            if (this.f4388b != null) {
                this.f4388b.f();
            }
        }

        @Override // com.mopub.mobileads.MoPubView
        protected void a(MoPubErrorCode moPubErrorCode) {
            MoPubInterstitial.this.a(a.IDLE);
            if (MoPubInterstitial.this.c != null) {
                MoPubInterstitial.this.c.onInterstitialFailed(MoPubInterstitial.this, moPubErrorCode);
            }
        }
    }
}
