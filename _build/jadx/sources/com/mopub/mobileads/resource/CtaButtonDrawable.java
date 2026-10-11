package com.mopub.mobileads.resource;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.support.annotation.NonNull;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.util.Dips;
import com.mopub.mobileads.resource.DrawableConstants;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class CtaButtonDrawable extends BaseWidgetDrawable {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final Paint f4521a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private final Paint f4522b;

    @NonNull
    private final Paint c;

    @NonNull
    private final RectF d;

    @NonNull
    private final Rect e;
    private final int f;
    private String g;

    public CtaButtonDrawable(@NonNull Context context) {
        int dipsToIntPixels = Dips.dipsToIntPixels(2.0f, context);
        float dipsToFloatPixels = Dips.dipsToFloatPixels(15.0f, context);
        this.f4521a = new Paint();
        this.f4521a.setColor(-16777216);
        this.f4521a.setAlpha(51);
        this.f4521a.setStyle(DrawableConstants.CtaButton.BACKGROUND_STYLE);
        this.f4521a.setAntiAlias(true);
        this.f4522b = new Paint();
        this.f4522b.setColor(-1);
        this.f4522b.setAlpha(51);
        this.f4522b.setStyle(DrawableConstants.CtaButton.OUTLINE_STYLE);
        this.f4522b.setStrokeWidth(dipsToIntPixels);
        this.f4522b.setAntiAlias(true);
        this.c = new Paint();
        this.c.setColor(-1);
        this.c.setTextAlign(DrawableConstants.CtaButton.TEXT_ALIGN);
        this.c.setTypeface(DrawableConstants.CtaButton.TEXT_TYPEFACE);
        this.c.setTextSize(dipsToFloatPixels);
        this.c.setAntiAlias(true);
        this.e = new Rect();
        this.g = DrawableConstants.CtaButton.DEFAULT_CTA_TEXT;
        this.d = new RectF();
        this.f = Dips.dipsToIntPixels(6.0f, context);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.d.set(getBounds());
        canvas.drawRoundRect(this.d, this.f, this.f, this.f4521a);
        canvas.drawRoundRect(this.d, this.f, this.f, this.f4522b);
        a(canvas, this.c, this.e, this.g);
    }

    public void setCtaText(@NonNull String ctaText) {
        this.g = ctaText;
        invalidateSelf();
    }

    @VisibleForTesting
    @Deprecated
    public String getCtaText() {
        return this.g;
    }
}
