package com.cmplay.base.util;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.WindowManager;
import android.view.animation.Interpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

/* compiled from: ADLoadingTipsView.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a extends LinearLayout {
    private static a g = null;
    private static boolean h = false;

    /* renamed from: a, reason: collision with root package name */
    private Context f1198a;

    /* renamed from: b, reason: collision with root package name */
    private LinearLayout f1199b;
    private ImageView c;
    private TextView d;
    private LinearLayout e;
    private TextView f;

    public a(Context context) {
        super(context);
        this.f1198a = context;
        d();
    }

    private void d() {
        LayoutInflater.from(this.f1198a).inflate(R.layout.com_cmplay_message_tag_ad_loading_view, this);
        this.f1199b = (LinearLayout) findViewById(R.id.loading_layout);
        this.c = (ImageView) findViewById(R.id.loading_cicle);
        this.d = (TextView) findViewById(R.id.loading_tv);
        this.e = (LinearLayout) findViewById(R.id.tips_layout);
        this.f = (TextView) findViewById(R.id.msg_toast_text);
        e();
    }

    private void a(String str) {
        this.f.setText(str);
    }

    private void e() {
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this.c, PropertyValuesHolder.ofFloat("translationX", -50.0f, 50.0f), PropertyValuesHolder.ofFloat("translationY", 0.0f, -50.0f, 0.0f), PropertyValuesHolder.ofFloat("rotation", -45.0f, 45.0f));
        ofPropertyValuesHolder.setInterpolator(new InterpolatorC0031a());
        if (h) {
            ofPropertyValuesHolder.setRepeatCount(-1);
        } else {
            ofPropertyValuesHolder.setRepeatCount(1);
        }
        ofPropertyValuesHolder.setRepeatMode(2);
        ofPropertyValuesHolder.setDuration(800L);
        ofPropertyValuesHolder.start();
        ofPropertyValuesHolder.addListener(new Animator.AnimatorListener() { // from class: com.cmplay.base.util.a.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animation) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                a.this.f1199b.setVisibility(8);
                a.this.e.setVisibility(0);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animation) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animation) {
            }
        });
    }

    public static boolean a() {
        return g != null;
    }

    public static void a(Context context) {
        if (context != null && g != null) {
            try {
                ((WindowManager) context.getSystemService("window")).removeView(g);
            } catch (Exception e) {
            }
            g = null;
            h = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(final Context context, int i, boolean z, boolean z2) {
        h = z2;
        boolean z3 = true;
        Configuration configuration = context.getResources().getConfiguration();
        if (configuration != null && configuration.orientation == 2) {
            z3 = false;
        }
        if (g == null) {
            g = new a(context);
            if (z) {
                g.a(context.getResources().getText(R.string.message_tag_luck_skip_ad).toString());
            }
            if (p.a(context)) {
                Toast toast = new Toast(context);
                toast.setDuration(i);
                if (z3) {
                    toast.setGravity(17, 0, 0);
                } else {
                    toast.setGravity(17, 0, 0);
                }
                toast.setView(g);
                toast.show();
                return;
            }
            g.setBackgroundResource(R.drawable.message_tag_tips_bg);
            WindowManager.LayoutParams b2 = b(context);
            final WindowManager windowManager = (WindowManager) context.getSystemService("window");
            try {
                windowManager.addView(g, b2);
            } catch (Exception e) {
            }
            g.postDelayed(new Runnable() { // from class: com.cmplay.base.util.a.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (a.g != null) {
                            windowManager.removeView(a.g);
                            if (a.h) {
                                Toast.makeText(context, R.string.message_tag_failed, 1).show();
                                boolean unused = a.h = false;
                            }
                            a unused2 = a.g = null;
                        }
                    } catch (Exception e2) {
                    }
                }
            }, i);
        }
    }

    public static void a(final Context context, final int i, final boolean z, final boolean z2) {
        if (context != null) {
            new Handler(context.getMainLooper()).post(new Runnable() { // from class: com.cmplay.base.util.a.3
                @Override // java.lang.Runnable
                public void run() {
                    a.c(context, i, z, z2);
                }
            });
        }
    }

    public static WindowManager.LayoutParams b(Context context) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = 1;
        layoutParams.dimAmount = 0.0f;
        layoutParams.type = 2005;
        layoutParams.flags = 8;
        layoutParams.packageName = context.getPackageName();
        layoutParams.gravity = 17;
        return layoutParams;
    }

    /* compiled from: ADLoadingTipsView.java */
    /* renamed from: com.cmplay.base.util.a$a, reason: collision with other inner class name */
    public class InterpolatorC0031a implements Interpolator {
        public InterpolatorC0031a() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float input) {
            if (input <= 0.5d) {
                return ((float) Math.sin(input * 3.141592653589793d)) / 2.0f;
            }
            return ((float) (2.0d - Math.sin(input * 3.141592653589793d))) / 2.0f;
        }
    }
}
