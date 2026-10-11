package com.mopub.mobileads.resource;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.support.annotation.NonNull;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Dips;
import com.mopub.mobileads.resource.DrawableConstants;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ProgressBarDrawable extends BaseWidgetDrawable {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final Paint f4523a = new Paint();

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private final Paint f4524b;
    private int c;
    private int d;
    private int e;
    private int f;
    private float g;
    private final int h;

    public ProgressBarDrawable(@NonNull Context context) {
        this.f4523a.setColor(-1);
        this.f4523a.setAlpha(128);
        this.f4523a.setStyle(DrawableConstants.ProgressBar.BACKGROUND_STYLE);
        this.f4523a.setAntiAlias(true);
        this.f4524b = new Paint();
        this.f4524b.setColor(DrawableConstants.ProgressBar.PROGRESS_COLOR);
        this.f4524b.setAlpha(255);
        this.f4524b.setStyle(DrawableConstants.ProgressBar.PROGRESS_STYLE);
        this.f4524b.setAntiAlias(true);
        this.h = Dips.dipsToIntPixels(4.0f, context);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        canvas.drawRect(getBounds(), this.f4523a);
        canvas.drawRect(getBounds().left, getBounds().top, getBounds().right * (this.e / this.c), getBounds().bottom, this.f4524b);
        if (this.d > 0 && this.d < this.c) {
            float f = this.g * getBounds().right;
            canvas.drawRect(f, getBounds().top, f + this.h, getBounds().bottom, this.f4524b);
        }
    }

    public void reset() {
        this.f = 0;
    }

    public void setDurationAndSkipOffset(int duration, int skipOffset) {
        this.c = duration;
        this.d = skipOffset;
        this.g = this.d / this.c;
    }

    public void setProgress(int currentProgress) {
        if (currentProgress >= this.f) {
            this.e = currentProgress;
            this.f = currentProgress;
        } else if (currentProgress != 0) {
            MoPubLog.d(String.format("Progress not monotonically increasing: last = %d, current = %d", Integer.valueOf(this.f), Integer.valueOf(currentProgress)));
            forceCompletion();
        }
        invalidateSelf();
    }

    @VisibleForTesting
    public void forceCompletion() {
        this.e = this.c;
    }

    @VisibleForTesting
    @Deprecated
    public float getSkipRatio() {
        return this.g;
    }

    @VisibleForTesting
    @Deprecated
    public int getCurrentProgress() {
        return this.e;
    }
}
