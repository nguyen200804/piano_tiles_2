package com.google.android.gms.iid;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.common.util.zzx;
import java.io.File;
import java.io.IOException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzd {
    SharedPreferences aaT;
    Context zzagf;

    public zzd(Context context) {
        this(context, "com.google.android.gms.appid");
    }

    public zzd(Context context, String str) {
        this.zzagf = context;
        this.aaT = context.getSharedPreferences(str, 4);
        String valueOf = String.valueOf(str);
        String valueOf2 = String.valueOf("-no-backup");
        zzkf(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
    }

    private String zzh(String str, String str2, String str3) {
        String valueOf = String.valueOf("|T|");
        return new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(valueOf).length() + String.valueOf(str2).length() + String.valueOf(str3).length()).append(str).append(valueOf).append(str2).append("|").append(str3).toString();
    }

    private void zzkf(String str) {
        File file = new File(zzx.getNoBackupFilesDir(this.zzagf), str);
        if (file.exists()) {
            return;
        }
        try {
            if (!file.createNewFile() || isEmpty()) {
                return;
            }
            Log.i("InstanceID/Store", "App restored, clearing state");
            InstanceIDListenerService.zza(this.zzagf, this);
        } catch (IOException e) {
            if (Log.isLoggable("InstanceID/Store", 3)) {
                String valueOf = String.valueOf(e.getMessage());
                Log.d("InstanceID/Store", valueOf.length() != 0 ? "Error creating file in no backup dir: ".concat(valueOf) : new String("Error creating file in no backup dir: "));
            }
        }
    }

    synchronized String get(String str) {
        return this.aaT.getString(str, null);
    }

    synchronized String get(String str, String str2) {
        SharedPreferences sharedPreferences;
        String valueOf;
        sharedPreferences = this.aaT;
        valueOf = String.valueOf("|S|");
        return sharedPreferences.getString(new StringBuilder(String.valueOf(str).length() + 0 + String.valueOf(valueOf).length() + String.valueOf(str2).length()).append(str).append(valueOf).append(str2).toString(), null);
    }

    public boolean isEmpty() {
        return this.aaT.getAll().isEmpty();
    }

    synchronized void zza(SharedPreferences.Editor editor, String str, String str2, String str3) {
        String valueOf = String.valueOf("|S|");
        editor.putString(new StringBuilder(String.valueOf(str).length() + 0 + String.valueOf(valueOf).length() + String.valueOf(str2).length()).append(str).append(valueOf).append(str2).toString(), str3);
    }

    public synchronized void zza(String str, String str2, String str3, String str4, String str5) {
        String zzh = zzh(str, str2, str3);
        SharedPreferences.Editor edit = this.aaT.edit();
        edit.putString(zzh, str4);
        edit.putString("appVersion", str5);
        edit.putString("lastToken", Long.toString(System.currentTimeMillis() / 1000));
        edit.commit();
    }

    public synchronized void zzbmd() {
        this.aaT.edit().clear().commit();
    }

    synchronized KeyPair zze(String str, long j) {
        KeyPair zzblv;
        zzblv = zza.zzblv();
        SharedPreferences.Editor edit = this.aaT.edit();
        zza(edit, str, "|P|", InstanceID.zzu(zzblv.getPublic().getEncoded()));
        zza(edit, str, "|K|", InstanceID.zzu(zzblv.getPrivate().getEncoded()));
        zza(edit, str, "cre", Long.toString(j));
        edit.commit();
        return zzblv;
    }

    public synchronized String zzi(String str, String str2, String str3) {
        return this.aaT.getString(zzh(str, str2, str3), null);
    }

    public synchronized void zzj(String str, String str2, String str3) {
        String zzh = zzh(str, str2, str3);
        SharedPreferences.Editor edit = this.aaT.edit();
        edit.remove(zzh);
        edit.commit();
    }

    public synchronized void zzkg(String str) {
        SharedPreferences.Editor edit = this.aaT.edit();
        for (String str2 : this.aaT.getAll().keySet()) {
            if (str2.startsWith(str)) {
                edit.remove(str2);
            }
        }
        edit.commit();
    }

    public KeyPair zzkh(String str) {
        return zzkk(str);
    }

    void zzki(String str) {
        zzkg(String.valueOf(str).concat("|"));
    }

    public void zzkj(String str) {
        zzkg(String.valueOf(str).concat("|T|"));
    }

    KeyPair zzkk(String str) {
        String str2 = get(str, "|P|");
        String str3 = get(str, "|K|");
        if (str2 == null || str3 == null) {
            return null;
        }
        try {
            byte[] decode = Base64.decode(str2, 8);
            byte[] decode2 = Base64.decode(str3, 8);
            KeyFactory keyFactory = KeyFactory.getInstance("RSA");
            return new KeyPair(keyFactory.generatePublic(new X509EncodedKeySpec(decode)), keyFactory.generatePrivate(new PKCS8EncodedKeySpec(decode2)));
        } catch (NoSuchAlgorithmException | InvalidKeySpecException e) {
            String valueOf = String.valueOf(e);
            Log.w("InstanceID/Store", new StringBuilder(String.valueOf(valueOf).length() + 19).append("Invalid key stored ").append(valueOf).toString());
            InstanceIDListenerService.zza(this.zzagf, this);
            return null;
        }
    }
}
