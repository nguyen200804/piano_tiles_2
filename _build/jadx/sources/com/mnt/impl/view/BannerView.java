package com.mnt.impl.view;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.mnt.Ad;
import com.mnt.IAdListener;
import com.mnt.MntBuild;
import com.mnt.impl.b.k;
import java.util.ArrayList;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class BannerView extends LinearLayout implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public Context f4094a;

    /* renamed from: b, reason: collision with root package name */
    public IAdListener f4095b;
    public ImageView c;
    public TextView d;
    public TextView e;
    public Ad f;
    public String g;
    public List<String> h;
    public boolean i;
    public com.mnt.impl.b j;
    public MntBuild k;
    public boolean l;
    public com.mnt.impl.dsp.c m;
    int n;
    private int o;
    private Handler p;
    private com.mnt.impl.f.a q;

    static {
        String str = com.mnt.impl.e.jA;
    }

    public BannerView(Context context) {
        super(context);
        this.i = false;
        this.p = new b(this);
        this.q = new e(this);
        this.f4094a = context;
        this.o = k.c(this.f4094a);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.j != null) {
            this.j.a(this.f);
        }
        if (this.f4095b != null) {
            this.f4095b.onAdClicked();
        }
    }

    public void setAdListener(IAdListener iAdListener) {
        this.f4095b = iAdListener;
    }

    public void setPlacementId(String str) {
        this.g = str;
        this.j = new com.mnt.impl.b(this.f4094a);
    }

    static /* synthetic */ void b(BannerView bannerView, Ad ad) {
        bannerView.h = new ArrayList();
        bannerView.h.add(ad.getIcon());
        Context context = bannerView.f4094a;
        String icon = ad.getIcon();
        com.mnt.impl.f.a aVar = bannerView.q;
        int i = com.mnt.impl.c.a.f3957b.c;
        new com.mnt.impl.g.a(context, icon, aVar).c();
    }

    static /* synthetic */ void a(BannerView bannerView, WebView webView) {
        bannerView.setOrientation(1);
        RelativeLayout relativeLayout = new RelativeLayout(bannerView.f4094a);
        bannerView.addView(relativeLayout, new LinearLayout.LayoutParams(k.a(bannerView.f4094a, 320.0f), k.a(bannerView.f4094a, 50.0f)));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        relativeLayout.addView(webView, layoutParams);
    }

    static /* synthetic */ void f(BannerView bannerView) {
        a aVar = new a();
        aVar.f4100b = 0;
        aVar.f4099a = bannerView.p;
        aVar.a(com.mnt.impl.b.b.SMALL_BANNER, bannerView.j, bannerView.k);
    }

    static /* synthetic */ void h(BannerView bannerView) {
        bannerView.setOnClickListener(bannerView);
        bannerView.setBackgroundColor(-1);
        LinearLayout linearLayout = new LinearLayout(bannerView.f4094a);
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(k.a(bannerView.f4094a, 320.0f), k.a(bannerView.f4094a, 50.0f));
        linearLayout.setOrientation(0);
        linearLayout.setBackgroundColor(-1);
        bannerView.addView(linearLayout, layoutParams);
        int i = k.b(bannerView.f4094a)[0];
        int i2 = k.b(bannerView.f4094a)[1];
        if (bannerView.o == 2) {
            i = k.b(bannerView.f4094a)[1];
            i2 = k.b(bannerView.f4094a)[0];
        }
        RelativeLayout relativeLayout = new RelativeLayout(bannerView.f4094a);
        relativeLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
        bannerView.c = new ImageView(bannerView.f4094a);
        bannerView.c.setScaleType(ImageView.ScaleType.FIT_XY);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(k.a(bannerView.f4094a, 40.0f), k.a(bannerView.f4094a, 40.0f));
        layoutParams2.addRule(13);
        layoutParams2.topMargin = k.a(bannerView.f4094a, 5.0f);
        layoutParams2.bottomMargin = k.a(bannerView.f4094a, 5.0f);
        layoutParams2.leftMargin = k.a(bannerView.f4094a, 20.0f);
        layoutParams2.bottomMargin = k.a(bannerView.f4094a, 5.0f);
        relativeLayout.addView(bannerView.c, layoutParams2);
        relativeLayout.addView(new AdChoicesView(bannerView.f4094a), new RelativeLayout.LayoutParams(k.a(bannerView.f4094a, 20.0f), k.a(bannerView.f4094a, 20.0f)));
        linearLayout.addView(relativeLayout);
        LinearLayout linearLayout2 = new LinearLayout(bannerView.f4094a);
        linearLayout2.setOrientation(1);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(0, i2 / 13);
        layoutParams3.setMargins(i / 72, 0, i / 72, 0);
        layoutParams3.weight = 1.0f;
        linearLayout.addView(linearLayout2, layoutParams3);
        bannerView.d = new TextView(bannerView.f4094a);
        bannerView.d.setTextSize(0, i2 / 45);
        bannerView.d.setTypeface(Typeface.defaultFromStyle(1));
        bannerView.d.setTextColor(Color.parseColor(com.mnt.impl.e.jC));
        bannerView.d.setSingleLine(true);
        LinearLayout linearLayout3 = new LinearLayout(bannerView.f4094a);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams4.setMargins(0, i2 / 174, 0, i2 / 174);
        linearLayout3.addView(bannerView.d, layoutParams4);
        linearLayout2.addView(linearLayout3);
        bannerView.e = new TextView(bannerView.f4094a);
        bannerView.e.setSingleLine(true);
        bannerView.e.setEllipsize(TextUtils.TruncateAt.END);
        bannerView.e.setTextSize(0, i2 / 50);
        bannerView.e.setTextColor(Color.parseColor(com.mnt.impl.e.jD));
        LinearLayout linearLayout4 = new LinearLayout(bannerView.f4094a);
        linearLayout4.addView(bannerView.e, new LinearLayout.LayoutParams(-1, -2));
        linearLayout2.addView(linearLayout4);
        TextView textView = new TextView(bannerView.f4094a);
        textView.setBackgroundColor(Color.parseColor(com.mnt.impl.e.jE));
        textView.setText(com.mnt.impl.e.c.a(bannerView.f));
        textView.setGravity(17);
        textView.setTextSize(0, i2 / 41);
        textView.setTypeface(Typeface.defaultFromStyle(1));
        textView.setTextColor(Color.parseColor(com.mnt.impl.e.jF));
        LinearLayout linearLayout5 = new LinearLayout(bannerView.f4094a);
        ViewGroup.LayoutParams layoutParams5 = new LinearLayout.LayoutParams((int) (i / 4.5d), -1);
        linearLayout5.addView(textView, layoutParams5);
        linearLayout5.setOnClickListener(bannerView);
        linearLayout.addView(linearLayout5, layoutParams5);
    }

    static /* synthetic */ void i(BannerView bannerView) {
        if (bannerView.f == null) {
            return;
        }
        ImageView imageView = bannerView.c;
        String icon = bannerView.f.getIcon();
        int i = com.mnt.impl.c.a.f3957b.c;
        new com.mnt.impl.g.a(imageView, icon).c();
        bannerView.d.setText(bannerView.f.getName());
        bannerView.e.setText(bannerView.f.getDescription());
    }
}
