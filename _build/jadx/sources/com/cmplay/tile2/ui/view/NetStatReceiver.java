package com.cmplay.tile2.ui.view;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.Message;
import com.cmplay.tile2.GameApp;
import org.cocos2dx.lib.GameControllerDelegate;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class NetStatReceiver extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    private Handler f1684a;

    /* renamed from: b, reason: collision with root package name */
    private Context f1685b;
    private a c;
    private boolean d = false;
    private long e;

    public interface a {
        void a();

        void b();

        void c();

        void d();
    }

    public void a(a aVar) {
        this.c = aVar;
    }

    public NetStatReceiver(Context context) {
        this.e = 0L;
        this.f1685b = context;
        this.f1684a = new Handler(context.getMainLooper()) { // from class: com.cmplay.tile2.ui.view.NetStatReceiver.1
            @Override // android.os.Handler
            public void handleMessage(Message msg) {
                if (NetStatReceiver.this.c != null) {
                    if (!NetStatReceiver.this.d || msg.what == 1000 || msg.what == 1004) {
                        NetStatReceiver.this.d = false;
                        switch (msg.what) {
                            case 1:
                                NetStatReceiver.this.c.a();
                                break;
                            case 3:
                            case 1001:
                                NetStatReceiver.this.b();
                                break;
                            case 1000:
                                removeMessages(GameControllerDelegate.BUTTON_A);
                                NetStatReceiver.this.c.c();
                                break;
                            case GameControllerDelegate.THUMBSTICK_RIGHT_Y /* 1003 */:
                                if (NetStatReceiver.this.c()) {
                                    NetStatReceiver.this.b();
                                    break;
                                }
                                break;
                            case GameControllerDelegate.BUTTON_A /* 1004 */:
                                NetStatReceiver.this.c.d();
                                break;
                        }
                    }
                }
            }
        };
        this.e = System.currentTimeMillis();
        a();
    }

    private void a() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        intentFilter.addAction("android.net.wifi.STATE_CHANGE");
        intentFilter.addAction(com.cmplay.base.util.webview.util.NetStatReceiver.MOBILE_NET_ACTION);
        this.f1685b.registerReceiver(this, intentFilter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (this.f1684a != null && this.c != null) {
            this.d = true;
            this.c.b();
            this.f1684a.sendEmptyMessageDelayed(GameControllerDelegate.BUTTON_A, 10000L);
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (System.currentTimeMillis() - 700 >= this.e) {
            if (this.f1685b == null || this.f1684a == null) {
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
                this.f1684a.sendEmptyMessage(intent.getIntExtra("wifi_state", 0));
                return;
            }
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
                NetworkInfo networkInfo = (NetworkInfo) intent.getParcelableExtra("networkInfo");
                if (networkInfo != null) {
                    if (NetworkInfo.State.CONNECTED == networkInfo.getState()) {
                        this.f1684a.sendEmptyMessage(1000);
                        return;
                    } else {
                        if (NetworkInfo.State.DISCONNECTED == networkInfo.getState()) {
                            this.f1684a.sendEmptyMessage(1002);
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
                    this.f1684a.sendEmptyMessage(1001);
                    return;
                }
                return;
            }
            if (com.cmplay.base.util.webview.util.NetStatReceiver.MOBILE_NET_ACTION.equals(action)) {
                this.f1684a.removeMessages(GameControllerDelegate.THUMBSTICK_RIGHT_Y);
                this.f1684a.sendEmptyMessageDelayed(GameControllerDelegate.THUMBSTICK_RIGHT_Y, 100L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c() {
        ConnectivityManager connectivityManager = (ConnectivityManager) GameApp.f1598a.getSystemService("connectivity");
        try {
            return ((Boolean) connectivityManager.getClass().getMethod("getMobileDataEnabled", new Class[0]).invoke(connectivityManager, new Object[0])).booleanValue();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
