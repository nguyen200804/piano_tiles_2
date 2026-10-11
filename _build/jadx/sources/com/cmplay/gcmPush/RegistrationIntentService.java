package com.cmplay.gcmPush;

import android.app.IntentService;
import android.content.Intent;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.support.v4.content.LocalBroadcastManager;
import android.util.Log;
import com.cmplay.h.b;
import com.cmplay.tile2.GameApp;
import com.cmplay.util.aa;
import com.google.android.gms.gcm.GcmPubSub;
import com.google.android.gms.gcm.GoogleCloudMessaging;
import com.google.android.gms.iid.InstanceID;
import java.io.IOException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class RegistrationIntentService extends IntentService {

    /* renamed from: a, reason: collision with root package name */
    private static final String[] f1370a = {"global"};

    public RegistrationIntentService() {
        super("RegIntentService");
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        new Thread(new Runnable() { // from class: com.cmplay.gcmPush.RegistrationIntentService.1
            @Override // java.lang.Runnable
            public void run() {
                SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(GameApp.f1598a);
                try {
                    String token = InstanceID.getInstance(GameApp.f1598a).getToken("539372864957", GoogleCloudMessaging.INSTANCE_ID_SCOPE, null);
                    Log.i("RegIntentService", "GCM Registration Token: " + token);
                    com.facebook.appevents.a.a(token);
                    b.a().d();
                    RegistrationIntentService.this.a(token);
                    RegistrationIntentService.this.b(token);
                    defaultSharedPreferences.edit().putBoolean("sentTokenToServer", true).apply();
                } catch (Exception e) {
                    Log.d("RegIntentService", "Failed to complete token refresh", e);
                    defaultSharedPreferences.edit().putBoolean("sentTokenToServer", false).apply();
                }
                LocalBroadcastManager.getInstance(GameApp.f1598a).sendBroadcast(new Intent("registrationComplete"));
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        aa.a("key_gcm_token", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) throws IOException {
        GcmPubSub gcmPubSub = GcmPubSub.getInstance(this);
        for (String str2 : f1370a) {
            gcmPubSub.subscribe(str, "/topics/" + str2, null);
        }
    }
}
