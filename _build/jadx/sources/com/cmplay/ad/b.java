package com.cmplay.ad;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;

/* compiled from: BaseAds.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b implements d {
    private int mOriVolume;

    @Override // com.cmplay.ad.d
    public void onCreate(Activity activity) {
    }

    @Override // com.cmplay.ad.d
    public void onStart(Activity activity) {
    }

    @Override // com.cmplay.ad.d
    public void onResume(Activity activity) {
    }

    @Override // com.cmplay.ad.d
    public void onPaused(Activity activity) {
    }

    @Override // com.cmplay.ad.d
    public void onStop(Activity activity) {
    }

    @Override // com.cmplay.ad.d
    public boolean onBackPressed() {
        return false;
    }

    @Override // com.cmplay.ad.d
    public void onDestroy(Activity activity) {
    }

    @Override // com.cmplay.ad.d
    public boolean canShow(int reportFrom) {
        return false;
    }

    @Override // com.cmplay.ad.d
    public boolean show(int reportFrom) {
        return false;
    }

    @Override // com.cmplay.ad.d
    public void prepare() {
    }

    @Override // com.cmplay.ad.d
    public void setListener(c l) {
    }

    @Override // com.cmplay.ad.d
    public boolean activityResult(int requestCode, int resultCode, Intent data) {
        return false;
    }

    public void recoverVolume(Context context) {
        try {
            ((AudioManager) context.getSystemService("audio")).setStreamVolume(3, this.mOriVolume, 8);
        } catch (Exception e) {
        }
    }

    public void reduceVolume(Context context) {
        try {
            AudioManager audioManager = (AudioManager) context.getSystemService("audio");
            this.mOriVolume = audioManager.getStreamVolume(3);
            if (this.mOriVolume > 0) {
                audioManager.setStreamVolume(3, Math.max(this.mOriVolume - 2, 1), 8);
            }
        } catch (Exception e) {
        }
    }
}
