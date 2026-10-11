package com.cmplay.tile2.ui.view;

import android.content.Context;
import android.content.res.Configuration;
import android.view.LayoutInflater;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.cmplay.tile2.GameApp;
import com.cmplay.tiles4.R;
import com.cmplay.util.y;

/* compiled from: ADLoadingTipsView.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a extends LinearLayout {
    private static a g = null;
    private static boolean h = false;

    /* renamed from: a, reason: collision with root package name */
    private Context f1689a;

    /* renamed from: b, reason: collision with root package name */
    private LinearLayout f1690b;
    private ImageView c;
    private TextView d;
    private LinearLayout e;
    private TextView f;

    public a(Context context) {
        super(context);
        this.f1689a = context;
        e();
    }

    private void e() {
        LayoutInflater.from(this.f1689a).inflate(R.layout.message_tag_ad_loading_view, this);
        this.f1690b = (LinearLayout) findViewById(2131230868);
        this.c = (ImageView) findViewById(2131230869);
        this.d = (TextView) findViewById(2131230870);
        this.e = (LinearLayout) findViewById(2131230865);
        this.f = (TextView) findViewById(2131230867);
        f();
    }

    private void a(String str) {
        this.f.setText(str);
    }

    private void f() {
        RotateAnimation rotateAnimation = new RotateAnimation(359.0f, 0.0f, 1, 0.5f, 1, 0.5f);
        rotateAnimation.setDuration(500L);
        rotateAnimation.setRepeatMode(1);
        if (h) {
            rotateAnimation.setRepeatCount(-1);
        } else {
            rotateAnimation.setRepeatCount(1);
        }
        rotateAnimation.setInterpolator(new LinearInterpolator());
        this.c.clearAnimation();
        this.c.startAnimation(rotateAnimation);
        rotateAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.cmplay.tile2.ui.view.a.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                a.this.f1690b.setVisibility(8);
                a.this.e.setVisibility(0);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }
        });
    }

    public static boolean a() {
        return g != null;
    }

    public static void b() {
        Context context = GameApp.f1598a;
        if (context != null && g != null) {
            try {
                ((WindowManager) context.getSystemService("window")).removeView(g);
            } catch (Exception e) {
            }
            g = null;
            h = false;
        }
    }

    public static void a(int i, boolean z, boolean z2) {
        final Context context = GameApp.f1598a;
        if (context != null) {
            h = z2;
            boolean z3 = true;
            Configuration configuration = context.getResources().getConfiguration();
            if (configuration != null && configuration.orientation == 2) {
                z3 = false;
            }
            if (g == null) {
                g = new a(context);
                if (z) {
                    g.a(context.getResources().getText(2131034178).toString());
                }
                if (y.a(context)) {
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
                g.setBackgroundResource(2130837777);
                WindowManager.LayoutParams a2 = a(context);
                final WindowManager windowManager = (WindowManager) context.getSystemService("window");
                try {
                    windowManager.addView(g, a2);
                } catch (Exception e) {
                }
                g.postDelayed(new Runnable() { // from class: com.cmplay.tile2.ui.view.a.2
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            if (a.g != null) {
                                windowManager.removeView(a.g);
                                if (a.h) {
                                    Toast.makeText(context, 2131034176, 1).show();
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
    }

    public static WindowManager.LayoutParams a(Context context) {
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
}
