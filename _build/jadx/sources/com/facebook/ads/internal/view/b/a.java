package com.facebook.ads.internal.view.b;

import android.content.Context;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdViewAttributes;
import com.facebook.ads.internal.view.l;
import com.facebook.ads.internal.view.n;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    private n f2935a;

    /* renamed from: b, reason: collision with root package name */
    private int f2936b;

    public a(Context context, NativeAd nativeAd, NativeAdViewAttributes nativeAdViewAttributes) {
        super(context);
        setOrientation(1);
        setVerticalGravity(16);
        this.f2935a = new n(getContext(), 2);
        this.f2935a.setMinTextSize(nativeAdViewAttributes.getTitleTextSize() - 2);
        this.f2935a.setText(nativeAd.getAdTitle());
        l.a(this.f2935a, nativeAdViewAttributes);
        this.f2935a.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        addView(this.f2935a);
        this.f2936b = nativeAd.getAdTitle() != null ? Math.min(nativeAd.getAdTitle().length(), 21) : 21;
        addView(l.a(context, nativeAd, nativeAdViewAttributes));
    }

    public int getMinVisibleTitleCharacters() {
        return this.f2936b;
    }

    public TextView getTitleTextView() {
        return this.f2935a;
    }
}
