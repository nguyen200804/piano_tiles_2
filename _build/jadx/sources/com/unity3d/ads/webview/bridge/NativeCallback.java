package com.unity3d.ads.webview.bridge;

import com.unity3d.ads.log.DeviceLog;
import com.unity3d.ads.webview.WebViewApp;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class NativeCallback {
    private static AtomicInteger _callbackCount = new AtomicInteger(0);
    private Method _callback;
    private String _id;

    public NativeCallback(Method callback) {
        this._callback = callback;
        this._id = this._callback.getName().toUpperCase(Locale.US) + "_" + _callbackCount.getAndIncrement();
    }

    public String getId() {
        return this._id;
    }

    public void invoke(String status, Object... values) throws InvocationTargetException, IllegalAccessException, IllegalArgumentException {
        Object[] values2;
        try {
            CallbackStatus valueOf = CallbackStatus.valueOf(status);
            if (values == null) {
                values2 = new Object[]{valueOf};
            } else {
                ArrayList arrayList = new ArrayList(Arrays.asList(values));
                arrayList.add(0, valueOf);
                values2 = arrayList.toArray();
            }
            this._callback.invoke(null, values2);
            WebViewApp.getCurrentApp().removeCallback(this);
        } catch (Exception e) {
            DeviceLog.error("Illegal status");
            WebViewApp.getCurrentApp().removeCallback(this);
            throw e;
        }
    }
}
