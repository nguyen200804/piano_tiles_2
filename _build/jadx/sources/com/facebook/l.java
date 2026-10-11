package com.facebook;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.AsyncTask;
import android.util.Base64;
import com.facebook.GraphRequest;
import com.facebook.internal.BoltsMeasurementEventListener;
import com.facebook.internal.ab;
import com.facebook.internal.b;
import com.facebook.internal.r;
import com.mopub.common.AdType;
import java.io.File;
import java.net.HttpURLConnection;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Locale;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: FacebookSdk.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class l {
    private static volatile Executor c;
    private static volatile String d;
    private static volatile String e;
    private static volatile String f;
    private static volatile int g;
    private static r<File> l;
    private static Context m;

    /* renamed from: a, reason: collision with root package name */
    private static final String f3276a = l.class.getCanonicalName();

    /* renamed from: b, reason: collision with root package name */
    private static final HashSet<u> f3277b = new HashSet<>(Arrays.asList(u.DEVELOPER_ERRORS));
    private static volatile String h = "facebook.com";
    private static AtomicLong i = new AtomicLong(65536);
    private static volatile boolean j = false;
    private static boolean k = false;
    private static int n = 64206;
    private static final Object o = new Object();
    private static final BlockingQueue<Runnable> p = new LinkedBlockingQueue(10);
    private static final ThreadFactory q = new ThreadFactory() { // from class: com.facebook.l.1

        /* renamed from: a, reason: collision with root package name */
        private final AtomicInteger f3278a = new AtomicInteger(0);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "FacebookSdk #" + this.f3278a.incrementAndGet());
        }
    };
    private static Boolean r = false;

    /* compiled from: FacebookSdk.java */
    public interface a {
        void a();
    }

    public static synchronized void a(Context context) {
        synchronized (l.class) {
            a(context, (a) null);
        }
    }

    public static synchronized void a(Context context, final a aVar) {
        synchronized (l.class) {
            if (r.booleanValue()) {
                if (aVar != null) {
                    aVar.a();
                }
            } else {
                ab.a(context, "applicationContext");
                ab.b(context, false);
                ab.a(context, false);
                m = context.getApplicationContext();
                c(m);
                r = true;
                com.facebook.internal.aa.a(m, d);
                com.facebook.internal.v.b();
                BoltsMeasurementEventListener.a(m);
                l = new r<>(new Callable<File>() { // from class: com.facebook.l.2
                    @Override // java.util.concurrent.Callable
                    /* renamed from: a, reason: merged with bridge method [inline-methods] */
                    public File call() throws Exception {
                        return l.m.getCacheDir();
                    }
                });
                d().execute(new FutureTask(new Callable<Void>() { // from class: com.facebook.l.3
                    @Override // java.util.concurrent.Callable
                    /* renamed from: a, reason: merged with bridge method [inline-methods] */
                    public Void call() throws Exception {
                        b.a().c();
                        w.a().c();
                        if (AccessToken.a() != null && Profile.a() == null) {
                            Profile.b();
                        }
                        if (a.this != null) {
                            a.this.a();
                            return null;
                        }
                        return null;
                    }
                }));
            }
        }
    }

    public static synchronized boolean a() {
        boolean booleanValue;
        synchronized (l.class) {
            booleanValue = r.booleanValue();
        }
        return booleanValue;
    }

    public static boolean a(u uVar) {
        boolean z;
        synchronized (f3277b) {
            z = b() && f3277b.contains(uVar);
        }
        return z;
    }

    public static boolean b() {
        return j;
    }

    public static boolean c() {
        return k;
    }

    public static Executor d() {
        synchronized (o) {
            if (c == null) {
                c = AsyncTask.THREAD_POOL_EXECUTOR;
            }
        }
        return c;
    }

    public static String e() {
        return h;
    }

    public static Context f() {
        ab.a();
        return m;
    }

    public static void a(Context context, final String str) {
        final Context applicationContext = context.getApplicationContext();
        d().execute(new Runnable() { // from class: com.facebook.l.4
            @Override // java.lang.Runnable
            public void run() {
                l.b(applicationContext, str);
            }
        });
    }

    static q b(Context context, String str) {
        JSONObject jSONObject;
        JSONObject jSONObject2;
        try {
            if (context == null || str == null) {
                throw new IllegalArgumentException("Both context and applicationId must be non-null");
            }
            com.facebook.internal.c a2 = com.facebook.internal.c.a(context);
            SharedPreferences sharedPreferences = context.getSharedPreferences("com.facebook.sdk.attributionTracking", 0);
            String str2 = str + "ping";
            String str3 = str + AdType.STATIC_NATIVE;
            long j2 = sharedPreferences.getLong(str2, 0L);
            String string = sharedPreferences.getString(str3, null);
            try {
                GraphRequest a3 = GraphRequest.a((AccessToken) null, String.format("%s/activities", str), com.facebook.internal.b.a(b.a.MOBILE_INSTALL_EVENT, a2, com.facebook.appevents.a.c(context), b(context), context), (GraphRequest.b) null);
                if (j2 != 0) {
                    if (string != null) {
                        try {
                            jSONObject2 = new JSONObject(string);
                        } catch (JSONException e2) {
                            jSONObject = null;
                        }
                    } else {
                        jSONObject2 = null;
                    }
                    jSONObject = jSONObject2;
                    if (jSONObject == null) {
                        return q.a("true", (HttpURLConnection) null, new p(a3)).get(0);
                    }
                    return new q((GraphRequest) null, (HttpURLConnection) null, (String) null, jSONObject);
                }
                q i2 = a3.i();
                SharedPreferences.Editor edit = sharedPreferences.edit();
                edit.putLong(str2, System.currentTimeMillis());
                if (i2.b() != null) {
                    edit.putString(str3, i2.b().toString());
                }
                edit.apply();
                return i2;
            } catch (JSONException e3) {
                throw new i("An error occurred while publishing install.", e3);
            }
        } catch (Exception e4) {
            com.facebook.internal.aa.a("Facebook-publish", e4);
            return new q(null, null, new k(null, e4));
        }
    }

    public static String g() {
        return "4.10.1";
    }

    public static boolean b(Context context) {
        ab.a();
        return context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getBoolean("limitEventUsage", false);
    }

    public static long h() {
        ab.a();
        return i.get();
    }

    static void c(Context context) {
        if (context != null) {
            try {
                ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
                if (applicationInfo != null && applicationInfo.metaData != null) {
                    if (d == null) {
                        Object obj = applicationInfo.metaData.get("com.facebook.sdk.ApplicationId");
                        if (obj instanceof String) {
                            String str = (String) obj;
                            if (str.toLowerCase(Locale.ROOT).startsWith("fb")) {
                                d = str.substring(2);
                            } else {
                                d = str;
                            }
                        } else if (obj instanceof Integer) {
                            throw new i("App Ids cannot be directly placed in the manifest.They must be prefixed by 'fb' or be placed in the string resource file.");
                        }
                    }
                    if (e == null) {
                        e = applicationInfo.metaData.getString("com.facebook.sdk.ApplicationName");
                    }
                    if (f == null) {
                        f = applicationInfo.metaData.getString("com.facebook.sdk.ClientToken");
                    }
                    if (g == 0) {
                        a(applicationInfo.metaData.getInt("com.facebook.sdk.WebDialogTheme"));
                    }
                }
            } catch (PackageManager.NameNotFoundException e2) {
            }
        }
    }

    public static String d(Context context) {
        PackageManager packageManager;
        ab.a();
        if (context == null || (packageManager = context.getPackageManager()) == null) {
            return null;
        }
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(context.getPackageName(), 64);
            Signature[] signatureArr = packageInfo.signatures;
            if (signatureArr == null || signatureArr.length == 0) {
                return null;
            }
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
                messageDigest.update(packageInfo.signatures[0].toByteArray());
                return Base64.encodeToString(messageDigest.digest(), 9);
            } catch (NoSuchAlgorithmException e2) {
                return null;
            }
        } catch (PackageManager.NameNotFoundException e3) {
            return null;
        }
    }

    public static String i() {
        ab.a();
        return d;
    }

    public static String j() {
        ab.a();
        return e;
    }

    public static String k() {
        ab.a();
        return f;
    }

    public static int l() {
        ab.a();
        return g;
    }

    public static void a(int i2) {
        if (i2 == 0) {
            i2 = android.R.style.Theme.Translucent.NoTitleBar;
        }
        g = i2;
    }

    public static File m() {
        ab.a();
        return l.a();
    }

    public static int n() {
        ab.a();
        return n;
    }
}
