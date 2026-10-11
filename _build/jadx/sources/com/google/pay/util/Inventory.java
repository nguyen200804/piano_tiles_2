package com.google.pay.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class Inventory {
    Map<String, SkuDetails> mSkuMap = new HashMap();
    Map<String, Purchase> mPurchaseMap = new HashMap();

    Inventory() {
    }

    public SkuDetails getSkuDetails(String sku) {
        return this.mSkuMap.get(sku);
    }

    public Purchase getPurchase(String sku) {
        return this.mPurchaseMap.get(sku);
    }

    public boolean hasPurchase(String sku) {
        return this.mPurchaseMap.containsKey(sku);
    }

    public boolean hasDetails(String sku) {
        return this.mSkuMap.containsKey(sku);
    }

    public void erasePurchase(String sku) {
        if (this.mPurchaseMap.containsKey(sku)) {
            this.mPurchaseMap.remove(sku);
        }
    }

    List<String> getAllOwnedSkus() {
        return new ArrayList(this.mPurchaseMap.keySet());
    }

    public List<String> getAllOwnedSkus(String itemType) {
        ArrayList arrayList = new ArrayList();
        for (Purchase purchase : this.mPurchaseMap.values()) {
            if (purchase.getItemType().equals(itemType)) {
                arrayList.add(purchase.getSku());
            }
        }
        return arrayList;
    }

    List<Purchase> getAllPurchases() {
        return new ArrayList(this.mPurchaseMap.values());
    }

    public void addSkuDetails(SkuDetails d) {
        this.mSkuMap.put(d.getSku(), d);
    }

    public void addPurchase(Purchase p) {
        this.mPurchaseMap.put(p.getSku(), p);
    }
}
