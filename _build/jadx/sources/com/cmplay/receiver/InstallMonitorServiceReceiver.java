package com.cmplay.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.cmplay.tile2.GameApp;
import com.cmplay.util.aa;
import com.cmplay.util.ac;
import com.cmplay.util.b.a;
import com.cmplay.util.v;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class InstallMonitorServiceReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Uri data;
        if (intent != null && (data = intent.getData()) != null) {
            String schemeSpecificPart = data.getSchemeSpecificPart();
            if (!TextUtils.isEmpty(schemeSpecificPart) && "android.intent.action.PACKAGE_ADDED".equals(intent.getAction()) && !aa.b("key_gameproblem_isresume", false)) {
                String b2 = a.b("card_install:");
                if (!TextUtils.isEmpty(b2)) {
                    try {
                        JSONObject jSONObject = new JSONObject(b2);
                        int optInt = jSONObject.optInt("scene_type");
                        int optInt2 = jSONObject.optInt("reward_counts");
                        if (schemeSpecificPart.equals(jSONObject.optString("pkg")) && v.a(GameApp.f1598a, schemeSpecificPart)) {
                            if ((optInt == 1 || optInt == 2) && optInt2 >= 1) {
                                ac.a(context, optInt, optInt2);
                            }
                        }
                    } catch (JSONException e) {
                    }
                }
            }
        }
    }
}
