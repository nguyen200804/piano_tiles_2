package com.cmplay.base.util.webview.ui;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.cmplay.base.util.R;
import com.cmplay.base.util.g;
import com.cmplay.base.util.webview.callback.JsActivityCallBack;
import com.cmplay.base.util.webview.util.FileUtil;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URISyntaxException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class WebViewLayout extends RelativeLayout implements JsActivityCallBack {
    public static final String FEEDBACK_URL = "http://board.cmcm.com/feedback/feedback.html?v=a";
    public static final String HALLOWEEN_URL = "http://board.cmcm.com/dttwt2/christmas.html";
    public static final int TYPE_ACTIVITY = 1;
    public static final int TYPE_DEFAULT = 0;
    public static final int TYPE_FEEDBACK = 2;
    public static final int TYPE_NO_FULLCREEEN = 3;
    public static final int WEB_STYLE_FULL_SCREEN = 1;
    public static final int WEB_STYLE_NOT_FULL_SCREEN = 2;
    private static String mGetUnLockStateMethonName;
    private static String mLoginMethonName;
    private static String mPlayAbleMethonName;
    private static String mShareMethonName;
    private static String mUnLockMethonName;
    public ImageView closeBtn;
    private Activity mActivity;
    private boolean mIsError;
    private String[] mNeedReplaceUrl;
    private MsgBoxNetworkStateViewFlipper mNetworkStateVF;
    private String mPreLoadPath;
    private int mType;
    private String mUrl;
    private WebJsInterface mWebJsInterface;
    public WebViewEx mWebView;
    public WebViewLayout sWebViewLayout;

    public WebViewLayout(Context context, String url, int type) {
        super(context);
        this.mType = -1;
        this.mUrl = url;
        this.mType = type;
        init(context);
    }

    public WebViewLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mType = -1;
        init(context);
    }

    public WebViewLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mType = -1;
        init(context);
    }

    private void init(Context context) {
        this.mActivity = (Activity) context;
        this.sWebViewLayout = this;
        switch (this.mType) {
            case -1:
                this.mActivity.finish();
                break;
            case 0:
            case 1:
            case 2:
            default:
                LayoutInflater.from(context).inflate(R.layout.com_cmplay_function_web_layout, this);
                this.closeBtn = (ImageView) findViewById(R.id.close_btn);
                this.mNetworkStateVF = (MsgBoxNetworkStateViewFlipper) findViewById(R.id.viewflipper_layout);
                this.mNetworkStateVF.setRequestLoadCB(new IRequestLoad() { // from class: com.cmplay.base.util.webview.ui.WebViewLayout.1
                    @Override // com.cmplay.base.util.webview.ui.IRequestLoad
                    public void load() {
                        WebViewLayout.this.loadWebView();
                    }
                });
                this.mWebView = (WebViewEx) findViewById(R.id.webview);
                this.mWebView.getSettings().setJavaScriptEnabled(true);
                this.mWebView.getSettings().setDefaultTextEncodingName("UTF-8");
                this.mWebView.getSettings().setUseWideViewPort(true);
                this.mWebView.getSettings().setLoadWithOverviewMode(true);
                this.mWebView.getSettings().setDomStorageEnabled(true);
                this.mWebView.getSettings().setBuiltInZoomControls(false);
                this.mWebView.getSettings().setTextSize(WebSettings.TextSize.NORMAL);
                this.mWebView.getSettings().setDefaultFixedFontSize(16);
                this.mWebView.getSettings().setDefaultFontSize(16);
                this.mWebView.setBackgroundColor(0);
                this.mWebView.clearCache(false);
                this.mWebJsInterface = new WebJsInterface(this.mActivity, this);
                this.mWebView.addJavascriptInterface(this.mWebJsInterface, "playable");
                if (Build.VERSION.SDK_INT >= 11) {
                    this.mWebView.getSettings().setDisplayZoomControls(false);
                }
                setOnTouchListener(new View.OnTouchListener() { // from class: com.cmplay.base.util.webview.ui.WebViewLayout.2
                    @Override // android.view.View.OnTouchListener
                    public boolean onTouch(View v, MotionEvent event) {
                        return false;
                    }
                });
                this.mWebView.setWebChromeClient(new WebChromeClient());
                this.mWebView.setWebViewClient(new WebViewClient() { // from class: com.cmplay.base.util.webview.ui.WebViewLayout.3
                    @Override // android.webkit.WebViewClient
                    public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
                        super.onReceivedError(view, errorCode, description, failingUrl);
                        WebViewLayout.this.showNetErrorMode();
                        WebViewLayout.this.mIsError = true;
                    }

                    @Override // android.webkit.WebViewClient
                    public void onPageFinished(WebView view, String url) {
                        super.onPageFinished(view, url);
                        if (!WebViewLayout.this.mIsError) {
                            WebViewLayout.this.showDataMode();
                        }
                    }

                    @Override // android.webkit.WebViewClient
                    public boolean shouldOverrideUrlLoading(WebView view, String url) {
                        try {
                            Intent parseUri = Intent.parseUri(url, 1);
                            parseUri.addCategory("android.intent.category.BROWSABLE");
                            parseUri.setComponent(null);
                            if ("android.intent.action.VIEW".equals(parseUri.getAction()) && (url.startsWith("http://") || url.startsWith("https://"))) {
                                return false;
                            }
                            try {
                                if (WebViewLayout.this.mActivity.startActivityIfNeeded(parseUri, -1)) {
                                    return true;
                                }
                            } catch (ActivityNotFoundException e) {
                                e.printStackTrace();
                            } catch (SecurityException e2) {
                                e2.printStackTrace();
                            }
                            return super.shouldOverrideUrlLoading(view, url);
                        } catch (URISyntaxException e3) {
                            e3.printStackTrace();
                            return false;
                        }
                    }

                    @Override // android.webkit.WebViewClient
                    public WebResourceResponse shouldInterceptRequest(WebView view, String url) {
                        WebResourceResponse webResourceResponse;
                        WebResourceResponse webResourceResponse2 = null;
                        if (WebViewLayout.this.mNeedReplaceUrl != null && WebViewLayout.this.mNeedReplaceUrl.length >= 1) {
                            int i = 0;
                            while (i < WebViewLayout.this.mNeedReplaceUrl.length) {
                                if (url.equals(WebViewLayout.this.mNeedReplaceUrl[i]) && FileUtil.isExistsUrlFile(WebViewLayout.this.mPreLoadPath, url)) {
                                    try {
                                        webResourceResponse = new WebResourceResponse("image/" + FileUtil.getUrlFileType(url), "UTF-8", new FileInputStream(FileUtil.getUrlFilePath(WebViewLayout.this.mPreLoadPath, url)));
                                    } catch (IOException e) {
                                        e.printStackTrace();
                                    }
                                    i++;
                                    webResourceResponse2 = webResourceResponse;
                                }
                                webResourceResponse = webResourceResponse2;
                                i++;
                                webResourceResponse2 = webResourceResponse;
                            }
                        }
                        return webResourceResponse2;
                    }
                });
                loadWebView();
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadWebView() {
        if (!TextUtils.isEmpty(this.mUrl) && this.mWebView != null && this.mNetworkStateVF != null) {
            this.mNetworkStateVF.setVisibility(0);
            this.mWebView.loadUrl(this.mUrl);
        }
    }

    public void hideLoadingView() {
        if (this.mNetworkStateVF != null) {
            this.mNetworkStateVF.setVisibility(8);
        }
    }

    public void showDataMode() {
        if (this.mWebView != null) {
            this.mWebView.setVisibility(0);
        }
        if (this.mNetworkStateVF != null) {
            this.mNetworkStateVF.setVisibility(8);
        }
    }

    public void showNetErrorMode() {
        if (this.mWebView != null) {
            this.mWebView.setVisibility(8);
        }
        if (this.mNetworkStateVF != null) {
            this.mNetworkStateVF.setVisibility(0);
            this.mNetworkStateVF.toNoNetMode();
        }
    }

    public void clearWebView() {
        this.sWebViewLayout = null;
        if (this.mWebView != null) {
            this.mWebView.clearCache(false);
            this.mWebView.removeAllViews();
            this.mWebView.destroy();
            this.mWebView = null;
        }
    }

    @Override // com.cmplay.base.util.webview.callback.JsActivityCallBack
    public void unlockCallback(String unlockCallback) {
        mUnLockMethonName = unlockCallback;
    }

    @Override // com.cmplay.base.util.webview.callback.JsActivityCallBack
    public void getUnlockStateCallback(String getUnlockCallback) {
        mGetUnLockStateMethonName = getUnlockCallback;
    }

    @Override // com.cmplay.base.util.webview.callback.JsActivityCallBack
    public void playAbleCallBack(String methonName) {
        mPlayAbleMethonName = methonName;
        g.a("playable", "WebViewLayout.playAbleCallBack  保存传递过来的方法  methonName:" + mPlayAbleMethonName);
    }

    @Override // com.cmplay.base.util.webview.callback.JsActivityCallBack
    public void loginCallBack(String methonName) {
        mLoginMethonName = methonName;
    }

    @Override // com.cmplay.base.util.webview.callback.JsActivityCallBack
    public void shareCallBack(String methonName) {
        mShareMethonName = methonName;
    }

    public static String getShareMethonName() {
        return mShareMethonName;
    }

    public static String getLoginMethonName() {
        return mLoginMethonName;
    }

    public WebViewEx getWebView() {
        return this.mWebView;
    }

    public void callbackGetUnLockStateMethon(String json) {
        if (this.mWebView != null && !TextUtils.isEmpty(mGetUnLockStateMethonName) && !TextUtils.isEmpty(json)) {
            this.mWebView.loadUrl("javascript:" + mGetUnLockStateMethonName + "(" + json + ")");
        }
    }

    public void callbackUnLockMethon(String json) {
        if (this.mWebView != null && !TextUtils.isEmpty(mUnLockMethonName) && !TextUtils.isEmpty(json)) {
            this.mWebView.loadUrl("javascript:" + mUnLockMethonName + "(" + json + ")");
        }
    }

    public void callbackLoginMethon(String json) {
        if (this.mWebView != null && !TextUtils.isEmpty(mLoginMethonName) && !TextUtils.isEmpty(json)) {
            this.mWebView.loadUrl("javascript:" + mLoginMethonName + "(" + json + ")");
            g.c("ly", "callbackLoginMethon = javascript:" + mLoginMethonName + "(" + json + ")");
        }
    }

    public void callbackShareMethon(String json) {
        if (this.mWebView != null && !TextUtils.isEmpty(mShareMethonName) && !TextUtils.isEmpty(json)) {
            this.mWebView.loadUrl("javascript:" + mShareMethonName + "(" + json + ")");
            g.c("ly", "callbackShareMethon = javascript:" + mShareMethonName + "(" + json + ")");
        }
    }

    public void callbackPlayAbleMethon(String status) {
        g.a("playable", "WebViewLayout.callbackPlayAbleMethon  mWebView:" + this.mWebView + "  mPlayAbleMethonName:" + mPlayAbleMethonName + "   status:" + status);
        if (this.mWebView != null && !TextUtils.isEmpty(mPlayAbleMethonName) && !TextUtils.isEmpty(status)) {
            this.mWebView.loadUrl("javascript:" + mPlayAbleMethonName + "('" + status + "')");
            g.a("playable", "成功调用 WebViewLayout.callbackPlayAbleMethon = javascript:" + mPlayAbleMethonName + "('" + status + "')");
        }
    }

    @Override // com.cmplay.base.util.webview.callback.JsActivityCallBack
    public void closeWebView(int openFrom) {
        setVisibility(8);
        clearWebView();
        if (this.mActivity != null) {
            this.mActivity.finish();
        }
    }

    @Override // com.cmplay.base.util.webview.callback.JsActivityCallBack
    public void showWebView() {
        showDataMode();
    }
}
