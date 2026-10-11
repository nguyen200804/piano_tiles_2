package com.applovin.sdk;

import android.content.Context;
import android.util.Log;
import com.applovin.nativeAds.AppLovinNativeAdService;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class AppLovinSdk {
    public static final String URI_HOST = "com.applovin.sdk";
    public static final String URI_SCHEME = "applovin";
    public static final String VERSION = "6.1.4";
    public static final int VERSION_CODE = 614;

    /* renamed from: a, reason: collision with root package name */
    private static AppLovinSdk[] f569a = new AppLovinSdk[0];

    /* renamed from: b, reason: collision with root package name */
    private static final Object f570b = new Object();

    public static AppLovinSdk getInstance(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("No context specified");
        }
        return getInstance(AppLovinSdkUtils.retrieveSdkKey(context), AppLovinSdkUtils.retrieveUserSettings(context), context);
    }

    public static AppLovinSdk getInstance(AppLovinSdkSettings appLovinSdkSettings, Context context) {
        if (context == null) {
            throw new IllegalArgumentException("No context specified");
        }
        return getInstance(AppLovinSdkUtils.retrieveSdkKey(context), appLovinSdkSettings, context);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x003b, code lost:
    
        r0 = new com.applovin.impl.sdk.AppLovinSdkImpl();
        r0.initialize(r7, r8, r9.getApplicationContext());
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0047, code lost:
    
        r1 = new com.applovin.sdk.AppLovinSdk[com.applovin.sdk.AppLovinSdk.f569a.length + 1];
        java.lang.System.arraycopy(com.applovin.sdk.AppLovinSdk.f569a, 0, r1, 0, com.applovin.sdk.AppLovinSdk.f569a.length);
        r1[com.applovin.sdk.AppLovinSdk.f569a.length] = r0;
        com.applovin.sdk.AppLovinSdk.f569a = r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.applovin.sdk.AppLovinSdk getInstance(java.lang.String r7, com.applovin.sdk.AppLovinSdkSettings r8, android.content.Context r9) {
        /*
            r0 = 0
            java.lang.Object r2 = com.applovin.sdk.AppLovinSdk.f570b
            monitor-enter(r2)
            com.applovin.sdk.AppLovinSdk[] r1 = com.applovin.sdk.AppLovinSdk.f569a     // Catch: java.lang.Throwable -> L34
            int r1 = r1.length     // Catch: java.lang.Throwable -> L34
            r3 = 1
            if (r1 != r3) goto L20
            com.applovin.sdk.AppLovinSdk[] r1 = com.applovin.sdk.AppLovinSdk.f569a     // Catch: java.lang.Throwable -> L34
            r3 = 0
            r1 = r1[r3]     // Catch: java.lang.Throwable -> L34
            java.lang.String r1 = r1.getSdkKey()     // Catch: java.lang.Throwable -> L34
            boolean r1 = r1.equals(r7)     // Catch: java.lang.Throwable -> L34
            if (r1 == 0) goto L20
            com.applovin.sdk.AppLovinSdk[] r0 = com.applovin.sdk.AppLovinSdk.f569a     // Catch: java.lang.Throwable -> L34
            r1 = 0
            r0 = r0[r1]     // Catch: java.lang.Throwable -> L34
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L34
        L1f:
            return r0
        L20:
            com.applovin.sdk.AppLovinSdk[] r3 = com.applovin.sdk.AppLovinSdk.f569a     // Catch: java.lang.Throwable -> L34
            int r4 = r3.length     // Catch: java.lang.Throwable -> L34
            r1 = r0
        L24:
            if (r1 >= r4) goto L3b
            r0 = r3[r1]     // Catch: java.lang.Throwable -> L34
            java.lang.String r5 = r0.getSdkKey()     // Catch: java.lang.Throwable -> L34
            boolean r5 = r5.equals(r7)     // Catch: java.lang.Throwable -> L34
            if (r5 == 0) goto L37
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L34
            goto L1f
        L34:
            r0 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L34
            throw r0
        L37:
            int r0 = r1 + 1
            r1 = r0
            goto L24
        L3b:
            com.applovin.impl.sdk.AppLovinSdkImpl r0 = new com.applovin.impl.sdk.AppLovinSdkImpl     // Catch: java.lang.Throwable -> L34 java.lang.Throwable -> L61
            r0.<init>()     // Catch: java.lang.Throwable -> L34 java.lang.Throwable -> L61
            android.content.Context r1 = r9.getApplicationContext()     // Catch: java.lang.Throwable -> L34 java.lang.Throwable -> L61
            r0.initialize(r7, r8, r1)     // Catch: java.lang.Throwable -> L34 java.lang.Throwable -> L61
            com.applovin.sdk.AppLovinSdk[] r1 = com.applovin.sdk.AppLovinSdk.f569a     // Catch: java.lang.Throwable -> L34
            int r1 = r1.length     // Catch: java.lang.Throwable -> L34
            int r1 = r1 + 1
            com.applovin.sdk.AppLovinSdk[] r1 = new com.applovin.sdk.AppLovinSdk[r1]     // Catch: java.lang.Throwable -> L34
            com.applovin.sdk.AppLovinSdk[] r3 = com.applovin.sdk.AppLovinSdk.f569a     // Catch: java.lang.Throwable -> L34
            r4 = 0
            r5 = 0
            com.applovin.sdk.AppLovinSdk[] r6 = com.applovin.sdk.AppLovinSdk.f569a     // Catch: java.lang.Throwable -> L34
            int r6 = r6.length     // Catch: java.lang.Throwable -> L34
            java.lang.System.arraycopy(r3, r4, r1, r5, r6)     // Catch: java.lang.Throwable -> L34
            com.applovin.sdk.AppLovinSdk[] r3 = com.applovin.sdk.AppLovinSdk.f569a     // Catch: java.lang.Throwable -> L34
            int r3 = r3.length     // Catch: java.lang.Throwable -> L34
            r1[r3] = r0     // Catch: java.lang.Throwable -> L34
            com.applovin.sdk.AppLovinSdk.f569a = r1     // Catch: java.lang.Throwable -> L34
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L34
            goto L1f
        L61:
            r0 = move-exception
            java.lang.String r1 = "AppLovinSdk"
            java.lang.String r3 = "Failed to build AppLovin SDK. Try cleaning application data and starting the application again."
            android.util.Log.e(r1, r3, r0)     // Catch: java.lang.Throwable -> L34
            java.lang.RuntimeException r0 = new java.lang.RuntimeException     // Catch: java.lang.Throwable -> L34
            java.lang.String r1 = "Unable to build AppLovin SDK"
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L34
            throw r0     // Catch: java.lang.Throwable -> L34
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.sdk.AppLovinSdk.getInstance(java.lang.String, com.applovin.sdk.AppLovinSdkSettings, android.content.Context):com.applovin.sdk.AppLovinSdk");
    }

    public static void initializeSdk(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("No context specified");
        }
        AppLovinSdk appLovinSdk = getInstance(context);
        if (appLovinSdk != null) {
            appLovinSdk.initializeSdk();
        } else {
            Log.e(AppLovinLogger.SDK_TAG, "Unable to initialize AppLovin SDK: SDK object not created");
        }
    }

    public abstract AppLovinAdService getAdService();

    public abstract Context getApplicationContext();

    public abstract AppLovinEventService getEventService();

    public abstract AppLovinLogger getLogger();

    public abstract AppLovinNativeAdService getNativeAdService();

    public abstract AppLovinPostbackService getPostbackService();

    public abstract String getSdkKey();

    public abstract AppLovinSdkSettings getSettings();

    public abstract AppLovinTargetingData getTargetingData();

    public abstract boolean hasCriticalErrors();

    protected abstract void initialize(String str, AppLovinSdkSettings appLovinSdkSettings, Context context);

    public abstract void initializeSdk();

    public abstract boolean isEnabled();

    public abstract void setPluginVersion(String str);
}
