package com.google.android.gms.internal;

import android.app.Activity;
import android.support.v4.app.FragmentActivity;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzqi {
    private final Object vl;

    public zzqi(Activity activity) {
        com.google.android.gms.common.internal.zzab.zzb(activity, "Activity must not be null");
        com.google.android.gms.common.internal.zzab.zzb(com.google.android.gms.common.util.zzs.zzavn() || (activity instanceof FragmentActivity), "This Activity is not supported before platform version 11 (3.0 Honeycomb). Please use FragmentActivity instead.");
        this.vl = activity;
    }

    public boolean zzaqq() {
        return this.vl instanceof FragmentActivity;
    }

    public Activity zzaqr() {
        return (Activity) this.vl;
    }

    public FragmentActivity zzaqs() {
        return (FragmentActivity) this.vl;
    }
}
