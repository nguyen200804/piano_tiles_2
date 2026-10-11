package com.google.pay.util;

import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class Purchase {
    String mDeveloperPayload;
    boolean mIsAutoRenewing;
    public String mItemType;
    String mOrderId;
    String mOriginalJson;
    String mPackageName;
    int mPurchaseState;
    long mPurchaseTime;
    String mSignature;
    String mSku;
    String mToken;

    public Purchase(String itemType, String jsonPurchaseInfo, String signature) throws JSONException {
        this.mItemType = itemType;
        this.mOriginalJson = jsonPurchaseInfo;
        JSONObject jSONObject = new JSONObject(this.mOriginalJson);
        this.mOrderId = jSONObject.optString("orderId");
        this.mPackageName = jSONObject.optString("packageName");
        this.mSku = jSONObject.optString(InAppPurchaseMetaData.KEY_PRODUCT_ID);
        this.mPurchaseTime = jSONObject.optLong("purchaseTime");
        this.mPurchaseState = jSONObject.optInt("purchaseState");
        this.mDeveloperPayload = jSONObject.optString("developerPayload");
        this.mToken = jSONObject.optString("token", jSONObject.optString("purchaseToken"));
        this.mIsAutoRenewing = jSONObject.optBoolean("autoRenewing");
        this.mSignature = signature;
    }

    public String getItemType() {
        return this.mItemType;
    }

    public String getOrderId() {
        return this.mOrderId;
    }

    public String getPackageName() {
        return this.mPackageName;
    }

    public String getSku() {
        return this.mSku;
    }

    public long getPurchaseTime() {
        return this.mPurchaseTime;
    }

    public int getPurchaseState() {
        return this.mPurchaseState;
    }

    public String getDeveloperPayload() {
        return this.mDeveloperPayload;
    }

    public String getToken() {
        return this.mToken;
    }

    public String getOriginalJson() {
        return this.mOriginalJson;
    }

    public boolean isAutoRenewing() {
        return this.mIsAutoRenewing;
    }

    public String getSignature() {
        return this.mSignature;
    }

    public String toString() {
        return this.mOriginalJson;
    }
}
