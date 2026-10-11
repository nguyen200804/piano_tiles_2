package com.cmplay.ad.Admob;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.cmplay.base.util.g;
import com.cmplay.base.util.j;
import com.cmplay.tile2.GameApp;
import com.cmplay.tiles4.R;
import com.cmplay.util.c.a.b;
import com.facebook.ads.Ad;
import com.facebook.ads.AdChoicesView;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeAd;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.customevent.CustomEventInterstitial;
import com.google.ads.mediation.customevent.CustomEventInterstitialListener;
import java.util.ArrayList;
import java.util.EnumSet;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class FBNativeAds implements CustomEventInterstitial {
    private static final String TAG = "zzb_fb";
    private View mAdView;
    private ImageView mBigImageView;
    private ImageView mIconImageView;
    private CustomEventInterstitialListener mListener;
    private MediaView mMediaView;
    private PopupWindow mWindowManager;
    private NativeAd nativeAd;

    @Override // com.google.ads.mediation.customevent.CustomEventInterstitial
    public void requestInterstitialAd(CustomEventInterstitialListener listener, final Activity activity, String label, String serverParameter, MediationAdRequest request, Object unused) {
        g.a(TAG, "requestInterstitialAd = " + serverParameter);
        this.mListener = listener;
        this.nativeAd = new NativeAd(activity, serverParameter);
        this.nativeAd.setAdListener(new AdListener() { // from class: com.cmplay.ad.Admob.FBNativeAds.1
            @Override // com.facebook.ads.AdListener
            public void onLoggingImpression(Ad ad) {
            }

            @Override // com.facebook.ads.AdListener
            public void onError(Ad ad, AdError error) {
                g.a(FBNativeAds.TAG, "onError =" + error.getErrorMessage());
                if (FBNativeAds.this.mListener != null) {
                    FBNativeAds.this.mListener.onFailedToReceiveAd();
                }
                new b().a(3, error.getErrorCode(), 3, 6);
            }

            @Override // com.facebook.ads.AdListener
            public void onAdLoaded(Ad ad) {
                if (ad != FBNativeAds.this.nativeAd) {
                    if (FBNativeAds.this.mListener != null) {
                        FBNativeAds.this.mListener.onFailedToReceiveAd();
                        return;
                    }
                    return;
                }
                g.a(FBNativeAds.TAG, "onAdLoaded =" + FBNativeAds.this.nativeAd.getAdTitle());
                if (FBNativeAds.this.mAdView == null) {
                    FBNativeAds.this.mAdView = LayoutInflater.from(activity).inflate(R.layout.fb_ad_layout, (ViewGroup) null);
                }
                LinearLayout linearLayout = (LinearLayout) FBNativeAds.this.mAdView.findViewById(R.id.ad_choices_container);
                FBNativeAds.this.mMediaView = (MediaView) FBNativeAds.this.mAdView.findViewById(R.id.native_ad_media);
                FBNativeAds.this.mIconImageView = (ImageView) FBNativeAds.this.mAdView.findViewById(R.id.iv_ad_icon);
                TextView textView = (TextView) FBNativeAds.this.mAdView.findViewById(2131230841);
                TextView textView2 = (TextView) FBNativeAds.this.mAdView.findViewById(R.id.native_ad_social_context);
                TextView textView3 = (TextView) FBNativeAds.this.mAdView.findViewById(R.id.tv_des);
                Button button = (Button) FBNativeAds.this.mAdView.findViewById(2131230847);
                textView.setText(FBNativeAds.this.nativeAd.getAdTitle());
                textView2.setText(FBNativeAds.this.nativeAd.getAdSocialContext());
                textView3.setText(FBNativeAds.this.nativeAd.getAdBody());
                button.setText(FBNativeAds.this.nativeAd.getAdCallToAction());
                NativeAd.downloadAndDisplayImage(FBNativeAds.this.nativeAd.getAdIcon(), FBNativeAds.this.mIconImageView);
                FBNativeAds.this.mMediaView.setNativeAd(FBNativeAds.this.nativeAd);
                linearLayout.addView(new AdChoicesView(activity, FBNativeAds.this.nativeAd, true));
                ArrayList arrayList = new ArrayList();
                arrayList.add(FBNativeAds.this.mMediaView);
                arrayList.add(FBNativeAds.this.mIconImageView);
                arrayList.add(button);
                FBNativeAds.this.nativeAd.registerViewForInteraction(FBNativeAds.this.mAdView, arrayList);
                if (FBNativeAds.this.mListener != null) {
                    FBNativeAds.this.mListener.onReceivedAd();
                }
                new b().a(2, 0, 3, 6);
            }

            @Override // com.facebook.ads.AdListener
            public void onAdClicked(Ad ad) {
            }
        });
        NativeAd nativeAd = this.nativeAd;
        EnumSet<NativeAd.MediaCacheFlag> enumSet = NativeAd.MediaCacheFlag.ALL;
        new b().a(1, 0, 3, 6);
    }

    @Override // com.google.ads.mediation.customevent.CustomEventInterstitial
    public void showInterstitial() {
        if (this.mAdView != null) {
            this.mAdView.findViewById(2131230844).setOnClickListener(new View.OnClickListener() { // from class: com.cmplay.ad.Admob.FBNativeAds.2
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    g.a(FBNativeAds.TAG, "onClick close ------");
                    FBNativeAds.this.dismissWindow();
                }
            });
            if (this.mWindowManager != null) {
                this.mWindowManager.dismiss();
                this.mWindowManager = null;
            }
            this.mWindowManager = new PopupWindow(this.mAdView, j.f(GameApp.f1598a), j.d(GameApp.f1598a));
            this.mWindowManager.setFocusable(true);
            this.mWindowManager.setBackgroundDrawable(new BitmapDrawable());
            this.mWindowManager.showAtLocation(this.mAdView, 17, 0, -getStatusBarHeight());
            this.mWindowManager.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.cmplay.ad.Admob.FBNativeAds.3
                @Override // android.widget.PopupWindow.OnDismissListener
                public void onDismiss() {
                    FBNativeAds.this.adRelease();
                }
            });
            if (this.mListener != null) {
                this.mListener.onPresentScreen();
            }
        }
    }

    public int getStatusBarHeight() {
        try {
            int identifier = GameApp.f1598a.getResources().getIdentifier("status_bar_height", "dimen", "android");
            if (identifier <= 0) {
                return 0;
            }
            return GameApp.f1598a.getResources().getDimensionPixelSize(identifier);
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Override // com.google.ads.mediation.customevent.CustomEvent
    public void destroy() {
        if (this.nativeAd != null) {
            this.nativeAd.unregisterView();
            adRelease();
            this.nativeAd = null;
        }
        this.mAdView = null;
    }

    public void dismissWindow() {
        g.a(TAG, "dismissWindow ------");
        if (this.mWindowManager != null) {
            this.mWindowManager.dismiss();
            this.mWindowManager = null;
        }
    }

    public void adRelease() {
        g.a(TAG, "adRelease() ------");
        if (this.mListener != null) {
            this.mListener.onDismissScreen();
        }
        if (this.mMediaView != null) {
            this.mMediaView.clearAnimation();
            Bitmap drawingCache = this.mMediaView.getDrawingCache();
            if (drawingCache != null) {
                drawingCache.recycle();
            }
            this.mMediaView.destroyDrawingCache();
            this.mMediaView = null;
        }
        if (this.mIconImageView != null) {
            releaseImageViewResouce(this.mIconImageView);
        }
        this.mAdView = null;
    }

    public static void releaseImageViewResouce(ImageView imageView) {
        Drawable drawable;
        Bitmap bitmap;
        if (imageView != null && (drawable = imageView.getDrawable()) != null && (drawable instanceof BitmapDrawable) && (bitmap = ((BitmapDrawable) drawable).getBitmap()) != null && !bitmap.isRecycled()) {
            bitmap.recycle();
        }
    }
}
