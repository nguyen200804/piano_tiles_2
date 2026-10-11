package com.unity3d.ads.cache;

import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import com.unity3d.ads.log.DeviceLog;
import java.util.HashMap;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class CacheThread extends Thread {
    public static final int MSG_DOWNLOAD = 1;
    private static CacheThreadHandler _handler = null;
    private static boolean _ready = false;
    private static final Object _readyLock = new Object();
    private static int _connectTimeout = 30000;
    private static int _readTimeout = 30000;
    private static int _progressInterval = 0;

    private static void init() {
        CacheThread cacheThread = new CacheThread();
        cacheThread.setName("UnityAdsCacheThread");
        cacheThread.start();
        while (!_ready) {
            try {
                synchronized (_readyLock) {
                    _readyLock.wait();
                }
            } catch (InterruptedException e) {
                DeviceLog.debug("Couldn't synchronize thread");
            }
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Looper.prepare();
        _handler = new CacheThreadHandler();
        _ready = true;
        synchronized (_readyLock) {
            _readyLock.notify();
        }
        Looper.loop();
    }

    public static synchronized void download(String source, String target, HashMap<String, List<String>> headers) {
        synchronized (CacheThread.class) {
            if (!_ready) {
                init();
            }
            Bundle bundle = new Bundle();
            bundle.putString("source", source);
            bundle.putString("target", target);
            bundle.putInt("connectTimeout", _connectTimeout);
            bundle.putInt("readTimeout", _readTimeout);
            bundle.putInt("progressInterval", _progressInterval);
            if (headers != null) {
                for (String str : headers.keySet()) {
                    bundle.putStringArray(str, (String[]) headers.get(str).toArray(new String[headers.get(str).size()]));
                }
            }
            Message message = new Message();
            message.what = 1;
            message.setData(bundle);
            _handler.setCancelStatus(false);
            _handler.sendMessage(message);
        }
    }

    public static boolean isActive() {
        if (_ready) {
            return _handler.isActive();
        }
        return false;
    }

    public static void cancel() {
        if (_ready) {
            _handler.removeMessages(1);
            _handler.setCancelStatus(true);
        }
    }

    public static void setProgressInterval(int interval) {
        _progressInterval = interval;
    }

    public static int getProgressInterval() {
        return _progressInterval;
    }

    public static void setConnectTimeout(int connectTimeout) {
        _connectTimeout = connectTimeout;
    }

    public static void setReadTimeout(int readTimeout) {
        _readTimeout = readTimeout;
    }

    public static int getConnectTimeout() {
        return _connectTimeout;
    }

    public static int getReadTimeout() {
        return _readTimeout;
    }
}
