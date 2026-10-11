package com.cmplay.ad;

import android.app.Activity;
import android.content.Intent;

/* compiled from: IAds.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public interface d {
    boolean activityResult(int i, int i2, Intent intent);

    boolean canShow(int i);

    boolean onBackPressed();

    void onCreate(Activity activity);

    void onDestroy(Activity activity);

    void onPaused(Activity activity);

    void onResume(Activity activity);

    void onStart(Activity activity);

    void onStop(Activity activity);

    void prepare();

    void setListener(c cVar);

    boolean show(int i);
}
