package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzra extends Drawable implements Drawable.Callback {
    private int mFrom;
    private boolean wK;
    private int wQ;
    private int wR;
    private int wS;
    private int wT;
    private int wU;
    private boolean wV;
    private zzb wW;
    private Drawable wX;
    private Drawable wY;
    private boolean wZ;
    private boolean xa;
    private boolean xb;
    private int xc;
    private long zzczg;

    private static final class zza extends Drawable {
        private static final zza xd = new zza();
        private static final C0194zza xe = new C0194zza();

        /* renamed from: com.google.android.gms.internal.zzra$zza$zza, reason: collision with other inner class name */
        private static final class C0194zza extends Drawable.ConstantState {
            private C0194zza() {
            }

            @Override // android.graphics.drawable.Drawable.ConstantState
            public int getChangingConfigurations() {
                return 0;
            }

            @Override // android.graphics.drawable.Drawable.ConstantState
            public Drawable newDrawable() {
                return zza.xd;
            }
        }

        private zza() {
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
        }

        @Override // android.graphics.drawable.Drawable
        public Drawable.ConstantState getConstantState() {
            return xe;
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -2;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }
    }

    static final class zzb extends Drawable.ConstantState {
        int mChangingConfigurations;
        int xf;

        zzb(zzb zzbVar) {
            if (zzbVar != null) {
                this.mChangingConfigurations = zzbVar.mChangingConfigurations;
                this.xf = zzbVar.xf;
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.mChangingConfigurations;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new zzra(this);
        }
    }

    public zzra(Drawable drawable, Drawable drawable2) {
        this(null);
        drawable = drawable == null ? zza.xd : drawable;
        this.wX = drawable;
        drawable.setCallback(this);
        this.wW.xf |= drawable.getChangingConfigurations();
        drawable2 = drawable2 == null ? zza.xd : drawable2;
        this.wY = drawable2;
        drawable2.setCallback(this);
        this.wW.xf |= drawable2.getChangingConfigurations();
    }

    zzra(zzb zzbVar) {
        this.wQ = 0;
        this.wS = 255;
        this.wU = 0;
        this.wK = true;
        this.wW = new zzb(zzbVar);
    }

    public boolean canConstantState() {
        if (!this.wZ) {
            this.xa = (this.wX.getConstantState() == null || this.wY.getConstantState() == null) ? false : true;
            this.wZ = true;
        }
        return this.xa;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        boolean z = false;
        switch (this.wQ) {
            case 1:
                this.zzczg = SystemClock.uptimeMillis();
                this.wQ = 2;
                break;
            case 2:
                if (this.zzczg >= 0) {
                    float uptimeMillis = (SystemClock.uptimeMillis() - this.zzczg) / this.wT;
                    r1 = uptimeMillis >= 1.0f;
                    if (r1) {
                        this.wQ = 0;
                    }
                    this.wU = (int) ((Math.min(uptimeMillis, 1.0f) * (this.wR + 0)) + 0.0f);
                }
            default:
                z = r1;
                break;
        }
        int i = this.wU;
        boolean z2 = this.wK;
        Drawable drawable = this.wX;
        Drawable drawable2 = this.wY;
        if (z) {
            if (!z2 || i == 0) {
                drawable.draw(canvas);
            }
            if (i == this.wS) {
                drawable2.setAlpha(this.wS);
                drawable2.draw(canvas);
                return;
            }
            return;
        }
        if (z2) {
            drawable.setAlpha(this.wS - i);
        }
        drawable.draw(canvas);
        if (z2) {
            drawable.setAlpha(this.wS);
        }
        if (i > 0) {
            drawable2.setAlpha(i);
            drawable2.draw(canvas);
            drawable2.setAlpha(this.wS);
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.wW.mChangingConfigurations | this.wW.xf;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (!canConstantState()) {
            return null;
        }
        this.wW.mChangingConfigurations = getChangingConfigurations();
        return this.wW;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return Math.max(this.wX.getIntrinsicHeight(), this.wY.getIntrinsicHeight());
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return Math.max(this.wX.getIntrinsicWidth(), this.wY.getIntrinsicWidth());
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        if (!this.xb) {
            this.xc = Drawable.resolveOpacity(this.wX.getOpacity(), this.wY.getOpacity());
            this.xb = true;
        }
        return this.xc;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    @TargetApi(11)
    public void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback;
        if (!com.google.android.gms.common.util.zzs.zzavn() || (callback = getCallback()) == null) {
            return;
        }
        callback.invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.wV && super.mutate() == this) {
            if (!canConstantState()) {
                throw new IllegalStateException("One or more children of this LayerDrawable does not have constant state; this drawable cannot be mutated.");
            }
            this.wX.mutate();
            this.wY.mutate();
            this.wV = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.wX.setBounds(rect);
        this.wY.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    @TargetApi(11)
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        Drawable.Callback callback;
        if (!com.google.android.gms.common.util.zzs.zzavn() || (callback = getCallback()) == null) {
            return;
        }
        callback.scheduleDrawable(this, runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.wU == this.wS) {
            this.wU = i;
        }
        this.wS = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.wX.setColorFilter(colorFilter);
        this.wY.setColorFilter(colorFilter);
    }

    public void startTransition(int i) {
        this.mFrom = 0;
        this.wR = this.wS;
        this.wU = 0;
        this.wT = i;
        this.wQ = 1;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    @TargetApi(11)
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback;
        if (!com.google.android.gms.common.util.zzs.zzavn() || (callback = getCallback()) == null) {
            return;
        }
        callback.unscheduleDrawable(this, runnable);
    }

    public Drawable zzarq() {
        return this.wY;
    }
}
