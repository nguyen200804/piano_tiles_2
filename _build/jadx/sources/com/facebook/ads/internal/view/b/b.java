package com.facebook.ads.internal.view.b;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdViewAttributes;
import com.facebook.ads.internal.view.l;
import com.facebook.ads.internal.view.p;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    private ImageView f2937a;

    /* renamed from: b, reason: collision with root package name */
    private a f2938b;
    private TextView c;
    private LinearLayout d;

    public b(Context context, NativeAd nativeAd, NativeAdViewAttributes nativeAdViewAttributes, boolean z, int i) {
        super(context);
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        setVerticalGravity(16);
        setOrientation(1);
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        linearLayout.setGravity(16);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.setMargins(Math.round(15.0f * displayMetrics.density), Math.round(15.0f * displayMetrics.density), Math.round(15.0f * displayMetrics.density), Math.round(15.0f * displayMetrics.density));
        linearLayout.setLayoutParams(layoutParams);
        addView(linearLayout);
        this.d = new LinearLayout(getContext());
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, 0);
        this.d.setOrientation(0);
        this.d.setGravity(16);
        layoutParams2.weight = 3.0f;
        this.d.setLayoutParams(layoutParams2);
        linearLayout.addView(this.d);
        this.f2937a = new c(getContext());
        int a2 = a(z, i);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(Math.round(a2 * displayMetrics.density), Math.round(a2 * displayMetrics.density));
        layoutParams3.setMargins(0, 0, Math.round(15.0f * displayMetrics.density), 0);
        this.f2937a.setLayoutParams(layoutParams3);
        NativeAd.downloadAndDisplayImage(nativeAd.getAdIcon(), this.f2937a);
        this.d.addView(this.f2937a);
        LinearLayout linearLayout2 = new LinearLayout(getContext());
        linearLayout2.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(16);
        this.d.addView(linearLayout2);
        this.f2938b = new a(getContext(), nativeAd, nativeAdViewAttributes);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -1);
        layoutParams4.setMargins(0, 0, Math.round(15.0f * displayMetrics.density), 0);
        layoutParams4.weight = 0.5f;
        this.f2938b.setLayoutParams(layoutParams4);
        linearLayout2.addView(this.f2938b);
        this.c = new TextView(getContext());
        this.c.setPadding(Math.round(6.0f * displayMetrics.density), Math.round(6.0f * displayMetrics.density), Math.round(6.0f * displayMetrics.density), Math.round(6.0f * displayMetrics.density));
        this.c.setText(nativeAd.getAdCallToAction());
        this.c.setTextColor(nativeAdViewAttributes.getButtonTextColor());
        this.c.setTextSize(14.0f);
        this.c.setTypeface(nativeAdViewAttributes.getTypeface(), 1);
        this.c.setMaxLines(2);
        this.c.setEllipsize(TextUtils.TruncateAt.END);
        this.c.setGravity(17);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(nativeAdViewAttributes.getButtonColor());
        gradientDrawable.setCornerRadius(displayMetrics.density * 5.0f);
        gradientDrawable.setStroke(1, nativeAdViewAttributes.getButtonBorderColor());
        this.c.setBackgroundDrawable(gradientDrawable);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams5.weight = 0.25f;
        this.c.setLayoutParams(layoutParams5);
        linearLayout2.addView(this.c);
        if (z) {
            p pVar = new p(getContext());
            pVar.setText(nativeAd.getAdBody());
            l.b(pVar, nativeAdViewAttributes);
            pVar.setMinTextSize(nativeAdViewAttributes.getDescriptionTextSize() - 1);
            LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-1, 0);
            layoutParams6.weight = 1.0f;
            pVar.setLayoutParams(layoutParams6);
            pVar.setGravity(80);
            linearLayout.addView(pVar);
        }
    }

    private int a(boolean z, int i) {
        return (int) ((i - 30) * (3.0d / ((z ? 1 : 0) + 3)));
    }

    public TextView getCallToActionView() {
        return this.c;
    }

    public ImageView getIconView() {
        return this.f2937a;
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f2938b.getTitleTextView().getLayout().getLineEnd(r0.getLineCount() - 1) < this.f2938b.getMinVisibleTitleCharacters()) {
            this.d.removeView(this.f2937a);
            super.onMeasure(i, i2);
        }
    }
}
