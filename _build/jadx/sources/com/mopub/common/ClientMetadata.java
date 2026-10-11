package com.mopub.common;

import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Point;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Utils;
import java.util.Locale;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ClientMetadata {
    private static volatile ClientMetadata k;

    /* renamed from: a, reason: collision with root package name */
    private String f4123a;

    /* renamed from: b, reason: collision with root package name */
    private final String f4124b;
    private String c;
    private final String d;
    private final String e;
    private String f;
    private String g;
    private String h;
    private boolean i = false;
    private boolean j = false;
    private final String l = Build.MANUFACTURER;
    private final String m = Build.MODEL;
    private final String n = Build.PRODUCT;
    private final String o = Build.VERSION.RELEASE;
    private final String p = "4.15.0";
    private final String q;
    private final String r;
    private String s;
    private final Context t;
    private final ConnectivityManager u;

    public enum MoPubNetworkType {
        UNKNOWN(0),
        ETHERNET(1),
        WIFI(2),
        MOBILE(3);


        /* renamed from: a, reason: collision with root package name */
        private final int f4126a;

        MoPubNetworkType(int id) {
            this.f4126a = id;
        }

        @Override // java.lang.Enum
        public String toString() {
            return Integer.toString(this.f4126a);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static MoPubNetworkType b(int i) {
            switch (i) {
                case 0:
                case 2:
                case 3:
                case 4:
                case 5:
                    return MOBILE;
                case 1:
                    return WIFI;
                case 6:
                case 7:
                case 8:
                default:
                    return UNKNOWN;
                case 9:
                    return ETHERNET;
            }
        }

        public int getId() {
            return this.f4126a;
        }
    }

    public static ClientMetadata getInstance(Context context) {
        ClientMetadata clientMetadata = k;
        if (clientMetadata == null) {
            synchronized (ClientMetadata.class) {
                clientMetadata = k;
                if (clientMetadata == null) {
                    clientMetadata = new ClientMetadata(context);
                    k = clientMetadata;
                }
            }
        }
        return clientMetadata;
    }

    public static ClientMetadata getInstance() {
        ClientMetadata clientMetadata = k;
        if (clientMetadata == null) {
            synchronized (ClientMetadata.class) {
                clientMetadata = k;
            }
        }
        return clientMetadata;
    }

    public ClientMetadata(Context context) {
        ApplicationInfo applicationInfo;
        this.t = context.getApplicationContext();
        this.u = (ConnectivityManager) this.t.getSystemService("connectivity");
        this.q = a(this.t);
        PackageManager packageManager = this.t.getPackageManager();
        this.r = context.getPackageName();
        try {
            applicationInfo = packageManager.getApplicationInfo(this.r, 0);
        } catch (PackageManager.NameNotFoundException e) {
            applicationInfo = null;
        }
        if (applicationInfo != null) {
            this.s = (String) packageManager.getApplicationLabel(applicationInfo);
        }
        TelephonyManager telephonyManager = (TelephonyManager) this.t.getSystemService("phone");
        this.f4123a = telephonyManager.getNetworkOperator();
        this.f4124b = telephonyManager.getNetworkOperator();
        if (telephonyManager.getPhoneType() == 2 && telephonyManager.getSimState() == 5) {
            this.f4123a = telephonyManager.getSimOperator();
            this.c = telephonyManager.getSimOperator();
        }
        this.d = telephonyManager.getNetworkCountryIso();
        this.e = telephonyManager.getSimCountryIso();
        try {
            this.f = telephonyManager.getNetworkOperatorName();
            if (telephonyManager.getSimState() == 5) {
                this.g = telephonyManager.getSimOperatorName();
            }
        } catch (SecurityException e2) {
            this.f = null;
            this.g = null;
        }
        a();
        if (!this.j) {
            this.h = b(this.t);
        }
    }

    @VisibleForTesting
    protected void a() {
        ContentResolver contentResolver = this.t.getContentResolver();
        int i = Settings.Secure.getInt(contentResolver, "limit_ad_tracking", -1);
        String string = Settings.Secure.getString(contentResolver, "advertising_id");
        if (i != -1 && !TextUtils.isEmpty(string)) {
            setAdvertisingInfo(string, i != 0);
        }
    }

    private static String a(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Exception e) {
            MoPubLog.d("Failed to retrieve PackageInfo#versionName.");
            return null;
        }
    }

    private static String b(Context context) {
        String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
        return "sha:" + (string == null ? "" : Utils.sha1(string));
    }

    public String getOrientationString() {
        int i = this.t.getResources().getConfiguration().orientation;
        if (i == 1) {
            return "p";
        }
        if (i == 2) {
            return "l";
        }
        if (i != 3) {
            return "u";
        }
        return "s";
    }

    public MoPubNetworkType getActiveNetworkType() {
        int i = -1;
        if (DeviceUtils.isPermissionGranted(this.t, "android.permission.ACCESS_NETWORK_STATE")) {
            this.u.getActiveNetworkInfo();
            NetworkInfo networkInfo = null;
            if (0 != 0) {
                i = networkInfo.getType();
            }
        }
        return MoPubNetworkType.b(i);
    }

    public float getDensity() {
        return this.t.getResources().getDisplayMetrics().density;
    }

    public String getNetworkOperatorForUrl() {
        return this.f4123a;
    }

    public String getNetworkOperator() {
        return this.f4124b;
    }

    public Locale getDeviceLocale() {
        return this.t.getResources().getConfiguration().locale;
    }

    public String getSimOperator() {
        return this.c;
    }

    public String getIsoCountryCode() {
        return this.d;
    }

    public String getSimIsoCountryCode() {
        return this.e;
    }

    public String getNetworkOperatorName() {
        return this.f;
    }

    public String getSimOperatorName() {
        return this.g;
    }

    public synchronized String getDeviceId() {
        return this.h;
    }

    public synchronized boolean isDoNotTrackSet() {
        return this.i;
    }

    public synchronized void setAdvertisingInfo(String advertisingId, boolean doNotTrack) {
        this.h = "ifa:" + advertisingId;
        this.i = doNotTrack;
        this.j = true;
    }

    public synchronized boolean isAdvertisingInfoSet() {
        return this.j;
    }

    public String getDeviceManufacturer() {
        return this.l;
    }

    public String getDeviceModel() {
        return this.m;
    }

    public String getDeviceProduct() {
        return this.n;
    }

    public String getDeviceOsVersion() {
        return this.o;
    }

    public int getDeviceScreenWidthDip() {
        return Dips.screenWidthAsIntDips(this.t);
    }

    public int getDeviceScreenHeightDip() {
        return Dips.screenHeightAsIntDips(this.t);
    }

    public Point getDeviceDimensions() {
        return Preconditions.NoThrow.checkNotNull(this.t) ? DeviceUtils.getDeviceDimensions(this.t) : new Point(0, 0);
    }

    public String getSdkVersion() {
        return this.p;
    }

    public String getAppVersion() {
        return this.q;
    }

    public String getAppPackageName() {
        return this.r;
    }

    public String getAppName() {
        return this.s;
    }

    @VisibleForTesting
    @Deprecated
    public static void setInstance(ClientMetadata clientMetadata) {
        synchronized (ClientMetadata.class) {
            k = clientMetadata;
        }
    }

    @VisibleForTesting
    public static void clearForTesting() {
        k = null;
    }
}
