package com.cmplay.gcmPush;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.media.RingtoneManager;
import android.os.Bundle;
import android.support.v4.app.NotificationCompat;
import android.text.TextUtils;
import com.cmplay.h.b;
import com.cmplay.h.f;
import com.cmplay.notification.c;
import com.cmplay.tile2.GameApp;
import com.cmplay.tile2.ui.AppActivity;
import com.cmplay.tiles4.R;
import com.cmplay.util.aa;
import com.google.android.gms.gcm.GcmListenerService;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class MyGcmListenerService extends GcmListenerService {
    @Override // com.google.android.gms.gcm.GcmListenerService
    public void onMessageReceived(String from, Bundle data) {
        if (data != null) {
            data.getString("data");
            if (b(data)) {
                b.a().b().b(data);
                return;
            }
            Bundle a2 = a.a(new Bundle(data));
            f.b().a(a.b(data), data.getString("function_id"), 1);
            b.a().b().a(a2);
            a(a2);
        }
    }

    private void a(Bundle bundle) {
        Exception e;
        String str;
        JSONException e2;
        String str2 = null;
        if (bundle != null) {
            Context applicationContext = getApplicationContext();
            Intent putExtra = new Intent(applicationContext, (Class<?>) AppActivity.class).setAction("default").putExtra("push", bundle);
            try {
                JSONObject jSONObject = new JSONObject(bundle.getString("fb_push_card")).getJSONObject("alert");
                String string = !jSONObject.isNull("title") ? jSONObject.getString("title") : null;
                try {
                    str = TextUtils.isEmpty(string) ? GameApp.f1598a.getString(2131034150) : string;
                } catch (JSONException e3) {
                    str = string;
                    e2 = e3;
                } catch (Exception e4) {
                    str = string;
                    e = e4;
                }
                try {
                    if (!jSONObject.isNull("body")) {
                        str2 = jSONObject.getString("body");
                    } else {
                        str2 = "";
                    }
                } catch (JSONException e5) {
                    e2 = e5;
                    e2.printStackTrace();
                    ((NotificationManager) getSystemService("notification")).notify(c.c, new NotificationCompat.Builder(applicationContext).setSmallIcon(R.drawable.notification_icon).setColor(-13939358).setContentTitle(str).setContentText(str2).setStyle(new NotificationCompat.BigTextStyle().bigText(str2)).setAutoCancel(true).setSound(RingtoneManager.getDefaultUri(2)).setContentIntent(PendingIntent.getActivity(applicationContext, 0, putExtra, 134217728)).build());
                } catch (Exception e6) {
                    e = e6;
                    e.printStackTrace();
                    ((NotificationManager) getSystemService("notification")).notify(c.c, new NotificationCompat.Builder(applicationContext).setSmallIcon(R.drawable.notification_icon).setColor(-13939358).setContentTitle(str).setContentText(str2).setStyle(new NotificationCompat.BigTextStyle().bigText(str2)).setAutoCancel(true).setSound(RingtoneManager.getDefaultUri(2)).setContentIntent(PendingIntent.getActivity(applicationContext, 0, putExtra, 134217728)).build());
                }
            } catch (JSONException e7) {
                e2 = e7;
                str = null;
            } catch (Exception e8) {
                e = e8;
                str = null;
            }
            ((NotificationManager) getSystemService("notification")).notify(c.c, new NotificationCompat.Builder(applicationContext).setSmallIcon(R.drawable.notification_icon).setColor(-13939358).setContentTitle(str).setContentText(str2).setStyle(new NotificationCompat.BigTextStyle().bigText(str2)).setAutoCancel(true).setSound(RingtoneManager.getDefaultUri(2)).setContentIntent(PendingIntent.getActivity(applicationContext, 0, putExtra, 134217728)).build());
        }
    }

    private boolean b(Bundle bundle) {
        boolean z = false;
        if (bundle != null) {
            String b2 = a.b(bundle);
            String b3 = aa.b("key_push_campaign_id", "");
            if (!TextUtils.isEmpty(b3) && b2 != null) {
                z = b3.contains(b2);
            }
            if (!z) {
                aa.a("key_push_campaign_id", b3 + "," + b2);
            }
        }
        return z;
    }
}
