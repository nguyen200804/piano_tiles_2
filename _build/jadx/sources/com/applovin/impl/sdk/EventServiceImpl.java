package com.applovin.impl.sdk;

import android.content.Intent;
import android.net.Uri;
import com.applovin.sdk.AppLovinEventParameters;
import com.applovin.sdk.AppLovinEventService;
import com.applovin.sdk.AppLovinEventTypes;
import com.applovin.sdk.AppLovinSdk;
import com.google.pay.util.IabHelper;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class EventServiceImpl implements AppLovinEventService {

    /* renamed from: a, reason: collision with root package name */
    private final AppLovinSdkImpl f398a;

    /* renamed from: b, reason: collision with root package name */
    private final List f399b;

    public EventServiceImpl(AppLovinSdk appLovinSdk) {
        this.f398a = (AppLovinSdkImpl) appLovinSdk;
        this.f399b = Arrays.asList(((String) ((AppLovinSdkImpl) appLovinSdk).a(av.bi)).split(","));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Uri a(bs bsVar, cz czVar) {
        cy dataCollector = this.f398a.getDataCollector();
        dc a2 = dataCollector.a();
        da b2 = dataCollector.b();
        boolean contains = this.f399b.contains(bsVar.a());
        Uri.Builder appendQueryParameter = Uri.parse((String) this.f398a.a(av.bh)).buildUpon().appendQueryParameter("event", contains ? bsVar.a() : "postinstall").appendQueryParameter("ts", Long.toString(bsVar.c())).appendQueryParameter("platform", "Android").appendQueryParameter("model", a2.f523a).appendQueryParameter("package_name", b2.c).appendQueryParameter("sdk_key", this.f398a.getSdkKey()).appendQueryParameter("idfa", czVar.f517b).appendQueryParameter("dnt", Boolean.toString(czVar.f516a)).appendQueryParameter("ia", Long.toString(b2.d)).appendQueryParameter("api_did", (String) this.f398a.a(av.c)).appendQueryParameter("brand", a2.c).appendQueryParameter("model", a2.f523a).appendQueryParameter("revision", a2.d).appendQueryParameter("sdk_version", AppLovinSdk.VERSION).appendQueryParameter("os", a2.f524b);
        if (!contains) {
            appendQueryParameter = appendQueryParameter.appendQueryParameter("sub_event", bsVar.a());
        }
        return appendQueryParameter.build();
    }

    private Map a(Map map) {
        HashMap hashMap = new HashMap();
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                Object key = entry.getKey();
                Object value = entry.getValue();
                if ((key instanceof String) && (value instanceof String)) {
                    hashMap.put((String) key, (String) value);
                } else {
                    this.f398a.getLogger().w("EventServiceImpl", "Unexpected class type in trackEvent(); all keys and values passed as parameters must be String. Encountered " + key.getClass().getCanonicalName() + "/" + value.getClass().getCanonicalName() + "; will use toString() value instead, which may be unexpected...");
                    hashMap.put(key.toString(), value.toString());
                }
            }
        }
        return hashMap;
    }

    private void a(bg bgVar) {
        this.f398a.a().a(new ci(this.f398a, bgVar), bp.BACKGROUND);
    }

    private void a(bs bsVar) {
        if (((Boolean) this.f398a.a(av.bj)).booleanValue()) {
            this.f398a.getLogger().d("EventServiceImpl", "Tracking event: " + bsVar);
            a(new dd(this, bsVar));
        }
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void trackCheckout(String str, Map map) {
        HashMap hashMap = map != null ? new HashMap(map) : new HashMap(1);
        hashMap.put(AppLovinEventParameters.CHECKOUT_TRANSACTION_IDENTIFIER, str);
        trackEvent(AppLovinEventTypes.USER_COMPLETED_CHECKOUT, hashMap);
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void trackEvent(String str) {
        trackEvent(str, new HashMap());
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void trackEvent(String str, Map map) {
        a(new bs(str, a(map), System.currentTimeMillis(), dh.b(UUID.randomUUID().toString())));
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void trackInAppPurchase(Intent intent, Map map) {
        HashMap hashMap = map != null ? new HashMap(map) : new HashMap();
        try {
            hashMap.put(AppLovinEventParameters.IN_APP_PURCHASE_DATA, intent.getStringExtra(IabHelper.RESPONSE_INAPP_PURCHASE_DATA));
            hashMap.put(AppLovinEventParameters.IN_APP_DATA_SIGNATURE, intent.getStringExtra(IabHelper.RESPONSE_INAPP_SIGNATURE));
        } catch (Exception e) {
            this.f398a.getLogger().userError("EventServiceImpl", "Unable to track in app purchase; invalid purchanse intent", e);
        }
        trackEvent("iap", hashMap);
    }
}
