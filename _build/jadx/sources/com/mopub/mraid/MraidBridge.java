package com.mopub.mraid;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.facebook.ads.AudienceNetworkActivity;
import com.mopub.common.AdReport;
import com.mopub.common.AdType;
import com.mopub.common.CloseableLayout;
import com.mopub.common.Constants;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.BaseWebView;
import com.mopub.mobileads.VastIconXmlManager;
import com.mopub.mobileads.ViewGestureDetector;
import com.mopub.mraid.MraidNativeCommandHandler;
import com.mopub.network.Networking;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.NameValuePair;
import org.apache.http.client.utils.URLEncodedUtils;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class MraidBridge {

    /* renamed from: a, reason: collision with root package name */
    private final AdReport f4527a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private final PlacementType f4528b;

    @NonNull
    private final MraidNativeCommandHandler c;

    @Nullable
    private MraidBridgeListener d;

    @Nullable
    private MraidWebView e;
    private boolean f;
    private boolean g;
    private final WebViewClient h;

    public interface MraidBridgeListener {
        void onClose();

        boolean onConsoleMessage(@NonNull ConsoleMessage consoleMessage);

        void onExpand(URI uri, boolean z) throws a;

        boolean onJsAlert(@NonNull String str, @NonNull JsResult jsResult);

        void onOpen(URI uri);

        void onPageFailedToLoad();

        void onPageLoaded();

        void onPlayVideo(URI uri);

        void onResize(int i, int i2, int i3, int i4, @NonNull CloseableLayout.ClosePosition closePosition, boolean z) throws a;

        void onSetOrientationProperties(boolean z, b bVar) throws a;

        void onUseCustomClose(boolean z);

        void onVisibilityChanged(boolean z);
    }

    MraidBridge(@Nullable AdReport adReport, @NonNull PlacementType placementType) {
        this(adReport, placementType, new MraidNativeCommandHandler());
    }

    @VisibleForTesting
    MraidBridge(@Nullable AdReport adReport, @NonNull PlacementType placementType, @NonNull MraidNativeCommandHandler mraidNativeCommandHandler) {
        this.h = new MraidWebViewClient() { // from class: com.mopub.mraid.MraidBridge.5
            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(@NonNull WebView view, @NonNull String url) {
                return MraidBridge.this.b(url);
            }

            @Override // android.webkit.WebViewClient
            public void onPageFinished(@NonNull WebView view, @NonNull String url) {
                MraidBridge.this.f();
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(@NonNull WebView view, int errorCode, @NonNull String description, @NonNull String failingUrl) {
                MoPubLog.d("Error: " + description);
                super.onReceivedError(view, errorCode, description, failingUrl);
            }
        };
        this.f4527a = adReport;
        this.f4528b = placementType;
        this.c = mraidNativeCommandHandler;
    }

    void a(@Nullable MraidBridgeListener mraidBridgeListener) {
        this.d = mraidBridgeListener;
    }

    void a(@NonNull MraidWebView mraidWebView) {
        this.e = mraidWebView;
        this.e.getSettings().setJavaScriptEnabled(true);
        if (Build.VERSION.SDK_INT >= 17 && this.f4528b == PlacementType.INTERSTITIAL) {
            mraidWebView.getSettings().setMediaPlaybackRequiresUserGesture(false);
        }
        this.e.setScrollContainer(false);
        this.e.setVerticalScrollBarEnabled(false);
        this.e.setHorizontalScrollBarEnabled(false);
        this.e.setBackgroundColor(-16777216);
        this.e.setWebViewClient(this.h);
        this.e.setWebChromeClient(new WebChromeClient() { // from class: com.mopub.mraid.MraidBridge.1
            @Override // android.webkit.WebChromeClient
            public boolean onJsAlert(WebView view, String url, String message, JsResult result) {
                return MraidBridge.this.d != null ? MraidBridge.this.d.onJsAlert(message, result) : super.onJsAlert(view, url, message, result);
            }

            @Override // android.webkit.WebChromeClient
            public boolean onConsoleMessage(@NonNull ConsoleMessage consoleMessage) {
                return MraidBridge.this.d != null ? MraidBridge.this.d.onConsoleMessage(consoleMessage) : super.onConsoleMessage(consoleMessage);
            }

            @Override // android.webkit.WebChromeClient
            public void onShowCustomView(View view, WebChromeClient.CustomViewCallback callback) {
                super.onShowCustomView(view, callback);
            }
        });
        final ViewGestureDetector viewGestureDetector = new ViewGestureDetector(this.e.getContext(), this.e, this.f4527a);
        viewGestureDetector.setUserClickListener(new ViewGestureDetector.UserClickListener() { // from class: com.mopub.mraid.MraidBridge.2
            @Override // com.mopub.mobileads.ViewGestureDetector.UserClickListener
            public void onUserClick() {
                MraidBridge.this.f = true;
            }

            @Override // com.mopub.mobileads.ViewGestureDetector.UserClickListener
            public void onResetUserClick() {
                MraidBridge.this.f = false;
            }

            @Override // com.mopub.mobileads.ViewGestureDetector.UserClickListener
            public boolean wasClicked() {
                return MraidBridge.this.f;
            }
        });
        this.e.setOnTouchListener(new View.OnTouchListener() { // from class: com.mopub.mraid.MraidBridge.3
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View v, MotionEvent event) {
                viewGestureDetector.sendTouchEvent(event);
                switch (event.getAction()) {
                    case 0:
                    case 1:
                        if (!v.hasFocus()) {
                            v.requestFocus();
                            break;
                        }
                        break;
                }
                return false;
            }
        });
        this.e.a(new MraidWebView.OnVisibilityChangedListener() { // from class: com.mopub.mraid.MraidBridge.4
            @Override // com.mopub.mraid.MraidBridge.MraidWebView.OnVisibilityChangedListener
            public void onVisibilityChanged(boolean isVisible) {
                if (MraidBridge.this.d != null) {
                    MraidBridge.this.d.onVisibilityChanged(isVisible);
                }
            }
        });
    }

    void a() {
        this.e = null;
    }

    public void setContentHtml(@NonNull String htmlData) {
        if (this.e == null) {
            MoPubLog.d("MRAID bridge called setContentHtml before WebView was attached");
        } else {
            this.g = false;
            this.e.loadDataWithBaseURL(Networking.getBaseUrlScheme() + "://" + Constants.HOST + "/", htmlData, AudienceNetworkActivity.WEBVIEW_MIME_TYPE, "UTF-8", null);
        }
    }

    public void setContentUrl(String url) {
        if (this.e == null) {
            MoPubLog.d("MRAID bridge called setContentHtml while WebView was not attached");
        } else {
            this.g = false;
            this.e.loadUrl(url);
        }
    }

    void a(@NonNull String str) {
        if (this.e == null) {
            MoPubLog.d("Attempted to inject Javascript into MRAID WebView while was not attached:\n\t" + str);
        } else {
            MoPubLog.v("Injecting Javascript into MRAID WebView:\n\t" + str);
            this.e.loadUrl("javascript:" + str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(@NonNull MraidJavascriptCommand mraidJavascriptCommand, @NonNull String str) {
        a("window.mraidbridge.notifyErrorEvent(" + JSONObject.quote(mraidJavascriptCommand.a()) + ", " + JSONObject.quote(str) + ")");
    }

    private void a(@NonNull MraidJavascriptCommand mraidJavascriptCommand) {
        a("window.mraidbridge.nativeCallComplete(" + JSONObject.quote(mraidJavascriptCommand.a()) + ")");
    }

    public static class MraidWebView extends BaseWebView {

        /* renamed from: b, reason: collision with root package name */
        @Nullable
        private OnVisibilityChangedListener f4538b;
        private boolean c;

        public interface OnVisibilityChangedListener {
            void onVisibilityChanged(boolean z);
        }

        public MraidWebView(Context context) {
            super(context);
            this.c = getVisibility() == 0;
        }

        void a(@Nullable OnVisibilityChangedListener onVisibilityChangedListener) {
            this.f4538b = onVisibilityChangedListener;
        }

        @Override // android.webkit.WebView, android.view.View
        protected void onVisibilityChanged(@NonNull View changedView, int visibility) {
            super.onVisibilityChanged(changedView, visibility);
            boolean z = visibility == 0;
            if (z != this.c) {
                this.c = z;
                if (this.f4538b != null) {
                    this.f4538b.onVisibilityChanged(this.c);
                }
            }
        }

        public boolean isVisible() {
            return this.c;
        }
    }

    @VisibleForTesting
    boolean b(@NonNull String str) {
        boolean z = false;
        try {
            URI uri = new URI(str);
            String scheme = uri.getScheme();
            String host = uri.getHost();
            if ("mopub".equals(scheme)) {
                if ("failLoad".equals(host) && this.f4528b == PlacementType.INLINE && this.d != null) {
                    this.d.onPageFailedToLoad();
                }
                return true;
            }
            if (AdType.MRAID.equals(scheme)) {
                HashMap hashMap = new HashMap();
                for (NameValuePair nameValuePair : URLEncodedUtils.parse(uri, "UTF-8")) {
                    hashMap.put(nameValuePair.getName(), nameValuePair.getValue());
                }
                MraidJavascriptCommand a2 = MraidJavascriptCommand.a(host);
                try {
                    a(a2, hashMap);
                } catch (a e) {
                    a(a2, e.getMessage());
                }
                a(a2);
                return true;
            }
            if (!this.f) {
                return false;
            }
            Intent intent = new Intent();
            intent.setAction("android.intent.action.VIEW");
            intent.setData(Uri.parse(str));
            intent.addFlags(268435456);
            try {
                if (this.e == null) {
                    MoPubLog.d("WebView was detached. Unable to load a URL");
                    z = true;
                } else {
                    this.e.getContext().startActivity(intent);
                    z = true;
                }
                return z;
            } catch (ActivityNotFoundException e2) {
                MoPubLog.d("No activity found to handle this URL " + str);
                return z;
            }
        } catch (URISyntaxException e3) {
            MoPubLog.w("Invalid MRAID URL: " + str);
            a(MraidJavascriptCommand.UNSPECIFIED, "Mraid command sent an invalid URL");
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @VisibleForTesting
    public void f() {
        if (!this.g) {
            this.g = true;
            if (this.d != null) {
                this.d.onPageLoaded();
            }
        }
    }

    @VisibleForTesting
    void a(@NonNull final MraidJavascriptCommand mraidJavascriptCommand, @NonNull Map<String, String> map) throws a {
        if (mraidJavascriptCommand.a(this.f4528b) && !this.f) {
            throw new a("Cannot execute this command unless the user clicks");
        }
        if (this.d == null) {
            throw new a("Invalid state to execute this command");
        }
        if (this.e == null) {
            throw new a("The current WebView is being destroyed");
        }
        switch (mraidJavascriptCommand) {
            case CLOSE:
                this.d.onClose();
                return;
            case RESIZE:
                this.d.onResize(a(c(map.get(VastIconXmlManager.WIDTH)), 0, 100000), a(c(map.get(VastIconXmlManager.HEIGHT)), 0, 100000), a(c(map.get("offsetX")), -100000, 100000), a(c(map.get("offsetY")), -100000, 100000), a(map.get("customClosePosition"), CloseableLayout.ClosePosition.TOP_RIGHT), a(map.get("allowOffscreen"), true));
                return;
            case EXPAND:
                this.d.onExpand(a(map.get("url"), (URI) null), a(map.get("shouldUseCustomClose"), false));
                return;
            case USE_CUSTOM_CLOSE:
                this.d.onUseCustomClose(a(map.get("shouldUseCustomClose"), false));
                return;
            case OPEN:
                this.d.onOpen(f(map.get("url")));
                return;
            case SET_ORIENTATION_PROPERTIES:
                this.d.onSetOrientationProperties(e(map.get("allowOrientationChange")), d(map.get("forceOrientation")));
                return;
            case PLAY_VIDEO:
                this.d.onPlayVideo(f(map.get("uri")));
                return;
            case STORE_PICTURE:
                this.c.a(this.e.getContext(), f(map.get("uri")).toString(), new MraidNativeCommandHandler.c() { // from class: com.mopub.mraid.MraidBridge.6
                    @Override // com.mopub.mraid.MraidNativeCommandHandler.c
                    public void onFailure(a exception) {
                        MraidBridge.this.a(mraidJavascriptCommand, exception.getMessage());
                    }
                });
                return;
            case CREATE_CALENDAR_EVENT:
                this.c.a(this.e.getContext(), map);
                return;
            case UNSPECIFIED:
                throw new a("Unspecified MRAID Javascript command");
            default:
                return;
        }
    }

    private CloseableLayout.ClosePosition a(@NonNull String str, @NonNull CloseableLayout.ClosePosition closePosition) throws a {
        if (!TextUtils.isEmpty(str)) {
            if (str.equals("top-left")) {
                return CloseableLayout.ClosePosition.TOP_LEFT;
            }
            if (str.equals("top-right")) {
                return CloseableLayout.ClosePosition.TOP_RIGHT;
            }
            if (str.equals("center")) {
                return CloseableLayout.ClosePosition.CENTER;
            }
            if (str.equals("bottom-left")) {
                return CloseableLayout.ClosePosition.BOTTOM_LEFT;
            }
            if (str.equals("bottom-right")) {
                return CloseableLayout.ClosePosition.BOTTOM_RIGHT;
            }
            if (str.equals("top-center")) {
                return CloseableLayout.ClosePosition.TOP_CENTER;
            }
            if (str.equals("bottom-center")) {
                return CloseableLayout.ClosePosition.BOTTOM_CENTER;
            }
            throw new a("Invalid close position: " + str);
        }
        return closePosition;
    }

    private int c(@NonNull String str) throws a {
        try {
            return Integer.parseInt(str, 10);
        } catch (NumberFormatException e) {
            throw new a("Invalid numeric parameter: " + str);
        }
    }

    private b d(String str) throws a {
        if ("portrait".equals(str)) {
            return b.PORTRAIT;
        }
        if ("landscape".equals(str)) {
            return b.LANDSCAPE;
        }
        if ("none".equals(str)) {
            return b.NONE;
        }
        throw new a("Invalid orientation: " + str);
    }

    private int a(int i, int i2, int i3) throws a {
        if (i < i2 || i > i3) {
            throw new a("Integer parameter out of range: " + i);
        }
        return i;
    }

    private boolean a(@Nullable String str, boolean z) throws a {
        return str == null ? z : e(str);
    }

    private boolean e(String str) throws a {
        if ("true".equals(str)) {
            return true;
        }
        if ("false".equals(str)) {
            return false;
        }
        throw new a("Invalid boolean parameter: " + str);
    }

    @NonNull
    private URI a(@Nullable String str, URI uri) throws a {
        return str == null ? uri : f(str);
    }

    @NonNull
    private URI f(@Nullable String str) throws a {
        if (str == null) {
            throw new a("Parameter cannot be null");
        }
        try {
            return new URI(str);
        } catch (URISyntaxException e) {
            throw new a("Invalid URL parameter: " + str);
        }
    }

    void a(boolean z) {
        a("mraidbridge.setIsViewable(" + z + ")");
    }

    void a(PlacementType placementType) {
        a("mraidbridge.setPlacementType(" + JSONObject.quote(placementType.a()) + ")");
    }

    void a(ViewState viewState) {
        a("mraidbridge.setState(" + JSONObject.quote(viewState.toJavascriptString()) + ")");
    }

    void a(boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        a("mraidbridge.setSupports(" + z + "," + z2 + "," + z3 + "," + z4 + "," + z5 + ")");
    }

    @NonNull
    private String a(Rect rect) {
        return rect.left + "," + rect.top + "," + rect.width() + "," + rect.height();
    }

    @NonNull
    private String b(Rect rect) {
        return rect.width() + "," + rect.height();
    }

    public void notifyScreenMetrics(@NonNull c screenMetrics) {
        a("mraidbridge.setScreenSize(" + b(screenMetrics.a()) + ");mraidbridge.setMaxSize(" + b(screenMetrics.c()) + ");mraidbridge.setCurrentPosition(" + a(screenMetrics.d()) + ");mraidbridge.setDefaultPosition(" + a(screenMetrics.f()) + ")");
        a("mraidbridge.notifySizeChangeEvent(" + b(screenMetrics.d()) + ")");
    }

    void b() {
        a("mraidbridge.notifyReadyEvent();");
    }

    boolean c() {
        return this.e != null && this.e.isVisible();
    }

    boolean d() {
        return this.e != null;
    }

    boolean e() {
        return this.g;
    }
}
