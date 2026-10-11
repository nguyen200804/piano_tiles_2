package com.duapps.ad.offerwall.ui;

import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.support.v4.view.ViewPager;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.duapps.ad.R;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class PagerSlidingTab extends HorizontalScrollView {

    /* renamed from: a, reason: collision with root package name */
    int f2218a;

    /* renamed from: b, reason: collision with root package name */
    public ViewPager.OnPageChangeListener f2219b;
    private LinearLayout c;
    private ViewPager d;
    private int e;
    private int f;
    private float g;
    private Paint h;
    private Paint i;
    private boolean j;
    private int k;
    private int l;
    private boolean m;
    private int n;
    private int o;
    private int p;
    private LinearLayout.LayoutParams q;
    private final a r;

    public PagerSlidingTab(Context context) {
        super(context);
        this.f = 0;
        this.g = 0.0f;
        this.j = false;
        this.k = -15439646;
        this.l = -13421773;
        this.m = false;
        this.n = 52;
        this.o = 1;
        this.p = 0;
        this.f2218a = 0;
        this.r = new a();
        a(context);
    }

    public PagerSlidingTab(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f = 0;
        this.g = 0.0f;
        this.j = false;
        this.k = -15439646;
        this.l = -13421773;
        this.m = false;
        this.n = 52;
        this.o = 1;
        this.p = 0;
        this.f2218a = 0;
        this.r = new a();
        a(context);
    }

    public PagerSlidingTab(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f = 0;
        this.g = 0.0f;
        this.j = false;
        this.k = -15439646;
        this.l = -13421773;
        this.m = false;
        this.n = 52;
        this.o = 1;
        this.p = 0;
        this.f2218a = 0;
        this.r = new a();
        a(context);
    }

    public void a(int i) {
        this.k = i;
        a();
    }

    public void b(int i) {
        this.l = i;
        a();
    }

    private void a() {
        for (int i = 0; i < this.c.getChildCount(); i++) {
            TextView textView = (TextView) this.c.getChildAt(i);
            if (i == this.f) {
                textView.setSelected(true);
                textView.setTextColor(this.k);
            } else {
                textView.setSelected(false);
                textView.setTextColor(this.l);
            }
        }
    }

    private void a(Context context) {
        setHorizontalScrollBarEnabled(false);
        this.q = new LinearLayout.LayoutParams(0, -1, 1.0f);
        this.c = new LinearLayout(context);
        this.c.setOrientation(0);
        this.c.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(this.c);
        setScrollContainer(false);
        setWillNotDraw(false);
        this.h = new Paint();
        this.h.setAntiAlias(true);
        this.h.setStyle(Paint.Style.FILL_AND_STROKE);
        this.i = new Paint();
        this.i.setAntiAlias(true);
        this.i.setStrokeWidth(this.o);
    }

    public void a(ViewPager viewPager, ViewPager.OnPageChangeListener onPageChangeListener) {
        this.d = viewPager;
        this.f2219b = onPageChangeListener;
        if (viewPager.getAdapter() == null) {
            throw new IllegalStateException("ViewPager does not have adapter instance.");
        }
        viewPager.setOnPageChangeListener(this.r);
        this.c.removeAllViews();
        this.e = viewPager.getAdapter().getCount();
        for (int i = 0; i < this.e; i++) {
            String charSequence = viewPager.getAdapter().getPageTitle(i).toString();
            if (TextUtils.isEmpty(charSequence)) {
                charSequence = "";
            }
            a(i, charSequence);
        }
        this.c.getChildAt(viewPager.getCurrentItem()).setSelected(true);
        this.j = false;
    }

    private void a(final int i, String str) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((Activity) getContext()).getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        int i2 = displayMetrics.widthPixels;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -1, 1.0f);
        layoutParams.bottomMargin = 7;
        TextView textView = (TextView) View.inflate(getContext(), R.layout.duapps_ad_offer_wall_slidetab_text, null);
        textView.setText(str);
        int i3 = 210;
        if (this.e > 0) {
            i3 = i2 / this.e;
        }
        textView.setWidth(i3);
        textView.setGravity(17);
        textView.setSingleLine();
        if (this.f == i) {
            textView.setTextColor(this.k);
        } else {
            textView.setTextColor(this.l);
        }
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.duapps.ad.offerwall.ui.PagerSlidingTab.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PagerSlidingTab.this.d.setCurrentItem(i);
            }
        });
        this.c.addView(textView, layoutParams);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!isInEditMode() && this.e != 0) {
            int height = getHeight();
            this.h.setColor(this.k);
            this.f2218a = this.f;
            View childAt = this.c.getChildAt(this.f);
            float left = childAt.getLeft();
            float right = childAt.getRight();
            if (this.g > 0.0f && this.f < this.e - 1) {
                View childAt2 = this.c.getChildAt(this.f + 1);
                float left2 = childAt2.getLeft();
                float right2 = childAt2.getRight();
                left = (left * (1.0f - this.g)) + (left2 * this.g);
                right = (right * (1.0f - this.g)) + (right2 * this.g);
            }
            canvas.drawRect(left, height - com.duapps.ad.c.b.c.a(getContext(), 3.0f), right, height, this.h);
        }
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.m && View.MeasureSpec.getMode(i) != 0) {
            int measuredWidth = getMeasuredWidth();
            int i3 = 0;
            for (int i4 = 0; i4 < this.e; i4++) {
                i3 += this.c.getChildAt(i4).getMeasuredWidth();
            }
            if (!this.j && i3 > 0 && measuredWidth > 0) {
                if (i3 <= measuredWidth) {
                    for (int i5 = 0; i5 < this.e; i5++) {
                        this.c.getChildAt(i5).setLayoutParams(this.q);
                    }
                }
                this.j = true;
            }
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, int i2) {
        int left = this.c.getChildAt(i).getLeft() + i2;
        for (int i3 = 0; i3 < this.c.getChildCount(); i3++) {
            TextView textView = (TextView) this.c.getChildAt(i3);
            if (i3 == i) {
                textView.setSelected(true);
                textView.setTextColor(this.k);
            } else {
                textView.setSelected(false);
                textView.setTextColor(this.l);
            }
        }
        int i4 = (i > 0 || i2 > 0) ? left - this.n : left;
        if (i4 != this.p) {
            this.p = i4;
            scrollTo(i4, 0);
        }
    }

    private class a implements ViewPager.OnPageChangeListener {
        private a() {
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
            PagerSlidingTab.this.f = i;
            PagerSlidingTab.this.g = f;
            PagerSlidingTab.this.invalidate();
            PagerSlidingTab.this.a(a(f) + i, 0);
            if (PagerSlidingTab.this.f2219b != null) {
                PagerSlidingTab.this.f2219b.onPageScrolled(i, f, i2);
            }
        }

        private int a(float f) {
            return (f >= 1.0f || ((double) f) <= 0.5d) ? 0 : 1;
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
            if (i == 0) {
                PagerSlidingTab.this.a(PagerSlidingTab.this.d.getCurrentItem(), 0);
                PagerSlidingTab.this.f2218a = PagerSlidingTab.this.d.getCurrentItem();
            }
            if (PagerSlidingTab.this.f2219b != null) {
                PagerSlidingTab.this.f2219b.onPageScrollStateChanged(i);
            }
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            if (PagerSlidingTab.this.f2219b != null) {
                PagerSlidingTab.this.f2219b.onPageSelected(i);
            }
        }
    }
}
