package com.mopub.mobileads;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.GradientDrawable;
import android.support.annotation.NonNull;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import com.mopub.common.util.Dips;
import com.mopub.mobileads.resource.DrawableConstants;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class VastVideoGradientStripWidget extends ImageView {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    DeviceUtils.ForceOrientation f4435a;

    /* renamed from: b, reason: collision with root package name */
    private int f4436b;
    private boolean c;
    private boolean d;

    public VastVideoGradientStripWidget(@NonNull Context context, @NonNull GradientDrawable.Orientation gradientOrientation, @NonNull DeviceUtils.ForceOrientation forceOrientation, boolean hasCompanionAd, int visibilityForCompanionAd, int layoutVerb, int layoutAnchor) {
        super(context);
        this.f4435a = forceOrientation;
        this.f4436b = visibilityForCompanionAd;
        this.c = hasCompanionAd;
        setImageDrawable(new GradientDrawable(gradientOrientation, new int[]{DrawableConstants.GradientStrip.START_COLOR, DrawableConstants.GradientStrip.END_COLOR}));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, Dips.dipsToIntPixels(72.0f, context));
        layoutParams.addRule(layoutVerb, layoutAnchor);
        setLayoutParams(layoutParams);
        b();
    }

    void a() {
        this.d = true;
        b();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        b();
    }

    private void b() {
        if (this.d) {
            if (this.c) {
                setVisibility(this.f4436b);
            } else {
                setVisibility(8);
                return;
            }
        }
        if (this.f4435a == DeviceUtils.ForceOrientation.FORCE_PORTRAIT) {
            setVisibility(4);
            return;
        }
        if (this.f4435a == DeviceUtils.ForceOrientation.FORCE_LANDSCAPE) {
            setVisibility(0);
            return;
        }
        switch (getResources().getConfiguration().orientation) {
            case 0:
                MoPubLog.d("Screen orientation undefined: do not show gradient strip widget");
                setVisibility(4);
                break;
            case 1:
                setVisibility(4);
                break;
            case 2:
                setVisibility(0);
                break;
            case 3:
                MoPubLog.d("Screen orientation is deprecated ORIENTATION_SQUARE: do not show gradient strip widget");
                setVisibility(4);
                break;
            default:
                MoPubLog.d("Unrecognized screen orientation: do not show gradient strip widget");
                setVisibility(4);
                break;
        }
    }
}
