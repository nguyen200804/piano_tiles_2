package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import com.google.android.gms.R;
import com.google.android.gms.common.api.Status;

@Deprecated
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzqf {
    private static zzqf vd;
    private static Object zzamr = new Object();
    private final String ve;
    private final Status vf;
    private final String vg;
    private final String vh;
    private final String vi;
    private final boolean vj;
    private final boolean vk;
    private final String zzcjf;

    zzqf(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("google_app_measurement_enable", "integer", resources.getResourcePackageName(R.string.common_google_play_services_unknown_issue));
        if (identifier != 0) {
            boolean z = resources.getInteger(identifier) != 0;
            this.vk = z ? false : true;
            r0 = z;
        } else {
            this.vk = false;
        }
        this.vj = r0;
        com.google.android.gms.common.internal.zzai zzaiVar = new com.google.android.gms.common.internal.zzai(context);
        this.vg = zzaiVar.getString("firebase_database_url");
        this.vi = zzaiVar.getString("google_storage_bucket");
        this.vh = zzaiVar.getString("gcm_defaultSenderId");
        this.ve = zzaiVar.getString("google_api_key");
        String zzcf = com.google.android.gms.common.internal.zzz.zzcf(context);
        zzcf = zzcf == null ? zzaiVar.getString("google_app_id") : zzcf;
        if (TextUtils.isEmpty(zzcf)) {
            this.vf = new Status(10, "Missing google app id value from from string resources with name google_app_id.");
            this.zzcjf = null;
        } else {
            this.zzcjf = zzcf;
            this.vf = Status.sq;
        }
    }

    zzqf(String str, boolean z) {
        this(str, z, null, null, null);
    }

    zzqf(String str, boolean z, String str2, String str3, String str4) {
        this.zzcjf = str;
        this.ve = null;
        this.vf = Status.sq;
        this.vj = z;
        this.vk = !z;
        this.vg = str2;
        this.vh = str4;
        this.vi = str3;
    }

    public static String zzaqo() {
        return zzgx("getGoogleAppId").zzcjf;
    }

    public static boolean zzaqp() {
        return zzgx("isMeasurementExplicitlyDisabled").vk;
    }

    public static Status zzc(Context context, String str, boolean z) {
        Status status;
        com.google.android.gms.common.internal.zzab.zzb(context, "Context must not be null.");
        com.google.android.gms.common.internal.zzab.zzh(str, "App ID must be nonempty.");
        synchronized (zzamr) {
            if (vd != null) {
                status = vd.zzgw(str);
            } else {
                vd = new zzqf(str, z);
                status = vd.vf;
            }
        }
        return status;
    }

    public static Status zzcb(Context context) {
        Status status;
        com.google.android.gms.common.internal.zzab.zzb(context, "Context must not be null.");
        synchronized (zzamr) {
            if (vd == null) {
                vd = new zzqf(context);
            }
            status = vd.vf;
        }
        return status;
    }

    private static zzqf zzgx(String str) {
        zzqf zzqfVar;
        synchronized (zzamr) {
            if (vd == null) {
                throw new IllegalStateException(new StringBuilder(String.valueOf(str).length() + 34).append("Initialize must be called before ").append(str).append(".").toString());
            }
            zzqfVar = vd;
        }
        return zzqfVar;
    }

    Status zzgw(String str) {
        if (this.zzcjf == null || this.zzcjf.equals(str)) {
            return Status.sq;
        }
        String str2 = this.zzcjf;
        return new Status(10, new StringBuilder(String.valueOf(str2).length() + 97).append("Initialize was called with two different Google App IDs.  Only the first app ID will be used: '").append(str2).append("'.").toString());
    }
}
