package com.cmplay.base.util.webview.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.cmplay.base.util.g;
import com.cmplay.base.util.k;
import java.lang.ref.WeakReference;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class WebViewActivity extends Activity {
    public static final String WEBVIEW_TYPE = "webview_type";
    public static final String WEBVIEW_URL = "webview_url";
    public static Context mContext;
    public static int mFeedbackAppId;
    public static int mFeedbackProductId = 1;
    public static WeakReference<WebViewActivity> sWebViewActivity;
    private boolean mClickLogin = false;
    private WebViewLayout mLayout;
    private int mType;
    private String mUrl;

    public static void init(Context context, int feedbackAppId, int feedbackProductId) {
        mContext = context.getApplicationContext();
        mFeedbackAppId = feedbackAppId;
        mFeedbackProductId = feedbackProductId;
    }

    public static void StartWebViewActivity(Context context, String url, int type) {
        mContext = context.getApplicationContext();
        Intent intent = new Intent(context, (Class<?>) WebViewActivity.class);
        intent.setFlags(268435456);
        intent.putExtra(WEBVIEW_URL, url);
        intent.putExtra(WEBVIEW_TYPE, type);
        k.a(context, intent);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        parseIntent(getIntent());
        if (this.mType == 3) {
            getWindow().setFlags(2048, 2048);
        } else {
            getWindow().setFlags(1024, 1024);
        }
        sWebViewActivity = new WeakReference<>(this);
        this.mLayout = new WebViewLayout(this, this.mUrl, this.mType);
        this.mLayout.closeBtn.setOnClickListener(new View.OnClickListener() { // from class: com.cmplay.base.util.webview.ui.WebViewActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                WebViewActivity.this.onBackPressed();
            }
        });
        setContentView(this.mLayout);
    }

    private void parseIntent(Intent intent) {
        this.mUrl = intent.getStringExtra(WEBVIEW_URL);
        this.mType = intent.getIntExtra(WEBVIEW_TYPE, -1);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        try {
            Class.forName("android.webkit.WebView").getMethod("onPause", (Class[]) null).invoke(this.mLayout.getWebView(), (Object[]) null);
            g.a("playable", "WebViewActivity.onPause()  切换到后台");
            this.mLayout.callbackPlayAbleMethon("onPause");
        } catch (Exception e) {
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        try {
            Class.forName("android.webkit.WebView").getMethod("onResume", (Class[]) null).invoke(this.mLayout.getWebView(), (Object[]) null);
            g.a("playable", "WebViewActivity.onResume()  切换到前台");
            this.mLayout.callbackPlayAbleMethon("onResume");
        } catch (Exception e) {
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        sWebViewActivity = null;
        if (this.mLayout != null) {
            this.mLayout.clearWebView();
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (!this.mClickLogin) {
            super.onBackPressed();
        }
    }

    public WebViewLayout getLayout() {
        return this.mLayout;
    }

    public void setClickLogin(boolean clickLogin) {
        this.mClickLogin = clickLogin;
    }
}
