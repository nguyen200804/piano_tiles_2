package com.unity3d.ads.webview.bridge;

import android.webkit.JavascriptInterface;
import com.unity3d.ads.log.DeviceLog;
import org.json.JSONArray;
import org.json.JSONException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class WebViewBridgeInterface {
    @JavascriptInterface
    public void handleInvocation(String data) throws JSONException {
        DeviceLog.debug("handleInvocation " + data);
        JSONArray jSONArray = new JSONArray(data);
        Invocation invocation = new Invocation();
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONArray jSONArray2 = (JSONArray) jSONArray.get(i);
            invocation.addInvocation((String) jSONArray2.get(0), (String) jSONArray2.get(1), getParameters((JSONArray) jSONArray2.get(2)), new WebViewCallback((String) jSONArray2.get(3), invocation.getId()));
        }
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            invocation.nextInvocation();
        }
        invocation.sendInvocationCallback();
    }

    @JavascriptInterface
    public void handleCallback(String callbackId, String callbackStatus, String rawParameters) throws Exception {
        DeviceLog.debug("handleCallback " + callbackId + " " + callbackStatus + " " + rawParameters);
        JSONArray jSONArray = new JSONArray(rawParameters);
        Object[] objArr = null;
        if (jSONArray.length() > 0) {
            Object[] objArr2 = new Object[jSONArray.length()];
            for (int i = 0; i < jSONArray.length(); i++) {
                objArr2[i] = jSONArray.get(i);
            }
            objArr = objArr2;
        }
        WebViewBridge.handleCallback(callbackId, callbackStatus, objArr);
    }

    private Object[] getParameters(JSONArray parametersJson) throws JSONException {
        Object[] objArr = new Object[parametersJson.length()];
        for (int i = 0; i < parametersJson.length(); i++) {
            objArr[i] = parametersJson.get(i);
        }
        return objArr;
    }
}
