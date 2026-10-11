package com.unity3d.ads.webview;

import android.os.Build;
import android.os.ConditionVariable;
import android.os.Looper;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebViewClient;
import com.facebook.ads.AudienceNetworkActivity;
import com.unity3d.ads.configuration.Configuration;
import com.unity3d.ads.log.DeviceLog;
import com.unity3d.ads.misc.Utilities;
import com.unity3d.ads.properties.ClientProperties;
import com.unity3d.ads.properties.SdkProperties;
import com.unity3d.ads.webview.bridge.CallbackStatus;
import com.unity3d.ads.webview.bridge.Invocation;
import com.unity3d.ads.webview.bridge.NativeCallback;
import com.unity3d.ads.webview.bridge.WebViewBridge;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class WebViewApp extends WebViewClient {
    private static ConditionVariable _conditionVariable;
    private static WebViewApp _currentApp;
    private Configuration _configuration;
    private boolean _initialized;
    private HashMap<String, NativeCallback> _nativeCallbacks;
    private boolean _webAppLoaded;
    private WebView _webView;

    private WebViewApp(Configuration configuration) {
        this._webAppLoaded = false;
        this._initialized = false;
        setConfiguration(configuration);
        WebViewBridge.setClassTable(getConfiguration().getWebAppApiClassList());
        this._webView = new WebView(ClientProperties.getApplicationContext());
        this._webView.setWebViewClient(new WebAppClient());
        this._webView.setWebChromeClient(new WebAppChromeClient());
    }

    public WebViewApp() {
        this._webAppLoaded = false;
        this._initialized = false;
    }

    public void setWebAppLoaded(boolean loaded) {
        this._webAppLoaded = loaded;
    }

    public boolean isWebAppLoaded() {
        return this._webAppLoaded;
    }

    public void setWebAppInitialized(boolean initialized) {
        this._initialized = initialized;
        _conditionVariable.open();
    }

    public boolean isWebAppInitialized() {
        return this._initialized;
    }

    public WebView getWebView() {
        return this._webView;
    }

    public void setWebView(WebView webView) {
        this._webView = webView;
    }

    public Configuration getConfiguration() {
        return this._configuration;
    }

    public void setConfiguration(Configuration configuration) {
        this._configuration = configuration;
    }

    private void invokeJavascriptMethod(String className, String methodName, JSONArray params) throws JSONException {
        String str = "javascript:window." + className + "." + methodName + "(" + params.toString() + ");";
        DeviceLog.debug("Invoking javascript: " + str);
        getWebView().invokeJavascript(str);
    }

    public boolean sendEvent(Enum eventCategory, Enum eventId, Object... params) {
        if (!isWebAppLoaded()) {
            DeviceLog.debug("sendEvent ignored because web app is not loaded");
            return false;
        }
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(eventCategory.name());
        jSONArray.put(eventId.name());
        for (Object obj : params) {
            jSONArray.put(obj);
        }
        try {
            invokeJavascriptMethod("nativebridge", "handleEvent", jSONArray);
            return true;
        } catch (Exception e) {
            DeviceLog.exception("Error while sending event to WebView", e);
            return false;
        }
    }

    public boolean invokeMethod(String className, String methodName, Method callback, Object... params) {
        if (!isWebAppLoaded()) {
            DeviceLog.debug("invokeMethod ignored because web app is not loaded");
            return false;
        }
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(className);
        jSONArray.put(methodName);
        if (callback != null) {
            NativeCallback nativeCallback = new NativeCallback(callback);
            addCallback(nativeCallback);
            jSONArray.put(nativeCallback.getId());
        } else {
            jSONArray.put((Object) null);
        }
        if (params != null) {
            for (Object obj : params) {
                jSONArray.put(obj);
            }
        }
        try {
            invokeJavascriptMethod("nativebridge", "handleInvocation", jSONArray);
            return true;
        } catch (Exception e) {
            DeviceLog.exception("Error invoking javascript method", e);
            return false;
        }
    }

    public boolean invokeCallback(Invocation invocation) {
        if (!isWebAppLoaded()) {
            DeviceLog.debug("invokeBatchCallback ignored because web app is not loaded");
            return false;
        }
        JSONArray jSONArray = new JSONArray();
        ArrayList<ArrayList<Object>> responses = invocation.getResponses();
        if (responses != null && !responses.isEmpty()) {
            Iterator<ArrayList<Object>> it = responses.iterator();
            while (it.hasNext()) {
                ArrayList<Object> next = it.next();
                CallbackStatus callbackStatus = (CallbackStatus) next.get(0);
                Enum r2 = (Enum) next.get(1);
                Object[] objArr = (Object[]) next.get(2);
                String str = (String) objArr[0];
                Object[] copyOfRange = Arrays.copyOfRange(objArr, 1, objArr.length);
                ArrayList arrayList = new ArrayList();
                arrayList.add(str);
                arrayList.add(callbackStatus.toString());
                JSONArray jSONArray2 = new JSONArray();
                if (r2 != null) {
                    jSONArray2.put(r2.name());
                }
                for (Object obj : copyOfRange) {
                    jSONArray2.put(obj);
                }
                arrayList.add(jSONArray2);
                JSONArray jSONArray3 = new JSONArray();
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    jSONArray3.put(it2.next());
                }
                jSONArray.put(jSONArray3);
            }
        }
        try {
            invokeJavascriptMethod("nativebridge", "handleCallback", jSONArray);
        } catch (Exception e) {
            DeviceLog.exception("Error while invoking batch response for WebView", e);
        }
        return true;
    }

    public void addCallback(NativeCallback callback) {
        if (this._nativeCallbacks == null) {
            this._nativeCallbacks = new HashMap<>();
        }
        synchronized (this._nativeCallbacks) {
            this._nativeCallbacks.put(callback.getId(), callback);
        }
    }

    public void removeCallback(NativeCallback callback) {
        if (this._nativeCallbacks != null) {
            synchronized (this._nativeCallbacks) {
                this._nativeCallbacks.remove(callback.getId());
            }
        }
    }

    public NativeCallback getCallback(String callbackId) {
        NativeCallback nativeCallback;
        synchronized (this._nativeCallbacks) {
            nativeCallback = this._nativeCallbacks.get(callbackId);
        }
        return nativeCallback;
    }

    public static WebViewApp getCurrentApp() {
        return _currentApp;
    }

    public static void setCurrentApp(WebViewApp app) {
        _currentApp = app;
    }

    public static boolean create(final Configuration configuration) throws IllegalThreadStateException {
        DeviceLog.entered();
        if (Thread.currentThread().equals(Looper.getMainLooper().getThread())) {
            throw new IllegalThreadStateException("Cannot call create() from main thread!");
        }
        Utilities.runOnUiThread(new Runnable() { // from class: com.unity3d.ads.webview.WebViewApp.1
            @Override // java.lang.Runnable
            public void run() {
                String str;
                try {
                    WebViewApp webViewApp = new WebViewApp(Configuration.this);
                    String str2 = "?platform=android";
                    try {
                        if (Configuration.this.getWebViewUrl() != null) {
                            str2 = "?platform=android&origin=" + URLEncoder.encode(Configuration.this.getWebViewUrl(), "UTF-8");
                        }
                    } catch (UnsupportedEncodingException e) {
                        DeviceLog.exception("Unsupported charset when encoding origin url", e);
                    }
                    try {
                        if (Configuration.this.getWebViewVersion() != null) {
                            str2 = str2 + "&version=" + URLEncoder.encode(Configuration.this.getWebViewVersion(), "UTF-8");
                        }
                        str = str2;
                    } catch (UnsupportedEncodingException e2) {
                        DeviceLog.exception("Unsupported charset when encoding webview version", e2);
                        str = str2;
                    }
                    webViewApp.getWebView().loadDataWithBaseURL("file://" + SdkProperties.getLocalWebViewFile() + str, Configuration.this.getWebViewData(), AudienceNetworkActivity.WEBVIEW_MIME_TYPE, "UTF-8", null);
                    WebViewApp.setCurrentApp(webViewApp);
                } catch (Exception e3) {
                    DeviceLog.error("Couldn't construct WebViewApp");
                    WebViewApp._conditionVariable.open();
                }
            }
        });
        _conditionVariable = new ConditionVariable();
        return _conditionVariable.block(60000L) && getCurrentApp() != null;
    }

    private class WebAppClient extends WebViewClient {
        private WebAppClient() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(android.webkit.WebView webview, String url) {
            super.onPageFinished(webview, url);
            DeviceLog.debug("onPageFinished url: " + url);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(android.webkit.WebView view, String url) {
            DeviceLog.debug("Trying to load url: " + url);
            return false;
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(android.webkit.WebView view, WebResourceRequest request, WebResourceError error) {
            super.onReceivedError(view, request, error);
            if (view != null) {
                DeviceLog.error("WEBVIEW_ERROR: " + view.toString());
            }
            if (request != null) {
                DeviceLog.error("WEBVIEW_ERROR: " + request.toString());
            }
            if (error != null) {
                DeviceLog.error("WEBVIEW_ERROR: " + error.toString());
            }
        }
    }

    private class WebAppChromeClient extends WebChromeClient {
        private WebAppChromeClient() {
        }

        @Override // android.webkit.WebChromeClient
        public void onConsoleMessage(String message, int lineNumber, String sourceID) {
            File file;
            try {
                file = new File(sourceID);
            } catch (Exception e) {
                DeviceLog.exception("Could not handle sourceId", e);
                file = null;
            }
            if (file != null) {
                sourceID = file.getName();
            }
            if (Build.VERSION.SDK_INT < 19) {
                DeviceLog.debug("JavaScript (sourceId=" + sourceID + ", line=" + lineNumber + "): " + message);
            }
        }
    }
}
