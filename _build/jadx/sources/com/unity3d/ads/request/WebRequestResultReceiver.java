package com.unity3d.ads.request;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import com.unity3d.ads.log.DeviceLog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class WebRequestResultReceiver extends ResultReceiver {
    public static final int RESULT_FAILED = 2;
    public static final int RESULT_SUCCESS = 1;
    private IWebRequestListener _listener;

    public WebRequestResultReceiver(Handler handler, IWebRequestListener listener) {
        super(handler);
        this._listener = listener;
    }

    @Override // android.os.ResultReceiver
    protected void onReceiveResult(int resultCode, Bundle resultData) {
        DeviceLog.entered();
        if (this._listener != null) {
            switch (resultCode) {
                case 1:
                    String string = resultData.getString("url");
                    resultData.remove("url");
                    String string2 = resultData.getString("response");
                    resultData.remove("response");
                    int i = resultData.getInt("responseCode");
                    resultData.remove("responseCode");
                    this._listener.onComplete(string, string2, i, getResponseHeaders(resultData));
                    break;
                case 2:
                    this._listener.onFailed(resultData.getString("url"), resultData.getString("error"));
                    break;
                default:
                    DeviceLog.error("Unhandled resultCode: " + resultCode);
                    this._listener.onFailed(resultData.getString("url"), "Invalid resultCode=" + resultCode);
                    break;
            }
        }
        super.onReceiveResult(resultCode, resultData);
    }

    private Map<String, List<String>> getResponseHeaders(Bundle resultData) {
        if (resultData.size() <= 0) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (String str : resultData.keySet()) {
            String[] stringArray = resultData.getStringArray(str);
            if (stringArray != null) {
                hashMap.put(str, new ArrayList(Arrays.asList(stringArray)));
            }
        }
        return hashMap;
    }
}
