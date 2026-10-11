package com.cmcm.dmc.sdk.e;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class i extends b {

    /* renamed from: a, reason: collision with root package name */
    private a f738a;

    /* renamed from: b, reason: collision with root package name */
    private long f739b = 0;

    private class a extends BroadcastReceiver {
        private a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, final Intent intent) {
            try {
                com.cmcm.dmc.sdk.a.c.d().post(new Runnable() { // from class: com.cmcm.dmc.sdk.e.i.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        long currentTimeMillis = System.currentTimeMillis() / 1000;
                        int intExtra = intent.getIntExtra("state", -1);
                        int intExtra2 = intent.getIntExtra("microphone", -1);
                        com.cmcm.dmc.sdk.a.i.a("test_Headset", "microphone == " + intExtra2);
                        if (intExtra == 1) {
                            i.this.f739b = currentTimeMillis;
                        } else if (intExtra == 0) {
                            i.this.a(intExtra2, i.this.f739b, currentTimeMillis);
                            i.this.f739b = 0L;
                        }
                        d.a().a("headset_plug", String.valueOf(intExtra));
                    }
                });
            } catch (Exception e) {
                com.cmcm.dmc.sdk.a.i.a("ReceiverHeadsetPlug", "failed : " + e.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, long j, long j2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("microphone", i);
            jSONObject.put("startTime", j);
            jSONObject.put("endTime", j2);
            a(jSONObject.toString());
        } catch (JSONException e) {
            com.cmcm.dmc.sdk.a.i.a("ReceiverHeadsetPlug", "" + e.getMessage());
        }
    }

    @Override // com.cmcm.dmc.sdk.e.b
    protected void b() {
        this.f739b = 0L;
        this.f738a = new a();
        a(this.f738a, new IntentFilter("android.intent.action.HEADSET_PLUG"));
    }

    @Override // com.cmcm.dmc.sdk.e.b
    public String f() {
        return "headset_plug";
    }

    @Override // com.cmcm.dmc.sdk.e.b
    protected void g() {
        if (this.f738a != null) {
            a(this.f738a);
        }
    }
}
