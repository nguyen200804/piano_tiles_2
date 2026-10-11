package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.ads.mediation.facebook.FacebookAdapter;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzex implements zzep {
    private final Object zzail = new Object();
    private final Map<String, zza> zzbix = new HashMap();

    public interface zza {
        void zzay(String str);

        void zzd(JSONObject jSONObject);
    }

    @Override // com.google.android.gms.internal.zzep
    public void zza(zzlh zzlhVar, Map<String, String> map) {
        String str = map.get(FacebookAdapter.KEY_ID);
        String str2 = map.get("fail");
        String str3 = map.get("fail_reason");
        String str4 = map.get("result");
        synchronized (this.zzail) {
            zza remove = this.zzbix.remove(str);
            if (remove == null) {
                String valueOf = String.valueOf(str);
                zzkd.zzcx(valueOf.length() != 0 ? "Received result for unexpected method invocation: ".concat(valueOf) : new String("Received result for unexpected method invocation: "));
            } else if (!TextUtils.isEmpty(str2)) {
                remove.zzay(str3);
            } else {
                if (str4 == null) {
                    remove.zzay("No result.");
                    return;
                }
                try {
                    remove.zzd(new JSONObject(str4));
                } catch (JSONException e) {
                    remove.zzay(e.getMessage());
                }
            }
        }
    }
}
