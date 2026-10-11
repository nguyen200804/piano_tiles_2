package com.google.android.gms.common;

import android.R;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import android.util.TypedValue;
import android.widget.ProgressBar;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.common.internal.zzh;
import com.google.android.gms.common.internal.zzi;
import com.google.android.gms.common.util.zzs;
import com.google.android.gms.internal.zzqe;
import com.google.android.gms.internal.zzqk;
import com.google.android.gms.internal.zzqp;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class GoogleApiAvailability extends zzc {
    public static final String GOOGLE_PLAY_SERVICES_PACKAGE = "com.google.android.gms";
    private static final GoogleApiAvailability re = new GoogleApiAvailability();
    public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = zzc.GOOGLE_PLAY_SERVICES_VERSION_CODE;

    GoogleApiAvailability() {
    }

    public static GoogleApiAvailability getInstance() {
        return re;
    }

    public Dialog getErrorDialog(Activity activity, int i, int i2) {
        return getErrorDialog(activity, i, i2, null);
    }

    public Dialog getErrorDialog(Activity activity, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        return zza(activity, i, zzi.zza(activity, zza(activity, i, "d"), i2), onCancelListener);
    }

    @Override // com.google.android.gms.common.zzc
    @Nullable
    public PendingIntent getErrorResolutionPendingIntent(Context context, int i, int i2) {
        return super.getErrorResolutionPendingIntent(context, i, i2);
    }

    @Nullable
    public PendingIntent getErrorResolutionPendingIntent(Context context, ConnectionResult connectionResult) {
        if (connectionResult.hasResolution()) {
            return connectionResult.getResolution();
        }
        int errorCode = connectionResult.getErrorCode();
        if (com.google.android.gms.common.util.zzi.zzck(context) && errorCode == 2) {
            errorCode = 42;
        }
        return getErrorResolutionPendingIntent(context, errorCode, 0);
    }

    @Override // com.google.android.gms.common.zzc
    public final String getErrorString(int i) {
        return super.getErrorString(i);
    }

    @Override // com.google.android.gms.common.zzc
    @Nullable
    public String getOpenSourceSoftwareLicenseInfo(Context context) {
        return super.getOpenSourceSoftwareLicenseInfo(context);
    }

    @Override // com.google.android.gms.common.zzc
    public int isGooglePlayServicesAvailable(Context context) {
        return super.isGooglePlayServicesAvailable(context);
    }

    @Override // com.google.android.gms.common.zzc
    public final boolean isUserResolvableError(int i) {
        return super.isUserResolvableError(i);
    }

    @MainThread
    public Task<Void> makeGooglePlayServicesAvailable(Activity activity) {
        zzab.zzhi("makeGooglePlayServicesAvailable must be called from the main thread");
        int isGooglePlayServicesAvailable = isGooglePlayServicesAvailable(activity);
        if (isGooglePlayServicesAvailable == 0) {
            return Tasks.forResult((Object) null);
        }
        zzqp zzu = zzqp.zzu(activity);
        zzu.zzk(new ConnectionResult(isGooglePlayServicesAvailable, null));
        return zzu.getTask();
    }

    public boolean showErrorDialogFragment(Activity activity, int i, int i2) {
        return showErrorDialogFragment(activity, i, i2, null);
    }

    public boolean showErrorDialogFragment(Activity activity, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        Dialog errorDialog = getErrorDialog(activity, i, i2, onCancelListener);
        if (errorDialog == null) {
            return false;
        }
        zza(activity, errorDialog, GooglePlayServicesUtil.GMS_ERROR_DIALOG, onCancelListener);
        return true;
    }

    public void showErrorNotification(Context context, int i) {
        if (i == 6) {
            Log.e("GoogleApiAvailability", "showErrorNotification(context, errorCode) is called for RESOLUTION_REQUIRED when showErrorNotification(context, result) should be called");
        }
        if (isUserResolvableError(i)) {
            GooglePlayServicesUtil.showErrorNotification(i, context);
        }
    }

    public void showErrorNotification(Context context, ConnectionResult connectionResult) {
        PendingIntent errorResolutionPendingIntent = getErrorResolutionPendingIntent(context, connectionResult);
        if (errorResolutionPendingIntent != null) {
            GooglePlayServicesUtil.zza(connectionResult.getErrorCode(), context, errorResolutionPendingIntent);
        }
    }

    public Dialog zza(Activity activity, DialogInterface.OnCancelListener onCancelListener) {
        ProgressBar progressBar = new ProgressBar(activity, null, R.attr.progressBarStyleLarge);
        progressBar.setIndeterminate(true);
        progressBar.setVisibility(0);
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setView(progressBar);
        builder.setMessage(activity.getResources().getString(com.google.android.gms.R.string.common_google_play_services_updating_text, GooglePlayServicesUtil.zzbv(activity)));
        builder.setTitle(com.google.android.gms.R.string.common_google_play_services_updating_title);
        builder.setPositiveButton("", (DialogInterface.OnClickListener) null);
        AlertDialog create = builder.create();
        zza(activity, create, "GooglePlayServicesUpdatingDialog", onCancelListener);
        return create;
    }

    @TargetApi(14)
    Dialog zza(Context context, int i, zzi zziVar, DialogInterface.OnCancelListener onCancelListener) {
        AlertDialog.Builder builder = null;
        if (i == 0) {
            return null;
        }
        if (com.google.android.gms.common.util.zzi.zzck(context) && i == 2) {
            i = 42;
        }
        if (zzs.zzavq()) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
            if ("Theme.Dialog.Alert".equals(context.getResources().getResourceEntryName(typedValue.resourceId))) {
                builder = new AlertDialog.Builder(context, 5);
            }
        }
        if (builder == null) {
            builder = new AlertDialog.Builder(context);
        }
        builder.setMessage(zzh.zzc(context, i, zze.zzbv(context)));
        if (onCancelListener != null) {
            builder.setOnCancelListener(onCancelListener);
        }
        String zzh = zzh.zzh(context, i);
        if (zzh != null) {
            builder.setPositiveButton(zzh, zziVar);
        }
        String zzf = zzh.zzf(context, i);
        if (zzf != null) {
            builder.setTitle(zzf);
        }
        return builder.create();
    }

    @Override // com.google.android.gms.common.zzc
    @Nullable
    public PendingIntent zza(Context context, int i, int i2, @Nullable String str) {
        return super.zza(context, i, i2, str);
    }

    @Override // com.google.android.gms.common.zzc
    @Nullable
    public Intent zza(Context context, int i, @Nullable String str) {
        return super.zza(context, i, str);
    }

    @Nullable
    public zzqe zza(Context context, zzqe.zza zzaVar) {
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addDataScheme("package");
        zzqe zzqeVar = new zzqe(zzaVar);
        context.registerReceiver(zzqeVar, intentFilter);
        zzqeVar.setContext(context);
        if (zzl(context, "com.google.android.gms")) {
            return zzqeVar;
        }
        zzaVar.zzaou();
        zzqeVar.unregister();
        return null;
    }

    @TargetApi(11)
    void zza(Activity activity, Dialog dialog, String str, DialogInterface.OnCancelListener onCancelListener) {
        boolean z;
        try {
            z = activity instanceof FragmentActivity;
        } catch (NoClassDefFoundError e) {
            z = false;
        }
        if (z) {
            SupportErrorDialogFragment.newInstance(dialog, onCancelListener).show(((FragmentActivity) activity).getSupportFragmentManager(), str);
        } else {
            if (!zzs.zzavn()) {
                throw new RuntimeException("This Activity does not support Fragments.");
            }
            ErrorDialogFragment.newInstance(dialog, onCancelListener).show(activity.getFragmentManager(), str);
        }
    }

    public void zza(Context context, ConnectionResult connectionResult, int i) {
        PendingIntent errorResolutionPendingIntent = getErrorResolutionPendingIntent(context, connectionResult);
        if (errorResolutionPendingIntent != null) {
            GooglePlayServicesUtil.zza(connectionResult.getErrorCode(), context, GoogleApiActivity.zza(context, errorResolutionPendingIntent, i));
        }
    }

    public boolean zza(Activity activity, @NonNull zzqk zzqkVar, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        Dialog zza = zza(activity, i, zzi.zza(zzqkVar, zza(activity, i, "d"), i2), onCancelListener);
        if (zza == null) {
            return false;
        }
        zza(activity, zza, GooglePlayServicesUtil.GMS_ERROR_DIALOG, onCancelListener);
        return true;
    }

    @Override // com.google.android.gms.common.zzc
    public int zzbn(Context context) {
        return super.zzbn(context);
    }

    @Override // com.google.android.gms.common.zzc
    public boolean zzc(Context context, int i) {
        return super.zzc(context, i);
    }

    @Override // com.google.android.gms.common.zzc
    @Nullable
    @Deprecated
    public Intent zzfc(int i) {
        return super.zzfc(i);
    }
}
