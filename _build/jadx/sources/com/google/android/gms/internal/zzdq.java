package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.customtabs.CustomTabsCallback;
import android.support.customtabs.CustomTabsClient;
import android.support.customtabs.CustomTabsServiceConnection;
import android.support.customtabs.CustomTabsSession;
import java.util.List;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzdq implements zzaqc {

    @Nullable
    private CustomTabsSession zzbeo;

    @Nullable
    private CustomTabsClient zzbep;

    @Nullable
    private CustomTabsServiceConnection zzbeq;

    @Nullable
    private zza zzber;

    public interface zza {
        void zzkn();

        void zzko();
    }

    public static boolean zzo(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            return false;
        }
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.example.com"));
        ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 0);
        List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
        if (queryIntentActivities == null || resolveActivity == null) {
            return false;
        }
        for (int i = 0; i < queryIntentActivities.size(); i++) {
            if (resolveActivity.activityInfo.name.equals(queryIntentActivities.get(i).activityInfo.name)) {
                return resolveActivity.activityInfo.packageName.equals(zzaqa.zzex(context));
            }
        }
        return false;
    }

    public boolean mayLaunchUrl(Uri uri, Bundle bundle, List<Bundle> list) {
        CustomTabsSession zzkl;
        if (this.zzbep == null || (zzkl = zzkl()) == null) {
            return false;
        }
        return zzkl.mayLaunchUrl(uri, bundle, list);
    }

    @Override // com.google.android.gms.internal.zzaqc
    public void zza(CustomTabsClient customTabsClient) {
        this.zzbep = customTabsClient;
        this.zzbep.warmup(0L);
        if (this.zzber != null) {
            this.zzber.zzkn();
        }
    }

    public void zza(zza zzaVar) {
        this.zzber = zzaVar;
    }

    public void zzd(Activity activity) {
        if (this.zzbeq == null) {
            return;
        }
        activity.unbindService(this.zzbeq);
        this.zzbep = null;
        this.zzbeo = null;
        this.zzbeq = null;
    }

    public void zze(Activity activity) {
        String zzex;
        if (this.zzbep == null && (zzex = zzaqa.zzex(activity)) != null) {
            this.zzbeq = new zzaqb(this);
            CustomTabsClient.bindCustomTabsService(activity, zzex, this.zzbeq);
        }
    }

    @Nullable
    public CustomTabsSession zzkl() {
        if (this.zzbep == null) {
            this.zzbeo = null;
        } else if (this.zzbeo == null) {
            this.zzbeo = this.zzbep.newSession((CustomTabsCallback) null);
        }
        return this.zzbeo;
    }

    @Override // com.google.android.gms.internal.zzaqc
    public void zzkm() {
        this.zzbep = null;
        this.zzbeo = null;
        if (this.zzber != null) {
            this.zzber.zzko();
        }
    }
}
