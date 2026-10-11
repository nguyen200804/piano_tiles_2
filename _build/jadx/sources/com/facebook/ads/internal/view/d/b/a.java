package com.facebook.ads.internal.view.d.b;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.ads.internal.util.aj;
import com.facebook.ads.internal.util.s;
import com.facebook.ads.internal.util.v;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a extends n {

    /* renamed from: b, reason: collision with root package name */
    private final C0081a f2958b;

    /* renamed from: com.facebook.ads.internal.view.d.b.a$a, reason: collision with other inner class name */
    public static class C0081a extends RelativeLayout {

        /* renamed from: a, reason: collision with root package name */
        private final String f2959a;

        /* renamed from: b, reason: collision with root package name */
        private final String f2960b;
        private final String c;
        private final DisplayMetrics d;
        private ImageView e;
        private TextView f;
        private boolean g;

        /* renamed from: com.facebook.ads.internal.view.d.b.a$a$3, reason: invalid class name */
        class AnonymousClass3 implements Animation.AnimationListener {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ int f2964a;

            /* renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f2965b;

            AnonymousClass3(int i, int i2) {
                this.f2964a = i;
                this.f2965b = i2;
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                new Handler().postDelayed(new Runnable() { // from class: com.facebook.ads.internal.view.d.b.a.a.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (C0081a.this.g) {
                            C0081a.this.g = false;
                            Animation animation2 = new Animation() { // from class: com.facebook.ads.internal.view.d.b.a.a.3.1.1
                                @Override // android.view.animation.Animation
                                protected void applyTransformation(float f, Transformation transformation) {
                                    int i = (int) (AnonymousClass3.this.f2964a + ((AnonymousClass3.this.f2965b - AnonymousClass3.this.f2964a) * f));
                                    C0081a.this.getLayoutParams().width = i;
                                    C0081a.this.requestLayout();
                                    C0081a.this.f.getLayoutParams().width = i - AnonymousClass3.this.f2965b;
                                    C0081a.this.f.requestLayout();
                                }

                                @Override // android.view.animation.Animation
                                public boolean willChangeBounds() {
                                    return true;
                                }
                            };
                            animation2.setDuration(300L);
                            animation2.setFillAfter(true);
                            C0081a.this.startAnimation(animation2);
                        }
                    }
                }, 3000L);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        }

        public C0081a(Context context, String str, String str2, float[] fArr, String str3) {
            super(context);
            this.g = false;
            this.f2959a = str;
            this.f2960b = str2;
            this.c = str3;
            this.d = context.getResources().getDisplayMetrics();
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(-16777216);
            gradientDrawable.setAlpha(178);
            gradientDrawable.setCornerRadii(new float[]{fArr[0] * this.d.density, fArr[0] * this.d.density, fArr[1] * this.d.density, fArr[1] * this.d.density, fArr[2] * this.d.density, fArr[2] * this.d.density, fArr[3] * this.d.density, fArr[3] * this.d.density});
            if (Build.VERSION.SDK_INT >= 16) {
                setBackground(gradientDrawable);
            } else {
                setBackgroundDrawable(gradientDrawable);
            }
            a();
            b();
            c();
            setMinimumWidth(Math.round(20.0f * this.d.density));
            setMinimumHeight(Math.round(18.0f * this.d.density));
        }

        private void a() {
            setOnTouchListener(new View.OnTouchListener() { // from class: com.facebook.ads.internal.view.d.b.a.a.1
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (motionEvent.getAction() != 0) {
                        return false;
                    }
                    if (!C0081a.this.g) {
                        C0081a.this.d();
                    } else if (!TextUtils.isEmpty(C0081a.this.f2960b)) {
                        com.facebook.ads.internal.util.g.a(new aj(), C0081a.this.getContext(), Uri.parse(C0081a.this.f2960b), C0081a.this.c);
                    }
                    return true;
                }
            });
        }

        private void b() {
            Context context = getContext();
            this.e = new ImageView(context);
            this.e.setImageBitmap(v.a(context, s.IC_AD_CHOICES));
            addView(this.e);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(Math.round(this.d.density * 16.0f), Math.round(this.d.density * 16.0f));
            layoutParams.addRule(9);
            layoutParams.addRule(15, -1);
            layoutParams.setMargins(Math.round(4.0f * this.d.density), Math.round(this.d.density * 2.0f), Math.round(this.d.density * 2.0f), Math.round(this.d.density * 2.0f));
            this.e.setLayoutParams(layoutParams);
        }

        private void c() {
            this.f = new TextView(getContext());
            addView(this.f);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.width = 0;
            layoutParams.leftMargin = (int) (20.0f * this.d.density);
            layoutParams.addRule(9);
            layoutParams.addRule(15, -1);
            this.f.setLayoutParams(layoutParams);
            this.f.setSingleLine();
            this.f.setText(this.f2959a);
            this.f.setTextSize(10.0f);
            this.f.setTextColor(-4341303);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d() {
            Paint paint = new Paint();
            paint.setTextSize(this.f.getTextSize());
            int round = Math.round(paint.measureText(this.f2959a) + (4.0f * this.d.density));
            final int width = getWidth();
            final int i = round + width;
            this.g = true;
            Animation animation = new Animation() { // from class: com.facebook.ads.internal.view.d.b.a.a.2
                @Override // android.view.animation.Animation
                protected void applyTransformation(float f, Transformation transformation) {
                    int i2 = (int) (width + ((i - width) * f));
                    C0081a.this.getLayoutParams().width = i2;
                    C0081a.this.requestLayout();
                    C0081a.this.f.getLayoutParams().width = i2 - width;
                    C0081a.this.f.requestLayout();
                }

                @Override // android.view.animation.Animation
                public boolean willChangeBounds() {
                    return true;
                }
            };
            animation.setAnimationListener(new AnonymousClass3(i, width));
            animation.setDuration(300L);
            animation.setFillAfter(true);
            startAnimation(animation);
        }
    }

    public a(Context context, String str, String str2, float[] fArr) {
        super(context);
        this.f2958b = new C0081a(context, "AdChoices", str, fArr, str2);
        addView(this.f2958b);
    }
}
