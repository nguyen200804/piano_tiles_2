package com.facebook.login.widget;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.facebook.R;
import java.lang.ref.WeakReference;

/* compiled from: ToolTipPopup.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private final String f3348a;

    /* renamed from: b, reason: collision with root package name */
    private final WeakReference<View> f3349b;
    private final Context c;
    private C0087a d;
    private PopupWindow e;
    private b f = b.BLUE;
    private long g = 6000;
    private final ViewTreeObserver.OnScrollChangedListener h = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.facebook.login.widget.a.1
        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            if (a.this.f3349b.get() != null && a.this.e != null && a.this.e.isShowing()) {
                if (a.this.e.isAboveAnchor()) {
                    a.this.d.b();
                } else {
                    a.this.d.a();
                }
            }
        }
    };

    /* compiled from: ToolTipPopup.java */
    public enum b {
        BLUE,
        BLACK
    }

    public a(String str, View view) {
        this.f3348a = str;
        this.f3349b = new WeakReference<>(view);
        this.c = view.getContext();
    }

    public void a(b bVar) {
        this.f = bVar;
    }

    public void a() {
        if (this.f3349b.get() != null) {
            this.d = new C0087a(this.c);
            ((TextView) this.d.findViewById(R.id.com_facebook_tooltip_bubble_view_text_body)).setText(this.f3348a);
            if (this.f == b.BLUE) {
                this.d.d.setBackgroundResource(R.drawable.com_facebook_tooltip_blue_background);
                this.d.c.setImageResource(R.drawable.com_facebook_tooltip_blue_bottomnub);
                this.d.f3354b.setImageResource(R.drawable.com_facebook_tooltip_blue_topnub);
                this.d.e.setImageResource(R.drawable.com_facebook_tooltip_blue_xout);
            } else {
                this.d.d.setBackgroundResource(R.drawable.com_facebook_tooltip_black_background);
                this.d.c.setImageResource(R.drawable.com_facebook_tooltip_black_bottomnub);
                this.d.f3354b.setImageResource(R.drawable.com_facebook_tooltip_black_topnub);
                this.d.e.setImageResource(R.drawable.com_facebook_tooltip_black_xout);
            }
            View decorView = ((Activity) this.c).getWindow().getDecorView();
            int width = decorView.getWidth();
            int height = decorView.getHeight();
            d();
            this.d.measure(View.MeasureSpec.makeMeasureSpec(width, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(height, Integer.MIN_VALUE));
            this.e = new PopupWindow(this.d, this.d.getMeasuredWidth(), this.d.getMeasuredHeight());
            this.e.showAsDropDown(this.f3349b.get());
            c();
            if (this.g > 0) {
                this.d.postDelayed(new Runnable() { // from class: com.facebook.login.widget.a.2
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.b();
                    }
                }, this.g);
            }
            this.e.setTouchable(true);
            this.d.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.login.widget.a.3
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    a.this.b();
                }
            });
        }
    }

    public void a(long j) {
        this.g = j;
    }

    private void c() {
        if (this.e != null && this.e.isShowing()) {
            if (this.e.isAboveAnchor()) {
                this.d.b();
            } else {
                this.d.a();
            }
        }
    }

    public void b() {
        e();
        if (this.e != null) {
            this.e.dismiss();
        }
    }

    private void d() {
        e();
        if (this.f3349b.get() != null) {
            this.f3349b.get().getViewTreeObserver().addOnScrollChangedListener(this.h);
        }
    }

    private void e() {
        if (this.f3349b.get() != null) {
            this.f3349b.get().getViewTreeObserver().removeOnScrollChangedListener(this.h);
        }
    }

    /* compiled from: ToolTipPopup.java */
    /* renamed from: com.facebook.login.widget.a$a, reason: collision with other inner class name */
    private class C0087a extends FrameLayout {

        /* renamed from: b, reason: collision with root package name */
        private ImageView f3354b;
        private ImageView c;
        private View d;
        private ImageView e;

        public C0087a(Context context) {
            super(context);
            c();
        }

        private void c() {
            LayoutInflater.from(getContext()).inflate(R.layout.com_facebook_tooltip_bubble, this);
            this.f3354b = (ImageView) findViewById(R.id.com_facebook_tooltip_bubble_view_top_pointer);
            this.c = (ImageView) findViewById(R.id.com_facebook_tooltip_bubble_view_bottom_pointer);
            this.d = findViewById(R.id.com_facebook_body_frame);
            this.e = (ImageView) findViewById(R.id.com_facebook_button_xout);
        }

        public void a() {
            this.f3354b.setVisibility(0);
            this.c.setVisibility(4);
        }

        public void b() {
            this.f3354b.setVisibility(4);
            this.c.setVisibility(0);
        }
    }
}
