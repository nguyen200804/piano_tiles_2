package com.example.luckywheel.ui;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Toast;
import com.whatscall.luckywheel.R;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class LuckyWheelView extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    private ImageView f2351a;

    /* renamed from: b, reason: collision with root package name */
    private ImageView f2352b;
    private View c;
    private LuckyPanelView d;
    private boolean e;
    private int f;
    private Context g;
    private Activity h;
    private g i;
    private f j;
    private volatile boolean k;
    private volatile int l;
    private volatile int m;
    private volatile int n;
    private volatile boolean o;
    private com.example.luckywheel.c.a p;
    private Handler q;

    public LuckyWheelView(Context context) {
        this(context, null);
    }

    public LuckyWheelView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.m = 1;
        this.n = 0;
        this.g = context;
        LayoutInflater.from(context).inflate(R.layout.lucky_wheel_layout, (ViewGroup) this, true);
        this.f2351a = (ImageView) findViewById(R.id.go_image_view);
        this.f2352b = (ImageView) findViewById(R.id.go_star_image_view);
        this.c = findViewById(R.id.gray_image_view);
        this.d = (LuckyPanelView) findViewById(R.id.lucky_panel_view);
        this.f2351a.setOnClickListener(new ad(this));
        this.c.setOnClickListener(new af(this));
        this.q = new Handler();
        this.p = com.example.luckywheel.b.g.a().e();
        b();
    }

    private void a(int i) {
        this.o = true;
        if (this.e) {
            return;
        }
        b(i);
        this.e = true;
    }

    private void a(int i, int i2) {
        if (i2 == 0) {
            i = 1;
        }
        switch (i) {
            case 1:
                this.l = 0;
                Toast.makeText(this.g, this.g.getString(R.string.stars_tips), 1).show();
                n();
                break;
            case 2:
                this.l = i2;
                m();
                break;
        }
    }

    private void b(int i) {
        RotateAnimation rotateAnimation = new RotateAnimation(i, 1800.0f, 1, 0.5f, 1, 0.5f);
        rotateAnimation.setDuration(2500L);
        rotateAnimation.setInterpolator(new AccelerateInterpolator());
        rotateAnimation.setRepeatCount(0);
        rotateAnimation.setFillAfter(false);
        rotateAnimation.setAnimationListener(new ah(this));
        this.d.startAnimation(rotateAnimation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i) {
        RotateAnimation rotateAnimation = new RotateAnimation(3960.0f, i + 4680, 1, 0.5f, 1, 0.5f);
        rotateAnimation.setDuration(2500L);
        rotateAnimation.setInterpolator(new DecelerateInterpolator());
        rotateAnimation.setFillAfter(true);
        rotateAnimation.setAnimationListener(new aj(this, i));
        this.d.startAnimation(rotateAnimation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        e(R.string.award_credits_reach_max);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(int i) {
        this.e = false;
        this.f = i;
        l();
        this.o = false;
    }

    private void e() {
        int b2 = com.example.luckywheel.d.d.a(this.g).b();
        int i = R.drawable.go_star_1;
        switch (b2) {
            case 1:
                i = R.drawable.go_star_1;
                break;
            case 2:
                i = R.drawable.go_star_2;
                break;
            case 3:
                i = R.drawable.go_star_3;
                break;
            case 4:
                i = R.drawable.go_star_4;
                break;
            case 5:
                i = R.drawable.go_star_5;
                break;
        }
        if (this.f2352b != null) {
            this.f2352b.setImageResource(i);
            this.f2352b.setVisibility(b2 == 0 ? 8 : 0);
        }
    }

    private void e(int i) {
        Toast.makeText(getContext(), getResources().getString(i), 1).show();
    }

    private void f() {
        this.l = 0;
        if (g()) {
            a(false);
            e(R.string.award_credits_reach_max);
            if (this.p != null) {
                this.p.a((byte) 6);
            }
            this.o = false;
            return;
        }
        if (com.example.luckywheel.d.e.a(this.g)) {
            if (i()) {
                k();
            } else {
                h();
            }
        }
        a(this.f);
        if (this.p != null) {
            this.p.a((byte) 2);
        }
    }

    private boolean g() {
        return com.example.luckywheel.b.e.a().b();
    }

    private void h() {
        com.example.luckywheel.ad.e.c().b(this.g);
        com.example.luckywheel.d.b bVar = new com.example.luckywheel.d.b(2, 5);
        bVar.a(new ag(this, bVar));
        bVar.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean i() {
        return com.example.luckywheel.ad.e.c().b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        RotateAnimation rotateAnimation = new RotateAnimation(1800.0f, 3960.0f, 1, 0.5f, 1, 0.5f);
        rotateAnimation.setDuration(2000L);
        rotateAnimation.setInterpolator(new LinearInterpolator());
        rotateAnimation.setRepeatCount(0);
        rotateAnimation.setFillAfter(false);
        rotateAnimation.setAnimationListener(new ai(this));
        this.d.startAnimation(rotateAnimation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        this.k = false;
        this.l = 0;
        com.example.luckywheel.b.e.a().a(this.g, d.a(com.example.luckywheel.d.d.a(this.g).a()), new ak(this));
    }

    private void l() {
        c();
        if (this.i != null) {
            this.i.a();
        }
        switch (this.n) {
            case -1:
                this.l = 0;
                e(R.string.request_exception);
                break;
            case 0:
                a(this.m, this.l);
                this.d.a();
                break;
            case 9:
                e(R.string.award_credits_reach_max);
                a(false);
                break;
            case 10086:
                if (this.p != null) {
                    this.p.a((byte) 5);
                }
                e(R.string.no_ad_tips);
                break;
        }
    }

    private void m() {
        a aVar = new a(this.h, this.l, new al(this));
        aVar.show();
        this.q.postDelayed(new am(this, aVar), 3000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        com.example.luckywheel.ad.e.c().a(this.g, new d(this.h, new ae(this)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        b();
        c();
        if (g()) {
            a(false);
        } else {
            a(true);
        }
        if (this.j != null) {
            this.j.a();
        }
    }

    public void a() {
        if (this.o) {
            return;
        }
        if (com.example.luckywheel.d.e.a(this.g)) {
            f();
        } else {
            Toast.makeText(this.g, this.g.getString(R.string.nonetwork), 0).show();
        }
    }

    public void a(Activity activity) {
        this.h = activity;
    }

    public void a(f fVar) {
        this.j = fVar;
    }

    public void a(boolean z) {
        this.c.setVisibility(z ? 8 : 0);
    }

    public void b() {
        e();
    }

    public void c() {
    }
}
