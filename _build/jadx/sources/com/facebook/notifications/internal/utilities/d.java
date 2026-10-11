package com.facebook.notifications.internal.utilities;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.support.annotation.NonNull;

/* compiled from: RoundedViewHelper.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d {

    /* renamed from: b, reason: collision with root package name */
    private final float f3427b;
    private final int c;

    @NonNull
    private final RectF d = new RectF();

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final Path f3426a = new Path();

    public d(@NonNull Context context, float f, int i) {
        this.c = i;
        this.f3427b = context.getResources().getDisplayMetrics().density * f;
    }

    public void a(boolean z, int i, int i2, int i3, int i4) {
        if (this.c != 0 && z) {
            this.f3426a.reset();
            this.d.set(0.0f, 0.0f, i3 - i, i4 - i2);
            float[] fArr = {0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f};
            if ((this.c & 1) != 0) {
                fArr[0] = this.f3427b;
                fArr[1] = this.f3427b;
            }
            if ((this.c & 2) != 0) {
                fArr[2] = this.f3427b;
                fArr[3] = this.f3427b;
            }
            if ((this.c & 4) != 0) {
                fArr[4] = this.f3427b;
                fArr[5] = this.f3427b;
            }
            if ((this.c & 8) != 0) {
                fArr[6] = this.f3427b;
                fArr[7] = this.f3427b;
            }
            this.f3426a.addRoundRect(this.d, fArr, Path.Direction.CW);
        }
    }

    public void a(Canvas canvas) {
        if (this.c != 0) {
            if (canvas.isOpaque()) {
                canvas.saveLayerAlpha(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), 255, 4);
            }
            canvas.clipPath(this.f3426a);
        }
    }
}
