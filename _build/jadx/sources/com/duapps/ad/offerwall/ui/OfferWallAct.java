package com.duapps.ad.offerwall.ui;

import android.app.Activity;
import android.graphics.Color;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.ViewPager;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.duapps.ad.R;
import com.duapps.ad.offerwall.ui.h;
import java.util.regex.Pattern;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class OfferWallAct extends FragmentActivity implements h.a {

    /* renamed from: b, reason: collision with root package name */
    private PagerSlidingTab f2215b;
    private ViewPager c;
    private g d;
    private ImageView e;
    private TextView f;
    private View g;
    private int h;
    private long j;
    private int i = 0;

    /* renamed from: a, reason: collision with root package name */
    ViewPager.OnPageChangeListener f2214a = new ViewPager.OnPageChangeListener() { // from class: com.duapps.ad.offerwall.ui.OfferWallAct.2
        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            if (com.duapps.ad.base.h.a()) {
                com.duapps.ad.base.h.a("OfferWallAct", OfferWallAct.this.i + " -> " + i);
            }
            if (OfferWallAct.this.i != i && OfferWallAct.this.d != null) {
                h a2 = OfferWallAct.this.d.a(OfferWallAct.this.i);
                if (a2 != null) {
                    a2.b(false);
                }
                h a3 = OfferWallAct.this.d.a(i);
                if (a3 != null) {
                    a3.b(true);
                }
                OfferWallAct.this.i = i;
            }
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
        }
    };

    @Override // android.support.v4.app.FragmentActivity, android.support.v4.app.BaseFragmentActivityDonut, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setRequestedOrientation(1);
        setContentView(R.layout.duapps_ad_offer_wall_layout2);
        b();
        c();
        d();
        e();
        this.j = System.currentTimeMillis();
        com.duapps.ad.stats.c.a(getApplicationContext(), this.h, com.duapps.ad.c.b.c.a(getApplicationContext()) ? 0 : 1);
    }

    private void b() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.h = extras.getInt("pid");
            com.duapps.ad.c.b.c.a(this.h);
            return;
        }
        throw new IllegalArgumentException("Must be put pid in bundle data, Otherwise OfferWall cannot be work.");
    }

    private void c() {
        this.g = findViewById(R.id.duapps_ad_offer_wall_header_container);
        this.f = (TextView) findViewById(R.id.duapps_ad_offer_wall_header_title_tv);
        this.e = (ImageView) findViewById(R.id.duapps_ad_offer_wall_header_back_iv);
        if (getIntent().getExtras().getBoolean("display_home_as_up", true)) {
            this.e.setVisibility(0);
            this.e.setOnClickListener(new View.OnClickListener() { // from class: com.duapps.ad.offerwall.ui.OfferWallAct.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    OfferWallAct.this.f();
                    OfferWallAct.this.finish();
                }
            });
        } else {
            this.e.setVisibility(8);
        }
    }

    private void d() {
        this.f2215b = (PagerSlidingTab) findViewById(R.id.pager_sliding_tab);
        this.c = (ViewPager) findViewById(R.id.tab_view_pager);
        this.c.setOffscreenPageLimit(3);
        this.d = new g(this, getSupportFragmentManager(), this.h);
        this.c.setAdapter(this.d);
        this.f2215b.a(this.c, this.f2214a);
        this.c.setCurrentItem(this.i);
    }

    private void e() {
        int color;
        int color2;
        int color3;
        String stringExtra = getIntent().getStringExtra("KEY_TITLE");
        if (!TextUtils.isEmpty(stringExtra)) {
            this.f.setText(stringExtra);
        } else {
            try {
                this.f.setText(getString(getIntent().getIntExtra("KEY_TITLE_ID", R.string.duapps_ad_offer_wall_title_v2)));
            } catch (Exception e) {
                com.duapps.ad.base.h.d("OfferWallAct", "String res is not found.");
            }
        }
        String stringExtra2 = getIntent().getStringExtra("KEY_TAB_INDICATOR_COLOR");
        String stringExtra3 = getIntent().getStringExtra("KEY_TAB_BACKGROUND_COLOR");
        String stringExtra4 = getIntent().getStringExtra("KEY_TAB_TEXT_COLOR");
        Pattern compile = Pattern.compile("^#?([a-f]|[A-F]|[0-9]){3}(([a-f]|[A-F]|[0-9]){3})?$");
        if (!TextUtils.isEmpty(stringExtra2)) {
            if (compile.matcher(stringExtra2).matches()) {
                color = Color.parseColor(stringExtra2);
            } else {
                com.duapps.ad.base.h.d("OfferWallAct", "KEY_TAB_INDICATOR_COLOR is wrong.");
                return;
            }
        } else {
            color = getResources().getColor(R.color.default_style_color_blue);
        }
        if (!TextUtils.isEmpty(stringExtra3)) {
            if (compile.matcher(stringExtra3).matches()) {
                color2 = Color.parseColor(stringExtra3);
            } else {
                com.duapps.ad.base.h.d("OfferWallAct", "KEY_TAB_BACKGROUND_COLOR is wrong.");
                return;
            }
        } else {
            color2 = getResources().getColor(R.color.default_style_color_white);
        }
        if (!TextUtils.isEmpty(stringExtra4)) {
            if (compile.matcher(stringExtra4).matches()) {
                color3 = Color.parseColor(stringExtra4);
            } else {
                com.duapps.ad.base.h.d("OfferWallAct", "KEY_TAB_TEXT_COLOR is wrong.");
                return;
            }
        } else {
            color3 = getResources().getColor(R.color.default_style_color_black);
        }
        this.f2215b.a(color);
        this.f2215b.b(color3);
        this.f2215b.setBackgroundColor(color2);
        this.g.setBackgroundColor(color2);
        this.f.setTextColor(color3);
        if (a(color2)) {
            this.e.setImageResource(R.drawable.duapps_ad_offer_wall_back_dark);
        } else {
            this.e.setImageResource(R.drawable.duapps_ad_offer_wall_back_light);
        }
    }

    private boolean a(int i) {
        float red = (Color.red(i) * 0.299f) + (Color.green(i) * 0.587f) + (Color.blue(i) * 0.114f);
        com.duapps.ad.base.h.c("OfferWallAct", "isLightColor...g : " + red);
        return red >= 192.0f;
    }

    @Override // com.duapps.ad.offerwall.ui.h.a
    public int a() {
        return this.c.getCurrentItem();
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        com.duapps.ad.c.b.c.a((Activity) this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        h a2 = this.d.a(0);
        if ((a2 instanceof f) && ((f) a2).b()) {
            com.duapps.ad.stats.c.b(getApplicationContext(), this.h, System.currentTimeMillis() - this.j);
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        f();
    }
}
