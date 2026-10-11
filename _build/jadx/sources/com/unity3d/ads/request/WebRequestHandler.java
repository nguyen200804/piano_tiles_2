package com.unity3d.ads.request;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.mopub.mobileads.VastExtensionXmlManager;
import com.unity3d.ads.log.DeviceLog;
import java.io.IOException;
import java.net.MalformedURLException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class WebRequestHandler extends Handler {
    private boolean _canceled = false;
    private WebRequest _currentRequest;

    @Override // android.os.Handler
    public void handleMessage(Message msg) {
        Bundle data = msg.getData();
        String string = data.getString("url");
        data.remove("url");
        String string2 = data.getString(VastExtensionXmlManager.TYPE);
        data.remove(VastExtensionXmlManager.TYPE);
        String string3 = data.getString("body");
        data.remove("body");
        WebRequestResultReceiver webRequestResultReceiver = (WebRequestResultReceiver) data.getParcelable("receiver");
        data.remove("receiver");
        int i = data.getInt("connectTimeout");
        data.remove("connectTimeout");
        int i2 = data.getInt("readTimeout");
        data.remove("readTimeout");
        HashMap<String, List<String>> hashMap = null;
        if (data.size() > 0) {
            DeviceLog.debug("There are headers left in data, reading them");
            hashMap = new HashMap<>();
            for (String str : data.keySet()) {
                hashMap.put(str, Arrays.asList(data.getStringArray(str)));
            }
        }
        if (msg.what == 1) {
            DeviceLog.debug("Handling request message: " + string + " type=" + string2);
            try {
                makeRequest(string, string2, hashMap, string3, i, i2, webRequestResultReceiver);
                return;
            } catch (MalformedURLException e) {
                DeviceLog.exception("Malformed URL", e);
                if (webRequestResultReceiver != null) {
                    webRequestResultReceiver.send(2, getBundleForFailResult(string, "Malformed URL", string2, string3));
                    return;
                }
                return;
            }
        }
        DeviceLog.error("No implementation for message: " + msg.what);
        if (webRequestResultReceiver != null) {
            webRequestResultReceiver.send(2, getBundleForFailResult(string, "Invalid Thread Message", string2, string3));
        }
    }

    public void setCancelStatus(boolean canceled) {
        this._canceled = canceled;
        if (this._canceled && this._currentRequest != null) {
            this._currentRequest.cancel();
        }
    }

    private void makeRequest(String url, String type, HashMap<String, List<String>> headers, String body, int connectTimeout, int readTimeout, WebRequestResultReceiver receiver) throws MalformedURLException {
        if (!this._canceled) {
            this._currentRequest = new WebRequest(url, type, headers, connectTimeout, readTimeout);
            if (body != null) {
                this._currentRequest.setBody(body);
            }
            try {
                String makeRequest = this._currentRequest.makeRequest();
                if (!this._currentRequest.isCanceled()) {
                    Bundle bundle = new Bundle();
                    bundle.putString("response", makeRequest);
                    bundle.putString("url", url);
                    bundle.putInt("responseCode", this._currentRequest.getResponseCode());
                    for (String str : this._currentRequest.getResponseHeaders().keySet()) {
                        if (str != null && !str.contentEquals("null")) {
                            String[] strArr = new String[this._currentRequest.getResponseHeaders().get(str).size()];
                            int i = 0;
                            while (true) {
                                int i2 = i;
                                if (i2 >= this._currentRequest.getResponseHeaders().get(str).size()) {
                                    break;
                                }
                                strArr[i2] = this._currentRequest.getResponseHeaders().get(str).get(i2);
                                i = i2 + 1;
                            }
                            bundle.putStringArray(str, strArr);
                        }
                    }
                    receiver.send(1, bundle);
                }
            } catch (NetworkIOException | IOException | IllegalStateException e) {
                DeviceLog.exception("Error completing request", e);
                receiver.send(2, getBundleForFailResult(url, e.getClass().getName() + ": " + e.getMessage(), type, body));
            }
        }
    }

    private Bundle getBundleForFailResult(String url, String error, String type, String body) {
        Bundle bundle = new Bundle();
        bundle.putString("url", url);
        bundle.putString("error", error);
        bundle.putString(VastExtensionXmlManager.TYPE, type);
        bundle.putString("body", body);
        return bundle;
    }
}
