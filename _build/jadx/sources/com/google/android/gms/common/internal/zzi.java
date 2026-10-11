package com.google.android.gms.common.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.support.annotation.NonNull;
import android.support.v4.app.Fragment;
import android.util.Log;
import com.google.android.gms.internal.zzqk;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class zzi implements DialogInterface.OnClickListener {
    public static zzi zza(final Activity activity, final Intent intent, final int i) {
        return new zzi() { // from class: com.google.android.gms.common.internal.zzi.1
            @Override // com.google.android.gms.common.internal.zzi
            public void zzasr() {
                if (intent != null) {
                    activity.startActivityForResult(intent, i);
                }
            }
        };
    }

    public static zzi zza(@NonNull final Fragment fragment, final Intent intent, final int i) {
        return new zzi() { // from class: com.google.android.gms.common.internal.zzi.2
            @Override // com.google.android.gms.common.internal.zzi
            public void zzasr() {
                if (intent != null) {
                    fragment.startActivityForResult(intent, i);
                }
            }
        };
    }

    public static zzi zza(@NonNull final zzqk zzqkVar, final Intent intent, final int i) {
        return new zzi() { // from class: com.google.android.gms.common.internal.zzi.3
            @Override // com.google.android.gms.common.internal.zzi
            @TargetApi(11)
            public void zzasr() {
                if (intent != null) {
                    zzqkVar.startActivityForResult(intent, i);
                }
            }
        };
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        try {
            zzasr();
            dialogInterface.dismiss();
        } catch (ActivityNotFoundException e) {
            Log.e("DialogRedirect", "Can't redirect to app settings for Google Play services", e);
        }
    }

    public abstract void zzasr();
}
