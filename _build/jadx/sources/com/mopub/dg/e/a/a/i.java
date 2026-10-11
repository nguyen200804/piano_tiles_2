package com.mopub.dg.e.a.a;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import android.webkit.WebView;
import com.mopub.dg.adapi.DGAdApi;
import com.mopub.mobileads.VastExtensionXmlManager;
import java.util.HashMap;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    String f4316a;
    Context h;
    private WebView j;
    private String k;
    private String l;
    private Handler n;
    private Runnable o;

    /* renamed from: b, reason: collision with root package name */
    String f4317b = "default";
    boolean c = false;
    boolean d = false;
    boolean e = false;
    boolean f = true;
    boolean g = false;
    private int m = 60;
    int i = 0;

    public i(Context context, String str) {
        this.h = null;
        this.k = str;
        this.h = context;
        this.j = new WebView(context);
        this.j.getSettings().setJavaScriptEnabled(true);
        this.j.setWebViewClient(new j(this));
        this.o = new k(this);
    }

    public final void a() {
        this.j.loadUrl(this.k);
        if (!TextUtils.isEmpty(this.l)) {
            com.mopub.dg.e.a.b.c.a(this.h, this.l, false, null);
        }
        try {
            HashMap hashMap = new HashMap();
            hashMap.put("pkg", this.f4317b);
            hashMap.put(VastExtensionXmlManager.TYPE, "7");
            hashMap.put("adid", this.f4316a);
            com.mopub.dg.e.a.b.c.a(this.h, "http://adbsc.krmobi.com/dzzb", true, hashMap);
            DGAdApi dGAdApi = DGAdApi.getInstance(this.h);
            if (dGAdApi != null && dGAdApi.getStatusListener() != null) {
                dGAdApi.getStatusListener().onStatusEvent("Preload_Start", this.f4317b);
            }
            com.mopub.dg.d.n.a("Preload_Start");
        } catch (Exception e) {
            com.mopub.dg.d.n.b("", e);
        }
        this.n = new Handler();
        this.n.postDelayed(this.o, this.m * 1000);
    }
}
