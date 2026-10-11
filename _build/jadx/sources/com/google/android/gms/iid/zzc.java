package com.google.android.gms.iid;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.ConditionVariable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.os.Process;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.KeyPair;
import java.security.PrivateKey;
import java.security.Signature;
import java.security.interfaces.RSAPrivateKey;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import org.apache.commons.io.IOUtils;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzc {
    static String aaG = null;
    static int aaH = 0;
    static int aaI = 0;
    static int aaJ = 0;
    PendingIntent Zq;
    Messenger Zu;
    Map<String, Object> aaK = new HashMap();
    Messenger aaL;
    MessengerCompat aaM;
    long aaN;
    long aaO;
    int aaP;
    int aaQ;
    long aaR;
    Context zzagf;

    public zzc(Context context) {
        this.zzagf = context;
    }

    static String zza(KeyPair keyPair, String... strArr) {
        try {
            byte[] bytes = TextUtils.join(IOUtils.LINE_SEPARATOR_UNIX, strArr).getBytes("UTF-8");
            try {
                PrivateKey privateKey = keyPair.getPrivate();
                Signature signature = Signature.getInstance(privateKey instanceof RSAPrivateKey ? "SHA256withRSA" : "SHA256withECDSA");
                signature.initSign(privateKey);
                signature.update(bytes);
                return InstanceID.zzu(signature.sign());
            } catch (GeneralSecurityException e) {
                Log.e("InstanceID/Rpc", "Unable to sign registration request", e);
                return null;
            }
        } catch (UnsupportedEncodingException e2) {
            Log.e("InstanceID/Rpc", "Unable to encode string", e2);
            return null;
        }
    }

    private void zzae(Object obj) {
        synchronized (getClass()) {
            for (String str : this.aaK.keySet()) {
                Object obj2 = this.aaK.get(str);
                this.aaK.put(str, obj);
                zzh(obj2, obj);
            }
        }
    }

    private Intent zzb(Bundle bundle, KeyPair keyPair) throws IOException {
        Intent intent;
        ConditionVariable conditionVariable = new ConditionVariable();
        String zzbmc = zzbmc();
        synchronized (getClass()) {
            this.aaK.put(zzbmc, conditionVariable);
        }
        zza(bundle, keyPair, zzbmc);
        conditionVariable.block(30000L);
        synchronized (getClass()) {
            Object remove = this.aaK.remove(zzbmc);
            if (!(remove instanceof Intent)) {
                if (remove instanceof String) {
                    throw new IOException((String) remove);
                }
                String valueOf = String.valueOf(remove);
                Log.w("InstanceID/Rpc", new StringBuilder(String.valueOf(valueOf).length() + 12).append("No response ").append(valueOf).toString());
                throw new IOException(InstanceID.ERROR_TIMEOUT);
            }
            intent = (Intent) remove;
        }
        return intent;
    }

    public static synchronized String zzbmc() {
        String num;
        synchronized (zzc.class) {
            int i = aaJ;
            aaJ = i + 1;
            num = Integer.toString(i);
        }
        return num;
    }

    public static String zzdi(Context context) {
        if (aaG != null) {
            return aaG;
        }
        aaH = Process.myUid();
        PackageManager packageManager = context.getPackageManager();
        for (ResolveInfo resolveInfo : packageManager.queryIntentServices(new Intent("com.google.android.c2dm.intent.REGISTER"), 0)) {
            if (packageManager.checkPermission("com.google.android.c2dm.permission.RECEIVE", resolveInfo.serviceInfo.packageName) == 0) {
                try {
                    ApplicationInfo applicationInfo = packageManager.getApplicationInfo(resolveInfo.serviceInfo.packageName, 0);
                    Log.w("InstanceID/Rpc", new StringBuilder(17).append("Found ").append(applicationInfo.uid).toString());
                    aaI = applicationInfo.uid;
                    aaG = resolveInfo.serviceInfo.packageName;
                    return aaG;
                } catch (PackageManager.NameNotFoundException e) {
                }
            } else {
                String valueOf = String.valueOf(resolveInfo.serviceInfo.packageName);
                String valueOf2 = String.valueOf("com.google.android.c2dm.intent.REGISTER");
                Log.w("InstanceID/Rpc", new StringBuilder(String.valueOf(valueOf).length() + 56 + String.valueOf(valueOf2).length()).append("Possible malicious package ").append(valueOf).append(" declares ").append(valueOf2).append(" without permission").toString());
            }
        }
        Log.w("InstanceID/Rpc", "Failed to resolve REGISTER intent, falling back");
        try {
            ApplicationInfo applicationInfo2 = packageManager.getApplicationInfo("com.google.android.gms", 0);
            aaG = applicationInfo2.packageName;
            aaI = applicationInfo2.uid;
            return aaG;
        } catch (PackageManager.NameNotFoundException e2) {
            try {
                ApplicationInfo applicationInfo3 = packageManager.getApplicationInfo("com.google.android.gsf", 0);
                aaG = applicationInfo3.packageName;
                aaI = applicationInfo3.uid;
                return aaG;
            } catch (PackageManager.NameNotFoundException e3) {
                Log.w("InstanceID/Rpc", "Both Google Play Services and legacy GSF package are missing");
                return null;
            }
        }
    }

    private static int zzdj(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(zzdi(context), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            return -1;
        }
    }

    private void zzh(Object obj, Object obj2) {
        if (obj instanceof ConditionVariable) {
            ((ConditionVariable) obj).open();
        }
        if (obj instanceof Messenger) {
            Messenger messenger = (Messenger) obj;
            Message obtain = Message.obtain();
            obtain.obj = obj2;
            try {
                messenger.send(obtain);
            } catch (RemoteException e) {
                String valueOf = String.valueOf(e);
                Log.w("InstanceID/Rpc", new StringBuilder(String.valueOf(valueOf).length() + 24).append("Failed to send response ").append(valueOf).toString());
            }
        }
    }

    private void zzi(String str, Object obj) {
        synchronized (getClass()) {
            Object obj2 = this.aaK.get(str);
            this.aaK.put(str, obj);
            zzh(obj2, obj);
        }
    }

    private void zzke(String str) {
        if ("com.google.android.gsf".equals(aaG)) {
            this.aaP++;
            if (this.aaP >= 3) {
                if (this.aaP == 3) {
                    this.aaQ = new Random().nextInt(1000) + 1000;
                }
                this.aaQ *= 2;
                this.aaR = SystemClock.elapsedRealtime() + this.aaQ;
                Log.w("InstanceID/Rpc", new StringBuilder(String.valueOf(str).length() + 31).append("Backoff due to ").append(str).append(" for ").append(this.aaQ).toString());
            }
        }
    }

    Intent zza(Bundle bundle, KeyPair keyPair) throws IOException {
        Intent zzb = zzb(bundle, keyPair);
        return (zzb == null || !zzb.hasExtra("google.messenger")) ? zzb : zzb(bundle, keyPair);
    }

    void zza(Bundle bundle, KeyPair keyPair, String str) throws IOException {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (this.aaR != 0 && elapsedRealtime <= this.aaR) {
            Log.w("InstanceID/Rpc", new StringBuilder(78).append("Backoff mode, next request attempt: ").append(this.aaR - elapsedRealtime).append(" interval: ").append(this.aaQ).toString());
            throw new IOException(InstanceID.ERROR_BACKOFF);
        }
        zzbmb();
        if (aaG == null) {
            throw new IOException(InstanceID.ERROR_MISSING_INSTANCEID_SERVICE);
        }
        this.aaN = SystemClock.elapsedRealtime();
        Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
        intent.setPackage(aaG);
        bundle.putString("gmsv", Integer.toString(zzdj(this.zzagf)));
        bundle.putString("osv", Integer.toString(Build.VERSION.SDK_INT));
        bundle.putString("app_ver", Integer.toString(InstanceID.zzdf(this.zzagf)));
        bundle.putString("app_ver_name", InstanceID.zzdg(this.zzagf));
        bundle.putString("cliv", "iid-9452000");
        bundle.putString("appid", InstanceID.zza(keyPair));
        String zzu = InstanceID.zzu(keyPair.getPublic().getEncoded());
        bundle.putString("pub2", zzu);
        bundle.putString("sig", zza(keyPair, this.zzagf.getPackageName(), zzu));
        intent.putExtras(bundle);
        zzs(intent);
        zzb(intent, str);
    }

    protected void zzb(Intent intent, String str) {
        this.aaN = SystemClock.elapsedRealtime();
        intent.putExtra("kid", new StringBuilder(String.valueOf(str).length() + 5).append("|ID|").append(str).append("|").toString());
        intent.putExtra("X-kid", new StringBuilder(String.valueOf(str).length() + 5).append("|ID|").append(str).append("|").toString());
        boolean equals = "com.google.android.gsf".equals(aaG);
        String stringExtra = intent.getStringExtra("useGsf");
        if (stringExtra != null) {
            equals = "1".equals(stringExtra);
        }
        if (Log.isLoggable("InstanceID/Rpc", 3)) {
            String valueOf = String.valueOf(intent.getExtras());
            Log.d("InstanceID/Rpc", new StringBuilder(String.valueOf(valueOf).length() + 8).append("Sending ").append(valueOf).toString());
        }
        if (this.aaL != null) {
            intent.putExtra("google.messenger", this.Zu);
            Message obtain = Message.obtain();
            obtain.obj = intent;
            try {
                this.aaL.send(obtain);
                return;
            } catch (RemoteException e) {
                if (Log.isLoggable("InstanceID/Rpc", 3)) {
                    Log.d("InstanceID/Rpc", "Messenger failed, fallback to startService");
                }
            }
        }
        if (equals) {
            Intent intent2 = new Intent("com.google.android.gms.iid.InstanceID");
            intent2.setPackage(this.zzagf.getPackageName());
            intent2.putExtra("GSF", intent);
            this.zzagf.startService(intent2);
            return;
        }
        intent.putExtra("google.messenger", this.Zu);
        intent.putExtra("messenger2", "1");
        if (this.aaM != null) {
            Message obtain2 = Message.obtain();
            obtain2.obj = intent;
            try {
                this.aaM.send(obtain2);
                return;
            } catch (RemoteException e2) {
                if (Log.isLoggable("InstanceID/Rpc", 3)) {
                    Log.d("InstanceID/Rpc", "Messenger failed, fallback to startService");
                }
            }
        }
        this.zzagf.startService(intent);
    }

    void zzbmb() {
        if (this.Zu != null) {
            return;
        }
        zzdi(this.zzagf);
        this.Zu = new Messenger(new Handler(Looper.getMainLooper()) { // from class: com.google.android.gms.iid.zzc.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                zzc.this.zze(message);
            }
        });
    }

    public void zze(Message message) {
        if (message == null) {
            return;
        }
        if (!(message.obj instanceof Intent)) {
            Log.w("InstanceID/Rpc", "Dropping invalid message");
            return;
        }
        Intent intent = (Intent) message.obj;
        intent.setExtrasClassLoader(MessengerCompat.class.getClassLoader());
        if (intent.hasExtra("google.messenger")) {
            Parcelable parcelableExtra = intent.getParcelableExtra("google.messenger");
            if (parcelableExtra instanceof MessengerCompat) {
                this.aaM = (MessengerCompat) parcelableExtra;
            }
            if (parcelableExtra instanceof Messenger) {
                this.aaL = (Messenger) parcelableExtra;
            }
        }
        zzv((Intent) message.obj);
    }

    synchronized void zzs(Intent intent) {
        if (this.Zq == null) {
            Intent intent2 = new Intent();
            intent2.setPackage("com.google.example.invalidpackage");
            this.Zq = PendingIntent.getBroadcast(this.zzagf, 0, intent2, 0);
        }
        intent.putExtra("app", this.Zq);
    }

    String zzt(Intent intent) throws IOException {
        if (intent == null) {
            throw new IOException("SERVICE_NOT_AVAILABLE");
        }
        String stringExtra = intent.getStringExtra("registration_id");
        if (stringExtra == null) {
            stringExtra = intent.getStringExtra("unregistered");
        }
        intent.getLongExtra("Retry-After", 0L);
        if (stringExtra != null) {
        }
        if (stringExtra != null) {
            return stringExtra;
        }
        String stringExtra2 = intent.getStringExtra("error");
        if (stringExtra2 != null) {
            throw new IOException(stringExtra2);
        }
        String valueOf = String.valueOf(intent.getExtras());
        Log.w("InstanceID/Rpc", new StringBuilder(String.valueOf(valueOf).length() + 29).append("Unexpected response from GCM ").append(valueOf).toString(), new Throwable());
        throw new IOException("SERVICE_NOT_AVAILABLE");
    }

    void zzu(Intent intent) {
        String str;
        String str2;
        String stringExtra = intent.getStringExtra("error");
        if (stringExtra == null) {
            String valueOf = String.valueOf(intent.getExtras());
            Log.w("InstanceID/Rpc", new StringBuilder(String.valueOf(valueOf).length() + 49).append("Unexpected response, no error or registration id ").append(valueOf).toString());
            return;
        }
        if (Log.isLoggable("InstanceID/Rpc", 3)) {
            String valueOf2 = String.valueOf(stringExtra);
            Log.d("InstanceID/Rpc", valueOf2.length() != 0 ? "Received InstanceID error ".concat(valueOf2) : new String("Received InstanceID error "));
        }
        if (stringExtra.startsWith("|")) {
            String[] split = stringExtra.split("\\|");
            if (!"ID".equals(split[1])) {
                String valueOf3 = String.valueOf(stringExtra);
                Log.w("InstanceID/Rpc", valueOf3.length() != 0 ? "Unexpected structured response ".concat(valueOf3) : new String("Unexpected structured response "));
            }
            if (split.length > 2) {
                str = split[2];
                str2 = split[3];
                if (str2.startsWith(":")) {
                    str2 = str2.substring(1);
                }
            } else {
                str2 = "UNKNOWN";
                str = null;
            }
            intent.putExtra("error", str2);
        } else {
            str = null;
            str2 = stringExtra;
        }
        if (str == null) {
            zzae(str2);
        } else {
            zzi(str, str2);
        }
        long longExtra = intent.getLongExtra("Retry-After", 0L);
        if (longExtra > 0) {
            this.aaO = SystemClock.elapsedRealtime();
            this.aaQ = ((int) longExtra) * 1000;
            this.aaR = SystemClock.elapsedRealtime() + this.aaQ;
            Log.w("InstanceID/Rpc", new StringBuilder(52).append("Explicit request from server to backoff: ").append(this.aaQ).toString());
            return;
        }
        if ("SERVICE_NOT_AVAILABLE".equals(str2) || "AUTHENTICATION_FAILED".equals(str2)) {
            zzke(str2);
        }
    }

    public void zzv(Intent intent) {
        if (intent == null) {
            if (Log.isLoggable("InstanceID/Rpc", 3)) {
                Log.d("InstanceID/Rpc", "Unexpected response: null");
                return;
            }
            return;
        }
        String action = intent.getAction();
        if (!"com.google.android.c2dm.intent.REGISTRATION".equals(action) && !"com.google.android.gms.iid.InstanceID".equals(action)) {
            if (Log.isLoggable("InstanceID/Rpc", 3)) {
                String valueOf = String.valueOf(intent.getAction());
                Log.d("InstanceID/Rpc", valueOf.length() != 0 ? "Unexpected response ".concat(valueOf) : new String("Unexpected response "));
                return;
            }
            return;
        }
        String stringExtra = intent.getStringExtra("registration_id");
        String stringExtra2 = stringExtra == null ? intent.getStringExtra("unregistered") : stringExtra;
        if (stringExtra2 == null) {
            zzu(intent);
            return;
        }
        this.aaN = SystemClock.elapsedRealtime();
        this.aaR = 0L;
        this.aaP = 0;
        this.aaQ = 0;
        if (Log.isLoggable("InstanceID/Rpc", 3)) {
            String valueOf2 = String.valueOf(intent.getExtras());
            Log.d("InstanceID/Rpc", new StringBuilder(String.valueOf(stringExtra2).length() + 16 + String.valueOf(valueOf2).length()).append("AppIDResponse: ").append(stringExtra2).append(" ").append(valueOf2).toString());
        }
        String str = null;
        if (stringExtra2.startsWith("|")) {
            String[] split = stringExtra2.split("\\|");
            if (!"ID".equals(split[1])) {
                String valueOf3 = String.valueOf(stringExtra2);
                Log.w("InstanceID/Rpc", valueOf3.length() != 0 ? "Unexpected structured response ".concat(valueOf3) : new String("Unexpected structured response "));
            }
            String str2 = split[2];
            if (split.length > 4) {
                if ("SYNC".equals(split[3])) {
                    InstanceIDListenerService.zzdh(this.zzagf);
                } else if ("RST".equals(split[3])) {
                    InstanceIDListenerService.zza(this.zzagf, InstanceID.getInstance(this.zzagf).zzbly());
                    intent.removeExtra("registration_id");
                    zzi(str2, intent);
                    return;
                }
            }
            String str3 = split[split.length - 1];
            if (str3.startsWith(":")) {
                str3 = str3.substring(1);
            }
            intent.putExtra("registration_id", str3);
            str = str2;
        }
        if (str == null) {
            zzae(intent);
        } else {
            zzi(str, intent);
        }
    }
}
