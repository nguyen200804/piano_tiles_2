package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Intent;
import android.support.annotation.NonNull;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public interface zzqk {
    void startActivityForResult(Intent intent, int i);

    <T extends zzqj> T zza(String str, Class<T> cls);

    void zza(String str, @NonNull zzqj zzqjVar);

    Activity zzaqt();
}
