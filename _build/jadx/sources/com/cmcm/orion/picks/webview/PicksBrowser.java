package com.cmcm.orion.picks.webview;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.CookieSyncManager;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.cmcm.orion.adsdk.R;
import com.cmcm.orion.picks.impl.a;
import com.cmcm.orion.picks.webview.b;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class PicksBrowser extends Activity implements View.OnClickListener {
    private static a.InterfaceC0019a h = null;

    /* renamed from: a, reason: collision with root package name */
    private BaseWebView f1041a;

    /* renamed from: b, reason: collision with root package name */
    private ImageView f1042b;
    private ImageView c;
    private ImageView d;
    private ImageView e;
    private LinearLayout f;
    private View g;
    private boolean i = false;

    static /* synthetic */ boolean b(PicksBrowser picksBrowser) {
        picksBrowser.i = true;
        return true;
    }

    public static void a(a.InterfaceC0019a interfaceC0019a) {
        h = interfaceC0019a;
    }

    @NonNull
    public final ImageView a() {
        return this.f1042b;
    }

    @NonNull
    public final ImageView b() {
        return this.c;
    }

    @NonNull
    public final WebView c() {
        return this.f1041a;
    }

    public static void a(Context context, String str) {
        if (!TextUtils.isEmpty(str)) {
            Intent intent = new Intent(context, (Class<?>) PicksBrowser.class);
            intent.setData(Uri.parse(str));
            intent.addFlags(268435456);
            context.startActivity(intent);
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setResult(-1);
        getWindow().requestFeature(2);
        getWindow().setFeatureInt(2, -1);
        setContentView(R.layout.cm_picks_browser);
        this.g = findViewById(R.id.picks_browser_root_view);
        this.f = (LinearLayout) findViewById(R.id.panel_ll);
        this.f1042b = (ImageView) findViewById(R.id.browser_back);
        this.c = (ImageView) findViewById(R.id.browser_forward);
        this.e = (ImageView) findViewById(R.id.browser_close);
        this.d = (ImageView) findViewById(R.id.browser_refresh);
        this.f.setBackgroundDrawable(getResources().getDrawable(R.drawable.browser_background));
        this.f1042b.setImageDrawable(getResources().getDrawable(R.drawable.browser_left_arrow));
        this.c.setImageDrawable(getResources().getDrawable(R.drawable.browser_right_arrow));
        this.e.setImageDrawable(getResources().getDrawable(R.drawable.browser_close));
        this.d.setImageDrawable(getResources().getDrawable(R.drawable.browser_refresh));
        this.f1041a = (BaseWebView) findViewById(R.id.webview);
        if (h != null) {
            h.d_();
        }
        WebSettings settings = this.f1041a.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setSupportZoom(true);
        settings.setBuiltInZoomControls(true);
        settings.setUseWideViewPort(true);
        settings.setJavaScriptEnabled(true);
        Uri data = getIntent().getData();
        if (data != null && data.toString() != null) {
            this.f1041a.loadUrl(data.toString());
        }
        b bVar = new b(this);
        bVar.a(new b.a() { // from class: com.cmcm.orion.picks.webview.PicksBrowser.1
            @Override // com.cmcm.orion.picks.webview.b.a
            public final void a() {
                PicksBrowser.this.finish();
            }
        });
        this.f1041a.setWebViewClient(bVar);
        this.f1041a.setWebChromeClient(new WebChromeClient() { // from class: com.cmcm.orion.picks.webview.PicksBrowser.2
            @Override // android.webkit.WebChromeClient
            public final void onProgressChanged(WebView webView, int progress) {
                PicksBrowser.this.setTitle("Loading...");
                PicksBrowser.this.setProgress(progress * 100);
                if (progress == 100) {
                    PicksBrowser.this.setTitle(webView.getUrl());
                    if (PicksBrowser.h != null && !PicksBrowser.this.i) {
                        PicksBrowser.b(PicksBrowser.this);
                        PicksBrowser.h.d_();
                    }
                }
            }
        });
        a(this.f1042b);
        a(this.c);
        a(this.d);
        a(this.e);
        CookieSyncManager.createInstance(this);
        CookieSyncManager.getInstance().startSync();
    }

    private void a(ImageView imageView) {
        if (imageView != null) {
            imageView.setBackgroundColor(0);
            imageView.setOnClickListener(this);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int hashCode = view.hashCode();
        if (this.f1042b.hashCode() == hashCode) {
            if (this.f1041a.canGoBack()) {
                this.f1041a.goBack();
            }
        } else if (this.c.hashCode() == hashCode) {
            if (this.f1041a.canGoForward()) {
                this.f1041a.goForward();
            }
        } else if (this.d.hashCode() == hashCode) {
            this.f1041a.reload();
        } else if (this.e.hashCode() == hashCode) {
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.g.setBackgroundColor(0);
        this.f1041a.setVisibility(8);
        this.f.setVisibility(8);
        CookieSyncManager.getInstance().stopSync();
        BaseWebView baseWebView = this.f1041a;
        if (isFinishing()) {
            baseWebView.stopLoading();
            baseWebView.loadUrl("");
        }
        if (Build.VERSION.SDK_INT >= 11) {
            baseWebView.onPause();
        } else {
            try {
                d.a(baseWebView, "onPause");
            } catch (Exception e) {
            }
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.g.setBackgroundColor(-16777216);
        this.f1041a.setVisibility(0);
        this.f.setVisibility(0);
        CookieSyncManager.getInstance().startSync();
        BaseWebView baseWebView = this.f1041a;
        if (Build.VERSION.SDK_INT >= 11) {
            baseWebView.onResume();
        } else {
            try {
                d.a(baseWebView, "onResume");
            } catch (Exception e) {
            }
        }
    }

    @Override // android.app.Activity
    public void finish() {
        ((ViewGroup) getWindow().getDecorView()).removeAllViews();
        super.finish();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.f1041a.destroy();
        this.f1041a = null;
        h = null;
    }
}
