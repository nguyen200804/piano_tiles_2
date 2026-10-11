package com.cmplay.base;

import android.content.Context;
import android.content.Intent;

/* compiled from: AbsPayAdapter.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class a {
    public static final String sPublicSig = "9b7acbd2re5207224435";
    public int mPriceRowCount = 3;
    public String socialId = "";

    public abstract void asyncGetPrice(String str);

    public abstract void asyncPurchase(String str);

    public abstract boolean handleResult(int i, int i2, Intent intent);

    public abstract void init(Context context);

    public abstract void onDestory();

    public abstract void setPayCallback(d dVar);

    public void setPriceRowCount(int count) {
        this.mPriceRowCount = count;
    }

    public void setSocialId(String mSocialId) {
        this.socialId = mSocialId;
    }

    public void consumeOrder(String order) {
    }

    public void Init() {
    }

    public void asyncQueryOrders() {
    }

    public void getSubscribeState(String arg) {
    }

    public void getSubscribeInfo(String arg) {
    }

    public void asyncSubscribePurchase(String arg, String token, String data, String appid, String xId) {
    }

    public void asyncScreenPageSubsPay(String arg, String token, String data, String appid) {
    }
}
