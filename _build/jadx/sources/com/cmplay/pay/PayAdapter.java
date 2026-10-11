package com.cmplay.pay;

import android.content.Context;
import android.content.Intent;
import com.cmplay.base.a;
import com.cmplay.base.d;
import com.google.pay.PayUtil;
import com.google.pay.SubsPayUtil;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class PayAdapter extends a {
    @Override // com.cmplay.base.a
    public void init(Context context) {
        PayUtil.getInstance().init(context);
    }

    @Override // com.cmplay.base.a
    public void Init() {
        PayUtil.getInstance().initInApp();
    }

    @Override // com.cmplay.base.a
    public void onDestory() {
        SubsPayUtil.getInstance().destroy();
        PayUtil.getInstance().onDestroy();
    }

    @Override // com.cmplay.base.a
    public boolean handleResult(int requestCode, int resultCode, Intent data) {
        return PayUtil.getInstance().handResult(requestCode, resultCode, data);
    }

    @Override // com.cmplay.base.a
    public void asyncGetPrice(String arg) {
        PayUtil.getInstance().getPriceJosn(arg);
    }

    @Override // com.cmplay.base.a
    public void asyncPurchase(String arg) {
        PayUtil.getInstance().gotoGooglePlayPay(arg);
    }

    @Override // com.cmplay.base.a
    public void setPayCallback(d payCallback) {
        PayUtil.getInstance().setPayCallback(payCallback);
    }

    @Override // com.cmplay.base.a
    public void consumeOrder(String order) {
        PayUtil.getInstance().consumeOrder(order);
    }

    @Override // com.cmplay.base.a
    public void asyncQueryOrders() {
        PayUtil.getInstance().queryOrders();
    }

    @Override // com.cmplay.base.a
    public void getSubscribeState(String arg) {
        SubsPayUtil.getInstance().getSubscribeState(arg);
    }

    @Override // com.cmplay.base.a
    public void getSubscribeInfo(String arg) {
        SubsPayUtil.getInstance().getSubscribeInfo(arg);
    }

    @Override // com.cmplay.base.a
    public void asyncSubscribePurchase(String arg, String token, String data, String appid, String xid) {
        SubsPayUtil.getInstance().subscribePay(arg, token, data, appid, xid);
    }

    @Override // com.cmplay.base.a
    public void asyncScreenPageSubsPay(String arg, String token, String data, String appid) {
        SubsPayUtil.getInstance().screenPageSubscribePay(arg, token, data, appid);
    }
}
