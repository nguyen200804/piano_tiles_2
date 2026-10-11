package com.mnt.impl.a;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.mnt.Ad;
import com.mnt.impl.b.k;
import com.mnt.impl.dsp.DspHelper$BannerWebView;
import com.mnt.impl.view.AdChoicesView;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b extends com.mnt.impl.a implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    private int f3917b;
    private int c;
    private Context d;
    private Ad e;
    private com.mnt.impl.b f;
    private String g;
    private boolean h;
    private int i;
    private String j;
    private ImageView k;
    private TextView l;
    private TextView m;
    private View n;
    private ImageView o;

    static {
        String str = com.mnt.impl.e.px;
    }

    protected b(Activity activity) {
        super(activity);
        this.h = false;
        this.d = activity;
    }

    @Override // com.mnt.a.g
    public final void b(Bundle bundle) {
        com.mnt.impl.b bVar;
        try {
            if (bundle != null) {
                this.h = bundle.getBoolean(com.mnt.impl.e.py);
                this.g = bundle.getString(com.mnt.impl.e.pz);
                this.e = (Ad) bundle.getParcelable(com.mnt.impl.e.pA);
                this.i = bundle.getInt(h.i);
                this.j = bundle.getString(h.j);
            } else {
                this.e = (Ad) this.f3915a.getIntent().getParcelableExtra(h.h);
                this.g = this.f3915a.getIntent().getStringExtra(h.g);
                this.i = this.f3915a.getIntent().getIntExtra(h.i, -1);
                this.j = this.f3915a.getIntent().getStringExtra(h.j);
            }
            if (this.i != 1) {
                if (this.i != 2) {
                    this.f3915a.finish();
                    return;
                }
                if (this.e == null) {
                    this.f3915a.finish();
                    return;
                }
                g a2 = g.a();
                if (a2.f3924b != null) {
                    bVar = a2.f3924b.get();
                } else {
                    bVar = null;
                }
                this.f = bVar;
                if (this.f == null) {
                    this.f = new com.mnt.impl.b(this.d);
                }
                com.mnt.impl.e.c cVar = (com.mnt.impl.e.c) this.e;
                if (k.c(this.d) == 1) {
                    if (cVar.getAppType() == 2) {
                        this.n = d();
                        a(this.e);
                    } else if (cVar.getAppType() == 1) {
                        this.n = d();
                        a(this.e);
                    } else {
                        this.n = d();
                        a(this.e);
                    }
                } else {
                    if (k.c(this.d) == 2 && cVar.getAppType() != 2) {
                        cVar.getAppType();
                    }
                    this.n = c();
                    a(this.e);
                }
                this.n.setOnClickListener(this);
                this.f3915a.setContentView(this.n);
                return;
            }
            DspHelper$BannerWebView dspHelper$BannerWebView = (DspHelper$BannerWebView) g.a().c;
            RelativeLayout relativeLayout = new RelativeLayout(this.d);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(k.a(this.d, 320.0f), k.a(this.d, 480.0f));
            layoutParams.addRule(13);
            FrameLayout frameLayout = new FrameLayout(this.d);
            relativeLayout.setBackgroundColor(Color.parseColor(com.mnt.impl.e.pB));
            ViewGroup viewGroup = (ViewGroup) dspHelper$BannerWebView.getParent();
            if (viewGroup != null) {
                viewGroup.removeAllViews();
            }
            dspHelper$BannerWebView.setOnWebViewClickListener(new c(this, dspHelper$BannerWebView));
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(k.a(this.d, 25.0f), k.a(this.d, 25.0f));
            this.o = new ImageView(this.d);
            layoutParams2.gravity = 53;
            this.o.setPadding(0, k.a(this.d, 12.0f), k.a(this.d, 12.0f), 0);
            this.o.setLayoutParams(layoutParams2);
            this.o.setImageDrawable(com.mnt.impl.l.a.f4088b.a());
            this.o.setOnClickListener(new d(this));
            frameLayout.addView(dspHelper$BannerWebView);
            frameLayout.addView(this.o, layoutParams2);
            relativeLayout.addView(frameLayout, layoutParams);
            this.f3915a.setContentView(relativeLayout);
        } catch (Throwable th) {
            th.printStackTrace();
            this.f3915a.finish();
            if (g.a().b() != null) {
                g.a().b().mAdListener.onAdClosed();
            }
        }
    }

    @Override // com.mnt.impl.a, com.mnt.a.g
    public final void b() {
        if (this.i == 1 && this.f3915a.getRequestedOrientation() != 1) {
            this.f3915a.setRequestedOrientation(1);
        }
        super.b();
    }

    private View c() {
        this.f3917b = k.b(this.d)[0];
        this.c = k.b(this.d)[1];
        int i = (int) (this.c / 1.71d);
        int i2 = (int) (this.f3917b / 1.28d);
        RelativeLayout relativeLayout = new RelativeLayout(this.d);
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        LinearLayout linearLayout = new LinearLayout(this.d);
        linearLayout.setBackgroundColor(-1);
        linearLayout.setOrientation(1);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i2, i);
        layoutParams.addRule(13, -1);
        relativeLayout.addView(linearLayout, layoutParams);
        LinearLayout linearLayout2 = new LinearLayout(this.d);
        linearLayout2.setOrientation(0);
        linearLayout.addView(linearLayout2, new LinearLayout.LayoutParams(-2, (int) (i / 1.33d)));
        RelativeLayout relativeLayout2 = new RelativeLayout(this.d);
        relativeLayout2.setLayoutParams(new LinearLayout.LayoutParams(i2 / 2, (int) (i / 1.33d)));
        this.k = new ImageView(this.d);
        this.k.setScaleType(ImageView.ScaleType.FIT_XY);
        relativeLayout2.addView(this.k, new LinearLayout.LayoutParams(-1, -1));
        relativeLayout2.addView(new AdChoicesView(this.d), new RelativeLayout.LayoutParams(k.a(this.d, 20.0f), k.a(this.d, 20.0f)));
        linearLayout2.addView(relativeLayout2);
        RelativeLayout relativeLayout3 = new RelativeLayout(this.d);
        linearLayout2.addView(relativeLayout3, new RelativeLayout.LayoutParams(-1, -1));
        this.o = new ImageView(this.d);
        this.o.setPadding(0, 10, 10, 0);
        this.o.setImageDrawable(com.mnt.impl.l.a.f4088b.a());
        this.o.setScaleType(ImageView.ScaleType.FIT_XY);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(i / 17, i / 17);
        layoutParams2.addRule(11, -1);
        this.o.setOnClickListener(new e(this));
        relativeLayout3.addView(this.o, layoutParams2);
        LinearLayout linearLayout3 = new LinearLayout(this.d);
        linearLayout3.setOrientation(1);
        relativeLayout3.addView(linearLayout3, new LinearLayout.LayoutParams(-1, -1));
        this.l = new TextView(this.d);
        this.l.setGravity(16);
        this.l.setSingleLine(true);
        this.l.setEllipsize(TextUtils.TruncateAt.END);
        this.l.setPadding(i2 / 35, (int) (i2 / 53.57d), 0, 0);
        this.l.setTextSize(0, i / 10);
        this.l.setTextColor(Color.parseColor(com.mnt.impl.e.pD));
        linearLayout3.addView(this.l, new LinearLayout.LayoutParams(-1, -2));
        TextView textView = new TextView(this.d);
        textView.setBackgroundColor(Color.parseColor(com.mnt.impl.e.pE));
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, 2);
        layoutParams3.setMargins((int) (i2 / 53.57d), (int) (i2 / 53.57d), (int) (i2 / 53.57d), (int) (i2 / 53.57d));
        linearLayout3.addView(textView, layoutParams3);
        this.m = new TextView(this.d);
        this.m.setPadding(i2 / 35, 0, i2 / 35, 0);
        this.m.setTextSize(0, i / 15);
        this.m.setTextColor(Color.parseColor(com.mnt.impl.e.pF));
        this.m.setMaxLines(4);
        this.m.setEllipsize(TextUtils.TruncateAt.END);
        linearLayout3.addView(this.m, new LinearLayout.LayoutParams(-2, -2));
        TextView textView2 = new TextView(this.d);
        textView2.setBackgroundColor(Color.parseColor(com.mnt.impl.e.pG));
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, 2);
        layoutParams4.setMargins((int) (i2 / 53.57d), (int) (i2 / 53.57d), (int) (i2 / 53.57d), 0);
        layoutParams4.addRule(12);
        relativeLayout3.addView(textView2, layoutParams4);
        RelativeLayout relativeLayout4 = new RelativeLayout(this.d);
        linearLayout.addView(relativeLayout4, new RelativeLayout.LayoutParams(-1, (int) (i / 3.98d)));
        Button button = new Button(this.d);
        button.setGravity(17);
        button.setText(com.mnt.impl.e.c.a(this.e));
        button.setTextColor(Color.parseColor(com.mnt.impl.e.pH));
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(10.0f);
        gradientDrawable.setColor(Color.parseColor(com.mnt.impl.e.pI));
        button.setBackgroundDrawable(gradientDrawable);
        button.setTextSize(0, i / 14);
        button.setTypeface(Typeface.DEFAULT_BOLD);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams((int) (i2 / 2.3d), (int) (i / 6.17d));
        layoutParams5.addRule(13);
        relativeLayout4.addView(button, layoutParams5);
        button.setOnClickListener(this);
        return relativeLayout;
    }

    private View d() {
        this.f3917b = k.b(this.d)[0];
        this.c = k.b(this.d)[1];
        int i = (int) (this.c / 1.66d);
        int i2 = (int) (this.f3917b / 1.42d);
        RelativeLayout relativeLayout = new RelativeLayout(this.d);
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        LinearLayout linearLayout = new LinearLayout(this.d);
        linearLayout.setOrientation(1);
        linearLayout.setBackgroundColor(-1);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i2, -2);
        layoutParams.addRule(13, -1);
        relativeLayout.addView(linearLayout, layoutParams);
        RelativeLayout relativeLayout2 = new RelativeLayout(this.d);
        linearLayout.addView(relativeLayout2, new RelativeLayout.LayoutParams(-1, -1));
        this.k = new ImageView(this.d);
        this.k.setScaleType(ImageView.ScaleType.FIT_XY);
        relativeLayout2.addView(this.k, new LinearLayout.LayoutParams(i2, (int) (i / 2.24d)));
        relativeLayout2.addView(new AdChoicesView(this.d), new RelativeLayout.LayoutParams(k.a(this.d, 20.0f), k.a(this.d, 20.0f)));
        this.o = new ImageView(this.d);
        this.o.setPadding(0, 10, 10, 0);
        this.o.setImageDrawable(com.mnt.impl.l.a.f4088b.a());
        this.o.setScaleType(ImageView.ScaleType.FIT_XY);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(i / 25, i / 25);
        layoutParams2.addRule(11, -1);
        this.o.setOnClickListener(new f(this));
        relativeLayout2.addView(this.o, layoutParams2);
        this.l = new TextView(this.d);
        this.l.setTextSize(0, i2 / 15);
        this.l.setTextColor(Color.parseColor(com.mnt.impl.e.pJ));
        this.l.setGravity(17);
        this.l.setPadding(0, i / 50, 0, i / 50);
        linearLayout.addView(this.l, new LinearLayout.LayoutParams(-1, -2));
        TextView textView = new TextView(this.d);
        textView.setBackgroundColor(Color.parseColor(com.mnt.impl.e.pK));
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, 2);
        layoutParams3.setMargins(i2 / 42, 0, i2 / 42, 0);
        linearLayout.addView(textView, layoutParams3);
        this.m = new TextView(this.d);
        this.m.setPadding((int) (i2 / 10.21d), (int) (i / 27.52d), (int) (i2 / 10.21d), (int) (i / 27.52d));
        this.m.setTextSize(0, i2 / 20);
        this.m.setTextColor(Color.parseColor(com.mnt.impl.e.pL));
        this.m.setMaxLines(4);
        this.m.setEllipsize(TextUtils.TruncateAt.END);
        linearLayout.addView(this.m, new LinearLayout.LayoutParams(-1, -2));
        TextView textView2 = new TextView(this.d);
        textView2.setBackgroundColor(Color.parseColor(com.mnt.impl.e.pM));
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, 2);
        layoutParams4.setMargins(i2 / 42, 0, i2 / 42, 0);
        linearLayout.addView(textView2, layoutParams4);
        Button button = new Button(this.d);
        button.setGravity(17);
        button.setText(com.mnt.impl.e.c.a(this.e));
        button.setTextColor(Color.parseColor(com.mnt.impl.e.pN));
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(10.0f);
        gradientDrawable.setColor(Color.parseColor(com.mnt.impl.e.pO));
        button.setBackgroundDrawable(gradientDrawable);
        button.setTextSize(0, (int) (i / 23.47d));
        button.setTypeface(Typeface.DEFAULT_BOLD);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, -1);
        layoutParams5.setMargins((int) (i2 / 15.42d), (int) (i / 29.64d), (int) (i2 / 15.42d), (int) (i / 29.64d));
        linearLayout.addView(button, layoutParams5);
        button.setOnClickListener(this);
        return relativeLayout;
    }

    private void a(Ad ad) {
        ImageView imageView = this.k;
        String str = ((com.mnt.impl.e.c) ad).getCreatives(Ad.AD_CREATIVE_SIZE_1200x627).get(0);
        int i = com.mnt.impl.c.a.f3957b.c;
        new com.mnt.impl.g.a(imageView, str).c();
        this.l.setText(ad.getName());
        this.m.setText(ad.getDescription());
        if (!this.h) {
            this.h = true;
            this.f.b(ad);
        }
    }

    @Override // com.mnt.impl.a, com.mnt.a.g
    public final void a(Configuration configuration) {
        super.a(configuration);
        com.mnt.impl.e.c cVar = (com.mnt.impl.e.c) this.e;
        switch (configuration.orientation) {
            case 1:
                if (cVar.getAppType() == 2) {
                    this.n = d();
                    a(this.e);
                    break;
                } else if (cVar.getAppType() == 1) {
                    this.n = d();
                    a(this.e);
                    break;
                }
                break;
            case 2:
                if (cVar.getAppType() == 2) {
                    this.n = c();
                    a(this.e);
                    break;
                } else if (cVar.getAppType() == 1) {
                    this.n = c();
                    a(this.e);
                    break;
                }
                break;
        }
        this.n.setOnClickListener(this);
        this.f3915a.setContentView(this.n);
    }

    @Override // com.mnt.impl.a, com.mnt.a.g
    public final void a(Bundle bundle) {
        super.a(bundle);
        bundle.putBoolean(com.mnt.impl.e.pP, this.h);
        bundle.putString(com.mnt.impl.e.pQ, this.g);
        bundle.putParcelable(com.mnt.impl.e.pR, this.e);
        bundle.putInt(h.i, this.i);
        bundle.putString(h.j, this.j);
    }

    @Override // com.mnt.impl.a, com.mnt.a.g
    public final void a() {
        if (g.a().b() != null) {
            g.a().b().mAdListener.onAdClosed();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f3915a.finish();
        if (g.a().b() != null) {
            g.a().b().mAdListener.onAdClicked();
        }
        this.f.a(this.e);
    }
}
