package com.cmplay.gcmPush;

import android.content.Intent;
import android.util.Log;
import com.google.android.gms.iid.InstanceIDListenerService;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class MyInstanceIDListenerService extends InstanceIDListenerService {
    @Override // com.google.android.gms.iid.InstanceIDListenerService
    public void onTokenRefresh() {
        Log.i("GCM_MyInstanceIDLS", "MyInstanceIDListenerService.onTokenRefresh");
        startService(new Intent(this, (Class<?>) RegistrationIntentService.class));
    }
}
