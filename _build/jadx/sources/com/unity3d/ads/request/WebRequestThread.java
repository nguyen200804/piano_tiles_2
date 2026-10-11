package com.unity3d.ads.request;

import android.os.Bundle;
import android.os.ConditionVariable;
import android.os.Looper;
import android.os.Message;
import com.mopub.mobileads.VastExtensionXmlManager;
import com.unity3d.ads.log.DeviceLog;
import com.unity3d.ads.request.WebRequest;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class WebRequestThread extends Thread {
    protected static final int MSG_REQUEST = 1;
    private static WebRequestHandler _handler;
    private static boolean _ready = false;
    private static final Object _readyLock = new Object();

    private static void init() {
        WebRequestThread webRequestThread = new WebRequestThread();
        webRequestThread.setName("UnityAdsWebRequestThread");
        webRequestThread.start();
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
        if (_handler == null) {
            _handler = new WebRequestHandler();
        }
        _ready = true;
        synchronized (_readyLock) {
            _readyLock.notify();
        }
        Looper.loop();
    }

    public static void cancel() {
        if (_handler != null) {
            _handler.removeMessages(1);
            _handler.setCancelStatus(true);
        }
    }

    public static synchronized void request(String url, WebRequest.RequestType requestType, Map<String, List<String>> headers, Integer connectTimeout, Integer readTimeout, IWebRequestListener listener) {
        synchronized (WebRequestThread.class) {
            request(url, requestType, headers, null, connectTimeout, readTimeout, listener);
        }
    }

    public static synchronized void request(String url, WebRequest.RequestType requestType, Map<String, List<String>> headers, String requestBody, Integer connectTimeout, Integer readTimeout, IWebRequestListener listener) {
        synchronized (WebRequestThread.class) {
            request(1, url, requestType, headers, requestBody, connectTimeout, readTimeout, listener, new WebRequestResultReceiver(_handler, listener));
        }
    }

    public static synchronized void request(int msgWhat, String url, WebRequest.RequestType requestType, Map<String, List<String>> headers, String requestBody, Integer connectTimeout, Integer readTimeout, IWebRequestListener listener, WebRequestResultReceiver receiver) {
        synchronized (WebRequestThread.class) {
            if (!_ready) {
                init();
            }
            if (url == null || url.length() < 3) {
                listener.onFailed(url, "Request is NULL or too short");
            } else {
                Bundle bundle = new Bundle();
                bundle.putString("url", url);
                bundle.putString(VastExtensionXmlManager.TYPE, requestType.name());
                bundle.putString("body", requestBody);
                bundle.putParcelable("receiver", receiver);
                bundle.putInt("connectTimeout", connectTimeout.intValue());
                bundle.putInt("readTimeout", readTimeout.intValue());
                if (headers != null) {
                    for (String str : headers.keySet()) {
                        bundle.putStringArray(str, (String[]) headers.get(str).toArray(new String[headers.get(str).size()]));
                    }
                }
                Message message = new Message();
                message.what = msgWhat;
                message.setData(bundle);
                _handler.setCancelStatus(false);
                _handler.sendMessage(message);
            }
        }
    }

    public static synchronized boolean resolve(final String host, final IResolveHostListener listener) {
        boolean z;
        synchronized (WebRequestThread.class) {
            if (host != null) {
                if (host.length() >= 3) {
                    new Thread(new Runnable() { // from class: com.unity3d.ads.request.WebRequestThread.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Thread thread;
                            Exception e;
                            final ConditionVariable conditionVariable = new ConditionVariable();
                            try {
                                thread = new Thread(new Runnable() { // from class: com.unity3d.ads.request.WebRequestThread.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        try {
                                            listener.onResolve(host, InetAddress.getByName(host).getHostAddress());
                                        } catch (UnknownHostException e2) {
                                            DeviceLog.exception("Unknown host", e2);
                                            listener.onFailed(host, ResolveHostError.UNKNOWN_HOST, e2.getMessage());
                                        }
                                        conditionVariable.open();
                                    }
                                });
                            } catch (Exception e2) {
                                thread = null;
                                e = e2;
                            }
                            try {
                                thread.start();
                            } catch (Exception e3) {
                                e = e3;
                                DeviceLog.exception("Exception while resolving host", e);
                                listener.onFailed(host, ResolveHostError.UNEXPECTED_EXCEPTION, e.getMessage());
                                if (conditionVariable.block(20000L)) {
                                } else {
                                    return;
                                }
                            }
                            if (conditionVariable.block(20000L) && thread != null) {
                                thread.interrupt();
                                listener.onFailed(host, ResolveHostError.TIMEOUT, "Timeout");
                            }
                        }
                    }).start();
                    z = true;
                }
            }
            listener.onFailed(host, ResolveHostError.INVALID_HOST, "Host is NULL");
            z = false;
        }
        return z;
    }
}
