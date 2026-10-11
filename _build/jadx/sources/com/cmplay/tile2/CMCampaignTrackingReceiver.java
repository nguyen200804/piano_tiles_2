package com.cmplay.tile2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.cmplay.g.f;
import com.cmplay.i.a;
import com.cmplay.util.c;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class CMCampaignTrackingReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (!"com.android.vending.INSTALL_REFERRER".equals(action)) {
            c.a("CMTrackingReceiver", "receive invalid action " + action);
            return;
        }
        String stringExtra = intent.getStringExtra("referrer");
        if (!TextUtils.isEmpty(stringExtra)) {
            new f().a(String.valueOf(9999), 3);
            try {
                String[] split = URLDecoder.decode(stringExtra, "GBK").split("&");
                if (split != null && split.length > 0) {
                    HashMap<String, String> hashMap = new HashMap<>(split.length);
                    for (String str : split) {
                        String[] split2 = str.split("=");
                        if (split2.length > 1) {
                            hashMap.put(split2[0], split2[1]);
                        }
                    }
                    String str2 = hashMap.get("utm_source");
                    if (!TextUtils.isEmpty(str2)) {
                        c.a("CMTrackingReceiver", "channel id is " + str2);
                        a.a(str2);
                        new f().a(str2, 2);
                        a.a(true);
                    }
                    a(hashMap);
                }
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
    }

    private void a(HashMap<String, String> hashMap) {
        a.b(hashMap.get("pid") + "#" + hashMap.get("af_sub1") + "#" + hashMap.get("af_sub2"));
    }
}
