package com.example.luckywheel.ui;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.example.luckywheel.b.j;
import com.whatscall.luckywheel.R;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class LuckyWheelActivity extends Activity implements View.OnClickListener, com.example.luckywheel.b.c, f {

    /* renamed from: a, reason: collision with root package name */
    private Handler f2349a;

    /* renamed from: b, reason: collision with root package name */
    private TextView f2350b;
    private TextView c;
    private ImageView d;
    private TextView e;
    private TextView f;
    private View g;
    private View h;
    private TextView i;
    private int j;
    private int k;

    public static int a(Context context, float f) {
        return (int) ((context.getResources().getDisplayMetrics().density * f) + 0.5f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        j.d c = com.example.luckywheel.b.j.a().c();
        if (c != null) {
            if (i < c.f2325b) {
                this.i.setEnabled(false);
                this.e.setText("0");
            } else {
                this.i.setEnabled(true);
                this.e.setText(String.valueOf(Math.min(i / c.f2325b, 999)));
            }
        }
    }

    private void a(boolean z) {
        if (z || com.example.luckywheel.b.l.a().b()) {
            c();
        }
    }

    private void b() {
        this.f2350b = (TextView) findViewById(R.id.balance);
        this.c = (TextView) findViewById(R.id.price_tv);
        this.e = (TextView) findViewById(R.id.redeem_number_tv);
        this.i = (TextView) findViewById(R.id.redeem_btn);
        this.d = (ImageView) findViewById(R.id.redeem_gift_img);
        this.h = findViewById(R.id.minus_btn);
        this.g = findViewById(R.id.plus_btn);
        this.f = (TextView) findViewById(R.id.award_credits_tips);
        expandViewTouchDelegate(this.h);
        expandViewTouchDelegate(this.g);
        this.g.setOnClickListener(this);
        this.h.setOnClickListener(this);
        this.i.setOnClickListener(this);
        findViewById(R.id.back_arrow).setOnClickListener(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        n nVar = new n(this);
        nVar.show();
        com.example.luckywheel.b.l.a().a(getApplicationContext(), new u(this, nVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        int c = com.example.luckywheel.b.e.a().c();
        this.f2350b.setText(getString(R.string.balance, new Object[]{Integer.valueOf(c)}));
        j.d c2 = com.example.luckywheel.b.j.a().c();
        if (c2 != null) {
            this.c.setText(String.valueOf(c2.f2325b));
            this.d.setImageResource(c2.f2324a);
        }
        a(c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        new m(this, new x(this)).show();
    }

    @Override // com.example.luckywheel.ui.f
    public void a() {
        if (this.j == 0) {
            return;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f.setVisibility(0);
        this.f.setText("+" + this.j);
        ofFloat.addUpdateListener(new ab(this));
        ofFloat.setDuration(1500L);
        ofFloat.addListener(new ac(this));
        ofFloat.setInterpolator(new DecelerateInterpolator());
        ofFloat.start();
    }

    @Override // com.example.luckywheel.b.c
    public void a(boolean z, int i, int i2) {
        Log.d("liufan", "onChanged");
        if (z) {
            this.f2349a.postDelayed(new z(this, i2, i), 1500L);
        } else {
            this.f2349a.post(new y(this, i2));
        }
    }

    public void expandViewTouchDelegate(View view) {
        ((View) view.getParent()).post(new aa(this, view));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.plus_btn) {
            int parseInt = Integer.parseInt(this.e.getText().toString());
            j.d c = com.example.luckywheel.b.j.a().c();
            if (c != null) {
                if (c.f2325b * (parseInt + 1) > com.example.luckywheel.b.e.a().c() || parseInt >= 999) {
                    return;
                }
                this.e.setText(String.valueOf(parseInt + 1));
                this.i.setEnabled(true);
                return;
            }
            return;
        }
        if (id == R.id.minus_btn) {
            int parseInt2 = Integer.parseInt(this.e.getText().toString());
            if (parseInt2 > 0) {
                parseInt2--;
                this.e.setText(String.valueOf(parseInt2));
            }
            if (parseInt2 == 0) {
                this.i.setEnabled(false);
                return;
            }
            return;
        }
        if (id != R.id.redeem_btn) {
            if (id == R.id.back_arrow) {
                finish();
                return;
            }
            return;
        }
        int parseInt3 = Integer.parseInt(this.e.getText().toString());
        if (parseInt3 != 0) {
            if (com.example.luckywheel.d.e.a(getApplicationContext())) {
                new k(this, parseInt3, this.f2349a).show();
            } else {
                Toast.makeText(this, getString(R.string.nonetwork), 0).show();
            }
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.main_layout);
        LuckyWheelView luckyWheelView = (LuckyWheelView) findViewById(R.id.lucky_wheel_view);
        luckyWheelView.a((Activity) this);
        luckyWheelView.a((f) this);
        this.f2349a = new Handler();
        b();
        a(getIntent().getBooleanExtra("extra_user_changed", false));
        d();
        com.example.luckywheel.b.e.a().a(this);
        com.example.luckywheel.c.a e = com.example.luckywheel.b.g.a().e();
        if (e != null) {
            e.a((byte) 1);
        }
    }
}
