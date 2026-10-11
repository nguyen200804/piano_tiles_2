package com.mopub.mobileads;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.facebook.ads.AudienceNetworkActivity;
import com.mopub.common.AdReport;
import com.mopub.common.Constants;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.ViewGestureDetector;
import com.mopub.network.Networking;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class BaseHtmlWebView extends BaseWebView implements ViewGestureDetector.UserClickListener {

    /* renamed from: b, reason: collision with root package name */
    private final ViewGestureDetector f4358b;
    private boolean c;

    public BaseHtmlWebView(Context context, AdReport adReport) {
        super(context);
        b();
        getSettings().setJavaScriptEnabled(true);
        this.f4358b = new ViewGestureDetector(context, this, adReport);
        this.f4358b.setUserClickListener(this);
        b(true);
        setBackgroundColor(0);
    }

    public void init(boolean isScrollable) {
        a(isScrollable);
    }

    @Override // android.webkit.WebView
    public void loadUrl(String url) {
        if (url != null) {
            MoPubLog.d("Loading url: " + url);
            if (url.startsWith("javascript:")) {
                super.loadUrl(url);
            }
        }
    }

    private void b() {
        setHorizontalScrollBarEnabled(false);
        setHorizontalScrollbarOverlay(false);
        setVerticalScrollBarEnabled(false);
        setVerticalScrollbarOverlay(false);
        getSettings().setSupportZoom(false);
    }

    void a(String str) {
        loadDataWithBaseURL(Networking.getBaseUrlScheme() + "://" + Constants.HOST + "/", str, AudienceNetworkActivity.WEBVIEW_MIME_TYPE, AudienceNetworkActivity.WEBVIEW_ENCODING, null);
    }

    void a(final boolean z) {
        setOnTouchListener(new View.OnTouchListener() { // from class: com.mopub.mobileads.BaseHtmlWebView.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View v, MotionEvent event) {
                BaseHtmlWebView.this.f4358b.sendTouchEvent(event);
                return event.getAction() == 2 && !z;
            }
        });
    }

    @Override // com.mopub.mobileads.ViewGestureDetector.UserClickListener
    public void onUserClick() {
        this.c = true;
    }

    @Override // com.mopub.mobileads.ViewGestureDetector.UserClickListener
    public void onResetUserClick() {
        this.c = false;
    }

    @Override // com.mopub.mobileads.ViewGestureDetector.UserClickListener
    public boolean wasClicked() {
        return this.c;
    }
}
