package com.android.volley.toolbox;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.android.volley.s;
import com.android.volley.toolbox.h;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class NetworkImageView extends ImageView {

    /* renamed from: a, reason: collision with root package name */
    private String f263a;

    /* renamed from: b, reason: collision with root package name */
    private int f264b;
    private int c;
    private h d;
    private h.c e;

    public NetworkImageView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public NetworkImageView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }

    void a(boolean z) {
        boolean z2;
        boolean z3;
        int width = getWidth();
        int height = getHeight();
        ImageView.ScaleType scaleType = getScaleType();
        if (getLayoutParams() != null) {
            z3 = getLayoutParams().width == -2;
            z2 = getLayoutParams().height == -2;
        } else {
            z2 = false;
            z3 = false;
        }
        boolean z4 = z3 && z2;
        if (width != 0 || height != 0 || z4) {
            if (TextUtils.isEmpty(this.f263a)) {
                if (this.e != null) {
                    this.e.a();
                    this.e = null;
                }
                a();
                return;
            }
            if (this.e != null && this.e.c() != null) {
                if (!this.e.c().equals(this.f263a)) {
                    this.e.a();
                    a();
                } else {
                    return;
                }
            }
            int i = z3 ? 0 : width;
            if (z2) {
                height = 0;
            }
            this.e = this.d.a(this.f263a, new AnonymousClass1(z), i, height, scaleType);
        }
    }

    /* renamed from: com.android.volley.toolbox.NetworkImageView$1, reason: invalid class name */
    class AnonymousClass1 implements h.d {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ boolean f265a;

        AnonymousClass1(boolean z) {
            this.f265a = z;
        }

        @Override // com.android.volley.n.a
        public void a(s sVar) {
            if (NetworkImageView.this.c != 0) {
                NetworkImageView.this.setImageResource(NetworkImageView.this.c);
            }
        }

        @Override // com.android.volley.toolbox.h.d
        public void a(final h.c cVar, boolean z) {
            if (z && this.f265a) {
                NetworkImageView.this.post(new Runnable() { // from class: com.android.volley.toolbox.NetworkImageView.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AnonymousClass1.this.a(cVar, false);
                    }
                });
            } else {
                if (cVar.b() == null) {
                    if (NetworkImageView.this.f264b != 0) {
                        NetworkImageView.this.setImageResource(NetworkImageView.this.f264b);
                        return;
                    }
                    return;
                }
                NetworkImageView.this.setImageBitmap(cVar.b());
            }
        }
    }

    private void a() {
        if (this.f264b != 0) {
            setImageResource(this.f264b);
        } else {
            setImageBitmap(null);
        }
    }

    @Override // android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        a(true);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        if (this.e != null) {
            this.e.a();
            setImageBitmap(null);
            this.e = null;
        }
        super.onDetachedFromWindow();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        invalidate();
    }
}
