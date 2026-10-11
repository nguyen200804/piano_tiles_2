package com.facebook.ads.internal.view;

import android.content.Context;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdViewAttributes;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class l {
    public static LinearLayout a(Context context, NativeAd nativeAd, NativeAdViewAttributes nativeAdViewAttributes) {
        LinearLayout linearLayout = new LinearLayout(context);
        p pVar = new p(context);
        pVar.setText(nativeAd.getAdSocialContext());
        b(pVar, nativeAdViewAttributes);
        linearLayout.addView(pVar);
        return linearLayout;
    }

    public static void a(TextView textView, NativeAdViewAttributes nativeAdViewAttributes) {
        textView.setTextColor(nativeAdViewAttributes.getTitleTextColor());
        textView.setTextSize(nativeAdViewAttributes.getTitleTextSize());
        textView.setTypeface(nativeAdViewAttributes.getTypeface(), 1);
    }

    public static void b(TextView textView, NativeAdViewAttributes nativeAdViewAttributes) {
        textView.setTextColor(nativeAdViewAttributes.getDescriptionTextColor());
        textView.setTextSize(nativeAdViewAttributes.getDescriptionTextSize());
        textView.setTypeface(nativeAdViewAttributes.getTypeface());
    }
}
