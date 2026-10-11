package com.cmcm.dmc.sdk.e;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.SharedPreferences;
import com.mopub.mobileads.VastExtensionXmlManager;
import com.unity3d.ads.metadata.MediationMetaData;
import java.util.ArrayList;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c extends b {

    /* renamed from: a, reason: collision with root package name */
    private long f717a;

    private void c() {
        if (e()) {
            this.f717a = com.cmcm.dmc.sdk.a.c.a("account", "k_interval_time", 1) * 86400000;
            if (this.f717a <= 0) {
                this.f717a = 86400000L;
            }
            long currentTimeMillis = System.currentTimeMillis();
            long c = com.cmcm.dmc.sdk.a.k.a().c("k_last_read_time_receiveraccount");
            if (c <= 0 || c >= currentTimeMillis || currentTimeMillis - c >= this.f717a) {
                i();
            }
        }
    }

    private void i() {
        try {
            Account[] accounts = ((AccountManager) com.cmcm.dmc.sdk.a.c.c().getSystemService("account")).getAccounts();
            if (accounts == null || accounts.length <= 0) {
                return;
            }
            ArrayList arrayList = new ArrayList(accounts.length);
            for (Account account : accounts) {
                if (account != null) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(MediationMetaData.KEY_NAME, account.name);
                    jSONObject.put(VastExtensionXmlManager.TYPE, account.type);
                    jSONObject.put("time", System.currentTimeMillis() / 1000);
                    arrayList.add(jSONObject);
                }
            }
            if (arrayList.size() > 0) {
                a(arrayList.toString());
            }
            SharedPreferences.Editor c = com.cmcm.dmc.sdk.a.k.a().c();
            c.putLong("k_last_read_time_receiveraccount", System.currentTimeMillis());
            com.cmcm.dmc.sdk.a.k.a(c);
        } catch (Exception e) {
            com.cmcm.dmc.sdk.a.i.a("ReceiverAccount", "" + e.getMessage());
        }
    }

    @Override // com.cmcm.dmc.sdk.e.b
    protected void b() {
        c();
    }

    @Override // com.cmcm.dmc.sdk.e.b
    public String f() {
        return "account";
    }
}
