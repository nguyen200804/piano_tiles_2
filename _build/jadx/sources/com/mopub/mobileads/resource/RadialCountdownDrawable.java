package com.mopub.mobileads.resource;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.support.annotation.NonNull;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Numbers;
import com.mopub.mobileads.resource.DrawableConstants;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class RadialCountdownDrawable extends BaseWidgetDrawable {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final Paint f4525a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private final Paint f4526b;

    @NonNull
    private final Paint c;

    @NonNull
    private Rect d;
    private int e;
    private int f;
    private float g;

    public RadialCountdownDrawable(@NonNull Context context) {
        int dipsToIntPixels = Dips.dipsToIntPixels(3.0f, context);
        float dipsToFloatPixels = Dips.dipsToFloatPixels(18.0f, context);
        this.f4525a = new Paint();
        this.f4525a.setColor(-1);
        this.f4525a.setAlpha(128);
        this.f4525a.setStyle(DrawableConstants.RadialCountdown.BACKGROUND_STYLE);
        this.f4525a.setStrokeWidth(dipsToIntPixels);
        this.f4525a.setAntiAlias(true);
        this.f4526b = new Paint();
        this.f4526b.setColor(-1);
        this.f4526b.setAlpha(255);
        this.f4526b.setStyle(DrawableConstants.RadialCountdown.PROGRESS_STYLE);
        this.f4526b.setStrokeWidth(dipsToIntPixels);
        this.f4526b.setAntiAlias(true);
        this.c = new Paint();
        this.c.setColor(-1);
        this.c.setTextAlign(DrawableConstants.RadialCountdown.TEXT_ALIGN);
        this.c.setTextSize(dipsToFloatPixels);
        this.c.setAntiAlias(true);
        this.d = new Rect();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        canvas.drawCircle(getBounds().centerX(), getBounds().centerY(), Math.min(r0, r1), this.f4525a);
        a(canvas, this.c, this.d, String.valueOf(this.f));
        canvas.drawArc(new RectF(getBounds()), -90.0f, this.g, false, this.f4526b);
    }

    public void setInitialCountdown(int initialCountdownMilliseconds) {
        this.e = initialCountdownMilliseconds;
    }

    public void updateCountdownProgress(int currentProgressMilliseconds) {
        this.f = (int) Numbers.convertMillisecondsToSecondsRoundedUp(this.e - currentProgressMilliseconds);
        this.g = (360.0f * currentProgressMilliseconds) / this.e;
        invalidateSelf();
    }

    @VisibleForTesting
    @Deprecated
    public int getInitialCountdownMilliseconds() {
        return this.e;
    }
}
