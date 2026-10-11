package com.cmplay.base.util.webview.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.Message;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class NetStatReceiver extends BroadcastReceiver {
    private static final long CONNECTING_TIME_OUT = 10000;
    public static final String MOBILE_NET_ACTION = "android.intent.action.ANY_DATA_STATE";
    private static final int MSG_CONNECTING_TIME_OUT = 1004;
    private static final int MSG_NET_CONNECTED = 1000;
    private static final int MSG_NET_CONNECTING = 1001;
    private static final int MSG_NET_DATA_OPEN = 1003;
    private static final int MSG_NET_DISCONNECTED = 1002;
    private static final long SPEND_EXTRA_TIME = 700;
    private Context mContext;
    private Handler mHandler;
    private boolean mIsConnecting = false;
    private OnNetStatListener mOnNetStatListener;
    private long mRegistTime;

    public interface OnNetStatListener {
        void onConnectingTimeOut();

        void onNetConnected();

        void onNetConnecting();

        void onWifiDisabled();

        void onWifiEnabled();
    }

    public void setOnNetStatListener(OnNetStatListener l) {
        this.mOnNetStatListener = l;
    }

    public NetStatReceiver(final Context context) {
        this.mRegistTime = 0L;
        this.mContext = context;
        this.mHandler = new Handler(context.getMainLooper()) { // from class: com.cmplay.base.util.webview.util.NetStatReceiver.1
            @Override // android.os.Handler
            public void handleMessage(Message msg) {
                if (NetStatReceiver.this.mOnNetStatListener != null) {
                    if (!NetStatReceiver.this.mIsConnecting || msg.what == 1000 || msg.what == 1004) {
                        NetStatReceiver.this.mIsConnecting = false;
                        switch (msg.what) {
                            case 1:
                                NetStatReceiver.this.mOnNetStatListener.onWifiDisabled();
                                break;
                            case 3:
                            case 1001:
                                NetStatReceiver.this.netConnecting();
                                break;
                            case 1000:
                                removeMessages(1004);
                                NetStatReceiver.this.mOnNetStatListener.onNetConnected();
                                break;
                            case 1003:
                                if (NetStatReceiver.this.getMobileDataStatus(context)) {
                                    NetStatReceiver.this.netConnecting();
                                    break;
                                }
                                break;
                            case 1004:
                                NetStatReceiver.this.mOnNetStatListener.onConnectingTimeOut();
                                break;
                        }
                    }
                }
            }
        };
        this.mRegistTime = System.currentTimeMillis();
        registMe();
    }

    private void registMe() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        intentFilter.addAction("android.net.wifi.STATE_CHANGE");
        intentFilter.addAction(MOBILE_NET_ACTION);
        this.mContext.registerReceiver(this, intentFilter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void netConnecting() {
        if (this.mHandler != null && this.mOnNetStatListener != null) {
            this.mIsConnecting = true;
            this.mOnNetStatListener.onNetConnecting();
            this.mHandler.sendEmptyMessageDelayed(1004, CONNECTING_TIME_OUT);
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (System.currentTimeMillis() - SPEND_EXTRA_TIME >= this.mRegistTime) {
            if (this.mContext == null || this.mHandler == null) {
                if (context != null) {
                    try {
                        context.unregisterReceiver(this);
                        return;
                    } catch (Exception e) {
                        e.printStackTrace();
                        return;
                    }
                }
                return;
            }
            String action = intent.getAction();
            if ("android.net.wifi.WIFI_STATE_CHANGED".equals(action)) {
                this.mHandler.sendEmptyMessage(intent.getIntExtra("wifi_state", 0));
                return;
            }
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
                NetworkInfo networkInfo = (NetworkInfo) intent.getParcelableExtra("networkInfo");
                if (networkInfo != null) {
                    if (NetworkInfo.State.CONNECTED == networkInfo.getState()) {
                        this.mHandler.sendEmptyMessage(1000);
                        return;
                    } else {
                        if (NetworkInfo.State.DISCONNECTED == networkInfo.getState()) {
                            this.mHandler.sendEmptyMessage(1002);
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            if ("android.net.wifi.STATE_CHANGE".equals(action)) {
                NetworkInfo networkInfo2 = (NetworkInfo) intent.getParcelableExtra("networkInfo");
                if (networkInfo2 != null && NetworkInfo.State.CONNECTING == networkInfo2.getState()) {
                    this.mHandler.sendEmptyMessage(1001);
                    return;
                }
                return;
            }
            if (MOBILE_NET_ACTION.equals(action)) {
                this.mHandler.removeMessages(1003);
                this.mHandler.sendEmptyMessageDelayed(1003, 100L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean getMobileDataStatus(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        try {
            return ((Boolean) connectivityManager.getClass().getMethod("getMobileDataEnabled", new Class[0]).invoke(connectivityManager, new Object[0])).booleanValue();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
