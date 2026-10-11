package com.unity3d.ads.metadata;

import android.content.Context;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class InAppPurchaseMetaData extends MetaData {
    public static final String IAP_KEY = "iap";
    public static final String KEY_CURRENCY = "currency";
    public static final String KEY_PRICE = "price";
    public static final String KEY_PRODUCT_ID = "productId";
    public static final String KEY_RECEIPT_PURCHASE_DATA = "receiptPurchaseData";
    public static final String KEY_SIGNATURE = "signature";

    public InAppPurchaseMetaData(Context context) {
        super(context);
    }

    public void setProductId(String productId) {
        set(KEY_PRODUCT_ID, productId);
    }

    public void setPrice(Double price) {
        set(KEY_PRICE, price);
    }

    public void setCurrency(String currency) {
        set("currency", currency);
    }

    public void setReceiptPurchaseData(String receiptPurchaseData) {
        set(KEY_RECEIPT_PURCHASE_DATA, receiptPurchaseData);
    }

    public void setSignature(String signature) {
        set(KEY_SIGNATURE, signature);
    }

    @Override // com.unity3d.ads.metadata.MetaData, com.unity3d.ads.misc.JsonStorage
    public synchronized boolean set(String key, Object value) {
        return setRaw(key, value);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    @Override // com.unity3d.ads.metadata.MetaData
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void commit() {
        /*
            r6 = this;
            android.content.Context r0 = r6._context
            boolean r0 = com.unity3d.ads.device.StorageManager.init(r0)
            if (r0 == 0) goto L5b
            com.unity3d.ads.device.StorageManager$StorageType r0 = com.unity3d.ads.device.StorageManager.StorageType.PUBLIC
            com.unity3d.ads.device.Storage r2 = com.unity3d.ads.device.StorageManager.getStorage(r0)
            org.json.JSONObject r0 = r6.getData()
            if (r0 == 0) goto L4b
            if (r2 == 0) goto L4b
            java.lang.String r0 = "iap.purchases"
            java.lang.Object r0 = r2.get(r0)
            r1 = 0
            if (r0 == 0) goto L52
            org.json.JSONArray r0 = (org.json.JSONArray) r0     // Catch: java.lang.Exception -> L4c
        L21:
            if (r0 != 0) goto L28
            org.json.JSONArray r0 = new org.json.JSONArray
            r0.<init>()
        L28:
            org.json.JSONObject r1 = r6.getData()
            java.lang.String r3 = "ts"
            long r4 = java.lang.System.currentTimeMillis()     // Catch: org.json.JSONException -> L54
            r1.put(r3, r4)     // Catch: org.json.JSONException -> L54
            r0.put(r1)
            java.lang.String r1 = "iap.purchases"
            r2.set(r1, r0)
            r2.writeStorage()
            com.unity3d.ads.device.StorageEvent r0 = com.unity3d.ads.device.StorageEvent.SET
            java.lang.String r1 = "iap.purchases"
            java.lang.Object r1 = r2.get(r1)
            r2.sendEvent(r0, r1)
        L4b:
            return
        L4c:
            r0 = move-exception
            java.lang.String r0 = "Invalid object type for purchases"
            com.unity3d.ads.log.DeviceLog.error(r0)
        L52:
            r0 = r1
            goto L21
        L54:
            r0 = move-exception
            java.lang.String r0 = "Error constructing purchase object"
            com.unity3d.ads.log.DeviceLog.error(r0)
            goto L4b
        L5b:
            java.lang.String r0 = "Unity Ads could not commit metadata due to storage error or the data is null"
            com.unity3d.ads.log.DeviceLog.error(r0)
            goto L4b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.metadata.InAppPurchaseMetaData.commit():void");
    }
}
