package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.zzab;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzk {
    private static final Lock ep = new ReentrantLock();
    private static zzk eq;
    private final Lock er = new ReentrantLock();
    private final SharedPreferences es;

    zzk(Context context) {
        this.es = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }

    public static zzk zzbc(Context context) {
        zzab.zzy(context);
        ep.lock();
        try {
            if (eq == null) {
                eq = new zzk(context.getApplicationContext());
            }
            return eq;
        } finally {
            ep.unlock();
        }
    }

    private String zzy(String str, String str2) {
        String valueOf = String.valueOf(":");
        return new StringBuilder(String.valueOf(str).length() + 0 + String.valueOf(valueOf).length() + String.valueOf(str2).length()).append(str).append(valueOf).append(str2).toString();
    }

    void zza(GoogleSignInAccount googleSignInAccount, GoogleSignInOptions googleSignInOptions) {
        zzab.zzy(googleSignInAccount);
        zzab.zzy(googleSignInOptions);
        String zzafm = googleSignInAccount.zzafm();
        zzx(zzy("googleSignInAccount", zzafm), googleSignInAccount.zzafo());
        zzx(zzy("googleSignInOptions", zzafm), googleSignInOptions.zzafn());
    }

    public GoogleSignInAccount zzagj() {
        return zzfs(zzfu("defaultGoogleSignInAccount"));
    }

    public GoogleSignInOptions zzagk() {
        return zzft(zzfu("defaultGoogleSignInAccount"));
    }

    public void zzagl() {
        String zzfu = zzfu("defaultGoogleSignInAccount");
        zzfw("defaultGoogleSignInAccount");
        zzfv(zzfu);
    }

    public void zzb(GoogleSignInAccount googleSignInAccount, GoogleSignInOptions googleSignInOptions) {
        zzab.zzy(googleSignInAccount);
        zzab.zzy(googleSignInOptions);
        zzx("defaultGoogleSignInAccount", googleSignInAccount.zzafm());
        zza(googleSignInAccount, googleSignInOptions);
    }

    GoogleSignInAccount zzfs(String str) {
        String zzfu;
        if (TextUtils.isEmpty(str) || (zzfu = zzfu(zzy("googleSignInAccount", str))) == null) {
            return null;
        }
        try {
            return GoogleSignInAccount.zzfo(zzfu);
        } catch (JSONException e) {
            return null;
        }
    }

    GoogleSignInOptions zzft(String str) {
        String zzfu;
        if (TextUtils.isEmpty(str) || (zzfu = zzfu(zzy("googleSignInOptions", str))) == null) {
            return null;
        }
        try {
            return GoogleSignInOptions.zzfq(zzfu);
        } catch (JSONException e) {
            return null;
        }
    }

    protected String zzfu(String str) {
        this.er.lock();
        try {
            return this.es.getString(str, null);
        } finally {
            this.er.unlock();
        }
    }

    void zzfv(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        zzfw(zzy("googleSignInAccount", str));
        zzfw(zzy("googleSignInOptions", str));
    }

    protected void zzfw(String str) {
        this.er.lock();
        try {
            this.es.edit().remove(str).apply();
        } finally {
            this.er.unlock();
        }
    }

    protected void zzx(String str, String str2) {
        this.er.lock();
        try {
            this.es.edit().putString(str, str2).apply();
        } finally {
            this.er.unlock();
        }
    }
}
