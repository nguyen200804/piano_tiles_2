package com.mopub.mobileads;

import android.content.Context;
import android.support.annotation.NonNull;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Utils;
import com.mopub.mobileads.resource.ProgressBarDrawable;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class VastVideoProgressBarWidget extends ImageView {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private ProgressBarDrawable f4437a;

    /* renamed from: b, reason: collision with root package name */
    private final int f4438b;

    public VastVideoProgressBarWidget(@NonNull Context context) {
        super(context);
        setId((int) Utils.generateUniqueId());
        this.f4437a = new ProgressBarDrawable(context);
        setImageDrawable(this.f4437a);
        this.f4438b = Dips.dipsToIntPixels(4.0f, context);
    }

    public void setAnchorId(int anchorId) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, this.f4438b);
        layoutParams.addRule(8, anchorId);
        setLayoutParams(layoutParams);
    }

    public void calibrateAndMakeVisible(int duration, int skipOffset) {
        this.f4437a.setDurationAndSkipOffset(duration, skipOffset);
        setVisibility(0);
    }

    public void updateProgress(int progress) {
        this.f4437a.setProgress(progress);
    }

    public void reset() {
        this.f4437a.reset();
        this.f4437a.setProgress(0);
    }
}
