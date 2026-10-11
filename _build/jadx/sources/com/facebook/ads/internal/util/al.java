package com.facebook.ads.internal.util;

import android.content.Context;
import android.media.AudioManager;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class al {
    public static float a(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager != null) {
            int streamVolume = audioManager.getStreamVolume(3);
            int streamMaxVolume = audioManager.getStreamMaxVolume(3);
            if (streamMaxVolume > 0) {
                return (streamVolume * 1.0f) / streamMaxVolume;
            }
        }
        return 0.0f;
    }

    public static void a(Map<String, String> map, boolean z, boolean z2) {
        map.put("autoplay", z ? "1" : "0");
        map.put("inline", z2 ? "1" : "0");
    }
}
