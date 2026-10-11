package com.example.luckywheel.ui;

import android.app.Activity;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.example.luckywheel.ad.h;
import com.whatscall.luckywheel.R;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d extends c implements h.b {

    /* renamed from: a, reason: collision with root package name */
    private static int f2376a = 0;
    private static int c = 1;
    private static int d = 1;
    private static int e = 4;
    private static int f = 4;
    private static int g = 8;
    private static int h = 8;
    private static int i = 20;
    private static int j = 20;
    private ImageView k;
    private ImageView l;
    private ImageView m;
    private ImageView n;
    private ImageView o;
    private LinearLayout p;
    private TextView q;
    private int r;
    private long s;
    private Activity t;
    private f u;

    public d(Activity activity, f fVar) {
        super(activity);
        this.t = activity;
        this.u = fVar;
    }

    public static int a(int i2) {
        g();
        if (j <= i2) {
            return 5;
        }
        if (h <= i2 && i2 < i) {
            return 4;
        }
        if (f <= i2 && i2 < g) {
            return 3;
        }
        if (d <= i2 && i2 < e) {
            return 2;
        }
        if (f2376a > i2 || i2 < c) {
        }
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, int i3, h hVar) {
        if (i2 == 0 || i2 > 5) {
            if (hVar != null) {
                hVar.a();
                return;
            }
            return;
        }
        if (i3 < 0 || i3 > 4) {
            if (hVar != null) {
                hVar.a();
                return;
            }
            return;
        }
        ImageView imageView = null;
        switch (i3) {
            case 0:
                imageView = this.k;
                break;
            case 1:
                imageView = this.l;
                break;
            case 2:
                imageView = this.m;
                break;
            case 3:
                imageView = this.n;
                break;
            case 4:
                imageView = this.o;
                break;
        }
        if (imageView != null) {
            a(imageView, new s(this, i2 - 1, i3 + 1, hVar));
        }
    }

    private void a(ImageView imageView, h hVar) {
        if (imageView == null) {
            if (hVar != null) {
                hVar.a();
            }
        } else {
            imageView.setImageResource(R.drawable.star_filled);
            Animation loadAnimation = AnimationUtils.loadAnimation(this.t, R.anim.star_twinkle);
            if (loadAnimation != null) {
                loadAnimation.setAnimationListener(new t(this, hVar));
                imageView.startAnimation(loadAnimation);
            }
        }
    }

    private void b(int i2) {
        a(i2, 0, new o(this));
    }

    private void d() {
        this.k = (ImageView) findViewById(R.id.score_star_1);
        this.l = (ImageView) findViewById(R.id.score_star_2);
        this.m = (ImageView) findViewById(R.id.score_star_3);
        this.n = (ImageView) findViewById(R.id.score_star_4);
        this.o = (ImageView) findViewById(R.id.score_star_5);
        this.q = (TextView) findViewById(R.id.scale_star_text_view);
        this.p = (LinearLayout) findViewById(R.id.score_star_layout);
    }

    private void e() {
        int a2 = a(this.r);
        com.example.luckywheel.d.d.a(this.t).b(a2);
        b(a2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        int[] iArr = new int[2];
        this.p.getLocationInWindow(iArr);
        int[] iArr2 = new int[2];
        this.q.getLocationInWindow(iArr2);
        int i2 = iArr2[0] - iArr[0];
        int i3 = iArr2[1] - iArr[1];
        AnimationSet animationSet = new AnimationSet(true);
        animationSet.setDuration(500L);
        animationSet.setFillAfter(true);
        animationSet.addAnimation(new TranslateAnimation(0.0f, i2 / 0.2f, 0.0f, i3 / 0.2f));
        animationSet.addAnimation(new ScaleAnimation(1.0f, 0.2f, 1.0f, 0.2f, 0.5f, 0.5f));
        animationSet.setAnimationListener(new r(this));
        this.p.startAnimation(animationSet);
    }

    private static void g() {
        if (TextUtils.isEmpty("0,1|1,3|3,9|9,20|20")) {
            return;
        }
        String[] split = "0,1|1,3|3,9|9,20|20".split("\\|");
        if (split.length == 5) {
            for (int i2 = 0; i2 < 5; i2++) {
                String str = split[i2];
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                String[] split2 = str.split(",");
                if (split2.length == 2 && i2 != 4) {
                    try {
                        int parseInt = Integer.parseInt(split2[0]);
                        int parseInt2 = Integer.parseInt(split2[1]);
                        switch (i2) {
                            case 0:
                                f2376a = parseInt;
                                c = parseInt2;
                                break;
                            case 1:
                                d = parseInt;
                                e = parseInt2;
                                break;
                            case 2:
                                f = parseInt;
                                g = parseInt2;
                                break;
                            case 3:
                                h = parseInt;
                                i = parseInt2;
                                break;
                        }
                    } catch (Exception e2) {
                        return;
                    }
                } else if (split2.length == 1 && i2 == 4) {
                    try {
                        j = Integer.parseInt(split2[0]);
                    } catch (Exception e3) {
                        return;
                    }
                }
            }
        }
    }

    @Override // com.example.luckywheel.ad.h.b
    public void a() {
        this.s = SystemClock.uptimeMillis();
    }

    @Override // com.example.luckywheel.ad.h.b
    public void b() {
        this.r = ((int) (SystemClock.uptimeMillis() - this.s)) / 1000;
        com.example.luckywheel.d.d.a(getContext()).a(this.r);
        show();
    }

    @Override // com.example.luckywheel.ui.c, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        if (this.u != null) {
            this.u.a();
        }
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_five_star);
        d();
        e();
        getWindow().setGravity(119);
        getWindow().setLayout(-1, -1);
    }
}
