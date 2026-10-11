package com.mopub.mobileads;

import android.content.Context;
import android.support.annotation.NonNull;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Utils;
import com.mopub.mobileads.resource.RadialCountdownDrawable;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class VastVideoRadialCountdownWidget extends ImageView {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private RadialCountdownDrawable f4439a;

    /* renamed from: b, reason: collision with root package name */
    private int f4440b;

    public VastVideoRadialCountdownWidget(@NonNull Context context) {
        super(context);
        setId((int) Utils.generateUniqueId());
        int dipsToIntPixels = Dips.dipsToIntPixels(45.0f, context);
        int dipsToIntPixels2 = Dips.dipsToIntPixels(16.0f, context);
        int dipsToIntPixels3 = Dips.dipsToIntPixels(16.0f, context);
        int dipsToIntPixels4 = Dips.dipsToIntPixels(5.0f, context);
        this.f4439a = new RadialCountdownDrawable(context);
        setImageDrawable(this.f4439a);
        setPadding(dipsToIntPixels4, dipsToIntPixels4, dipsToIntPixels4, dipsToIntPixels4);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(dipsToIntPixels, dipsToIntPixels);
        layoutParams.setMargins(0, dipsToIntPixels2, dipsToIntPixels3, 0);
        layoutParams.addRule(11);
        setLayoutParams(layoutParams);
    }

    public void calibrateAndMakeVisible(int initialCountdownMilliseconds) {
        this.f4439a.setInitialCountdown(initialCountdownMilliseconds);
        setVisibility(0);
    }

    public void updateCountdownProgress(int initialCountdownMilliseconds, int currentProgressMilliseconds) {
        if (currentProgressMilliseconds >= this.f4440b) {
            if (initialCountdownMilliseconds - currentProgressMilliseconds < 0) {
                setVisibility(8);
            } else {
                this.f4439a.updateCountdownProgress(currentProgressMilliseconds);
                this.f4440b = currentProgressMilliseconds;
            }
        }
    }

    @VisibleForTesting
    @Deprecated
    public RadialCountdownDrawable getImageViewDrawable() {
        return this.f4439a;
    }

    @VisibleForTesting
    @Deprecated
    public void setImageViewDrawable(RadialCountdownDrawable drawable) {
        this.f4439a = drawable;
    }
}
