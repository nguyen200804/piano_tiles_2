package com.cmplay.base.util.webview.ui;

import android.content.Context;
import android.content.Intent;
import android.net.wifi.WifiManager;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import com.cmplay.base.util.R;
import com.cmplay.base.util.m;
import com.cmplay.base.util.webview.util.NetStatReceiver;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class MsgBoxNetworkStateViewFlipper extends MsgBoxViewAnimator {
    private static final int LAYOUT_SHOW_NO_NET_CHOOSE_WIFI = 1;
    private static final int LAYOUT_SHOW_NO_NET_OPEN_WIFI = 2;
    private static final int LAYOUT_SHOW_NO_WAITING = 4;
    private static final int LAYOUT_SHOW_RETYR = 3;
    private static final int LAYOUT_SHOW_WAITING = 0;
    private View mBtnChooseNetwork;
    private View mBtnOpenWifi;
    private View mBtnRetry;
    private LoadingView mLoadingView;
    private IRequestLoad mRequestLoad;
    private NetStatReceiver mWifiReceiver;

    public MsgBoxNetworkStateViewFlipper(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mWifiReceiver = null;
        this.mRequestLoad = null;
        LayoutInflater.from(context).inflate(R.layout.com_cmplay_message_tag_network_viewflip_layout, this);
        initView();
        this.mBtnOpenWifi.setOnClickListener(new View.OnClickListener() { // from class: com.cmplay.base.util.webview.ui.MsgBoxNetworkStateViewFlipper.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                MsgBoxNetworkStateViewFlipper.this.onChooseNetwork();
            }
        });
        this.mBtnRetry.setOnClickListener(new View.OnClickListener() { // from class: com.cmplay.base.util.webview.ui.MsgBoxNetworkStateViewFlipper.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                MsgBoxNetworkStateViewFlipper.this.onRetry();
            }
        });
        this.mBtnChooseNetwork.setOnClickListener(new View.OnClickListener() { // from class: com.cmplay.base.util.webview.ui.MsgBoxNetworkStateViewFlipper.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                MsgBoxNetworkStateViewFlipper.this.onChooseNetwork();
            }
        });
    }

    private void initView() {
        this.mBtnOpenWifi = findViewById(R.id.btn_open_wifi);
        this.mBtnRetry = findViewById(R.id.btn_retry);
        this.mBtnChooseNetwork = findViewById(R.id.btn_choose_network);
        this.mLoadingView = (LoadingView) findViewById(R.id.loading_view);
    }

    public void setTransparentStyle() {
        this.mLoadingView.setLoadingTextColor(-1);
    }

    public void setLoadingText(String text) {
        this.mLoadingView.setLoadingText(text);
    }

    public void setRequestLoadCB(IRequestLoad cb) {
        this.mRequestLoad = cb;
    }

    @Override // com.cmplay.base.util.webview.ui.MsgBoxViewAnimator, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        unregistNetReceiver();
        super.onDetachedFromWindow();
    }

    private void registNetReceiver() {
        this.mWifiReceiver = new NetStatReceiver(getContext());
        this.mWifiReceiver.setOnNetStatListener(new NetStatReceiver.OnNetStatListener() { // from class: com.cmplay.base.util.webview.ui.MsgBoxNetworkStateViewFlipper.4
            @Override // com.cmplay.base.util.webview.util.NetStatReceiver.OnNetStatListener
            public void onWifiEnabled() {
                MsgBoxNetworkStateViewFlipper.this.chooseWifiView();
            }

            @Override // com.cmplay.base.util.webview.util.NetStatReceiver.OnNetStatListener
            public void onWifiDisabled() {
                MsgBoxNetworkStateViewFlipper.this.openWifiView();
            }

            @Override // com.cmplay.base.util.webview.util.NetStatReceiver.OnNetStatListener
            public void onNetConnecting() {
                MsgBoxNetworkStateViewFlipper.this.loadingView();
            }

            @Override // com.cmplay.base.util.webview.util.NetStatReceiver.OnNetStatListener
            public void onNetConnected() {
                MsgBoxNetworkStateViewFlipper.this.unregistNetReceiver();
                if (MsgBoxNetworkStateViewFlipper.this.mRequestLoad != null) {
                    MsgBoxNetworkStateViewFlipper.this.mRequestLoad.load();
                }
            }

            @Override // com.cmplay.base.util.webview.util.NetStatReceiver.OnNetStatListener
            public void onConnectingTimeOut() {
                MsgBoxNetworkStateViewFlipper.this.unregistNetReceiver();
                MsgBoxNetworkStateViewFlipper.this.toNoNetMode();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unregistNetReceiver() {
        if (getContext() != null && this.mWifiReceiver != null) {
            try {
                getContext().unregisterReceiver(this.mWifiReceiver);
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                this.mWifiReceiver = null;
            }
        }
    }

    private boolean getWifiEnabled() {
        return ((WifiManager) getContext().getSystemService("wifi")).isWifiEnabled();
    }

    protected void toNoNetModeChooseWifi() {
        setDisplayedChild(1);
    }

    protected void toNoNetModeOpenWifi() {
        setDisplayedChild(2);
    }

    protected void toRetry() {
        setDisplayedChild(3);
    }

    public void toLoadingMode() {
        setDisplayedChild(0);
    }

    public void toNoWaitingMode() {
        setDisplayedChild(4);
    }

    public void toNoNetMode() {
        if (getContext() != null) {
            if (this.mWifiReceiver == null) {
                registNetReceiver();
            }
            if (m.f(getContext())) {
                retryView();
            } else if (getWifiEnabled()) {
                chooseWifiView();
            } else {
                openWifiView();
            }
        }
    }

    private void retryView() {
        toRetry();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openWifiView() {
        toNoNetModeOpenWifi();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void chooseWifiView() {
        toNoNetModeChooseWifi();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadingView() {
        toLoadingMode();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onRetry() {
        if (m.f(getContext())) {
            toLoadingMode();
            if (this.mRequestLoad != null) {
                this.mRequestLoad.load();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean onChooseNetwork() {
        if (getContext() != null) {
            Intent intent = new Intent("android.settings.WIFI_SETTINGS");
            intent.setFlags(268435456);
            getContext().startActivity(intent);
        }
        return false;
    }
}
