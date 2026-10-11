package com.cmcm.dmc.sdk.e;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class q extends b {

    /* renamed from: a, reason: collision with root package name */
    private a f758a;

    /* renamed from: b, reason: collision with root package name */
    private long f759b = 0;
    private long c = 0;
    private long d = 0;

    private class a extends BroadcastReceiver {
        private a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, final Intent intent) {
            try {
                com.cmcm.dmc.sdk.a.c.d().post(new Runnable() { // from class: com.cmcm.dmc.sdk.e.q.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        long currentTimeMillis = System.currentTimeMillis() / 1000;
                        String action = intent.getAction();
                        String str = null;
                        if ("android.intent.action.SCREEN_ON".equals(action)) {
                            q.this.f759b = currentTimeMillis;
                            str = "screen_on";
                        } else if ("android.intent.action.SCREEN_OFF".equals(action)) {
                            q.this.c = currentTimeMillis;
                            q.this.c();
                            q.this.c = 0L;
                            q.this.f759b = 0L;
                            q.this.d = 0L;
                            str = "screen_off";
                        } else if ("android.intent.action.USER_PRESENT".equals(action)) {
                            q.this.d = currentTimeMillis;
                            str = "screen_present";
                        }
                        if (str != null) {
                            d.a().a(str, "");
                        }
                    }
                });
            } catch (Exception e) {
                com.cmcm.dmc.sdk.a.i.a("ReceiverScreenState", "failed : " + e.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (this.f759b == 0) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("screenOn", this.f759b);
            if (this.d != 0) {
                jSONObject.put("screenUnlock", this.d);
            }
            jSONObject.put("screenOff", this.c);
            a(jSONObject.toString());
        } catch (JSONException e) {
            com.cmcm.dmc.sdk.a.i.a("ReceiverScreenState", "" + e.getMessage());
        }
    }

    @Override // com.cmcm.dmc.sdk.e.b
    protected void b() {
        this.f758a = new a();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        a(this.f758a, intentFilter);
    }

    @Override // com.cmcm.dmc.sdk.e.b
    public String f() {
        return "screen_state";
    }

    @Override // com.cmcm.dmc.sdk.e.b
    protected void g() {
        a(this.f758a);
    }
}
