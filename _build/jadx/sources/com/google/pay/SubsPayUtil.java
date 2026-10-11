package com.google.pay;

import android.app.Activity;
import android.os.Bundle;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import com.android.vending.billing.IInAppBillingService;
import com.cmplay.base.d;
import com.google.pay.util.IabHelper;
import com.google.pay.util.IabResult;
import com.google.pay.util.Inventory;
import com.google.pay.util.Purchase;
import com.mopub.common.Constants;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class SubsPayUtil implements IabHelper.OnIabPurchaseFinishedListener, IabHelper.QueryInventoryFinishedListener {
    private static final int PROID_CANCEL_EXIST = 2;
    private static final int PROID_HAS_SUBS = 1;
    private static final int PROID_REPLACE_EXIST = 0;
    private static final int SUBS_REQUEST_CODE = 1002;
    private static final String URL_HOST = "http://whitetileos.cmcm.com/wtserver/get/req?";
    private static SubsPayUtil instance = null;
    private IInAppBillingService billingservice;
    private d mPayCallback;
    private ArrayList<Purchase> subsPurchases;
    private String mScreenPageProId = "";
    private String mScreenPageToken = "";
    private String mScreenPageData = "";
    private String mScreenPageAppid = "";
    public String[] mSubsProductSku = {"week_gp_001", "month_gp_001", "year_gp_001"};
    private String mFreeID = "week_gp_001";
    public String[] mSkuRotateTable = {"week_gp_001", "week_gp_002", "week_gp_003", "week_gp_004", "week_gp_005", "week_gp_006", "week_gp_007", "week_gp_008", "week_gp_009", "month_gp_001", "month_gp_002", "month_gp_003", "month_gp_004", "month_gp_005", "month_gp_006", "month_gp_007", "month_gp_008", "month_gp_009", "year_gp_001", "year_gp_002", "year_gp_003", "year_gp_004", "year_gp_005", "year_gp_006", "year_gp_007", "year_gp_008", "year_gp_009"};
    private String mAndroidId = "";
    private ArrayList<String> mSkuReplaceList = new ArrayList<>();
    private boolean isQueryInventory = false;
    private int callMethodFlag = 0;
    private String mCurrentBuyItem = "";

    private SubsPayUtil() {
    }

    public static SubsPayUtil getInstance() {
        if (instance == null) {
            instance = new SubsPayUtil();
        }
        return instance;
    }

    public void setPayCallback(d payCallback) {
        this.mPayCallback = payCallback;
    }

    public String getAndroidId() {
        return Settings.Secure.getString(PayUtil.getInstance().getContext().getContentResolver(), "android_id");
    }

    public void getSubscribeState(String arg) {
        this.callMethodFlag |= 1;
        queryAsy();
    }

    public void getSubscribeInfo(String arg) {
        this.callMethodFlag |= 2;
        queryAsy();
    }

    private void queryAsy() {
        this.isQueryInventory = true;
        if (PayUtil.getInstance().getIba() == null) {
            PayUtil.getInstance().setIpaIsOk(false);
        }
        if (!PayUtil.getInstance().getIpaIsOk()) {
            try {
                if (!PayUtil.getInstance().initInApp()) {
                    sendFailure();
                    return;
                }
                return;
            } catch (Exception e) {
                this.isQueryInventory = false;
                sendFailure();
                return;
            }
        }
        if (!PayUtil.getInstance().subscriptionsSupported()) {
            sendFailure();
            this.isQueryInventory = false;
        } else {
            PayUtil.getInstance().getIba().queryInventoryAsync(this);
        }
    }

    @Override // com.google.pay.util.IabHelper.QueryInventoryFinishedListener
    public void onQueryInventoryFinished(IabResult result, Inventory inv) {
        queryAsyFinished(result, inv);
    }

    public void queryAsyFinished(IabResult result, Inventory inv) {
        if (result.isFailure()) {
            sendFailure();
            return;
        }
        if (this.isQueryInventory) {
            this.mSkuReplaceList.clear();
            this.mSkuReplaceList.addAll(Arrays.asList(this.mSkuRotateTable));
            this.subsPurchases = new ArrayList<>();
            for (int i = 0; i < this.mSkuRotateTable.length; i++) {
                Purchase purchase = inv.getPurchase(this.mSkuRotateTable[i]);
                if (purchase != null) {
                    this.subsPurchases.add(purchase);
                    this.mSkuReplaceList.remove(purchase.getSku());
                }
            }
            if ((this.callMethodFlag & 1) == 1) {
            }
            if ((this.callMethodFlag & 2) == 2) {
                callBackSubscribeInfo();
            }
            if ((this.callMethodFlag & 4) == 4) {
                subscribePay(this.mScreenPageProId, this.mScreenPageToken, this.mScreenPageData, this.mScreenPageAppid, "");
            }
            this.isQueryInventory = false;
            this.callMethodFlag = 0;
        }
    }

    public void sendFailure() {
        if (this.mPayCallback != null) {
            if ((this.callMethodFlag & 1) == 1) {
                this.mPayCallback.a(-1, "");
            }
            if ((this.callMethodFlag & 2) == 2) {
                this.mPayCallback.b("");
            }
            if ((this.callMethodFlag & 4) == 4) {
                payFailure("", "");
            }
        }
        this.callMethodFlag = 0;
    }

    public void callBackSubscribeInfo() {
        new Thread(new Runnable() { // from class: com.google.pay.SubsPayUtil.1
            @Override // java.lang.Runnable
            public void run() {
                String str;
                ArrayList<String> arrayList = new ArrayList<>();
                for (int i = 0; i < SubsPayUtil.this.mSubsProductSku.length; i++) {
                    arrayList.add(SubsPayUtil.this.mSubsProductSku[i]);
                }
                SubsPayUtil.this.billingservice = PayUtil.getInstance().getIba().getService();
                Bundle bundle = new Bundle();
                bundle.putStringArrayList(IabHelper.GET_SKU_DETAILS_ITEM_LIST, arrayList);
                try {
                    ArrayList<String> stringArrayList = SubsPayUtil.this.billingservice.a(3, PayUtil.getInstance().getContext().getPackageName(), IabHelper.ITEM_TYPE_SUBS, bundle).getStringArrayList(IabHelper.RESPONSE_GET_SKU_DETAILS_LIST);
                    if (stringArrayList == null) {
                        str = "";
                    } else {
                        str = stringArrayList.toString();
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    str = "";
                }
                if (SubsPayUtil.this.mPayCallback != null) {
                    SubsPayUtil.this.mPayCallback.b(str);
                }
            }
        }).start();
        this.isQueryInventory = false;
    }

    public void screenPageSubscribePay(String index, String token, String data, String appid) {
        this.mScreenPageProId = index;
        this.mScreenPageToken = token;
        this.mScreenPageData = data;
        this.mScreenPageAppid = appid;
        this.callMethodFlag |= 4;
        getSubscribeState("");
    }

    public void subscribePay(final String index, final String token, String data, final String appid, String xid) {
        if (TextUtils.isEmpty(data) || TextUtils.isEmpty(index)) {
            payFailure("", "");
            return;
        }
        try {
            final JSONObject jSONObject = new JSONObject(data);
            JSONArray jSONArray = new JSONArray();
            jSONObject.put("tokens", jSONArray);
            String optString = jSONObject.optString("uuid");
            String optString2 = jSONObject.optString("socialId");
            int optInt = jSONObject.optInt("platformType");
            final int optInt2 = jSONObject.optInt("free");
            jSONObject.put("uuid", optString);
            jSONObject.put("socialId", optString2);
            jSONObject.put("platformType", optInt);
            if (this.subsPurchases != null && this.subsPurchases.size() > 0) {
                Iterator<Purchase> it = this.subsPurchases.iterator();
                while (it.hasNext()) {
                    Purchase next = it.next();
                    if (!next.isAutoRenewing() && TextUtils.equals(index.split("_")[0], next.getSku().split("_")[0])) {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("tk", next.getToken());
                        jSONObject2.put("pid", next.getSku());
                        jSONArray.put(jSONObject2);
                    }
                }
            }
            new Thread(new Runnable() { // from class: com.google.pay.SubsPayUtil.2
                @Override // java.lang.Runnable
                public void run() {
                    SubsPayUtil.this.mAndroidId = SubsPayUtil.this.getAndroidId();
                    SubsPayUtil.this.requestReplaceSku(index, token, jSONObject.toString(), appid, optInt2);
                }
            }).start();
        } catch (Exception e) {
            e.printStackTrace();
            Log.d("vip", e.getMessage());
            payFailure("", "");
        }
    }

    public void requestReplaceSku(String currentId, String token, String requestData, String appid, int free) {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(URL_HOST + ("protocol_ver=200015&data=" + URLEncoder.encode(requestData, "UTF-8"))).openConnection();
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setConnectTimeout(Constants.TEN_SECONDS_MILLIS);
            httpURLConnection.setRequestProperty("Charsert", "UTF-8");
            httpURLConnection.setRequestProperty("appid", appid);
            httpURLConnection.connect();
            try {
                if (httpURLConnection.getResponseCode() == 200) {
                    StringBuffer stringBuffer = new StringBuffer();
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream(), "UTF-8"), 8192);
                    while (true) {
                        String readLine = bufferedReader.readLine();
                        if (TextUtils.isEmpty(readLine)) {
                            break;
                        } else {
                            stringBuffer.append(readLine);
                        }
                    }
                    bufferedReader.close();
                    String stringBuffer2 = stringBuffer.toString();
                    if (!TextUtils.isEmpty(stringBuffer2)) {
                        JSONObject jSONObject = new JSONObject(stringBuffer2);
                        if (TextUtils.equals(jSONObject.optString("protocol_ver"), "200015")) {
                            int optInt = jSONObject.optInt("res_code");
                            if (optInt == 0) {
                                JSONObject optJSONObject = jSONObject.optJSONObject("data");
                                int optInt2 = optJSONObject.optInt("status");
                                String optString = optJSONObject.optString("pro_id");
                                if (optInt2 == 2) {
                                    doPay(optString, token);
                                } else if (optInt2 == 1) {
                                    payFailure("", "");
                                } else if (optInt2 == 0) {
                                    doPay(replaceNewSku(currentId, free), token);
                                } else {
                                    payFailure("", "");
                                    Log.d("zzb", "status error：" + optInt2);
                                }
                            } else {
                                payFailure("", "");
                                Log.d("zzb", "res_code =" + optInt);
                            }
                        } else {
                            payFailure("", "");
                            Log.d("zzb", "http =" + httpURLConnection.getResponseCode());
                        }
                    } else {
                        payFailure("", "");
                        Log.d("zzb", "result null");
                    }
                } else {
                    payFailure("", "");
                    Log.d("zzb", "http error：" + httpURLConnection.getResponseCode());
                }
            } finally {
                httpURLConnection.disconnect();
            }
        } catch (Exception e) {
            e.printStackTrace();
            payFailure("", "");
            Log.d("zzb", "result =" + e.getMessage());
        }
    }

    public String replaceNewSku(String oldId, int free) {
        if (!TextUtils.isEmpty(oldId)) {
            for (int i = 0; i < this.mSkuReplaceList.size(); i++) {
                if ((free != 0 || !TextUtils.equals(this.mFreeID, this.mSkuReplaceList.get(i))) && TextUtils.equals(oldId.split("_")[0], this.mSkuReplaceList.get(i).split("_")[0])) {
                    return this.mSkuReplaceList.get(i);
                }
            }
            return "already_subscribed_tip";
        }
        return oldId;
    }

    public void doPay(String index, String token) {
        boolean z;
        if (PayUtil.getInstance().getIpaIsOk() && !TextUtils.isEmpty(index)) {
            if (TextUtils.equals(index, "already_subscribed_tip")) {
                if (this.mPayCallback != null) {
                    this.mPayCallback.a(index, "", "");
                    return;
                }
                return;
            }
            try {
                ArrayList arrayList = new ArrayList();
                if (this.subsPurchases != null) {
                    Iterator<Purchase> it = this.subsPurchases.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        Purchase next = it.next();
                        if (TextUtils.equals(next.getToken(), token)) {
                            arrayList.add(next.getSku());
                            break;
                        }
                    }
                }
                this.mCurrentBuyItem = index;
                Activity activity = (Activity) PayUtil.getInstance().getContext();
                if (arrayList.size() > 0 && !TextUtils.equals((CharSequence) arrayList.get(0), index)) {
                    PayUtil.getInstance().getIba().launchPurchaseFlow(activity, index, IabHelper.ITEM_TYPE_SUBS, arrayList, 1002, this, "");
                } else {
                    PayUtil.getInstance().getIba().launchSubscriptionPurchaseFlow(activity, index, 1002, this, "");
                }
                z = false;
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (!z && this.mPayCallback != null) {
                this.mPayCallback.a("", "", "");
                return;
            }
        }
        z = true;
        if (!z) {
        }
    }

    public void payFailure(String arg1, String arg2) {
        if (this.mPayCallback != null) {
            this.mPayCallback.a(arg1, arg2, "");
        }
        this.mScreenPageProId = "";
        this.mScreenPageToken = "";
        this.mScreenPageData = "";
        this.mScreenPageAppid = "";
    }

    @Override // com.google.pay.util.IabHelper.OnIabPurchaseFinishedListener
    public void onIabPurchaseFinished(IabResult result, Purchase info) {
        if (result.isSuccess()) {
            if (this.mPayCallback != null) {
                if (info != null) {
                    this.mPayCallback.a(info.getSignature(), info.getOriginalJson(), this.mAndroidId);
                    return;
                } else {
                    payFailure("", "");
                    return;
                }
            }
            return;
        }
        if (this.subsPurchases != null && !TextUtils.isEmpty(this.mCurrentBuyItem)) {
            Iterator<Purchase> it = this.subsPurchases.iterator();
            while (it.hasNext()) {
                Purchase next = it.next();
                if (TextUtils.equals(this.mCurrentBuyItem, next.getSku()) && next.isAutoRenewing() && result.getError() == 6) {
                    Log.d("zzb", "该服务已订阅过，不要再订阅了");
                    this.mCurrentBuyItem = "";
                    payFailure("already_subscribed_tip", "");
                    return;
                }
            }
        }
        payFailure("", "");
    }

    public void destroy() {
    }
}
