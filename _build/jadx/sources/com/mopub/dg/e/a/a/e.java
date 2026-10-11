package com.mopub.dg.e.a.a;

import android.content.Context;
import android.os.Handler;
import android.view.WindowManager;
import android.webkit.WebView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    final Context f4311a;

    /* renamed from: b, reason: collision with root package name */
    String f4312b;
    String c;
    RelativeLayout d;
    WebView e;
    ProgressBar h;
    WindowManager i;
    Handler k;
    Runnable l;
    boolean g = true;
    int j = 60;
    boolean f = false;

    public e(Context context) {
        this.f4311a = context;
        this.d = new RelativeLayout(context);
        this.d.setGravity(16);
        this.e = new WebView(context);
        this.e.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.e.setOnKeyListener(new f(this));
        this.d.addView(this.e);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        this.h = new ProgressBar(context);
        this.h.setLayoutParams(layoutParams);
        this.d.addView(this.h);
        this.e.getSettings().setJavaScriptEnabled(true);
        this.e.setWebViewClient(new g(this));
        this.l = new h(this);
    }

    static /* synthetic */ void a(e eVar) {
        if (eVar.d != null && eVar.d.getParent() != null) {
            eVar.i.removeView(eVar.d);
        }
        if (eVar.e != null) {
            eVar.e.stopLoading();
        }
    }
}
