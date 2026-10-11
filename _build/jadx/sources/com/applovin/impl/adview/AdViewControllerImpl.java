package com.applovin.impl.adview;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebView;
import android.webkit.WebViewDatabase;
import android.widget.RelativeLayout;
import com.applovin.adview.AdViewController;
import com.applovin.adview.AppLovinAdView;
import com.applovin.adview.AppLovinInterstitialActivity;
import com.applovin.adview.ClickTrackingOverlayView;
import com.applovin.impl.sdk.AppLovinAdServiceImpl;
import com.applovin.impl.sdk.ca;
import com.applovin.impl.sdk.cc;
import com.applovin.impl.sdk.dh;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdService;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinLogger;
import com.applovin.sdk.AppLovinSdk;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AdViewControllerImpl implements AdViewController {

    /* renamed from: a, reason: collision with root package name */
    private Activity f329a;

    /* renamed from: b, reason: collision with root package name */
    private AppLovinSdk f330b;
    private AppLovinAdService c;
    private AppLovinLogger d;
    private AppLovinAdSize e;
    private ag f;
    private z g;
    private ac h;
    private AppLovinAd i;
    private Runnable j;
    private Runnable k;
    private Runnable l;
    private volatile AppLovinAd m = null;
    private ClickTrackingOverlayView n = null;
    private WeakReference o = null;
    private final AtomicReference p = new AtomicReference();
    private volatile boolean q = false;
    private volatile boolean r = true;
    private volatile boolean s = false;
    private volatile boolean t = false;
    private volatile AppLovinAdLoadListener u;
    private volatile AppLovinAdDisplayListener v;
    private volatile AppLovinAdVideoPlaybackListener w;
    private volatile AppLovinAdClickListener x;
    private volatile boolean y;

    private void a(ViewGroup viewGroup, AppLovinSdk appLovinSdk, AppLovinAdSize appLovinAdSize, Context context) {
        a aVar = null;
        if (viewGroup == null) {
            throw new IllegalArgumentException("No parent view specified");
        }
        if (appLovinSdk == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        if (appLovinAdSize == null) {
            throw new IllegalArgumentException("No ad size specified");
        }
        if (!(context instanceof Activity)) {
            throw new IllegalArgumentException("Specified context is not an activity");
        }
        this.f330b = appLovinSdk;
        this.c = appLovinSdk.getAdService();
        this.d = appLovinSdk.getLogger();
        this.e = appLovinAdSize;
        this.f329a = (Activity) context;
        this.i = dh.a();
        this.f = new ag(this, appLovinSdk);
        this.l = new p(this, aVar);
        this.j = new y(this, aVar);
        this.k = new t(this, aVar);
        this.g = new z(this, appLovinSdk);
        if (!a(context)) {
            this.d.userError("AppLovinAdView", "Web view database is corrupt, AdView not loaded");
            return;
        }
        this.h = b();
        viewGroup.setBackgroundColor(0);
        viewGroup.addView(this.h);
        b(this.h, appLovinAdSize);
        this.h.setVisibility(8);
        a(new x(this, aVar));
        this.q = true;
    }

    private void a(AppLovinAd appLovinAd, AppLovinAdView appLovinAdView, Uri uri) {
        if (this.n != null) {
            this.d.d("AppLovinAdView", "Skipping click overlay rendering because it already exists");
            return;
        }
        this.d.d("AppLovinAdView", "Creating and rendering click overlay");
        this.n = new ClickTrackingOverlayView(appLovinAdView.getContext(), this.f330b);
        this.n.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        appLovinAdView.addView(this.n);
        appLovinAdView.bringChildToFront(this.n);
        ((AppLovinAdServiceImpl) this.c).trackForegroundClick(appLovinAd, appLovinAdView, this, uri);
    }

    private void a(Runnable runnable) {
        this.f329a.runOnUiThread(runnable);
    }

    private static boolean a(Context context) {
        try {
            if (Build.VERSION.SDK_INT >= 11) {
                return true;
            }
            WebViewDatabase webViewDatabase = WebViewDatabase.getInstance(context);
            Method declaredMethod = WebViewDatabase.class.getDeclaredMethod("getCacheTotalSize", new Class[0]);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(webViewDatabase, new Object[0]);
            return true;
        } catch (IllegalAccessException e) {
            Log.e("AppLovinAdView", "Error invoking getCacheTotalSize()", e);
            return true;
        } catch (IllegalArgumentException e2) {
            Log.e("AppLovinAdView", "Error invoking getCacheTotalSize()", e2);
            return true;
        } catch (NoSuchMethodException e3) {
            Log.e("AppLovinAdView", "Error invoking getCacheTotalSize()", e3);
            return true;
        } catch (InvocationTargetException e4) {
            Log.e("AppLovinAdView", "getCacheTotalSize() reported exception", e4);
            return false;
        } catch (Throwable th) {
            Log.e("AppLovinAdView", "Unexpected error while checking DB state", th);
            return false;
        }
    }

    private ac b() {
        ac acVar = new ac(this.f, this.f330b, this.f329a);
        acVar.setBackgroundColor(0);
        acVar.setWillNotCacheDrawing(false);
        if (new ca(this.f330b).F() && Build.VERSION.SDK_INT >= 19) {
            acVar.setLayerType(2, null);
        }
        return acVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(View view, AppLovinAdSize appLovinAdSize) {
        DisplayMetrics displayMetrics = view.getResources().getDisplayMetrics();
        int applyDimension = appLovinAdSize.getLabel().equals(AppLovinAdSize.INTERSTITIAL.getLabel()) ? -1 : appLovinAdSize.getWidth() == -1 ? displayMetrics.widthPixels : (int) TypedValue.applyDimension(1, appLovinAdSize.getWidth(), displayMetrics);
        int applyDimension2 = appLovinAdSize.getLabel().equals(AppLovinAdSize.INTERSTITIAL.getLabel()) ? -1 : appLovinAdSize.getHeight() == -1 ? displayMetrics.heightPixels : (int) TypedValue.applyDimension(1, appLovinAdSize.getHeight(), displayMetrics);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        }
        layoutParams.width = applyDimension;
        layoutParams.height = applyDimension2;
        if (layoutParams instanceof RelativeLayout.LayoutParams) {
            layoutParams.addRule(10);
            layoutParams.addRule(9);
        }
        view.setLayoutParams(layoutParams);
    }

    void a() {
        a(this.l);
        a(new r(this, this.m));
        this.m = null;
    }

    void a(int i) {
        if (!this.s) {
            this.c.addAdUpdateListener(this.g, this.e);
            a(this.l);
        }
        a(new l(this, i));
    }

    void a(AppLovinAd appLovinAd) {
        if (appLovinAd == null) {
            this.d.e("AppLovinAdView", "No provided when to the view controller");
            a(-1);
            return;
        }
        this.t = true;
        if (this.s) {
            this.p.set(appLovinAd);
            this.d.d("AppLovinAdView", "Ad view has paused when an ad was recieved, ad saved for later");
        } else {
            this.c.addAdUpdateListener(this.g, this.e);
            renderAd(appLovinAd);
        }
        a(new a(this, appLovinAd));
    }

    void a(AppLovinAd appLovinAd, AppLovinAdView appLovinAdView, AdViewControllerImpl adViewControllerImpl, Uri uri) {
        AppLovinAdServiceImpl appLovinAdServiceImpl = (AppLovinAdServiceImpl) this.c;
        if (!new ca(this.f330b).H() || uri == null) {
            appLovinAdServiceImpl.trackClickOn(appLovinAd, appLovinAdView, this, uri);
        } else {
            a(appLovinAd, appLovinAdView, uri);
        }
        a(new q(this, appLovinAd));
    }

    @Override // com.applovin.adview.AdViewController
    public void destroy() {
        if (this.c != null) {
            this.c.removeAdUpdateListener(this.g, getSize());
        }
        if (this.h != null) {
            try {
                this.h.removeAllViews();
                this.h.destroy();
            } catch (Throwable th) {
                this.d.w("AppLovinAdView", "Unable to destroy ad view", th);
            }
        }
        this.s = true;
    }

    public void dismissInterstitialIfRequired() {
        ai aiVar;
        if (new ca(this.f330b).L()) {
            if (this.f329a != null && (this.f329a instanceof AppLovinInterstitialActivity)) {
                ((AppLovinInterstitialActivity) this.f329a).dismiss();
            } else {
                if (this.o == null || (aiVar = (ai) this.o.get()) == null) {
                    return;
                }
                aiVar.dismiss();
            }
        }
    }

    @Override // com.applovin.adview.AdViewController
    public AppLovinAdSize getSize() {
        return this.e;
    }

    @Override // com.applovin.adview.AdViewController
    public void initializeAdView(ViewGroup viewGroup, Context context, AppLovinAdSize appLovinAdSize, AppLovinSdk appLovinSdk, AttributeSet attributeSet) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("No parent view specified");
        }
        if (context == null) {
            Log.e(AppLovinLogger.SDK_TAG, "Unable to build AppLovinAdView: no context provided. Please use a different constructor for this view.");
            return;
        }
        if (appLovinAdSize == null && (appLovinAdSize = aa.a(attributeSet)) == null) {
            appLovinAdSize = AppLovinAdSize.BANNER;
        }
        if (appLovinSdk == null) {
            appLovinSdk = AppLovinSdk.getInstance(context);
        }
        if (appLovinSdk == null || appLovinSdk.hasCriticalErrors()) {
            return;
        }
        a(viewGroup, appLovinSdk, appLovinAdSize, context);
        if (aa.b(attributeSet)) {
            loadNextAd();
        }
    }

    @Override // com.applovin.adview.AdViewController
    public boolean isAdReadyToDisplay() {
        return this.f330b.getAdService().hasPreloadedAd(this.e);
    }

    @Override // com.applovin.adview.AdViewController
    public boolean isAutoDestroy() {
        return this.r;
    }

    public boolean isForegroundClickInvalidated() {
        return this.y;
    }

    @Override // com.applovin.adview.AdViewController
    public void loadNextAd() {
        if (this.f330b == null || this.g == null || this.f329a == null || !this.q) {
            Log.i(AppLovinLogger.SDK_TAG, "Unable to load next ad: AppLovinAdView is not initialized.");
        } else {
            this.c.loadNextAd(this.e, this.g);
        }
    }

    public void onAdHtmlLoaded(WebView webView) {
        if (this.m != null) {
            webView.setVisibility(0);
            try {
                if (this.v != null) {
                    this.v.adDisplayed(this.m);
                }
            } catch (Throwable th) {
                this.d.userError("AppLovinAdView", "Exception while notifying ad display listener", th);
            }
        }
    }

    @Override // com.applovin.adview.AdViewController
    public void onDetachedFromWindow() {
        if (this.q) {
            a(new r(this, this.m));
            if (this.r) {
                destroy();
            }
        }
    }

    @Override // com.applovin.adview.AdViewController
    public void onVisibilityChanged(int i) {
        if (this.q && this.r) {
            if (i == 8 || i == 4) {
                pause();
            } else if (i == 0) {
                resume();
            }
        }
    }

    @Override // com.applovin.adview.AdViewController
    public void pause() {
        if (this.q) {
            this.c.removeAdUpdateListener(this.g, getSize());
            AppLovinAd appLovinAd = this.m;
            renderAd(this.i);
            if (appLovinAd != null) {
                this.p.set(appLovinAd);
            }
            this.s = true;
        }
    }

    public void removeClickTrackingOverlay() {
        if (this.n == null) {
            this.d.d("AppLovinAdView", "Asked to remove an overlay when none existed. Skipping...");
            return;
        }
        ViewParent parent = this.n.getParent();
        if (parent == null || !(parent instanceof ViewGroup)) {
            return;
        }
        ((ViewGroup) parent).removeView(this.n);
        this.n = null;
    }

    @Override // com.applovin.adview.AdViewController
    public void renderAd(AppLovinAd appLovinAd) {
        if (appLovinAd == null) {
            throw new IllegalArgumentException("No ad specified");
        }
        if (!this.q) {
            Log.i(AppLovinLogger.SDK_TAG, "Unable to render ad: AppLovinAdView is not initialized.");
            return;
        }
        if (appLovinAd == this.m) {
            this.d.w("AppLovinAdView", "Ad # " + appLovinAd.getAdIdNumber() + " is already showing, ignoring");
            return;
        }
        this.d.d("AppLovinAdView", "Rendering ad # " + appLovinAd.getAdIdNumber() + " (" + appLovinAd.getSize() + ")");
        a(new r(this, this.m));
        this.p.set(null);
        this.m = appLovinAd;
        if (appLovinAd.getSize() == this.e) {
            a(this.j);
        } else if (appLovinAd.getSize() == AppLovinAdSize.INTERSTITIAL) {
            a(this.l);
            a(this.k);
        }
        new cc(this.f330b).a();
    }

    @Override // com.applovin.adview.AdViewController
    public void resume() {
        if (this.q) {
            if (this.t) {
                this.c.addAdUpdateListener(this.g, this.e);
            }
            AppLovinAd appLovinAd = (AppLovinAd) this.p.getAndSet(null);
            if (appLovinAd != null) {
                renderAd(appLovinAd);
            }
            this.s = false;
        }
    }

    @Override // com.applovin.adview.AdViewController
    public void setAdClickListener(AppLovinAdClickListener appLovinAdClickListener) {
        this.x = appLovinAdClickListener;
    }

    @Override // com.applovin.adview.AdViewController
    public void setAdDisplayListener(AppLovinAdDisplayListener appLovinAdDisplayListener) {
        this.v = appLovinAdDisplayListener;
    }

    @Override // com.applovin.adview.AdViewController
    public void setAdLoadListener(AppLovinAdLoadListener appLovinAdLoadListener) {
        this.u = appLovinAdLoadListener;
    }

    @Override // com.applovin.adview.AdViewController
    public void setAdVideoPlaybackListener(AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        this.w = appLovinAdVideoPlaybackListener;
    }

    @Override // com.applovin.adview.AdViewController
    public void setAutoDestroy(boolean z) {
        this.r = z;
    }

    public void setIsForegroundClickInvalidated(boolean z) {
        this.y = z;
    }

    public void setParentDialog(WeakReference weakReference) {
        this.o = weakReference;
    }
}
