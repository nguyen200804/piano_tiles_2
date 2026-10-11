package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.mopub.common.AdType;
import org.json.JSONObject;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzhl extends Handler {
    private final zzhk zzbwg;

    public zzhl(Context context) {
        this(new zzhm(context.getApplicationContext() != null ? context.getApplicationContext() : context));
    }

    public zzhl(zzhk zzhkVar) {
        this.zzbwg = zzhkVar;
    }

    private void zze(JSONObject jSONObject) {
        try {
            this.zzbwg.zza(jSONObject.getString("request_id"), jSONObject.getString("base_url"), jSONObject.getString(AdType.HTML));
        } catch (Exception e) {
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        try {
            Bundle data = message.getData();
            if (data == null) {
                return;
            }
            JSONObject jSONObject = new JSONObject(data.getString("data"));
            if ("fetch_html".equals(jSONObject.getString("message_name"))) {
                zze(jSONObject);
            }
        } catch (Exception e) {
        }
    }
}
