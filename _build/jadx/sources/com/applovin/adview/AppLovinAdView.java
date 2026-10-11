package com.applovin.adview;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.applovin.impl.adview.AdViewControllerImpl;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinLogger;
import com.applovin.sdk.AppLovinSdk;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AppLovinAdView extends RelativeLayout {
    public static final String NAMESPACE = "http://schemas.applovin.com/android/1.0";

    /* renamed from: a, reason: collision with root package name */
    private AdViewController f295a;

    public AppLovinAdView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AppLovinAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(null, null, context, attributeSet);
    }

    public AppLovinAdView(AppLovinAdSize appLovinAdSize, Activity activity) {
        super(activity);
        Log.d(AppLovinLogger.SDK_TAG, "Created new AdView");
        a(appLovinAdSize, null, activity, null);
    }

    public AppLovinAdView(AppLovinSdk appLovinSdk, AppLovinAdSize appLovinAdSize, Activity activity) {
        super(activity);
        a(appLovinAdSize, appLovinSdk, activity, null);
    }

    private void a(AttributeSet attributeSet, Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        int i = displayMetrics.widthPixels;
        int applyDimension = (int) TypedValue.applyDimension(1, 50.0f, displayMetrics);
        TextView textView = new TextView(context);
        textView.setBackgroundColor(Color.rgb(220, 220, 220));
        textView.setTextColor(-16777216);
        textView.setText("AppLovin Ad");
        textView.setGravity(17);
        addView(textView, i, applyDimension);
    }

    private void a(AppLovinAdSize appLovinAdSize, AppLovinSdk appLovinSdk, Context context, AttributeSet attributeSet) {
        if (isInEditMode()) {
            a(attributeSet, context);
            return;
        }
        AdViewControllerImpl adViewControllerImpl = new AdViewControllerImpl();
        adViewControllerImpl.initializeAdView(this, context, appLovinAdSize, appLovinSdk, attributeSet);
        this.f295a = adViewControllerImpl;
    }

    public void destroy() {
        if (this.f295a != null) {
            this.f295a.destroy();
        }
    }

    public AdViewController getAdViewController() {
        return this.f295a;
    }

    public AppLovinAdSize getSize() {
        if (this.f295a != null) {
            return this.f295a.getSize();
        }
        return null;
    }

    public void loadNextAd() {
        if (this.f295a != null) {
            this.f295a.loadNextAd();
        } else {
            Log.i(AppLovinLogger.SDK_TAG, "Unable to load next ad: AppLovinAdView is not initialized.");
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        if (this.f295a != null) {
            this.f295a.onDetachedFromWindow();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (this.f295a != null) {
            this.f295a.onVisibilityChanged(i);
        }
    }

    public void pause() {
        if (this.f295a != null) {
            this.f295a.pause();
        }
    }

    public void renderAd(AppLovinAd appLovinAd) {
        if (this.f295a != null) {
            this.f295a.renderAd(appLovinAd);
        }
    }

    public void resume() {
        if (this.f295a != null) {
            this.f295a.resume();
        }
    }

    public void setAdClickListener(AppLovinAdClickListener appLovinAdClickListener) {
        if (this.f295a != null) {
            this.f295a.setAdClickListener(appLovinAdClickListener);
        }
    }

    public void setAdDisplayListener(AppLovinAdDisplayListener appLovinAdDisplayListener) {
        if (this.f295a != null) {
            this.f295a.setAdDisplayListener(appLovinAdDisplayListener);
        }
    }

    public void setAdLoadListener(AppLovinAdLoadListener appLovinAdLoadListener) {
        if (this.f295a != null) {
            this.f295a.setAdLoadListener(appLovinAdLoadListener);
        }
    }

    public void setAdVideoPlaybackListener(AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        if (this.f295a != null) {
            this.f295a.setAdVideoPlaybackListener(appLovinAdVideoPlaybackListener);
        }
    }

    public void setAutoDestroy(boolean z) {
        if (this.f295a != null) {
            this.f295a.setAutoDestroy(z);
        }
    }
}
