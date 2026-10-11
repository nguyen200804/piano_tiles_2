package com.unity3d.ads.adunit;

import android.os.ConditionVariable;
import com.unity3d.ads.properties.SdkProperties;
import com.unity3d.ads.webview.WebViewApp;
import com.unity3d.ads.webview.bridge.CallbackStatus;
import java.lang.reflect.Method;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AdUnitOpen {
    private static ConditionVariable _waitShowStatus;

    public static synchronized boolean open(String placementId, JSONObject options) throws NoSuchMethodException {
        boolean block;
        synchronized (AdUnitOpen.class) {
            Method method = AdUnitOpen.class.getMethod("showCallback", CallbackStatus.class);
            _waitShowStatus = new ConditionVariable();
            WebViewApp.getCurrentApp().invokeMethod("webview", "show", method, placementId, options);
            block = _waitShowStatus.block(SdkProperties.getShowTimeout());
            _waitShowStatus = null;
        }
        return block;
    }

    public static void showCallback(CallbackStatus status) {
        if (_waitShowStatus != null && status.equals(CallbackStatus.OK)) {
            _waitShowStatus.open();
        }
    }
}
