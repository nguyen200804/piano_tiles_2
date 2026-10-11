package com.facebook.ads;

import android.content.Context;
import android.support.annotation.Nullable;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.ViewDragHelper;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebView;
import android.widget.RelativeLayout;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ScrollingWebViewHolder extends RelativeLayout {
    public static final int ID = 1000000001;

    /* renamed from: a, reason: collision with root package name */
    private WebView f2532a;

    /* renamed from: b, reason: collision with root package name */
    private ViewDragHelper f2533b;

    @Nullable
    private DragListener c;
    private boolean d;
    private int e;
    private int f;
    private int g;
    private int h;

    public interface DragListener {
        void onClosed();

        void onOpened();
    }

    private class a extends ViewDragHelper.Callback {
        private a() {
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public int clampViewPositionVertical(View view, int i, int i2) {
            int paddingTop = ScrollingWebViewHolder.this.getPaddingTop();
            return Math.min(Math.max(i, paddingTop), ScrollingWebViewHolder.this.g);
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public int getViewVerticalDragRange(View view) {
            return ScrollingWebViewHolder.this.g;
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public void onViewDragStateChanged(int i) {
            if (i == ScrollingWebViewHolder.this.e) {
                return;
            }
            if (i == 0 && (ScrollingWebViewHolder.this.e == 1 || ScrollingWebViewHolder.this.e == 2)) {
                if (ScrollingWebViewHolder.this.h == 0) {
                    ScrollingWebViewHolder.this.a();
                } else if (ScrollingWebViewHolder.this.h == ScrollingWebViewHolder.this.g) {
                    ScrollingWebViewHolder.this.b();
                }
            }
            ScrollingWebViewHolder.this.e = i;
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public void onViewPositionChanged(View view, int i, int i2, int i3, int i4) {
            ScrollingWebViewHolder.this.h = i2;
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public void onViewReleased(View view, float f, float f2) {
            boolean z = true;
            if (ScrollingWebViewHolder.this.h == 0) {
                ScrollingWebViewHolder.this.d = false;
                return;
            }
            if (ScrollingWebViewHolder.this.h == ScrollingWebViewHolder.this.g) {
                ScrollingWebViewHolder.this.d = true;
                return;
            }
            if (f2 <= 800.0d) {
                if (f2 < -800.0d) {
                    z = false;
                } else if (ScrollingWebViewHolder.this.h <= ScrollingWebViewHolder.this.g / 2) {
                    z = ScrollingWebViewHolder.this.h < ScrollingWebViewHolder.this.g / 2 ? false : false;
                }
            }
            if (ScrollingWebViewHolder.this.f2533b.settleCapturedViewAt(0, z ? ScrollingWebViewHolder.this.g : 0)) {
                ViewCompat.postInvalidateOnAnimation(ScrollingWebViewHolder.this);
            }
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public boolean tryCaptureView(View view, int i) {
            return view == ScrollingWebViewHolder.this.f2532a;
        }
    }

    public ScrollingWebViewHolder(Context context, WebView webView) {
        super(context);
        this.d = false;
        this.e = 0;
        this.f = 0;
        this.f2533b = ViewDragHelper.create(this, 1.0f, new a());
        this.f2532a = webView;
        this.f2532a.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        addView(this.f2532a);
        setBackgroundColor(0);
        setTag(ID, new Object());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        this.d = false;
        if (this.c != null) {
            this.c.onClosed();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        this.d = true;
        if (this.c != null) {
            this.c.onOpened();
        }
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.f2533b.continueSettling(true)) {
            ViewCompat.postInvalidateOnAnimation(this);
        } else {
            this.f = this.f2532a.getTop();
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f2533b.isViewUnder(this.f2532a, (int) motionEvent.getX(), (int) motionEvent.getY()) && this.f2532a.getScrollY() == 0 && (this.d || this.f2533b.shouldInterceptTouchEvent(motionEvent));
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.f2532a.offsetTopAndBottom(this.f);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f2533b.isViewUnder(this.f2532a, (int) motionEvent.getX(), (int) motionEvent.getY())) {
            return super.onTouchEvent(motionEvent);
        }
        this.f2533b.processTouchEvent(motionEvent);
        return true;
    }

    public void setDragListener(DragListener dragListener) {
        this.c = dragListener;
    }

    public void setDragRange(int i) {
        this.g = i;
        this.f2533b.smoothSlideViewTo(this.f2532a, 0, this.g);
    }
}
