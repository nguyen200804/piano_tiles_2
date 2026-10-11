package com.mopub.common;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.StateListDrawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Drawables;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class CloseableLayout extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    private final int f4127a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private OnCloseListener f4128b;

    @NonNull
    private final StateListDrawable c;

    @NonNull
    private ClosePosition d;
    private final int e;
    private final int f;
    private final int g;
    private boolean h;
    private final Rect i;
    private final Rect j;
    private final Rect k;
    private final Rect l;
    private boolean m;

    @Nullable
    private a n;

    public interface OnCloseListener {
        void onClose();
    }

    public enum ClosePosition {
        TOP_LEFT(51),
        TOP_CENTER(49),
        TOP_RIGHT(53),
        CENTER(17),
        BOTTOM_LEFT(83),
        BOTTOM_CENTER(81),
        BOTTOM_RIGHT(85);


        /* renamed from: a, reason: collision with root package name */
        private final int f4130a;

        ClosePosition(int mGravity) {
            this.f4130a = mGravity;
        }

        int a() {
            return this.f4130a;
        }
    }

    public CloseableLayout(@NonNull Context context) {
        super(context);
        this.i = new Rect();
        this.j = new Rect();
        this.k = new Rect();
        this.l = new Rect();
        this.c = new StateListDrawable();
        this.d = ClosePosition.TOP_RIGHT;
        this.c.addState(SELECTED_STATE_SET, Drawables.INTERSTITIAL_CLOSE_BUTTON_PRESSED.createDrawable(context));
        this.c.addState(EMPTY_STATE_SET, Drawables.INTERSTITIAL_CLOSE_BUTTON_NORMAL.createDrawable(context));
        this.c.setState(EMPTY_STATE_SET);
        this.c.setCallback(this);
        this.f4127a = ViewConfiguration.get(context).getScaledTouchSlop();
        this.e = Dips.asIntPixels(50.0f, context);
        this.f = Dips.asIntPixels(30.0f, context);
        this.g = Dips.asIntPixels(8.0f, context);
        setWillNotDraw(false);
        this.m = true;
    }

    public void setOnCloseListener(@Nullable OnCloseListener onCloseListener) {
        this.f4128b = onCloseListener;
    }

    public void setClosePosition(@NonNull ClosePosition closePosition) {
        Preconditions.checkNotNull(closePosition);
        this.d = closePosition;
        this.h = true;
        invalidate();
    }

    public void setCloseVisible(boolean visible) {
        if (this.c.setVisible(visible, false)) {
            invalidate(this.j);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int width, int height, int oldWidth, int oldHeight) {
        super.onSizeChanged(width, height, oldWidth, oldHeight);
        this.h = true;
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        if (this.h) {
            this.h = false;
            this.i.set(0, 0, getWidth(), getHeight());
            applyCloseRegionBounds(this.d, this.i, this.j);
            this.l.set(this.j);
            this.l.inset(this.g, this.g);
            a(this.d, this.l, this.k);
            this.c.setBounds(this.k);
        }
        if (this.c.isVisible()) {
            this.c.draw(canvas);
        }
    }

    public void applyCloseRegionBounds(ClosePosition closePosition, Rect bounds, Rect closeBounds) {
        a(closePosition, this.e, bounds, closeBounds);
    }

    private void a(ClosePosition closePosition, Rect rect, Rect rect2) {
        a(closePosition, this.f, rect, rect2);
    }

    private void a(ClosePosition closePosition, int i, Rect rect, Rect rect2) {
        Gravity.apply(closePosition.a(), i, i, rect, rect2);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(@NonNull MotionEvent event) {
        if (event.getAction() != 0) {
            return false;
        }
        return a((int) event.getX(), (int) event.getY(), 0);
    }

    @Override // android.view.View
    public boolean onTouchEvent(@NonNull MotionEvent event) {
        if (!a((int) event.getX(), (int) event.getY(), this.f4127a) || !a()) {
            a(false);
            super.onTouchEvent(event);
            return false;
        }
        switch (event.getAction()) {
            case 0:
                a(true);
                return true;
            case 1:
                if (!b()) {
                    return true;
                }
                if (this.n == null) {
                    this.n = new a();
                }
                postDelayed(this.n, ViewConfiguration.getPressedStateDuration());
                c();
                return true;
            case 2:
            default:
                return true;
            case 3:
                a(false);
                return true;
        }
    }

    public void setCloseAlwaysInteractable(boolean closeAlwaysInteractable) {
        this.m = closeAlwaysInteractable;
    }

    @VisibleForTesting
    boolean a() {
        return this.m || this.c.isVisible();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        if (z != b()) {
            this.c.setState(z ? SELECTED_STATE_SET : EMPTY_STATE_SET);
            invalidate(this.j);
        }
    }

    @VisibleForTesting
    boolean b() {
        return this.c.getState() == SELECTED_STATE_SET;
    }

    @VisibleForTesting
    boolean a(int i, int i2, int i3) {
        return i >= this.j.left - i3 && i2 >= this.j.top - i3 && i < this.j.right + i3 && i2 < this.j.bottom + i3;
    }

    private void c() {
        playSoundEffect(0);
        if (this.f4128b != null) {
            this.f4128b.onClose();
        }
    }

    private final class a implements Runnable {
        private a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CloseableLayout.this.a(false);
        }
    }

    @VisibleForTesting
    public boolean isCloseVisible() {
        return this.c.isVisible();
    }
}
