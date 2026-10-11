package com.google.pay.util;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.android.vending.billing.IInAppBillingService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class IabHelper {
    public static final int BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE = 3;
    public static final int BILLING_RESPONSE_RESULT_DEVELOPER_ERROR = 5;
    public static final int BILLING_RESPONSE_RESULT_ERROR = 6;
    public static final int BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED = 7;
    public static final int BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED = 8;
    public static final int BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE = 4;
    public static final int BILLING_RESPONSE_RESULT_OK = 0;
    public static final int BILLING_RESPONSE_RESULT_SERVICE_UNAVAILABLE = 2;
    public static final int BILLING_RESPONSE_RESULT_USER_CANCELED = 1;
    public static final String GET_SKU_DETAILS_ITEM_LIST = "ITEM_ID_LIST";
    public static final String GET_SKU_DETAILS_ITEM_TYPE_LIST = "ITEM_TYPE_LIST";
    public static final int IABHELPER_BAD_RESPONSE = -1002;
    public static final int IABHELPER_ERROR_BASE = -1000;
    public static final int IABHELPER_INVALID_CONSUMPTION = -1010;
    public static final int IABHELPER_MISSING_TOKEN = -1007;
    public static final int IABHELPER_REMOTE_EXCEPTION = -1001;
    public static final int IABHELPER_SEND_INTENT_FAILED = -1004;
    public static final int IABHELPER_SUBSCRIPTIONS_NOT_AVAILABLE = -1009;
    public static final int IABHELPER_SUBSCRIPTION_UPDATE_NOT_AVAILABLE = -1011;
    public static final int IABHELPER_UNKNOWN_ERROR = -1008;
    public static final int IABHELPER_UNKNOWN_PURCHASE_RESPONSE = -1006;
    public static final int IABHELPER_USER_CANCELLED = -1005;
    public static final int IABHELPER_VERIFICATION_FAILED = -1003;
    public static final String INAPP_CONTINUATION_TOKEN = "INAPP_CONTINUATION_TOKEN";
    public static final String ITEM_TYPE_INAPP = "inapp";
    public static final String ITEM_TYPE_SUBS = "subs";
    public static final String RESPONSE_BUY_INTENT = "BUY_INTENT";
    public static final String RESPONSE_CODE = "RESPONSE_CODE";
    public static final String RESPONSE_GET_SKU_DETAILS_LIST = "DETAILS_LIST";
    public static final String RESPONSE_INAPP_ITEM_LIST = "INAPP_PURCHASE_ITEM_LIST";
    public static final String RESPONSE_INAPP_PURCHASE_DATA = "INAPP_PURCHASE_DATA";
    public static final String RESPONSE_INAPP_PURCHASE_DATA_LIST = "INAPP_PURCHASE_DATA_LIST";
    public static final String RESPONSE_INAPP_SIGNATURE = "INAPP_DATA_SIGNATURE";
    public static final String RESPONSE_INAPP_SIGNATURE_LIST = "INAPP_DATA_SIGNATURE_LIST";
    Context mContext;
    OnIabPurchaseFinishedListener mPurchaseListener;
    String mPurchasingItemType;
    int mRequestCode;
    IInAppBillingService mService;
    ServiceConnection mServiceConn;
    String mSignatureBase64;
    boolean mDebugLog = false;
    String mDebugTag = "IabHelper";
    boolean mSetupDone = false;
    boolean mDisposed = false;
    boolean mSubscriptionsSupported = false;
    boolean mSubscriptionUpdateSupported = false;
    boolean mAsyncInProgress = false;
    String mAsyncOperation = "";

    public interface OnConsumeFinishedListener {
        void onConsumeFinished(Purchase purchase, IabResult iabResult);
    }

    public interface OnConsumeMultiFinishedListener {
        void onConsumeMultiFinished(List<Purchase> list, List<IabResult> list2);
    }

    public interface OnIabPurchaseFinishedListener {
        void onIabPurchaseFinished(IabResult iabResult, Purchase purchase);
    }

    public interface OnIabSetupFinishedListener {
        void onIabSetupFinished(IabResult iabResult);
    }

    public interface QueryInventoryFinishedListener {
        void onQueryInventoryFinished(IabResult iabResult, Inventory inventory);
    }

    public IabHelper(Context ctx, String base64PublicKey) {
        this.mSignatureBase64 = null;
        this.mContext = ctx.getApplicationContext();
        this.mSignatureBase64 = base64PublicKey;
        logDebug("IAB helper created.");
    }

    public void enableDebugLogging(boolean enable, String tag) {
        checkNotDisposed();
        this.mDebugLog = enable;
        this.mDebugTag = tag;
    }

    public void enableDebugLogging(boolean enable) {
        checkNotDisposed();
        this.mDebugLog = enable;
    }

    public void startSetup(final OnIabSetupFinishedListener listener) {
        checkNotDisposed();
        if (this.mSetupDone) {
            throw new IllegalStateException("IAB helper is already set up.");
        }
        logDebug("Starting in-app billing setup.");
        this.mServiceConn = new ServiceConnection() { // from class: com.google.pay.util.IabHelper.1
            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName name) {
                IabHelper.this.logDebug("Billing service disconnected.");
                IabHelper.this.mService = null;
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName name, IBinder service) {
                if (!IabHelper.this.mDisposed) {
                    IabHelper.this.logDebug("Billing service connected.");
                    IabHelper.this.mService = IInAppBillingService.Stub.a(service);
                    String packageName = IabHelper.this.mContext.getPackageName();
                    try {
                        IabHelper.this.logDebug("Checking for in-app billing 3 support.");
                        int a2 = IabHelper.this.mService.a(3, packageName, IabHelper.ITEM_TYPE_INAPP);
                        if (a2 != 0) {
                            if (listener != null) {
                                listener.onIabSetupFinished(new IabResult(a2, "Error checking for billing v3 support."));
                            }
                            IabHelper.this.mSubscriptionsSupported = false;
                            IabHelper.this.mSubscriptionUpdateSupported = false;
                            return;
                        }
                        IabHelper.this.logDebug("In-app billing version 3 supported for " + packageName);
                        if (IabHelper.this.mService.a(5, packageName, IabHelper.ITEM_TYPE_SUBS) == 0) {
                            IabHelper.this.logDebug("Subscription re-signup AVAILABLE.");
                            IabHelper.this.mSubscriptionUpdateSupported = true;
                        } else {
                            IabHelper.this.logDebug("Subscription re-signup not available.");
                            IabHelper.this.mSubscriptionUpdateSupported = false;
                        }
                        if (IabHelper.this.mSubscriptionUpdateSupported) {
                            IabHelper.this.mSubscriptionsSupported = true;
                        } else {
                            int a3 = IabHelper.this.mService.a(3, packageName, IabHelper.ITEM_TYPE_SUBS);
                            if (a3 == 0) {
                                IabHelper.this.logDebug("Subscriptions AVAILABLE.");
                                IabHelper.this.mSubscriptionsSupported = true;
                            } else {
                                IabHelper.this.logDebug("Subscriptions NOT AVAILABLE. Response: " + a3);
                                IabHelper.this.mSubscriptionsSupported = false;
                                IabHelper.this.mSubscriptionUpdateSupported = false;
                            }
                        }
                        IabHelper.this.mSetupDone = true;
                        if (listener != null) {
                            listener.onIabSetupFinished(new IabResult(0, "Setup successful."));
                        }
                    } catch (RemoteException e) {
                        if (listener != null) {
                            listener.onIabSetupFinished(new IabResult(IabHelper.IABHELPER_REMOTE_EXCEPTION, "RemoteException while setting up in-app billing."));
                        }
                        e.printStackTrace();
                    }
                }
            }
        };
        Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
        intent.setPackage("com.android.vending");
        if (!this.mContext.getPackageManager().queryIntentServices(intent, 0).isEmpty()) {
            this.mContext.bindService(intent, this.mServiceConn, 1);
        } else if (listener != null) {
            listener.onIabSetupFinished(new IabResult(3, "Billing service unavailable on device."));
        }
    }

    public void dispose() {
        logDebug("Disposing.");
        this.mSetupDone = false;
        if (this.mServiceConn != null) {
            logDebug("Unbinding from service.");
            if (this.mContext != null) {
                this.mContext.unbindService(this.mServiceConn);
            }
        }
        this.mDisposed = true;
        this.mContext = null;
        this.mServiceConn = null;
        this.mService = null;
        this.mPurchaseListener = null;
    }

    private void checkNotDisposed() {
        if (this.mDisposed) {
            throw new IllegalStateException("IabHelper was disposed of, so it cannot be used.");
        }
    }

    public boolean subscriptionsSupported() {
        checkNotDisposed();
        return this.mSubscriptionsSupported;
    }

    public void launchPurchaseFlow(Activity act, String sku, int requestCode, OnIabPurchaseFinishedListener listener) {
        launchPurchaseFlow(act, sku, requestCode, listener, "");
    }

    public void launchPurchaseFlow(Activity act, String sku, int requestCode, OnIabPurchaseFinishedListener listener, String extraData) {
        launchPurchaseFlow(act, sku, ITEM_TYPE_INAPP, null, requestCode, listener, extraData);
    }

    public void launchSubscriptionPurchaseFlow(Activity act, String sku, int requestCode, OnIabPurchaseFinishedListener listener) {
        launchSubscriptionPurchaseFlow(act, sku, requestCode, listener, "");
    }

    public void launchSubscriptionPurchaseFlow(Activity act, String sku, int requestCode, OnIabPurchaseFinishedListener listener, String extraData) {
        launchPurchaseFlow(act, sku, ITEM_TYPE_SUBS, null, requestCode, listener, extraData);
    }

    public void launchPurchaseFlow(Activity act, String sku, String itemType, List<String> oldSkus, int requestCode, OnIabPurchaseFinishedListener listener, String extraData) {
        Bundle a2;
        checkNotDisposed();
        checkSetupDone("launchPurchaseFlow");
        flagStartAsync("launchPurchaseFlow");
        if (itemType.equals(ITEM_TYPE_SUBS) && !this.mSubscriptionsSupported) {
            IabResult iabResult = new IabResult(IABHELPER_SUBSCRIPTIONS_NOT_AVAILABLE, "Subscriptions are not available.");
            flagEndAsync();
            if (listener != null) {
                listener.onIabPurchaseFinished(iabResult, null);
                return;
            }
            return;
        }
        try {
            logDebug("Constructing buy intent for " + sku + ", item type: " + itemType);
            if (oldSkus == null || oldSkus.isEmpty()) {
                a2 = this.mService.a(3, this.mContext.getPackageName(), sku, itemType, extraData);
            } else {
                if (!this.mSubscriptionUpdateSupported) {
                    IabResult iabResult2 = new IabResult(IABHELPER_SUBSCRIPTION_UPDATE_NOT_AVAILABLE, "Subscription updates are not available.");
                    flagEndAsync();
                    if (listener != null) {
                        listener.onIabPurchaseFinished(iabResult2, null);
                        return;
                    }
                    return;
                }
                a2 = this.mService.a(5, this.mContext.getPackageName(), oldSkus, sku, itemType, extraData);
            }
            int responseCodeFromBundle = getResponseCodeFromBundle(a2);
            if (responseCodeFromBundle != 0) {
                logError("Unable to buy item, Error response: " + getResponseDesc(responseCodeFromBundle));
                flagEndAsync();
                IabResult iabResult3 = new IabResult(responseCodeFromBundle, "Unable to buy item");
                if (listener != null) {
                    listener.onIabPurchaseFinished(iabResult3, null);
                    return;
                }
                return;
            }
            PendingIntent pendingIntent = (PendingIntent) a2.getParcelable(RESPONSE_BUY_INTENT);
            logDebug("Launching buy intent for " + sku + ". Request code: " + requestCode);
            this.mRequestCode = requestCode;
            this.mPurchaseListener = listener;
            this.mPurchasingItemType = itemType;
            IntentSender intentSender = pendingIntent.getIntentSender();
            Intent intent = new Intent();
            Integer num = 0;
            int intValue = num.intValue();
            Integer num2 = 0;
            int intValue2 = num2.intValue();
            Integer num3 = 0;
            act.startIntentSenderForResult(intentSender, requestCode, intent, intValue, intValue2, num3.intValue());
        } catch (IntentSender.SendIntentException e) {
            logError("SendIntentException while launching purchase flow for sku " + sku);
            e.printStackTrace();
            flagEndAsync();
            IabResult iabResult4 = new IabResult(IABHELPER_SEND_INTENT_FAILED, "Failed to send intent.");
            if (listener != null) {
                listener.onIabPurchaseFinished(iabResult4, null);
            }
        } catch (RemoteException e2) {
            logError("RemoteException while launching purchase flow for sku " + sku);
            e2.printStackTrace();
            flagEndAsync();
            IabResult iabResult5 = new IabResult(IABHELPER_REMOTE_EXCEPTION, "Remote exception while starting purchase flow");
            if (listener != null) {
                listener.onIabPurchaseFinished(iabResult5, null);
            }
        }
    }

    public boolean handleActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode != this.mRequestCode) {
            return false;
        }
        checkNotDisposed();
        checkSetupDone("handleActivityResult");
        flagEndAsync();
        if (data == null) {
            logError("Null data in IAB activity result.");
            IabResult iabResult = new IabResult(IABHELPER_BAD_RESPONSE, "Null data in IAB result");
            if (this.mPurchaseListener != null) {
                this.mPurchaseListener.onIabPurchaseFinished(iabResult, null);
            }
            return true;
        }
        int responseCodeFromIntent = getResponseCodeFromIntent(data);
        String stringExtra = data.getStringExtra(RESPONSE_INAPP_PURCHASE_DATA);
        String stringExtra2 = data.getStringExtra(RESPONSE_INAPP_SIGNATURE);
        if (resultCode == -1 && responseCodeFromIntent == 0) {
            logDebug("Successful resultcode from purchase activity.");
            logDebug("Purchase data: " + stringExtra);
            logDebug("Data signature: " + stringExtra2);
            logDebug("Extras: " + data.getExtras());
            logDebug("Expected item type: " + this.mPurchasingItemType);
            if (stringExtra == null || stringExtra2 == null) {
                logError("BUG: either purchaseData or dataSignature is null.");
                logDebug("Extras: " + data.getExtras().toString());
                IabResult iabResult2 = new IabResult(IABHELPER_UNKNOWN_ERROR, "IAB returned null purchaseData or dataSignature");
                if (this.mPurchaseListener != null) {
                    this.mPurchaseListener.onIabPurchaseFinished(iabResult2, null);
                }
                return true;
            }
            try {
                Purchase purchase = new Purchase(this.mPurchasingItemType, stringExtra, stringExtra2);
                String sku = purchase.getSku();
                if (!Security.verifyPurchase(this.mSignatureBase64, stringExtra, stringExtra2)) {
                    logError("Purchase signature verification FAILED for sku " + sku);
                    IabResult iabResult3 = new IabResult(IABHELPER_VERIFICATION_FAILED, "Signature verification failed for sku " + sku);
                    if (this.mPurchaseListener != null) {
                        this.mPurchaseListener.onIabPurchaseFinished(iabResult3, purchase);
                    }
                    return true;
                }
                logDebug("Purchase signature successfully verified.");
                if (this.mPurchaseListener != null) {
                    this.mPurchaseListener.onIabPurchaseFinished(new IabResult(0, "Success"), purchase);
                }
            } catch (JSONException e) {
                logError("Failed to parse purchase data.");
                e.printStackTrace();
                IabResult iabResult4 = new IabResult(IABHELPER_BAD_RESPONSE, "Failed to parse purchase data.");
                if (this.mPurchaseListener != null) {
                    this.mPurchaseListener.onIabPurchaseFinished(iabResult4, null);
                }
                return true;
            }
        } else if (resultCode == -1) {
            logDebug("Result code was OK but in-app billing response was not OK: " + getResponseDesc(responseCodeFromIntent));
            if (this.mPurchaseListener != null) {
                this.mPurchaseListener.onIabPurchaseFinished(new IabResult(responseCodeFromIntent, "Problem purchashing item."), null);
            }
        } else if (resultCode == 0) {
            logDebug("Purchase canceled - Response: " + getResponseDesc(responseCodeFromIntent));
            IabResult iabResult5 = new IabResult(responseCodeFromIntent, IABHELPER_USER_CANCELLED, "User canceled.");
            if (this.mPurchaseListener != null) {
                this.mPurchaseListener.onIabPurchaseFinished(iabResult5, null);
            }
        } else {
            logError("Purchase failed. Result code: " + Integer.toString(resultCode) + ". Response: " + getResponseDesc(responseCodeFromIntent));
            IabResult iabResult6 = new IabResult(IABHELPER_UNKNOWN_PURCHASE_RESPONSE, "Unknown purchase response.");
            if (this.mPurchaseListener != null) {
                this.mPurchaseListener.onIabPurchaseFinished(iabResult6, null);
            }
        }
        return true;
    }

    public Inventory queryInventory(boolean querySkuDetails, List<String> moreSkus) throws IabException {
        return queryInventory(querySkuDetails, moreSkus, null);
    }

    public Inventory queryInventory(boolean querySkuDetails, List<String> moreItemSkus, List<String> moreSubsSkus) throws IabException {
        int querySkuDetails2;
        int querySkuDetails3;
        checkNotDisposed();
        checkSetupDone("queryInventory");
        try {
            Inventory inventory = new Inventory();
            int queryPurchases = queryPurchases(inventory, ITEM_TYPE_INAPP);
            if (queryPurchases != 0) {
                throw new IabException(queryPurchases, "Error refreshing inventory (querying owned items).");
            }
            if (querySkuDetails && (querySkuDetails3 = querySkuDetails(ITEM_TYPE_INAPP, inventory, moreItemSkus)) != 0) {
                throw new IabException(querySkuDetails3, "Error refreshing inventory (querying prices of items).");
            }
            if (this.mSubscriptionsSupported) {
                int queryPurchases2 = queryPurchases(inventory, ITEM_TYPE_SUBS);
                if (queryPurchases2 != 0) {
                    throw new IabException(queryPurchases2, "Error refreshing inventory (querying owned subscriptions).");
                }
                if (querySkuDetails && (querySkuDetails2 = querySkuDetails(ITEM_TYPE_SUBS, inventory, moreSubsSkus)) != 0) {
                    throw new IabException(querySkuDetails2, "Error refreshing inventory (querying prices of subscriptions).");
                }
            }
            return inventory;
        } catch (RemoteException e) {
            throw new IabException(IABHELPER_REMOTE_EXCEPTION, "Remote exception while refreshing inventory.", e);
        } catch (JSONException e2) {
            throw new IabException(IABHELPER_BAD_RESPONSE, "Error parsing JSON response while refreshing inventory.", e2);
        }
    }

    public void queryInventoryAsync(final boolean querySkuDetails, final List<String> moreSkus, final QueryInventoryFinishedListener listener) {
        final Handler handler = new Handler();
        checkNotDisposed();
        checkSetupDone("queryInventory");
        flagStartAsync("refresh inventory");
        new Thread(new Runnable() { // from class: com.google.pay.util.IabHelper.2
            @Override // java.lang.Runnable
            public void run() {
                final IabResult iabResult = new IabResult(0, "Inventory refresh successful.");
                final Inventory inventory = null;
                try {
                    inventory = IabHelper.this.queryInventory(querySkuDetails, moreSkus);
                } catch (IabException e) {
                    iabResult = e.getResult();
                }
                IabHelper.this.flagEndAsync();
                if (!IabHelper.this.mDisposed && listener != null) {
                    handler.post(new Runnable() { // from class: com.google.pay.util.IabHelper.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            listener.onQueryInventoryFinished(iabResult, inventory);
                        }
                    });
                }
            }
        }).start();
    }

    public void queryInventoryAsync(QueryInventoryFinishedListener listener) {
        if (!isAsyncInProgress()) {
            queryInventoryAsync(true, null, listener);
        }
    }

    public void queryInventoryAsync(boolean querySkuDetails, QueryInventoryFinishedListener listener) {
        if (!isAsyncInProgress()) {
            queryInventoryAsync(querySkuDetails, null, listener);
        }
    }

    void consume(Purchase itemInfo) throws IabException {
        checkNotDisposed();
        checkSetupDone("consume");
        if (!itemInfo.mItemType.equals(ITEM_TYPE_INAPP)) {
            throw new IabException(IABHELPER_INVALID_CONSUMPTION, "Items of type '" + itemInfo.mItemType + "' can't be consumed.");
        }
        try {
            String token = itemInfo.getToken();
            String sku = itemInfo.getSku();
            if (token == null || token.equals("")) {
                logError("Can't consume " + sku + ". No token.");
                throw new IabException(IABHELPER_MISSING_TOKEN, "PurchaseInfo is missing token for sku: " + sku + " " + itemInfo);
            }
            logDebug("Consuming sku: " + sku + ", token: " + token);
            int b2 = this.mService.b(3, this.mContext.getPackageName(), token);
            if (b2 == 0) {
                logDebug("Successfully consumed sku: " + sku);
            } else {
                logDebug("Error consuming consuming sku " + sku + ". " + getResponseDesc(b2));
                throw new IabException(b2, "Error consuming sku " + sku);
            }
        } catch (RemoteException e) {
            throw new IabException(IABHELPER_REMOTE_EXCEPTION, "Remote exception while consuming. PurchaseInfo: " + itemInfo, e);
        }
    }

    public void consumeAsync(Purchase purchase, OnConsumeFinishedListener listener) {
        checkNotDisposed();
        checkSetupDone("consume");
        ArrayList arrayList = new ArrayList();
        arrayList.add(purchase);
        consumeAsyncInternal(arrayList, listener, null);
    }

    public void consumeAsync(List<Purchase> purchases, OnConsumeMultiFinishedListener listener) {
        checkNotDisposed();
        checkSetupDone("consume");
        consumeAsyncInternal(purchases, null, listener);
    }

    public static String getResponseDesc(int code) {
        String[] split = "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned".split("/");
        String[] split2 = "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt".split("/");
        if (code <= -1000) {
            int i = (-1000) - code;
            return (i < 0 || i >= split2.length) ? String.valueOf(code) + ":Unknown IAB Helper Error" : split2[i];
        }
        if (code < 0 || code >= split.length) {
            return String.valueOf(code) + ":Unknown";
        }
        return split[code];
    }

    void checkSetupDone(String operation) {
        if (!this.mSetupDone) {
            logError("Illegal state for operation (" + operation + "): IAB helper is not set up.");
            throw new IllegalStateException("IAB helper is not set up. Can't perform operation: " + operation);
        }
    }

    int getResponseCodeFromBundle(Bundle b2) {
        Object obj = b2.get(RESPONSE_CODE);
        if (obj == null) {
            logDebug("Bundle with null response code, assuming OK (known issue)");
            return 0;
        }
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        if (obj instanceof Long) {
            return (int) ((Long) obj).longValue();
        }
        logError("Unexpected type for bundle response code.");
        logError(obj.getClass().getName());
        throw new RuntimeException("Unexpected type for bundle response code: " + obj.getClass().getName());
    }

    int getResponseCodeFromIntent(Intent i) {
        Object obj = i.getExtras().get(RESPONSE_CODE);
        if (obj == null) {
            logError("Intent with no response code, assuming OK (known issue)");
            return 0;
        }
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        if (obj instanceof Long) {
            return (int) ((Long) obj).longValue();
        }
        logError("Unexpected type for intent response code.");
        logError(obj.getClass().getName());
        throw new RuntimeException("Unexpected type for intent response code: " + obj.getClass().getName());
    }

    void flagStartAsync(String operation) {
        if (this.mAsyncInProgress) {
            throw new IllegalStateException("Can't start async operation (" + operation + ") because another async operation(" + this.mAsyncOperation + ") is in progress.");
        }
        this.mAsyncOperation = operation;
        this.mAsyncInProgress = true;
        logDebug("Starting async operation: " + operation);
    }

    void flagEndAsync() {
        logDebug("Ending async operation: " + this.mAsyncOperation);
        this.mAsyncOperation = "";
        this.mAsyncInProgress = false;
    }

    public boolean isAsyncInProgress() {
        return this.mAsyncInProgress;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0055, code lost:
    
        if (r4 == false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0057, code lost:
    
        return com.google.pay.util.IabHelper.IABHELPER_VERIFICATION_FAILED;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:?, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0054, code lost:
    
        r4 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    int queryPurchases(com.google.pay.util.Inventory r14, java.lang.String r15) throws org.json.JSONException, android.os.RemoteException {
        /*
            Method dump skipped, instructions count: 406
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.pay.util.IabHelper.queryPurchases(com.google.pay.util.Inventory, java.lang.String):int");
    }

    int querySkuDetails(String itemType, Inventory inv, List<String> moreSkus) throws RemoteException, JSONException {
        logDebug("Querying SKU details.");
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(inv.getAllOwnedSkus(itemType));
        if (moreSkus != null) {
            for (String str : moreSkus) {
                if (!arrayList.contains(str)) {
                    arrayList.add(str);
                }
            }
        }
        if (arrayList.size() == 0) {
            logDebug("queryPrices: nothing to do because there are no SKUs.");
            return 0;
        }
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size() / 20;
        int size2 = arrayList.size() % 20;
        for (int i = 0; i < size; i++) {
            ArrayList arrayList3 = new ArrayList();
            Iterator it = arrayList.subList(i * 20, (i * 20) + 20).iterator();
            while (it.hasNext()) {
                arrayList3.add((String) it.next());
            }
            arrayList2.add(arrayList3);
        }
        if (size2 != 0) {
            ArrayList arrayList4 = new ArrayList();
            Iterator it2 = arrayList.subList(size * 20, (size * 20) + size2).iterator();
            while (it2.hasNext()) {
                arrayList4.add((String) it2.next());
            }
            arrayList2.add(arrayList4);
        }
        Iterator it3 = arrayList2.iterator();
        while (it3.hasNext()) {
            ArrayList<String> arrayList5 = (ArrayList) it3.next();
            Bundle bundle = new Bundle();
            bundle.putStringArrayList(GET_SKU_DETAILS_ITEM_LIST, arrayList5);
            Bundle a2 = this.mService.a(3, this.mContext.getPackageName(), itemType, bundle);
            if (!a2.containsKey(RESPONSE_GET_SKU_DETAILS_LIST)) {
                int responseCodeFromBundle = getResponseCodeFromBundle(a2);
                if (responseCodeFromBundle != 0) {
                    logDebug("getSkuDetails() failed: " + getResponseDesc(responseCodeFromBundle));
                    return responseCodeFromBundle;
                }
                logError("getSkuDetails() returned a bundle with neither an error nor a detail list.");
                return IABHELPER_BAD_RESPONSE;
            }
            Iterator<String> it4 = a2.getStringArrayList(RESPONSE_GET_SKU_DETAILS_LIST).iterator();
            while (it4.hasNext()) {
                SkuDetails skuDetails = new SkuDetails(itemType, it4.next());
                logDebug("Got sku details: " + skuDetails);
                inv.addSkuDetails(skuDetails);
            }
        }
        return 0;
    }

    void consumeAsyncInternal(final List<Purchase> purchases, final OnConsumeFinishedListener singleListener, final OnConsumeMultiFinishedListener multiListener) {
        final Handler handler = new Handler();
        flagStartAsync("consume");
        new Thread(new Runnable() { // from class: com.google.pay.util.IabHelper.3
            @Override // java.lang.Runnable
            public void run() {
                final ArrayList arrayList = new ArrayList();
                for (Purchase purchase : purchases) {
                    try {
                        IabHelper.this.consume(purchase);
                        arrayList.add(new IabResult(0, "Successful consume of sku " + purchase.getSku()));
                    } catch (IabException e) {
                        arrayList.add(e.getResult());
                    }
                }
                IabHelper.this.flagEndAsync();
                if (!IabHelper.this.mDisposed && singleListener != null) {
                    handler.post(new Runnable() { // from class: com.google.pay.util.IabHelper.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            singleListener.onConsumeFinished((Purchase) purchases.get(0), (IabResult) arrayList.get(0));
                        }
                    });
                }
                if (!IabHelper.this.mDisposed && multiListener != null) {
                    handler.post(new Runnable() { // from class: com.google.pay.util.IabHelper.3.2
                        @Override // java.lang.Runnable
                        public void run() {
                            multiListener.onConsumeMultiFinished(purchases, arrayList);
                        }
                    });
                }
            }
        }).start();
    }

    void logDebug(String msg) {
        if (this.mDebugLog) {
            Log.d(this.mDebugTag, msg);
        }
    }

    void logError(String msg) {
        Log.e(this.mDebugTag, "In-app billing error: " + msg);
    }

    void logWarn(String msg) {
        Log.w(this.mDebugTag, "In-app billing warning: " + msg);
    }

    public IInAppBillingService getService() {
        return this.mService;
    }
}
