package com.unity3d.ads.cache;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import com.unity3d.ads.api.Request;
import com.unity3d.ads.log.DeviceLog;
import com.unity3d.ads.request.WebRequest;
import com.unity3d.ads.webview.WebViewApp;
import com.unity3d.ads.webview.WebViewEventCategory;
import java.io.File;
import java.net.MalformedURLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class CacheThreadHandler extends Handler {
    private WebRequest _currentRequest = null;
    private boolean _canceled = false;
    private boolean _active = false;

    CacheThreadHandler() {
    }

    @Override // android.os.Handler
    public void handleMessage(Message msg) {
        Bundle data = msg.getData();
        String string = data.getString("source");
        data.remove("source");
        String string2 = data.getString("target");
        data.remove("target");
        int i = data.getInt("connectTimeout");
        data.remove("connectTimeout");
        int i2 = data.getInt("readTimeout");
        data.remove("readTimeout");
        int i3 = data.getInt("progressInterval");
        data.remove("progressInterval");
        HashMap<String, List<String>> hashMap = null;
        if (data.size() > 0) {
            DeviceLog.debug("There are headers left in data, reading them");
            hashMap = new HashMap<>();
            for (String str : data.keySet()) {
                hashMap.put(str, Arrays.asList(data.getStringArray(str)));
            }
        }
        switch (msg.what) {
            case 1:
                downloadFile(string, string2, new File(string2).length(), i, i2, i3, hashMap);
                break;
        }
    }

    public void setCancelStatus(boolean canceled) {
        this._canceled = canceled;
        if (canceled && this._currentRequest != null) {
            this._active = false;
            this._currentRequest.cancel();
        }
    }

    public boolean isActive() {
        return this._active;
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x0314 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void downloadFile(java.lang.String r22, java.lang.String r23, final long r24, int r26, int r27, final int r28, java.util.HashMap<java.lang.String, java.util.List<java.lang.String>> r29) {
        /*
            Method dump skipped, instructions count: 851
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.cache.CacheThreadHandler.downloadFile(java.lang.String, java.lang.String, long, int, int, int, java.util.HashMap):void");
    }

    private void postProcessDownload(long startTime, String source, File targetFile, long byteCount, long totalBytes, boolean canceled, int responseCode, Map<String, List<String>> responseHeaders) {
        long elapsedRealtime = SystemClock.elapsedRealtime() - startTime;
        if (!targetFile.setReadable(true, false)) {
            DeviceLog.debug("Unity Ads cache: could not set file readable!");
        }
        if (!canceled) {
            DeviceLog.debug("Unity Ads cache: File " + targetFile.getName() + " of " + byteCount + " bytes downloaded in " + elapsedRealtime + "ms");
            WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.CACHE, CacheEvent.DOWNLOAD_END, source, Long.valueOf(byteCount), Long.valueOf(totalBytes), Long.valueOf(elapsedRealtime), Integer.valueOf(responseCode), Request.getResponseHeadersMap(responseHeaders));
        } else {
            DeviceLog.debug("Unity Ads cache: downloading of " + source + " stopped");
            WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.CACHE, CacheEvent.DOWNLOAD_STOPPED, source, Long.valueOf(byteCount), Long.valueOf(totalBytes), Long.valueOf(elapsedRealtime), Integer.valueOf(responseCode), Request.getResponseHeadersMap(responseHeaders));
        }
    }

    private WebRequest getWebRequest(String source, long position, int connectTimeout, int readTimeout, HashMap<String, List<String>> headers) throws MalformedURLException {
        HashMap hashMap = new HashMap();
        if (headers != null) {
            hashMap.putAll(headers);
        }
        if (position > 0) {
            hashMap.put("Range", new ArrayList(Arrays.asList("bytes=" + position + "-")));
        }
        return new WebRequest(source, "GET", hashMap, connectTimeout, readTimeout);
    }
}
