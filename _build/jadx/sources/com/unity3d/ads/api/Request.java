package com.unity3d.ads.api;

import com.unity3d.ads.log.DeviceLog;
import com.unity3d.ads.request.IWebRequestListener;
import com.unity3d.ads.request.WebRequest;
import com.unity3d.ads.request.WebRequestError;
import com.unity3d.ads.request.WebRequestEvent;
import com.unity3d.ads.request.WebRequestThread;
import com.unity3d.ads.webview.WebViewApp;
import com.unity3d.ads.webview.WebViewEventCategory;
import com.unity3d.ads.webview.bridge.WebViewCallback;
import com.unity3d.ads.webview.bridge.WebViewExposed;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class Request {
    @WebViewExposed
    public static void get(final String id, String url, JSONArray headers, Integer connectTimeout, Integer readTimeout, WebViewCallback callback) {
        if (headers != null && headers.length() == 0) {
            headers = null;
        }
        try {
            WebRequestThread.request(url, WebRequest.RequestType.GET, getHeadersMap(headers), null, connectTimeout, readTimeout, new IWebRequestListener() { // from class: com.unity3d.ads.api.Request.1
                @Override // com.unity3d.ads.request.IWebRequestListener
                public void onComplete(String url2, String response, int responseCode, Map<String, List<String>> responseHeaders) {
                    try {
                        WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.REQUEST, WebRequestEvent.COMPLETE, id, url2, response, Integer.valueOf(responseCode), Request.getResponseHeadersMap(responseHeaders));
                    } catch (Exception e) {
                        DeviceLog.exception("Error parsing response headers", e);
                        WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.REQUEST, WebRequestEvent.FAILED, id, url2, "Error parsing response headers");
                    }
                }

                @Override // com.unity3d.ads.request.IWebRequestListener
                public void onFailed(String url2, String error) {
                    WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.REQUEST, WebRequestEvent.FAILED, id, url2, error);
                }
            });
            callback.invoke(id);
        } catch (Exception e) {
            DeviceLog.exception("Error mapping headers for the request", e);
            callback.error(WebRequestError.MAPPING_HEADERS_FAILED, id);
        }
    }

    @WebViewExposed
    public static void post(final String id, String url, String requestBody, JSONArray headers, Integer connectTimeout, Integer readTimeout, WebViewCallback callback) {
        if (requestBody != null && requestBody.length() == 0) {
            requestBody = null;
        }
        if (headers != null && headers.length() == 0) {
            headers = null;
        }
        try {
            WebRequestThread.request(url, WebRequest.RequestType.POST, getHeadersMap(headers), requestBody, connectTimeout, readTimeout, new IWebRequestListener() { // from class: com.unity3d.ads.api.Request.2
                @Override // com.unity3d.ads.request.IWebRequestListener
                public void onComplete(String url2, String response, int responseCode, Map<String, List<String>> responseHeaders) {
                    try {
                        WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.REQUEST, WebRequestEvent.COMPLETE, id, url2, response, Integer.valueOf(responseCode), Request.getResponseHeadersMap(responseHeaders));
                    } catch (Exception e) {
                        DeviceLog.exception("Error parsing response headers", e);
                        WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.REQUEST, WebRequestEvent.FAILED, id, url2, "Error parsing response headers");
                    }
                }

                @Override // com.unity3d.ads.request.IWebRequestListener
                public void onFailed(String url2, String error) {
                    WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.REQUEST, WebRequestEvent.FAILED, id, url2, error);
                }
            });
            callback.invoke(id);
        } catch (Exception e) {
            DeviceLog.exception("Error mapping headers for the request", e);
            callback.error(WebRequestError.MAPPING_HEADERS_FAILED, id);
        }
    }

    @WebViewExposed
    public static void head(final String id, String url, JSONArray headers, Integer connectTimeout, Integer readTimeout, WebViewCallback callback) {
        if (headers != null && headers.length() == 0) {
            headers = null;
        }
        try {
            WebRequestThread.request(url, WebRequest.RequestType.HEAD, getHeadersMap(headers), connectTimeout, readTimeout, new IWebRequestListener() { // from class: com.unity3d.ads.api.Request.3
                @Override // com.unity3d.ads.request.IWebRequestListener
                public void onComplete(String url2, String response, int responseCode, Map<String, List<String>> responseHeaders) {
                    try {
                        WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.REQUEST, WebRequestEvent.COMPLETE, id, url2, response, Integer.valueOf(responseCode), Request.getResponseHeadersMap(responseHeaders));
                    } catch (Exception e) {
                        DeviceLog.exception("Error parsing response headers", e);
                        WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.REQUEST, WebRequestEvent.FAILED, id, url2, "Error parsing response headers");
                    }
                }

                @Override // com.unity3d.ads.request.IWebRequestListener
                public void onFailed(String url2, String error) {
                    WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.REQUEST, WebRequestEvent.FAILED, id, url2, error);
                }
            });
            callback.invoke(id);
        } catch (Exception e) {
            DeviceLog.exception("Error mapping headers for the request", e);
            callback.error(WebRequestError.MAPPING_HEADERS_FAILED, id);
        }
    }

    public static JSONArray getResponseHeadersMap(Map<String, List<String>> responseHeaders) {
        JSONArray jSONArray;
        JSONArray jSONArray2 = new JSONArray();
        if (responseHeaders != null && responseHeaders.size() > 0) {
            for (String str : responseHeaders.keySet()) {
                JSONArray jSONArray3 = null;
                Iterator<String> it = responseHeaders.get(str).iterator();
                while (true) {
                    jSONArray = jSONArray3;
                    if (it.hasNext()) {
                        String next = it.next();
                        jSONArray3 = new JSONArray();
                        jSONArray3.put(str);
                        jSONArray3.put(next);
                    }
                }
                jSONArray2.put(jSONArray);
            }
        }
        return jSONArray2;
    }

    public static HashMap<String, List<String>> getHeadersMap(JSONArray headers) throws JSONException {
        if (headers == null) {
            return null;
        }
        HashMap<String, List<String>> hashMap = new HashMap<>();
        for (int i = 0; i < headers.length(); i++) {
            JSONArray jSONArray = (JSONArray) headers.get(i);
            List<String> list = hashMap.get(jSONArray.getString(0));
            if (list == null) {
                list = new ArrayList<>();
            }
            list.add(jSONArray.getString(1));
            hashMap.put(jSONArray.getString(0), list);
        }
        return hashMap;
    }
}
