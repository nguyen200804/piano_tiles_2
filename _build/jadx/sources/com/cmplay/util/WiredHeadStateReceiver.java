package com.cmplay.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import com.cmplay.tile2.GameApp;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class WiredHeadStateReceiver extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f1700a;

    public WiredHeadStateReceiver() {
        AudioManager audioManager = (AudioManager) GameApp.f1598a.getSystemService("audio");
        if (audioManager != null) {
            f1700a = audioManager.isWiredHeadsetOn();
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent.hasExtra("state")) {
            if (intent.getIntExtra("state", 0) == 0) {
                NativeUtil.notifyWiredHeadStateToNative(false);
                f1700a = false;
            } else if (intent.getIntExtra("state", 0) == 1) {
                NativeUtil.notifyWiredHeadStateToNative(true);
                f1700a = true;
            }
        }
    }
}
