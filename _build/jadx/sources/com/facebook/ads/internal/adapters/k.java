package com.facebook.ads.internal.adapters;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.view.GravityCompat;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.ads.ScrollingWebViewHolder;
import com.facebook.ads.internal.adapters.j;
import com.facebook.ads.internal.util.am;
import com.facebook.ads.internal.view.d;
import com.facebook.ads.internal.view.d.b.a;
import com.facebook.ads.internal.view.d.b.d;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.unity3d.ads.adunit.AdUnitActivity;
import java.util.HashMap;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class k extends i implements View.OnTouchListener, com.facebook.ads.internal.view.d {
    static final /* synthetic */ boolean h;
    private static final String i;

    @Nullable
    private d.a j;

    @Nullable
    private Activity k;
    private com.facebook.ads.internal.view.c.a o;
    private TextView p;
    private TextView q;
    private ImageView r;

    @Nullable
    private a.C0081a s;
    private com.facebook.ads.internal.view.d.b.o t;
    private ViewGroup u;
    private com.facebook.ads.internal.view.d.b.d v;
    private com.facebook.ads.internal.view.d.b.i w;
    private ScrollingWebViewHolder x;
    final int e = 64;
    final int f = 64;
    final int g = 16;
    private AudienceNetworkActivity.BackButtonInterceptor l = new AudienceNetworkActivity.BackButtonInterceptor() { // from class: com.facebook.ads.internal.adapters.k.1
        @Override // com.facebook.ads.AudienceNetworkActivity.BackButtonInterceptor
        public boolean interceptBackButton() {
            if (k.this.w == null) {
                return false;
            }
            if (!k.this.w.a()) {
                return true;
            }
            if (k.this.w.getSkipSeconds() != 0 && k.this.f2602a != null) {
                k.this.f2602a.e();
            }
            if (k.this.f2602a != null) {
                k.this.f2602a.f();
            }
            k.this.k.finish();
            return false;
        }
    };
    private final View.OnTouchListener m = new View.OnTouchListener() { // from class: com.facebook.ads.internal.adapters.k.2
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 1) {
                if (k.this.w == null) {
                    k.this.k.finish();
                } else if (k.this.w.a()) {
                    if (k.this.w.getSkipSeconds() != 0 && k.this.f2602a != null) {
                        k.this.f2602a.e();
                    }
                    if (k.this.f2602a != null) {
                        k.this.f2602a.f();
                    }
                    k.this.k.finish();
                }
            }
            return true;
        }
    };
    private j.a n = j.a.UNSPECIFIED;
    private int y = -1;
    private int z = -10525069;
    private int A = -12286980;
    private boolean B = false;

    static {
        h = !k.class.desiredAssertionStatus();
        i = k.class.getSimpleName();
    }

    private void a(int i2) {
        float f = this.c.getResources().getDisplayMetrics().density;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) (56.0f * f), (int) (56.0f * f));
        layoutParams.addRule(10);
        layoutParams.addRule(11);
        int i3 = (int) (16.0f * f);
        this.w.setPadding(i3, i3, i3, i3);
        this.w.setLayoutParams(layoutParams);
        d.a aVar = g() ? d.a.FADE_OUT_ON_PLAY : d.a.VISIBLE;
        int id = this.f2602a.getId();
        if (i2 == 1 && (l() || m())) {
            GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{0, -15658735});
            gradientDrawable.setCornerRadius(0.0f);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams2.addRule(10);
            this.f2602a.setLayoutParams(layoutParams2);
            a(this.f2602a);
            a(this.w);
            if (this.s != null) {
                a(this.s);
            }
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, (int) (((this.o != null ? 64 : 0) + 60 + 16 + 16 + 16) * f));
            layoutParams3.addRule(12);
            RelativeLayout relativeLayout = new RelativeLayout(this.c);
            if (Build.VERSION.SDK_INT >= 16) {
                relativeLayout.setBackground(gradientDrawable);
            } else {
                relativeLayout.setBackgroundDrawable(gradientDrawable);
            }
            relativeLayout.setLayoutParams(layoutParams3);
            relativeLayout.setPadding(i3, 0, i3, (int) (((this.o != null ? 64 : 0) + 16 + 16) * f));
            this.u = relativeLayout;
            if (!this.B) {
                this.v.a(relativeLayout, aVar);
            }
            a(relativeLayout);
            if (this.t != null) {
                RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, (int) (6.0f * f));
                layoutParams4.addRule(12);
                layoutParams4.topMargin = (int) ((-6.0f) * f);
                this.t.setLayoutParams(layoutParams4);
                a(this.t);
            }
            if (this.o != null) {
                RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, (int) (64.0f * f));
                layoutParams5.bottomMargin = (int) (16.0f * f);
                layoutParams5.leftMargin = (int) (16.0f * f);
                layoutParams5.rightMargin = (int) (16.0f * f);
                layoutParams5.addRule(1);
                layoutParams5.addRule(12);
                this.o.setLayoutParams(layoutParams5);
                a(this.o);
            }
            if (this.r != null) {
                RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams((int) (60.0f * f), (int) (60.0f * f));
                layoutParams6.addRule(12);
                layoutParams6.addRule(9);
                this.r.setLayoutParams(layoutParams6);
                a(relativeLayout, this.r);
            }
            if (this.p != null) {
                RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-1, -2);
                layoutParams7.bottomMargin = (int) (36.0f * f);
                layoutParams7.addRule(12);
                layoutParams7.addRule(9);
                this.p.setEllipsize(TextUtils.TruncateAt.END);
                this.p.setGravity(GravityCompat.START);
                this.p.setLayoutParams(layoutParams7);
                this.p.setMaxLines(1);
                this.p.setPadding((int) (72.0f * f), 0, 0, 0);
                this.p.setTextColor(-1);
                this.p.setTextSize(18.0f);
                a(relativeLayout, this.p);
            }
            if (this.q != null) {
                RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(-1, -2);
                layoutParams8.addRule(12);
                layoutParams8.addRule(9);
                layoutParams8.bottomMargin = (int) (4.0f * f);
                this.q.setEllipsize(TextUtils.TruncateAt.END);
                this.q.setGravity(GravityCompat.START);
                this.q.setLayoutParams(layoutParams8);
                this.q.setMaxLines(1);
                this.q.setPadding((int) (72.0f * f), 0, 0, 0);
                this.q.setTextColor(-1);
                a(relativeLayout, this.q);
            }
            ((ViewGroup) this.f2602a.getParent()).setBackgroundColor(-16777216);
        } else if (i2 == 1) {
            if (this.x != null) {
                RelativeLayout.LayoutParams layoutParams9 = new RelativeLayout.LayoutParams(-1, -2);
                layoutParams9.addRule(10);
                this.f2602a.setLayoutParams(layoutParams9);
                this.x.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
                this.f2602a.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.facebook.ads.internal.adapters.k.5
                    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                    public void onGlobalLayout() {
                        if (k.this.f2602a != null) {
                            if (Build.VERSION.SDK_INT >= 16) {
                                k.this.f2602a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                            } else {
                                k.this.f2602a.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                            }
                        }
                        if (k.this.x != null) {
                            k.this.x.setDragRange(k.this.f2602a.getHeight());
                        }
                    }
                });
                this.x.setDragListener(new ScrollingWebViewHolder.DragListener() { // from class: com.facebook.ads.internal.adapters.k.6
                    @Override // com.facebook.ads.ScrollingWebViewHolder.DragListener
                    public void onClosed() {
                        if (k.this.f2602a != null) {
                            k.this.f2602a.a(false);
                        }
                    }

                    @Override // com.facebook.ads.ScrollingWebViewHolder.DragListener
                    public void onOpened() {
                    }
                });
                a(this.f2602a);
                a(this.x);
                a(this.w);
                if (this.s != null) {
                    a(this.s);
                }
            } else {
                RelativeLayout.LayoutParams layoutParams10 = new RelativeLayout.LayoutParams(-1, -2);
                layoutParams10.addRule(10);
                this.f2602a.setLayoutParams(layoutParams10);
                a(this.f2602a);
                a(this.w);
                if (this.s != null) {
                    a(this.s);
                }
                LinearLayout linearLayout = new LinearLayout(this.c);
                this.u = linearLayout;
                linearLayout.setGravity(112);
                linearLayout.setOrientation(1);
                RelativeLayout.LayoutParams layoutParams11 = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams11.leftMargin = (int) (33.0f * f);
                layoutParams11.rightMargin = (int) (33.0f * f);
                layoutParams11.topMargin = (int) (8.0f * f);
                if (this.o == null) {
                    layoutParams11.bottomMargin = (int) (16.0f * f);
                } else {
                    layoutParams11.bottomMargin = (int) (80.0f * f);
                }
                layoutParams11.addRule(3, id);
                linearLayout.setLayoutParams(layoutParams11);
                a(linearLayout);
                if (this.o != null) {
                    RelativeLayout.LayoutParams layoutParams12 = new RelativeLayout.LayoutParams(-1, (int) (64.0f * f));
                    layoutParams12.bottomMargin = (int) (16.0f * f);
                    layoutParams12.leftMargin = (int) (33.0f * f);
                    layoutParams12.rightMargin = (int) (33.0f * f);
                    layoutParams12.addRule(1);
                    layoutParams12.addRule(12);
                    this.o.setLayoutParams(layoutParams12);
                    a(this.o);
                }
                if (this.p != null) {
                    LinearLayout.LayoutParams layoutParams13 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams13.weight = 2.0f;
                    layoutParams13.gravity = 17;
                    this.p.setEllipsize(TextUtils.TruncateAt.END);
                    this.p.setGravity(17);
                    this.p.setLayoutParams(layoutParams13);
                    this.p.setMaxLines(2);
                    this.p.setPadding(0, 0, 0, 0);
                    this.p.setTextColor(this.z);
                    this.p.setTextSize(24.0f);
                    a(linearLayout, this.p);
                }
                if (this.r != null) {
                    LinearLayout.LayoutParams layoutParams14 = new LinearLayout.LayoutParams((int) (64.0f * f), (int) (64.0f * f));
                    layoutParams14.weight = 0.0f;
                    layoutParams14.gravity = 17;
                    this.r.setLayoutParams(layoutParams14);
                    a(linearLayout, this.r);
                }
                if (this.q != null) {
                    LinearLayout.LayoutParams layoutParams15 = new LinearLayout.LayoutParams(-1, -2);
                    layoutParams15.weight = 2.0f;
                    layoutParams15.gravity = 16;
                    this.q.setEllipsize(TextUtils.TruncateAt.END);
                    this.q.setGravity(16);
                    this.q.setLayoutParams(layoutParams15);
                    this.q.setMaxLines(2);
                    this.q.setPadding(0, 0, 0, 0);
                    this.q.setTextColor(this.z);
                    a(linearLayout, this.q);
                }
                if (this.t != null) {
                    RelativeLayout.LayoutParams layoutParams16 = new RelativeLayout.LayoutParams(-1, (int) (6.0f * f));
                    layoutParams16.addRule(3, id);
                    this.t.setLayoutParams(layoutParams16);
                    a(this.t);
                }
            }
            ((ViewGroup) this.f2602a.getParent()).setBackgroundColor(this.y);
        } else if (!n() || m()) {
            GradientDrawable gradientDrawable2 = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{0, -15658735});
            gradientDrawable2.setCornerRadius(0.0f);
            this.f2602a.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            a(this.f2602a);
            a(this.w);
            if (this.s != null) {
                a(this.s);
            }
            RelativeLayout.LayoutParams layoutParams17 = new RelativeLayout.LayoutParams(-1, (int) (124.0f * f));
            layoutParams17.addRule(12);
            RelativeLayout relativeLayout2 = new RelativeLayout(this.c);
            if (Build.VERSION.SDK_INT >= 16) {
                relativeLayout2.setBackground(gradientDrawable2);
            } else {
                relativeLayout2.setBackgroundDrawable(gradientDrawable2);
            }
            relativeLayout2.setLayoutParams(layoutParams17);
            relativeLayout2.setPadding(i3, 0, i3, i3);
            this.u = relativeLayout2;
            if (!this.B) {
                this.v.a(relativeLayout2, aVar);
            }
            a(relativeLayout2);
            if (this.o != null) {
                RelativeLayout.LayoutParams layoutParams18 = new RelativeLayout.LayoutParams((int) (110.0f * f), (int) (56.0f * f));
                layoutParams18.rightMargin = (int) (16.0f * f);
                layoutParams18.bottomMargin = (int) (16.0f * f);
                layoutParams18.addRule(12);
                layoutParams18.addRule(11);
                this.o.setLayoutParams(layoutParams18);
                a(this.o);
            }
            if (this.r != null) {
                RelativeLayout.LayoutParams layoutParams19 = new RelativeLayout.LayoutParams((int) (64.0f * f), (int) (64.0f * f));
                layoutParams19.addRule(12);
                layoutParams19.addRule(9);
                layoutParams19.bottomMargin = (int) (8.0f * f);
                this.r.setLayoutParams(layoutParams19);
                a(relativeLayout2, this.r);
            }
            if (this.p != null) {
                RelativeLayout.LayoutParams layoutParams20 = new RelativeLayout.LayoutParams(-1, -2);
                layoutParams20.bottomMargin = (int) (48.0f * f);
                layoutParams20.addRule(12);
                layoutParams20.addRule(9);
                this.p.setEllipsize(TextUtils.TruncateAt.END);
                this.p.setGravity(GravityCompat.START);
                this.p.setLayoutParams(layoutParams20);
                this.p.setMaxLines(1);
                this.p.setPadding((int) (80.0f * f), 0, this.o != null ? (int) (126.0f * f) : 0, 0);
                this.p.setTextColor(-1);
                this.p.setTextSize(24.0f);
                a(relativeLayout2, this.p);
            }
            if (this.q != null) {
                RelativeLayout.LayoutParams layoutParams21 = new RelativeLayout.LayoutParams(-1, -2);
                layoutParams21.addRule(12);
                layoutParams21.addRule(9);
                this.q.setEllipsize(TextUtils.TruncateAt.END);
                this.q.setGravity(GravityCompat.START);
                this.q.setLayoutParams(layoutParams21);
                this.q.setMaxLines(2);
                this.q.setTextColor(-1);
                this.q.setPadding((int) (80.0f * f), 0, this.o != null ? (int) (126.0f * f) : 0, 0);
                a(relativeLayout2, this.q);
            }
            if (this.t != null) {
                RelativeLayout.LayoutParams layoutParams22 = new RelativeLayout.LayoutParams(-1, (int) (6.0f * f));
                layoutParams22.addRule(12);
                this.t.setLayoutParams(layoutParams22);
                a(this.t);
            }
            ((ViewGroup) this.f2602a.getParent()).setBackgroundColor(-16777216);
        } else {
            RelativeLayout.LayoutParams layoutParams23 = new RelativeLayout.LayoutParams(-2, -1);
            layoutParams23.addRule(9);
            this.f2602a.setLayoutParams(layoutParams23);
            a(this.f2602a);
            a(this.w);
            if (this.s != null) {
                a(this.s);
            }
            LinearLayout linearLayout2 = new LinearLayout(this.c);
            this.u = linearLayout2;
            linearLayout2.setGravity(112);
            linearLayout2.setOrientation(1);
            RelativeLayout.LayoutParams layoutParams24 = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams24.leftMargin = (int) (16.0f * f);
            layoutParams24.rightMargin = (int) (16.0f * f);
            layoutParams24.topMargin = (int) (8.0f * f);
            layoutParams24.bottomMargin = (int) (80.0f * f);
            layoutParams24.addRule(1, id);
            linearLayout2.setLayoutParams(layoutParams24);
            a(linearLayout2);
            if (this.t != null) {
                RelativeLayout.LayoutParams layoutParams25 = new RelativeLayout.LayoutParams(-1, (int) (6.0f * f));
                layoutParams25.addRule(5, id);
                layoutParams25.addRule(7, id);
                layoutParams25.addRule(3, id);
                layoutParams25.topMargin = (int) ((-6.0f) * f);
                this.t.setLayoutParams(layoutParams25);
                a(this.t);
            }
            if (this.p != null) {
                LinearLayout.LayoutParams layoutParams26 = new LinearLayout.LayoutParams(-2, -2);
                layoutParams26.weight = 2.0f;
                layoutParams26.gravity = 17;
                this.p.setEllipsize(TextUtils.TruncateAt.END);
                this.p.setGravity(17);
                this.p.setLayoutParams(layoutParams26);
                this.p.setMaxLines(10);
                this.p.setPadding(0, 0, 0, 0);
                this.p.setTextColor(this.z);
                this.p.setTextSize(24.0f);
                a(linearLayout2, this.p);
            }
            if (this.r != null) {
                LinearLayout.LayoutParams layoutParams27 = new LinearLayout.LayoutParams((int) (64.0f * f), (int) (64.0f * f));
                layoutParams27.weight = 0.0f;
                layoutParams27.gravity = 17;
                this.r.setLayoutParams(layoutParams27);
                a(linearLayout2, this.r);
            }
            if (this.q != null) {
                LinearLayout.LayoutParams layoutParams28 = new LinearLayout.LayoutParams(-1, -2);
                layoutParams28.weight = 2.0f;
                layoutParams28.gravity = 16;
                this.q.setEllipsize(TextUtils.TruncateAt.END);
                this.q.setGravity(17);
                this.q.setLayoutParams(layoutParams28);
                this.q.setMaxLines(10);
                this.q.setPadding(0, 0, 0, 0);
                this.q.setTextColor(this.z);
                a(linearLayout2, this.q);
            }
            if (this.o != null) {
                RelativeLayout.LayoutParams layoutParams29 = new RelativeLayout.LayoutParams(-1, (int) (64.0f * f));
                layoutParams29.bottomMargin = (int) (16.0f * f);
                layoutParams29.leftMargin = (int) (16.0f * f);
                layoutParams29.rightMargin = (int) (16.0f * f);
                layoutParams29.addRule(1);
                layoutParams29.addRule(12);
                layoutParams29.addRule(1, id);
                this.o.setLayoutParams(layoutParams29);
                a(this.o);
            }
            ((ViewGroup) this.f2602a.getParent()).setBackgroundColor(this.y);
        }
        View rootView = this.f2602a.getRootView();
        if (rootView != null) {
            rootView.setOnTouchListener(this);
        }
    }

    private void a(View view) {
        if (this.j == null) {
            return;
        }
        this.j.a(view);
    }

    private void a(@Nullable ViewGroup viewGroup, @Nullable View view) {
        if (viewGroup != null) {
            viewGroup.addView(view);
        }
    }

    private void b(View view) {
        ViewGroup viewGroup;
        if (view == null || (viewGroup = (ViewGroup) view.getParent()) == null) {
            return;
        }
        viewGroup.removeView(view);
    }

    private boolean l() {
        return ((double) (this.f2602a.getVideoHeight() > 0 ? ((float) this.f2602a.getVideoWidth()) / ((float) this.f2602a.getVideoHeight()) : -1.0f)) <= 0.9d;
    }

    private boolean m() {
        if (this.f2602a.getVideoHeight() <= 0) {
            return false;
        }
        Rect rect = new Rect();
        float f = this.c.getResources().getDisplayMetrics().density;
        this.k.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
        if (rect.width() > rect.height()) {
            return ((float) (rect.width() - ((rect.height() * this.f2602a.getVideoWidth()) / this.f2602a.getVideoHeight()))) - (f * 192.0f) < 0.0f;
        }
        return ((((float) (rect.height() - ((rect.width() * this.f2602a.getVideoHeight()) / this.f2602a.getVideoWidth()))) - (64.0f * f)) - (64.0f * f)) - (f * 40.0f) < 0.0f;
    }

    private boolean n() {
        float videoWidth = this.f2602a.getVideoHeight() > 0 ? this.f2602a.getVideoWidth() / this.f2602a.getVideoHeight() : -1.0f;
        return ((double) videoWidth) > 0.9d && ((double) videoWidth) < 1.1d;
    }

    private void o() {
        b(this.f2602a);
        b(this.o);
        b(this.p);
        b(this.q);
        b(this.r);
        b(this.t);
        b(this.u);
        b(this.w);
        b(this.x);
        if (this.s != null) {
            b(this.s);
        }
    }

    @Override // com.facebook.ads.internal.adapters.i
    protected void a() {
        if (this.f2603b == null) {
            Log.e(i, "Unable to add UI without a valid ad response.");
            return;
        }
        String string = this.f2603b.getString("ct");
        String optString = this.f2603b.getJSONObject("context").optString(AdUnitActivity.EXTRA_ORIENTATION);
        if (!optString.isEmpty()) {
            this.n = j.a.a(Integer.parseInt(optString));
        }
        if (this.f2603b.has("layout") && !this.f2603b.isNull("layout")) {
            JSONObject jSONObject = this.f2603b.getJSONObject("layout");
            this.y = (int) jSONObject.optLong("bgColor", this.y);
            this.z = (int) jSONObject.optLong("textColor", this.z);
            this.A = (int) jSONObject.optLong("accentColor", this.A);
            this.B = jSONObject.optBoolean("persistentAdDetails", this.B);
        }
        JSONObject jSONObject2 = this.f2603b.getJSONObject("text");
        this.f2602a.setId(Build.VERSION.SDK_INT >= 17 ? View.generateViewId() : am.a());
        int c = c();
        Context context = this.c;
        if (c < 0) {
            c = 0;
        }
        this.w = new com.facebook.ads.internal.view.d.b.i(context, c, this.A);
        this.w.setOnTouchListener(this.m);
        this.f2602a.a(this.w);
        if (this.f2603b.has("cta") && !this.f2603b.isNull("cta")) {
            JSONObject jSONObject3 = this.f2603b.getJSONObject("cta");
            this.o = new com.facebook.ads.internal.view.c.a(this.c, jSONObject3.getString("url"), jSONObject3.getString("text"), this.A, this.f2602a, string);
            final com.facebook.ads.internal.a.a a2 = com.facebook.ads.internal.a.b.a(this.c, string, Uri.parse(jSONObject3.getString("url")), new HashMap());
            if ((a2 instanceof com.facebook.ads.internal.a.c) && com.facebook.ads.internal.j.o(this.c)) {
                com.facebook.ads.internal.view.a.d dVar = new com.facebook.ads.internal.view.a.d(this.c);
                dVar.setWebViewClient(new WebViewClient() { // from class: com.facebook.ads.internal.adapters.k.3
                    @Override // android.webkit.WebViewClient
                    public void onPageFinished(WebView webView, String str) {
                        webView.loadUrl(ab.b());
                    }
                });
                dVar.addJavascriptInterface(new ab(new View.OnClickListener() { // from class: com.facebook.ads.internal.adapters.k.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        try {
                            a2.b();
                        } catch (Exception e) {
                            Log.e(String.valueOf(com.facebook.ads.internal.view.c.a.class), "Error while executing adAction " + e);
                        }
                    }
                }, dVar), ab.a());
                dVar.loadUrl(((com.facebook.ads.internal.a.c) a2).d().toString());
                this.x = new ScrollingWebViewHolder(this.c, dVar);
            }
        }
        if (this.f2603b.has("icon") && !this.f2603b.isNull("icon")) {
            JSONObject jSONObject4 = this.f2603b.getJSONObject("icon");
            this.r = new ImageView(this.c);
            new com.facebook.ads.internal.util.q(this.r).a(jSONObject4.getString("url"));
        }
        if (this.f2603b.has("image") && !this.f2603b.isNull("image")) {
            JSONObject jSONObject5 = this.f2603b.getJSONObject("image");
            com.facebook.ads.internal.view.d.b.f fVar = new com.facebook.ads.internal.view.d.b.f(this.c);
            this.f2602a.a(fVar);
            fVar.setImage(jSONObject5.getString("url"));
        }
        String optString2 = jSONObject2.optString("title");
        if (!optString2.isEmpty()) {
            this.p = new TextView(this.c);
            this.p.setText(optString2);
            this.p.setTypeface(Typeface.defaultFromStyle(1));
        }
        String optString3 = jSONObject2.optString(FacebookAdapter.KEY_SUBTITLE_ASSET);
        if (!optString3.isEmpty()) {
            this.q = new TextView(this.c);
            this.q.setText(optString3);
            this.q.setTextSize(16.0f);
        }
        this.t = new com.facebook.ads.internal.view.d.b.o(this.c);
        this.f2602a.a(this.t);
        String d = d();
        if (!TextUtils.isEmpty(d)) {
            this.s = new a.C0081a(this.c, "AdChoices", d, new float[]{0.0f, 0.0f, 8.0f, 0.0f}, string);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(10);
            layoutParams.addRule(9);
            this.s.setLayoutParams(layoutParams);
        }
        this.f2602a.a(new com.facebook.ads.internal.view.d.b.j(this.c));
        com.facebook.ads.internal.view.d.b.k kVar = new com.facebook.ads.internal.view.d.b.k(this.c);
        this.f2602a.a(kVar);
        d.a aVar = g() ? d.a.FADE_OUT_ON_PLAY : d.a.VISIBLE;
        this.f2602a.a(new com.facebook.ads.internal.view.d.b.d(kVar, aVar));
        this.v = new com.facebook.ads.internal.view.d.b.d(new RelativeLayout(this.c), aVar);
        this.f2602a.a(this.v);
    }

    @Override // com.facebook.ads.internal.view.d
    @TargetApi(17)
    public void a(Intent intent, Bundle bundle, AudienceNetworkActivity audienceNetworkActivity) {
        this.k = audienceNetworkActivity;
        if (!h && this.j == null) {
            throw new AssertionError();
        }
        audienceNetworkActivity.addBackButtonInterceptor(this.l);
        o();
        a(this.k.getResources().getConfiguration().orientation);
        if (g()) {
            e();
        } else {
            f();
        }
    }

    public void a(Configuration configuration) {
        o();
        a(configuration.orientation);
    }

    @Override // com.facebook.ads.internal.view.d
    public void a(Bundle bundle) {
    }

    @Override // com.facebook.ads.internal.view.d
    public void a(d.a aVar) {
        this.j = aVar;
    }

    protected boolean g() {
        if (!h && this.f2603b == null) {
            throw new AssertionError();
        }
        try {
            return this.f2603b.getJSONObject("video").getBoolean("autoplay");
        } catch (Exception e) {
            Log.w(String.valueOf(k.class), "Invalid JSON", e);
            return true;
        }
    }

    @Override // com.facebook.ads.internal.view.d
    public void h() {
    }

    @Override // com.facebook.ads.internal.view.d
    public void i() {
    }

    public j.a j() {
        return this.n;
    }

    public void k() {
        if (this.k != null) {
            this.k.finish();
        }
    }

    @Override // com.facebook.ads.internal.adapters.i, com.facebook.ads.internal.adapters.AdAdapter
    public void onDestroy() {
        if (this.f2602a != null) {
            this.f2602a.f();
        }
        j.a(this);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (this.f2602a == null) {
            return true;
        }
        this.f2602a.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) new com.facebook.ads.internal.view.d.a.t(view, motionEvent));
        return true;
    }
}
