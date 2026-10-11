package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.mopub.common.Constants;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.LinkedList;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzim implements Thread.UncaughtExceptionHandler {
    private Context mContext;
    private VersionInfoParcel zzamw;

    @Nullable
    private Thread.UncaughtExceptionHandler zzcac;

    @Nullable
    private Thread.UncaughtExceptionHandler zzcad;

    public zzim(Context context, VersionInfoParcel versionInfoParcel, @Nullable Thread.UncaughtExceptionHandler uncaughtExceptionHandler, @Nullable Thread.UncaughtExceptionHandler uncaughtExceptionHandler2) {
        this.zzcac = uncaughtExceptionHandler;
        this.zzcad = uncaughtExceptionHandler2;
        this.mContext = context;
        this.zzamw = versionInfoParcel;
    }

    public static zzim zza(Context context, Thread thread, VersionInfoParcel versionInfoParcel) {
        if (context == null || thread == null || versionInfoParcel == null) {
            return null;
        }
        if (!zzu(context)) {
            return null;
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = thread.getUncaughtExceptionHandler();
        zzim zzimVar = new zzim(context, versionInfoParcel, uncaughtExceptionHandler, Thread.getDefaultUncaughtExceptionHandler());
        if (uncaughtExceptionHandler != null && (uncaughtExceptionHandler instanceof zzim)) {
            return (zzim) uncaughtExceptionHandler;
        }
        try {
            thread.setUncaughtExceptionHandler(zzimVar);
            return zzimVar;
        } catch (SecurityException e) {
            zzkd.zzc("Fail to set UncaughtExceptionHandler.", e);
            return null;
        }
    }

    private Throwable zzc(Throwable th) {
        Throwable th2;
        if (zzdc.zzaye.get().booleanValue()) {
            return th;
        }
        LinkedList linkedList = new LinkedList();
        while (th != null) {
            linkedList.push(th);
            th = th.getCause();
        }
        Throwable th3 = null;
        while (!linkedList.isEmpty()) {
            Throwable th4 = (Throwable) linkedList.pop();
            StackTraceElement[] stackTrace = th4.getStackTrace();
            ArrayList arrayList = new ArrayList();
            arrayList.add(new StackTraceElement(th4.getClass().getName(), "<filtered>", "<filtered>", 1));
            boolean z = false;
            for (StackTraceElement stackTraceElement : stackTrace) {
                if (zzcc(stackTraceElement.getClassName())) {
                    arrayList.add(stackTraceElement);
                    z = true;
                } else if (zzcd(stackTraceElement.getClassName())) {
                    arrayList.add(stackTraceElement);
                } else {
                    arrayList.add(new StackTraceElement("<filtered>", "<filtered>", "<filtered>", 1));
                }
            }
            if (z) {
                th2 = th3 == null ? new Throwable(th4.getMessage()) : new Throwable(th4.getMessage(), th3);
                th2.setStackTrace((StackTraceElement[]) arrayList.toArray(new StackTraceElement[0]));
            } else {
                th2 = th3;
            }
            th3 = th2;
        }
        return th3;
    }

    private static boolean zzu(Context context) {
        return zzdc.zzayd.get().booleanValue();
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        if (zzb(th)) {
            if (Looper.getMainLooper().getThread() != thread) {
                zza(th, true);
                return;
            }
            zza(th, false);
        }
        if (this.zzcac != null) {
            this.zzcac.uncaughtException(thread, th);
        } else if (this.zzcad != null) {
            this.zzcad.uncaughtException(thread, th);
        }
    }

    String zza(Class cls, Throwable th, boolean z) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return new Uri.Builder().scheme(Constants.HTTPS).path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter(FacebookAdapter.KEY_ID, "gmob-apps-report-exception").appendQueryParameter("os", Build.VERSION.RELEASE).appendQueryParameter("api", String.valueOf(Build.VERSION.SDK_INT)).appendQueryParameter("device", com.google.android.gms.ads.internal.zzu.zzfq().zztg()).appendQueryParameter("js", this.zzamw.zzcs).appendQueryParameter("appid", this.mContext.getApplicationContext().getPackageName()).appendQueryParameter("exceptiontype", cls.getName()).appendQueryParameter("stacktrace", stringWriter.toString()).appendQueryParameter("eids", TextUtils.join(",", zzdc.zzjx())).appendQueryParameter("trapped", String.valueOf(z)).toString();
    }

    public void zza(Throwable th, boolean z) {
        Throwable zzc;
        if (zzu(this.mContext) && (zzc = zzc(th)) != null) {
            Class<?> cls = th.getClass();
            ArrayList arrayList = new ArrayList();
            arrayList.add(zza(cls, zzc, z));
            com.google.android.gms.ads.internal.zzu.zzfq().zza(arrayList, com.google.android.gms.ads.internal.zzu.zzft().zzso());
        }
    }

    protected boolean zzb(Throwable th) {
        if (th == null) {
            return false;
        }
        boolean z = false;
        boolean z2 = false;
        while (th != null) {
            for (StackTraceElement stackTraceElement : th.getStackTrace()) {
                if (zzcc(stackTraceElement.getClassName())) {
                    z2 = true;
                }
                if (getClass().getName().equals(stackTraceElement.getClassName())) {
                    z = true;
                }
            }
            th = th.getCause();
        }
        return z2 && !z;
    }

    protected boolean zzcc(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (str.startsWith(zzdc.zzayf.get())) {
            return true;
        }
        try {
            return Class.forName(str).isAnnotationPresent(zzin.class);
        } catch (Exception e) {
            String valueOf = String.valueOf(str);
            zzkd.zza(valueOf.length() != 0 ? "Fail to check class type for class ".concat(valueOf) : new String("Fail to check class type for class "), e);
            return false;
        }
    }

    protected boolean zzcd(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith("android.") || str.startsWith("java.");
    }
}
