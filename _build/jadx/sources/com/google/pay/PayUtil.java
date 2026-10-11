package com.google.pay;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.android.vending.billing.IInAppBillingService;
import com.cmplay.base.d;
import com.google.pay.util.IabHelper;
import com.google.pay.util.IabResult;
import com.google.pay.util.Inventory;
import com.google.pay.util.Purchase;
import com.google.pay.util.SkuDetails;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class PayUtil implements IabHelper.OnConsumeFinishedListener, IabHelper.OnIabPurchaseFinishedListener, IabHelper.OnIabSetupFinishedListener, IabHelper.QueryInventoryFinishedListener {
    private static final int REQUEST_CODE = 101;
    private static PayUtil instance = null;
    private IInAppBillingService billingservice;
    private Context mContext;
    private IabHelper mInAppHelper;
    private boolean mIsProcessAsynInApp;
    private d mPayCallback;
    private String[] mProductSku = {"diamond_001", "diamond_002", "diamond_003", "diamond_001_ext", "diamond_002_ext", "diamond_003_ext", "diamond_7dct_001", "diamond_7dct_002", "diamond_7dct_003", "diamond_5dct_001", "diamond_5dct_002", "diamond_5dct_003", "diamond_3dct_001", "diamond_3dct_002", "diamond_3dct_003", "diamond_gift_001", "diamond_gift_old", "box_1_10", "box_1_13", "box_2_20", "box_2_23", "box_2_26", "box_3_40", "box_3_44", "box_3_48", "box_3_52", "christmastree_package"};
    private boolean iap_is_ok = false;
    private boolean isStartSetUping = false;
    private ArrayList<Purchase> purchases = new ArrayList<>();
    private Handler mHandler = new Handler(Looper.getMainLooper());

    public static PayUtil getInstance() {
        if (instance == null) {
            instance = new PayUtil();
        }
        return instance;
    }

    public void init(Context context) {
        this.mContext = context;
    }

    public void setPayCallback(d callback) {
        this.mPayCallback = callback;
        SubsPayUtil.getInstance().setPayCallback(callback);
    }

    public Context getContext() {
        return this.mContext;
    }

    public void onDestroy() {
        if (this.mInAppHelper != null) {
            this.mInAppHelper.dispose();
            this.mInAppHelper = null;
        }
    }

    public boolean handResult(int requestCode, int resultCode, Intent data) {
        if (this.mInAppHelper != null) {
            return this.mInAppHelper.handleActivityResult(requestCode, resultCode, data);
        }
        return false;
    }

    public IabHelper getIba() {
        return this.mInAppHelper;
    }

    public void setIpaIsOk(boolean isOk) {
        this.iap_is_ok = isOk;
    }

    public boolean getIpaIsOk() {
        return this.iap_is_ok;
    }

    public String getPriceJosn(String arg) {
        if (this.mInAppHelper == null) {
            this.iap_is_ok = false;
        }
        if (!this.iap_is_ok) {
            if (!isExistGoogleMarket(getContext())) {
                if (this.mPayCallback != null) {
                    this.mPayCallback.a("");
                }
                return "";
            }
            try {
                initInApp();
            } catch (Exception e) {
            }
            if (this.mPayCallback != null) {
                this.mPayCallback.a("");
            }
            return "";
        }
        return getAllPrice();
    }

    @Override // com.google.pay.util.IabHelper.OnIabPurchaseFinishedListener
    public void onIabPurchaseFinished(IabResult result, Purchase info) {
        Log.d("PayUtil", "onIabPurchaseFinished result = " + result.isSuccess() + ", purchase info = " + (info != null ? info.toString() : "null"));
        if (result.isFailure()) {
            Log.d("PayUtil", "onIabPurchaseFinished error = " + result.getError() + ", message = " + result.getMessage());
            if (result.getResponse() == 7) {
                if (info != null) {
                    Log.d("PayUtil", "onIabPurchaseFinished consume order id = " + info.getOrderId());
                }
                consumeAllOrders();
            }
            if (this.mPayCallback != null) {
                this.mPayCallback.a(0);
                if (info != null) {
                    this.mPayCallback.a("14", info.getOriginalJson());
                }
            }
            this.mIsProcessAsynInApp = false;
            return;
        }
        Log.d("PayUtil", "onIabPurchaseFinished::add purchase info " + this.purchases.toString());
        if (info != null) {
            this.purchases.add(info);
        }
        if (this.mPayCallback != null && info != null) {
            this.mPayCallback.b(info.getSignature(), info.getOriginalJson());
            this.mPayCallback.a("4", info.getOriginalJson());
        }
    }

    @Override // com.google.pay.util.IabHelper.OnConsumeFinishedListener
    public void onConsumeFinished(Purchase purchase, IabResult result) {
        Log.d("PayUtil", "onConsumeFinished result = " + result.isSuccess() + ", purchase info = " + (purchase != null ? purchase.toString() : ""));
        if (result.isFailure()) {
            Log.d("PayUtil", "onConsumeFinished error = " + result.getError() + ", message = " + result.getMessage());
        }
        if (this.mPayCallback != null) {
            if (result.isSuccess()) {
                this.mPayCallback.a("12", purchase.getOriginalJson());
            } else {
                this.mPayCallback.a("13", purchase.getOriginalJson());
            }
        }
        this.mIsProcessAsynInApp = false;
    }

    public void consumeOrder(String order) {
        if (TextUtils.isEmpty(order)) {
            consumeAllOrders();
            return;
        }
        Log.d("PayUtil", "consumeOrder::order = " + order);
        try {
            Iterator<Purchase> it = this.purchases.iterator();
            while (it.hasNext()) {
                Purchase next = it.next();
                Log.d("PayUtil", "consumeOrder::purchase = " + next.toString());
                if (TextUtils.equals(next.getOrderId(), order) || TextUtils.equals(next.getToken(), order)) {
                    this.mInAppHelper.consumeAsync(next, this);
                    return;
                }
            }
        } catch (Exception e) {
            Log.d("PayUtil", "consumeOrder exception = " + e.toString());
        }
    }

    private void consumeAllOrders() {
        try {
            Log.d("PayUtil", "consumeAllOrders");
            this.mInAppHelper.consumeAsync(this.purchases, new IabHelper.OnConsumeMultiFinishedListener() { // from class: com.google.pay.PayUtil.1
                @Override // com.google.pay.util.IabHelper.OnConsumeMultiFinishedListener
                public void onConsumeMultiFinished(List<Purchase> purchases, List<IabResult> results) {
                    Log.d("PayUtil", "onConsumeMultiFinished purchase size = " + purchases.size());
                    try {
                        int size = purchases.size();
                        if (purchases != null && results != null) {
                            for (int i = 0; i < size; i++) {
                                Log.d("PayUtil", "onConsumeMultiFinished SKU " + purchases.get(i).getSku() + ", result = " + results.get(i).isSuccess());
                            }
                        }
                    } catch (Exception e) {
                        Log.d("PayUtil", "onConsumeMultiFinished exception = " + e.toString());
                    }
                }
            });
        } catch (Exception e) {
            Log.d("PayUtil", "consumeAllOrders exception = " + e.toString());
        }
    }

    @Override // com.google.pay.util.IabHelper.QueryInventoryFinishedListener
    public void onQueryInventoryFinished(IabResult result, Inventory inv) {
        Log.d("PayUtil", "onQueryInventoryFinished");
        if (inv != null) {
            try {
                SubsPayUtil.getInstance().queryAsyFinished(result, inv);
                for (int i = 0; i < this.mProductSku.length; i++) {
                    Purchase purchase = inv.getPurchase(this.mProductSku[i]);
                    if (purchase != null) {
                        Log.d("PayUtil", "onQueryInventoryFinished::add purchase info " + purchase.toString());
                        this.purchases.add(purchase);
                        if (this.mPayCallback != null) {
                            this.mPayCallback.b(purchase.getSignature(), purchase.getOriginalJson());
                        }
                    }
                }
            } catch (Exception e) {
            }
        }
    }

    @Override // com.google.pay.util.IabHelper.OnIabSetupFinishedListener
    public void onIabSetupFinished(IabResult result) {
        Log.d("PayUtil", "onIabSetupFinished result = " + result.isSuccess());
        this.isStartSetUping = false;
        if (!result.isSuccess()) {
            if (this.mPayCallback != null) {
                this.mPayCallback.a("");
                this.mPayCallback.b("");
                return;
            }
            return;
        }
        this.iap_is_ok = true;
        try {
            this.mInAppHelper.queryInventoryAsync(this);
        } catch (Exception e) {
            Log.d("PayUtil", "onIabSetupFinished exception = " + e.toString());
            e.printStackTrace();
            if (this.mPayCallback != null) {
                this.mPayCallback.a("");
                this.mPayCallback.b("");
            }
        }
    }

    private String getAllPrice() {
        new Thread(new Runnable() { // from class: com.google.pay.PayUtil.2
            @Override // java.lang.Runnable
            public void run() {
                String str;
                ArrayList<String> arrayList = new ArrayList<>();
                for (int i = 0; i < PayUtil.this.mProductSku.length; i++) {
                    arrayList.add(PayUtil.this.mProductSku[i]);
                }
                PayUtil.this.billingservice = PayUtil.this.mInAppHelper.getService();
                new Bundle().putStringArrayList(IabHelper.GET_SKU_DETAILS_ITEM_LIST, arrayList);
                try {
                    ArrayList arrayList2 = new ArrayList();
                    Inventory queryInventory = PayUtil.this.mInAppHelper.queryInventory(true, arrayList);
                    if (queryInventory != null) {
                        Iterator<String> it = arrayList.iterator();
                        while (it.hasNext()) {
                            SkuDetails skuDetails = queryInventory.getSkuDetails(it.next());
                            if (skuDetails != null) {
                                arrayList2.add(skuDetails.toString().replace("SkuDetails:", ""));
                            }
                        }
                    }
                    if (arrayList2 == null) {
                        str = "";
                    } else {
                        Collections.sort(arrayList2, new PriceComparator());
                        str = arrayList2.toString();
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    str = "";
                }
                if (PayUtil.this.mPayCallback != null) {
                    PayUtil.this.mPayCallback.a(str);
                }
                PayUtil.this.mIsProcessAsynInApp = false;
            }
        }).start();
        return "0";
    }

    public boolean subscriptionsSupported() {
        return this.mInAppHelper != null && isExistGoogleMarket(getContext()) && this.mInAppHelper.subscriptionsSupported();
    }

    public boolean initInApp() {
        if (!isExistGoogleMarket(getContext())) {
            return false;
        }
        if (this.isStartSetUping) {
            return true;
        }
        try {
            this.mInAppHelper = new IabHelper(getContext(), "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqiIYDJ3nENCcu7BaZCS5Ognwh2/URdEz8NaFJNtX8cYwyIT+hJb6HoEdfdyZYIaPbqjbaR/KANS/V71+AsLtkLS+SEJR4MGRGXLYUXdozHSWGvVCgtdG6CBtYqvVlSj7m0xQhKUC6+5d+T4AJkrvDhMVgECYM2YiBFgEXmRkmu+zvaSOAwPbwkHIugXh5aEVbKWshy2XVfkByn0B7KfqyOOUY4oOCLvzBBfPW2uTmHW1QfqcrSe0jGfa1b1bqKeSTankZr5UgUoPaWXSrPRqa6GrVpE0Af9yu5HeIm6DsKB83t9uw0vkgODfR6VrN8pRtG8EmJP1cKEo9P7CHanwIDAQAB");
            this.mInAppHelper.startSetup(this);
            this.isStartSetUping = true;
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public void queryOrders() {
        try {
            this.mInAppHelper.queryInventoryAsync(this);
        } catch (Exception e) {
        }
    }

    public void gotoGooglePlayPay(String index) {
        boolean z;
        if (this.mInAppHelper == null) {
            this.iap_is_ok = false;
        }
        if (!this.iap_is_ok && this.mPayCallback != null) {
            this.mPayCallback.a(0);
        }
        if (this.mIsProcessAsynInApp) {
            this.mHandler.postDelayed(new Runnable() { // from class: com.google.pay.PayUtil.3
                @Override // java.lang.Runnable
                public void run() {
                    if (PayUtil.this.mPayCallback != null) {
                        PayUtil.this.mPayCallback.a(0);
                    }
                }
            }, 1000L);
            return;
        }
        if (this.iap_is_ok && !TextUtils.isEmpty(index)) {
            this.mIsProcessAsynInApp = true;
            try {
                this.mInAppHelper.launchPurchaseFlow((Activity) getContext(), index, REQUEST_CODE, this);
                z = false;
            } catch (Exception e) {
                e.printStackTrace();
                z = true;
            }
            if (z) {
                this.mIsProcessAsynInApp = false;
                if (this.mPayCallback != null) {
                    this.mPayCallback.a(0);
                }
            }
        }
    }

    public static boolean isExistGoogleMarket(Context context) {
        return isApplicationExsit(context, "com.android.vending");
    }

    public static boolean isApplicationExsit(Context context, String packageName) {
        if (context == null || packageName == null) {
            return false;
        }
        try {
            context.getPackageManager().getPackageInfo(packageName, 1024);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    private class PriceComparator implements Comparator {
        private PriceComparator() {
        }

        @Override // java.util.Comparator
        public int compare(Object obj1, Object obj2) {
            if (obj1 == null || obj2 == null) {
                return 0;
            }
            String str = (String) obj2;
            try {
                JSONObject jSONObject = new JSONObject((String) obj1);
                long j = jSONObject.has("price_amount_micros") ? jSONObject.getLong("price_amount_micros") : 0L;
                JSONObject jSONObject2 = new JSONObject(str);
                long j2 = jSONObject2.has("price_amount_micros") ? jSONObject2.getLong("price_amount_micros") : 0L;
                if (j == j2) {
                    return 0;
                }
                if (j > j2) {
                    return 1;
                }
                return -1;
            } catch (Exception e) {
                e.printStackTrace();
                return 0;
            }
        }
    }
}
