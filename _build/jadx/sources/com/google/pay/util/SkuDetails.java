package com.google.pay.util;

import com.mopub.mobileads.VastExtensionXmlManager;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class SkuDetails {
    String mDescription;
    String mItemType;
    String mJson;
    String mPrice;
    String mSku;
    String mTitle;
    String mType;

    public SkuDetails(String jsonSkuDetails) throws JSONException {
        this(IabHelper.ITEM_TYPE_INAPP, jsonSkuDetails);
    }

    public SkuDetails(String itemType, String jsonSkuDetails) throws JSONException {
        this.mItemType = itemType;
        this.mJson = jsonSkuDetails;
        JSONObject jSONObject = new JSONObject(this.mJson);
        this.mSku = jSONObject.optString(InAppPurchaseMetaData.KEY_PRODUCT_ID);
        this.mType = jSONObject.optString(VastExtensionXmlManager.TYPE);
        this.mPrice = jSONObject.optString(InAppPurchaseMetaData.KEY_PRICE);
        this.mTitle = jSONObject.optString("title");
        this.mDescription = jSONObject.optString("description");
    }

    public String getSku() {
        return this.mSku;
    }

    public String getType() {
        return this.mType;
    }

    public String getPrice() {
        return this.mPrice;
    }

    public String getTitle() {
        return this.mTitle;
    }

    public String getDescription() {
        return this.mDescription;
    }

    public String toString() {
        return "SkuDetails:" + this.mJson;
    }
}
