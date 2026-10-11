package com.google.android.gms.auth;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.annotation.TargetApi;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.SystemClock;
import android.support.annotation.RequiresPermission;
import android.support.v4.view.MotionEventCompat;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.common.internal.zzm;
import com.google.android.gms.internal.zzbq;
import com.google.android.gms.internal.zzng;
import java.io.IOException;
import java.net.URISyntaxException;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzd {
    public static final int CHANGE_TYPE_ACCOUNT_ADDED = 1;
    public static final int CHANGE_TYPE_ACCOUNT_REMOVED = 2;
    public static final int CHANGE_TYPE_ACCOUNT_RENAMED_FROM = 3;
    public static final int CHANGE_TYPE_ACCOUNT_RENAMED_TO = 4;
    public static final String GOOGLE_ACCOUNT_TYPE = "com.google";
    public static final String KEY_ANDROID_PACKAGE_NAME;
    public static final String KEY_CALLER_UID;
    public static final String KEY_SUPPRESS_PROGRESS_SCREEN = "suppressProgressScreen";
    public static final String WORK_ACCOUNT_TYPE = "com.google.work";
    private static final ComponentName cf;
    private static final ComponentName cg;

    private interface zza<T> {
        T zzbs(IBinder iBinder) throws RemoteException, IOException, GoogleAuthException;
    }

    static {
        KEY_CALLER_UID = Build.VERSION.SDK_INT >= 11 ? "callerUid" : "callerUid";
        KEY_ANDROID_PACKAGE_NAME = Build.VERSION.SDK_INT >= 14 ? "androidPackageName" : "androidPackageName";
        cf = new ComponentName("com.google.android.gms", "com.google.android.gms.auth.GetToken");
        cg = new ComponentName("com.google.android.gms", "com.google.android.gms.recovery.RecoveryService");
    }

    zzd() {
    }

    public static void clearToken(Context context, final String str) throws GooglePlayServicesAvailabilityException, GoogleAuthException, IOException {
        zzab.zzhj("Calling this from your main thread can lead to deadlock");
        zzbb(context);
        final Bundle bundle = new Bundle();
        String str2 = context.getApplicationInfo().packageName;
        bundle.putString("clientPackageName", str2);
        if (!bundle.containsKey(KEY_ANDROID_PACKAGE_NAME)) {
            bundle.putString(KEY_ANDROID_PACKAGE_NAME, str2);
        }
        zza(context, cf, new zza<Void>() { // from class: com.google.android.gms.auth.zzd.2
            @Override // com.google.android.gms.auth.zzd.zza
            /* renamed from: zzbt, reason: merged with bridge method [inline-methods] */
            public Void zzbs(IBinder iBinder) throws RemoteException, IOException, GoogleAuthException {
                Bundle bundle2 = (Bundle) zzd.zzn(zzbq.zza.zza(iBinder).zza(str, bundle));
                String string = bundle2.getString("Error");
                if (bundle2.getBoolean("booleanResult")) {
                    return null;
                }
                throw new GoogleAuthException(string);
            }
        });
    }

    public static List<AccountChangeEvent> getAccountChangeEvents(Context context, final int i, final String str) throws GoogleAuthException, IOException {
        zzab.zzh(str, "accountName must be provided");
        zzab.zzhj("Calling this from your main thread can lead to deadlock");
        zzbb(context);
        return (List) zza(context, cf, new zza<List<AccountChangeEvent>>() { // from class: com.google.android.gms.auth.zzd.3
            @Override // com.google.android.gms.auth.zzd.zza
            /* renamed from: zzbu, reason: merged with bridge method [inline-methods] */
            public List<AccountChangeEvent> zzbs(IBinder iBinder) throws RemoteException, IOException, GoogleAuthException {
                return ((AccountChangeEventsResponse) zzd.zzn(zzbq.zza.zza(iBinder).zza(new AccountChangeEventsRequest().setAccountName(str).setEventIndex(i)))).getEvents();
            }
        });
    }

    public static String getAccountId(Context context, String str) throws GoogleAuthException, IOException {
        zzab.zzh(str, "accountName must be provided");
        zzab.zzhj("Calling this from your main thread can lead to deadlock");
        zzbb(context);
        return getToken(context, str, "^^_account_id_^^", new Bundle());
    }

    public static String getToken(Context context, Account account, String str) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        return getToken(context, account, str, new Bundle());
    }

    public static String getToken(Context context, Account account, String str, Bundle bundle) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        return zzc(context, account, str, bundle).getToken();
    }

    @Deprecated
    public static String getToken(Context context, String str, String str2) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        return getToken(context, new Account(str, "com.google"), str2);
    }

    @Deprecated
    public static String getToken(Context context, String str, String str2, Bundle bundle) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        return getToken(context, new Account(str, "com.google"), str2, bundle);
    }

    @RequiresPermission("android.permission.MANAGE_ACCOUNTS")
    @Deprecated
    public static void invalidateToken(Context context, String str) {
        AccountManager.get(context).invalidateAuthToken("com.google", str);
    }

    @TargetApi(MotionEventCompat.AXIS_BRAKE)
    public static Bundle removeAccount(Context context, final Account account) throws GoogleAuthException, IOException {
        zzab.zzy(context);
        zzab.zzb(account, "Account cannot be null.");
        zzbb(context);
        return (Bundle) zza(context, cf, new zza<Bundle>() { // from class: com.google.android.gms.auth.zzd.4
            @Override // com.google.android.gms.auth.zzd.zza
            /* renamed from: zzbv, reason: merged with bridge method [inline-methods] */
            public Bundle zzbs(IBinder iBinder) throws RemoteException, IOException, GoogleAuthException {
                return (Bundle) zzd.zzn(zzbq.zza.zza(iBinder).zza(account));
            }
        });
    }

    private static <T> T zza(Context context, ComponentName componentName, zza<T> zzaVar) throws IOException, GoogleAuthException {
        com.google.android.gms.common.zza zzaVar2 = new com.google.android.gms.common.zza();
        zzm zzce = zzm.zzce(context);
        try {
            if (!zzce.zza(componentName, zzaVar2, "GoogleAuthUtil")) {
                throw new IOException("Could not bind to service.");
            }
            try {
                return zzaVar.zzbs(zzaVar2.zzanf());
            } catch (RemoteException | InterruptedException e) {
                Log.i("GoogleAuthUtil", "Error on service connection.", e);
                throw new IOException("Error on service connection.", e);
            }
        } finally {
            zzce.zzb(componentName, zzaVar2, "GoogleAuthUtil");
        }
    }

    private static void zzbb(Context context) throws GoogleAuthException {
        try {
            com.google.android.gms.common.zze.zzbb(context.getApplicationContext());
        } catch (GooglePlayServicesNotAvailableException e) {
            throw new GoogleAuthException(e.getMessage());
        } catch (GooglePlayServicesRepairableException e2) {
            throw new GooglePlayServicesAvailabilityException(e2.getConnectionStatusCode(), e2.getMessage(), e2.getIntent());
        }
    }

    public static TokenData zzc(Context context, final Account account, final String str, Bundle bundle) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        zzab.zzhj("Calling this from your main thread can lead to deadlock");
        zzab.zzh(str, "Scope cannot be empty or null.");
        zzab.zzb(account, "Account cannot be null.");
        zzbb(context);
        final Bundle bundle2 = bundle == null ? new Bundle() : new Bundle(bundle);
        String str2 = context.getApplicationInfo().packageName;
        bundle2.putString("clientPackageName", str2);
        if (TextUtils.isEmpty(bundle2.getString(KEY_ANDROID_PACKAGE_NAME))) {
            bundle2.putString(KEY_ANDROID_PACKAGE_NAME, str2);
        }
        bundle2.putLong("service_connection_start_time_millis", SystemClock.elapsedRealtime());
        return (TokenData) zza(context, cf, new zza<TokenData>() { // from class: com.google.android.gms.auth.zzd.1
            @Override // com.google.android.gms.auth.zzd.zza
            /* renamed from: zzbr, reason: merged with bridge method [inline-methods] */
            public TokenData zzbs(IBinder iBinder) throws RemoteException, IOException, GoogleAuthException {
                Bundle bundle3 = (Bundle) zzd.zzn(zzbq.zza.zza(iBinder).zza(account, str, bundle2));
                TokenData zzd = TokenData.zzd(bundle3, "tokenDetails");
                if (zzd != null) {
                    return zzd;
                }
                String string = bundle3.getString("Error");
                Intent intent = (Intent) bundle3.getParcelable("userRecoveryIntent");
                zzng zzfx = zzng.zzfx(string);
                if (zzng.zza(zzfx)) {
                    String valueOf = String.valueOf(zzfx);
                    Log.w("GoogleAuthUtil", new StringBuilder(String.valueOf(valueOf).length() + 31).append("isUserRecoverableError status: ").append(valueOf).toString());
                    throw new UserRecoverableAuthException(string, intent);
                }
                if (zzng.zzb(zzfx)) {
                    throw new IOException(string);
                }
                throw new GoogleAuthException(string);
            }
        });
    }

    static void zzi(Intent intent) {
        if (intent == null) {
            throw new IllegalArgumentException("Callback cannot be null.");
        }
        try {
            Intent.parseUri(intent.toUri(1), 1);
        } catch (URISyntaxException e) {
            throw new IllegalArgumentException("Parameter callback contains invalid data. It must be serializable using toUri() and parseUri().");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> T zzn(T t) throws IOException {
        if (t != null) {
            return t;
        }
        Log.w("GoogleAuthUtil", "Binder call returned null.");
        throw new IOException("Service unavailable.");
    }
}
