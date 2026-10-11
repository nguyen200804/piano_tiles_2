package com.facebook.ads.internal.view;

import android.content.Context;
import android.content.Intent;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.view.GravityCompat;
import android.support.v7.widget.helper.ItemTouchHelper;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.ads.VideoStartReason;
import com.facebook.ads.internal.j.a;
import com.facebook.ads.internal.util.ad;
import com.facebook.ads.internal.util.ah;
import com.facebook.ads.internal.util.am;
import com.facebook.ads.internal.view.d;
import com.facebook.ads.internal.view.d.b.d;
import com.facebook.ads.internal.view.d.b.i;
import java.util.HashMap;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class m implements d {

    /* renamed from: a, reason: collision with root package name */
    private com.facebook.ads.internal.j.a f3072a;

    /* renamed from: b, reason: collision with root package name */
    private o f3073b;
    private ad c;
    private ah d;
    private d.a e;
    private com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.b> f;
    private com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.d> g;
    private com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.l> h;
    private com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.t> i;
    private String j;
    private Context k;
    private String l;
    private RelativeLayout m;
    private TextView n;
    private TextView o;
    private ImageView p;
    private com.facebook.ads.internal.view.d.b.p q;
    private com.facebook.ads.internal.view.d.b.i r;

    public m(Context context, o oVar, d.a aVar) {
        this.k = context;
        this.e = aVar;
        this.f3073b = oVar;
        g();
    }

    private void a(int i, boolean z) {
        if (i <= 0) {
            return;
        }
        float f = this.k.getResources().getDisplayMetrics().density;
        this.r = new com.facebook.ads.internal.view.d.b.i(this.k, i, -12286980);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) (56.0f * f), (int) (56.0f * f));
        layoutParams.addRule(10);
        layoutParams.addRule(11);
        int i2 = (int) (f * 16.0f);
        this.r.setLayoutParams(layoutParams);
        this.r.setPadding(i2, i2, i2, i2);
        if (z) {
            this.r.setButtonMode(i.a.SKIP_BUTTON_MODE);
        }
        this.r.setOnTouchListener(new View.OnTouchListener() { // from class: com.facebook.ads.internal.view.m.6
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 1 && m.this.r.a() && m.this.r.getSkipSeconds() != 0 && m.this.f3073b != null) {
                    m.this.f3073b.e();
                }
                return true;
            }
        });
        this.f3073b.a(this.r);
        this.e.a(this.r);
    }

    private void g() {
        int generateViewId;
        int generateViewId2;
        float f = this.k.getResources().getDisplayMetrics().density;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        this.f3073b.g();
        this.f3073b.setIsFullScreen(true);
        this.f3073b.setLayoutParams(layoutParams);
        this.f3073b.setBackgroundColor(-16777216);
        this.i = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.t>() { // from class: com.facebook.ads.internal.view.m.1
            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.t> a() {
                return com.facebook.ads.internal.view.d.a.t.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.t tVar) {
                m.this.d.a(tVar.b(), m.this.f3073b, tVar.a());
            }
        };
        this.f = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.b>() { // from class: com.facebook.ads.internal.view.m.2
            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.b> a() {
                return com.facebook.ads.internal.view.d.a.b.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.b bVar) {
                if (m.this.e != null) {
                    m.this.e.a(com.facebook.ads.internal.l.REWARDED_VIDEO_COMPLETE.a(), bVar);
                }
                m.this.e();
            }
        };
        this.g = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.d>() { // from class: com.facebook.ads.internal.view.m.3
            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.d> a() {
                return com.facebook.ads.internal.view.d.a.d.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.d dVar) {
                if (m.this.e != null) {
                    m.this.e.a(com.facebook.ads.internal.l.REWARDED_VIDEO_ERROR.a());
                }
                m.this.e();
            }
        };
        this.h = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.l>() { // from class: com.facebook.ads.internal.view.m.4
            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.l> a() {
                return com.facebook.ads.internal.view.d.a.l.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.l lVar) {
                m.this.f3073b.a(VideoStartReason.USER_STARTED);
                if (m.this.f3072a != null) {
                    m.this.f3072a.a();
                }
            }
        };
        this.f3073b.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.f);
        this.f3073b.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.g);
        this.f3073b.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.h);
        this.f3073b.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.i);
        this.f3073b.a(new com.facebook.ads.internal.view.d.b.j(this.k));
        this.q = new com.facebook.ads.internal.view.d.b.p(this.k, (int) (6.0f * f));
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(12);
        this.q.setLayoutParams(layoutParams2);
        this.f3073b.a(this.q);
        if (com.facebook.ads.internal.j.k(this.k)) {
            com.facebook.ads.internal.view.d.b.k kVar = new com.facebook.ads.internal.view.d.b.k(this.k);
            this.f3073b.a(kVar);
            this.f3073b.a(new com.facebook.ads.internal.view.d.b.d(kVar, d.a.INVSIBLE));
        }
        if (com.facebook.ads.internal.j.d(this.k)) {
            GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{0, -15658735});
            gradientDrawable.setCornerRadius(0.0f);
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, (int) (96.0f * f));
            layoutParams3.addRule(12);
            this.m = new RelativeLayout(this.k);
            if (Build.VERSION.SDK_INT >= 16) {
                this.m.setBackground(gradientDrawable);
            } else {
                this.m.setBackgroundDrawable(gradientDrawable);
            }
            this.m.setLayoutParams(layoutParams3);
            this.m.setPadding((int) (12.0f * f), 0, (int) (12.0f * f), (int) (6.0f * f));
            if (Build.VERSION.SDK_INT < 17) {
                generateViewId = am.a();
                generateViewId2 = am.a();
            } else {
                generateViewId = View.generateViewId();
                generateViewId2 = View.generateViewId();
            }
            this.p = new ImageView(this.k);
            RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams((int) (60.0f * f), (int) (60.0f * f));
            layoutParams4.addRule(15);
            layoutParams4.addRule(9);
            layoutParams4.setMargins(0, 0, (int) (f * 12.0f), 0);
            this.p.setLayoutParams(layoutParams4);
            this.p.setId(generateViewId);
            this.m.addView(this.p);
            RelativeLayout relativeLayout = new RelativeLayout(this.k);
            RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams5.addRule(15);
            layoutParams5.addRule(1, generateViewId);
            relativeLayout.setLayoutParams(layoutParams5);
            relativeLayout.setGravity(16);
            this.n = new TextView(this.k);
            RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-1, -2);
            this.n.setEllipsize(TextUtils.TruncateAt.END);
            this.n.setGravity(GravityCompat.START);
            this.n.setLayoutParams(layoutParams6);
            this.n.setMaxLines(1);
            this.n.setId(generateViewId2);
            this.n.setTextColor(-1);
            this.n.setTextSize(20.0f);
            this.n.setTypeface(Typeface.defaultFromStyle(1));
            relativeLayout.addView(this.n);
            this.o = new TextView(this.k);
            RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams7.addRule(3, generateViewId2);
            this.o.setEllipsize(TextUtils.TruncateAt.END);
            this.o.setGravity(GravityCompat.START);
            this.o.setLayoutParams(layoutParams7);
            this.o.setMaxLines(2);
            this.o.setTextSize(14.0f);
            this.o.setTextColor(-1);
            relativeLayout.addView(this.o);
            this.m.addView(relativeLayout);
            com.facebook.ads.internal.view.d.b.d dVar = new com.facebook.ads.internal.view.d.b.d(new RelativeLayout(this.k), d.a.INVSIBLE);
            dVar.a(this.m, d.a.INVSIBLE);
            this.f3073b.a(dVar);
        }
        this.f3072a = new com.facebook.ads.internal.j.a(this.f3073b, 1, new a.AbstractC0076a() { // from class: com.facebook.ads.internal.view.m.5
            @Override // com.facebook.ads.internal.j.a.AbstractC0076a
            public void a() {
                if (m.this.d.b()) {
                    return;
                }
                m.this.d.a();
                HashMap hashMap = new HashMap();
                if (!TextUtils.isEmpty(m.this.j)) {
                    m.this.f3072a.a(hashMap);
                    hashMap.put("touch", com.facebook.ads.internal.util.g.a(m.this.a()));
                    com.facebook.ads.internal.g.g.a(m.this.k).a(m.this.j, hashMap);
                }
                if (m.this.e != null) {
                    m.this.e.a(com.facebook.ads.internal.l.REWARDED_VIDEO_IMPRESSION.a());
                }
            }
        });
        this.f3072a.a(ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION);
        this.d = new ah();
        this.e.a(this.f3073b);
        if (this.m != null) {
            this.e.a(this.m);
        }
        this.e.a(this.q);
    }

    public Map<String, String> a() {
        return this.d.e();
    }

    @Override // com.facebook.ads.internal.view.d
    public void a(Intent intent, Bundle bundle, AudienceNetworkActivity audienceNetworkActivity) {
        String stringExtra = intent.getStringExtra(AudienceNetworkActivity.VIDEO_URL);
        this.j = intent.getStringExtra(AudienceNetworkActivity.CLIENT_TOKEN);
        this.l = intent.getStringExtra(AudienceNetworkActivity.CONTEXT_SWITCH_BEHAVIOR);
        a(intent.getIntExtra(AudienceNetworkActivity.SKIP_DELAY_SECONDS_KEY, -1), !TextUtils.isEmpty(com.facebook.ads.internal.util.g.a(intent.getByteArrayExtra(AudienceNetworkActivity.END_CARD_MARKUP))));
        if (this.n != null) {
            this.n.setText(intent.getStringExtra(AudienceNetworkActivity.AD_TITLE));
        }
        if (this.o != null) {
            this.o.setText(intent.getStringExtra(AudienceNetworkActivity.AD_SUBTITLE));
        }
        if (this.p != null) {
            String stringExtra2 = intent.getStringExtra(AudienceNetworkActivity.AD_ICON_URL);
            if (!TextUtils.isEmpty(stringExtra2)) {
                new com.facebook.ads.internal.util.q(this.p).a(stringExtra2);
            }
        }
        this.c = new ad(this.k, com.facebook.ads.internal.g.g.a(this.k), this.f3073b, this.j);
        if (!TextUtils.isEmpty(stringExtra)) {
            this.f3073b.setVideoURI(stringExtra);
        }
        this.f3073b.a(VideoStartReason.USER_STARTED);
    }

    @Override // com.facebook.ads.internal.view.d
    public void a(Bundle bundle) {
    }

    @Override // com.facebook.ads.internal.view.d
    public void a(d.a aVar) {
    }

    public void b() {
        this.f3073b.a(1);
        this.f3073b.a(VideoStartReason.USER_STARTED);
    }

    public void c() {
        this.f3073b.a(true);
    }

    public boolean d() {
        return this.f3073b.getState() == com.facebook.ads.internal.view.d.c.d.PAUSED;
    }

    public void e() {
        if (this.f3073b != null) {
            this.f3073b.f();
            this.f3073b.h();
        }
        if (this.f3072a != null) {
            this.f3072a.b();
        }
    }

    public void f() {
        this.f3073b.a(this.f3073b.getCurrentPosition());
        this.f3073b.a(VideoStartReason.USER_STARTED);
    }

    @Override // com.facebook.ads.internal.view.d
    public void h() {
        c();
    }

    @Override // com.facebook.ads.internal.view.d
    public void i() {
        if (d()) {
            if (this.l.equals("restart")) {
                b();
                return;
            }
            if (this.l.equals("resume")) {
                f();
                return;
            }
            if (this.l.equals("skip")) {
                this.e.a(com.facebook.ads.internal.l.REWARDED_VIDEO_COMPLETE_WITHOUT_REWARD.a(), new com.facebook.ads.internal.view.d.a.b());
                e();
            } else if (this.l.equals("endvideo")) {
                this.e.a(com.facebook.ads.internal.l.REWARDED_VIDEO_END_ACTIVITY.a());
                HashMap hashMap = new HashMap();
                if (!TextUtils.isEmpty(this.j)) {
                    this.f3072a.a(hashMap);
                    hashMap.put("touch", com.facebook.ads.internal.util.g.a(a()));
                    com.facebook.ads.internal.g.g.a(this.k).d(this.j, hashMap);
                }
                e();
            }
        }
    }

    @Override // com.facebook.ads.internal.view.d
    public void onDestroy() {
        e();
        this.n = null;
        this.o = null;
        this.p = null;
        this.m = null;
        this.r = null;
        this.l = null;
        if (this.f3073b != null) {
            this.f3073b.getEventBus().b((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.f);
            this.f3073b.getEventBus().b((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.g);
            this.f3073b.getEventBus().b((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.h);
            this.f3073b.getEventBus().b((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.i);
        }
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = null;
        this.f3072a = null;
        this.d = null;
        this.c = null;
        this.f3073b = null;
        this.e = null;
        this.j = null;
        this.k = null;
        this.q.a();
        this.q = null;
    }
}
