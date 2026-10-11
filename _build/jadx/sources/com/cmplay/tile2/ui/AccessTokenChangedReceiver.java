package com.cmplay.tile2.ui;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.cmplay.util.NativeUtil;
import com.facebook.AccessToken;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AccessTokenChangedReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED".equals(intent.getAction())) {
            AccessToken accessToken = (AccessToken) intent.getParcelableExtra("com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN");
            if (accessToken == null) {
                Log.d("AccessTokenReceiver", "facebook token is null");
                NativeUtil.notifyTokenChangedOnGLThread(1, null);
            } else if (!accessToken.k()) {
                Log.d("AccessTokenReceiver", "facebook token is changend!");
                NativeUtil.notifyTokenChangedOnGLThread(1, accessToken.c());
            }
        }
    }
}
