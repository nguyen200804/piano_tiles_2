package com.mnt.impl.view;

import android.R;
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
import android.widget.RatingBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.mnt.Ad;
import com.mnt.AdError;
import com.mnt.IAdListener;
import com.mnt.MntBuild;
import com.mnt.impl.b.k;
import java.util.ArrayList;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class RectangleBannerView extends LinearLayout implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public Context f4096a;

    /* renamed from: b, reason: collision with root package name */
    public ImageView f4097b;
    public IAdListener c;
    public Ad d;
    public com.mnt.impl.b e;
    public String f;
    public List<String> g;
    public boolean h;
    public MntBuild i;
    public boolean j;
    public com.mnt.impl.dsp.c k;
    int l;
    private ImageView m;
    private RatingBar n;
    private TextView o;
    private TextView p;
    private Handler q;
    private com.mnt.impl.f.a r;

    static {
        String str = com.mnt.impl.e.jJ;
    }

    public RectangleBannerView(Context context) {
        super(context);
        this.h = false;
        this.q = new f(this);
        this.r = new i(this);
        this.f4096a = context;
    }

    public void setAdListener(IAdListener iAdListener) {
        this.c = iAdListener;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.e != null) {
            this.e.a(this.d);
        }
        if (this.c != null) {
            this.c.onAdClicked();
        }
    }

    public void setPlacementId(String str) {
        this.f = str;
        this.e = new com.mnt.impl.b(this.f4096a);
    }

    static /* synthetic */ void b(RectangleBannerView rectangleBannerView, Ad ad) {
        rectangleBannerView.g = new ArrayList();
        rectangleBannerView.g.add(ad.getIcon());
        List<String> creatives = ((com.mnt.impl.e.c) ad).getCreatives(Ad.AD_CREATIVE_SIZE_1200x627);
        if (creatives != null && !creatives.isEmpty()) {
            rectangleBannerView.g.add(creatives.get(0));
            Context context = rectangleBannerView.f4096a;
            String str = creatives.get(0);
            com.mnt.impl.f.a aVar = rectangleBannerView.r;
            int i = com.mnt.impl.c.a.f3957b.c;
            new com.mnt.impl.g.a(context, str, aVar).c();
            Context context2 = rectangleBannerView.f4096a;
            String icon = ad.getIcon();
            com.mnt.impl.f.a aVar2 = rectangleBannerView.r;
            int i2 = com.mnt.impl.c.a.f3957b.c;
            new com.mnt.impl.g.a(context2, icon, aVar2).c();
            return;
        }
        if (rectangleBannerView.c != null) {
            rectangleBannerView.c.onAdError(AdError.NO_MATERIAL);
        }
    }

    static /* synthetic */ void a(RectangleBannerView rectangleBannerView, WebView webView) {
        rectangleBannerView.setOrientation(1);
        RelativeLayout relativeLayout = new RelativeLayout(rectangleBannerView.f4096a);
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(k.a(rectangleBannerView.f4096a, 300.0f), k.a(rectangleBannerView.f4096a, 250.0f));
        relativeLayout.setBackgroundColor(-1);
        rectangleBannerView.addView(relativeLayout, layoutParams);
        relativeLayout.addView(webView);
    }

    static /* synthetic */ void f(RectangleBannerView rectangleBannerView) {
        a aVar = new a();
        aVar.f4100b = 1;
        aVar.f4099a = rectangleBannerView.q;
        aVar.a(com.mnt.impl.b.b.RECTANGLE_BANNER, rectangleBannerView.e, rectangleBannerView.i);
    }

    static /* synthetic */ void h(RectangleBannerView rectangleBannerView) {
        rectangleBannerView.setOnClickListener(rectangleBannerView);
        rectangleBannerView.setOrientation(1);
        LinearLayout linearLayout = new LinearLayout(rectangleBannerView.f4096a);
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(k.a(rectangleBannerView.f4096a, 300.0f), k.a(rectangleBannerView.f4096a, 250.0f));
        linearLayout.setBackgroundColor(-1);
        linearLayout.setOrientation(1);
        rectangleBannerView.addView(linearLayout, layoutParams);
        int a2 = k.a(rectangleBannerView.f4096a, 300.0f);
        int a3 = k.a(rectangleBannerView.f4096a, 250.0f);
        RelativeLayout relativeLayout = new RelativeLayout(rectangleBannerView.f4096a);
        relativeLayout.setLayoutParams(new LinearLayout.LayoutParams(a2, (int) (a3 / 1.65d)));
        rectangleBannerView.f4097b = new ImageView(rectangleBannerView.f4096a);
        rectangleBannerView.f4097b.setScaleType(ImageView.ScaleType.FIT_XY);
        relativeLayout.addView(rectangleBannerView.f4097b, new RelativeLayout.LayoutParams(-1, -1));
        relativeLayout.addView(new AdChoicesView(rectangleBannerView.f4096a), new RelativeLayout.LayoutParams(k.a(rectangleBannerView.f4096a, 20.0f), k.a(rectangleBannerView.f4096a, 20.0f)));
        linearLayout.addView(relativeLayout);
        LinearLayout linearLayout2 = new LinearLayout(rectangleBannerView.f4096a);
        linearLayout2.setOrientation(0);
        int i = a2 / 52;
        linearLayout2.setPadding(i, i, i, i);
        linearLayout.addView(linearLayout2, new LinearLayout.LayoutParams(a2, -2));
        rectangleBannerView.m = new ImageView(rectangleBannerView.f4096a);
        rectangleBannerView.m.setScaleType(ImageView.ScaleType.FIT_XY);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams((int) (a3 / 5.63d), (int) (a3 / 5.63d));
        layoutParams2.setMargins(0, 0, i, 0);
        layoutParams2.gravity = 16;
        linearLayout2.addView(rectangleBannerView.m, layoutParams2);
        LinearLayout linearLayout3 = new LinearLayout(rectangleBannerView.f4096a);
        linearLayout3.setOrientation(1);
        linearLayout2.addView(linearLayout3, new LinearLayout.LayoutParams(-1, -2));
        rectangleBannerView.o = new TextView(rectangleBannerView.f4096a);
        rectangleBannerView.o.setGravity(16);
        rectangleBannerView.o.setTextSize(0, a3 / 20);
        rectangleBannerView.o.setTypeface(Typeface.defaultFromStyle(1));
        rectangleBannerView.o.setTextColor(Color.parseColor(com.mnt.impl.e.jL));
        linearLayout3.addView(rectangleBannerView.o, new LinearLayout.LayoutParams(-2, -2));
        rectangleBannerView.p = new TextView(rectangleBannerView.f4096a);
        rectangleBannerView.p.setGravity(16);
        rectangleBannerView.p.setTypeface(Typeface.SANS_SERIF);
        rectangleBannerView.p.setTextSize(0, a3 / 20);
        rectangleBannerView.p.setTextColor(Color.parseColor(com.mnt.impl.e.jM));
        rectangleBannerView.p.setMaxLines(2);
        rectangleBannerView.p.setEllipsize(TextUtils.TruncateAt.END);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.setMargins(0, a3 / 30, i, 0);
        linearLayout3.addView(rectangleBannerView.p, layoutParams3);
        RelativeLayout relativeLayout2 = new RelativeLayout(rectangleBannerView.f4096a);
        relativeLayout2.setPadding(0, 0, 0, (int) (a3 / 37.5d));
        linearLayout.addView(relativeLayout2, new RelativeLayout.LayoutParams(a2, -2));
        rectangleBannerView.n = new RatingBar(rectangleBannerView.f4096a, null, R.attr.ratingBarStyleSmall);
        rectangleBannerView.n.setNumStars(5);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams4.setMargins(i, 0, 0, 0);
        layoutParams4.addRule(15, -1);
        relativeLayout2.addView(rectangleBannerView.n, layoutParams4);
        TextView textView = new TextView(rectangleBannerView.f4096a);
        textView.setBackgroundColor(Color.parseColor(com.mnt.impl.e.jN));
        textView.setText(com.mnt.impl.e.c.a(rectangleBannerView.d));
        textView.setGravity(17);
        textView.setTextSize(0, (int) (a3 / 16.3d));
        textView.setTypeface(Typeface.defaultFromStyle(1));
        textView.setTextColor(Color.parseColor(com.mnt.impl.e.jO));
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams((int) (a2 / 3.33d), a3 / 8);
        layoutParams5.addRule(11, -1);
        layoutParams5.setMargins(0, 0, i, 0);
        relativeLayout2.addView(textView, layoutParams5);
        textView.setOnClickListener(rectangleBannerView);
    }

    static /* synthetic */ void i(RectangleBannerView rectangleBannerView) {
        com.mnt.impl.e.c cVar = (com.mnt.impl.e.c) rectangleBannerView.d;
        ImageView imageView = rectangleBannerView.m;
        String icon = rectangleBannerView.d.getIcon();
        int i = com.mnt.impl.c.a.f3957b.c;
        new com.mnt.impl.g.a(imageView, icon).c();
        ImageView imageView2 = rectangleBannerView.f4097b;
        String str = cVar.getCreatives(Ad.AD_CREATIVE_SIZE_1200x627).get(0);
        int i2 = com.mnt.impl.c.a.f3957b.c;
        new com.mnt.impl.g.a(imageView2, str).c();
        rectangleBannerView.o.setText(rectangleBannerView.d.getName());
        rectangleBannerView.p.setText(rectangleBannerView.d.getDescription());
        rectangleBannerView.n.setRating(rectangleBannerView.d.getStoreRating());
    }
}
