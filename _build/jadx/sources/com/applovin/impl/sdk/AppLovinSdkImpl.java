package com.applovin.impl.sdk;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import com.applovin.nativeAds.AppLovinNativeAdService;
import com.applovin.sdk.AppLovinAdService;
import com.applovin.sdk.AppLovinEventService;
import com.applovin.sdk.AppLovinLogger;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkSettings;
import com.applovin.sdk.AppLovinTargetingData;
import java.io.PrintWriter;
import java.io.StringWriter;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AppLovinSdkImpl extends AppLovinSdk {

    /* renamed from: a, reason: collision with root package name */
    private String f396a;

    /* renamed from: b, reason: collision with root package name */
    private AppLovinSdkSettings f397b;
    private Context c;
    private AppLovinLogger d;
    private bo e;
    private az f;
    private cv g;
    private bc h;
    private y i;
    private b j;
    private bb k;
    private cy l;
    private cu m;
    private AppLovinAdServiceImpl n;
    private ae o;
    private PostbackServiceImpl p;
    private EventServiceImpl q;
    private bm r;
    private boolean s = true;
    private boolean t = false;
    private boolean u = false;
    private boolean v = false;
    private boolean w = false;

    private static boolean h() {
        return (Build.VERSION.RELEASE.startsWith("1.") || Build.VERSION.RELEASE.startsWith("2.0") || Build.VERSION.RELEASE.startsWith("2.1")) ? false : true;
    }

    bo a() {
        return this.e;
    }

    Object a(by byVar) {
        return this.f.a(byVar);
    }

    void a(AppLovinSdkSettings appLovinSdkSettings) {
        this.s = true;
        this.e.a(new bn(this, appLovinSdkSettings), 0L);
    }

    void a(boolean z) {
        this.s = false;
        this.t = z;
        this.u = true;
    }

    bc b() {
        return this.h;
    }

    b c() {
        return this.j;
    }

    bb d() {
        return this.k;
    }

    boolean e() {
        return this.s;
    }

    boolean f() {
        return this.u;
    }

    void g() {
        this.f.d();
        this.f.b();
        this.h.a();
    }

    @Override // com.applovin.sdk.AppLovinSdk
    public AppLovinAdService getAdService() {
        return this.n;
    }

    @Override // com.applovin.sdk.AppLovinSdk
    public Context getApplicationContext() {
        return this.c;
    }

    public cv getConnectionManager() {
        return this.g;
    }

    public cy getDataCollector() {
        return this.l;
    }

    @Override // com.applovin.sdk.AppLovinSdk
    public AppLovinEventService getEventService() {
        return this.q;
    }

    public y getFileManager() {
        return this.i;
    }

    @Override // com.applovin.sdk.AppLovinSdk
    public AppLovinLogger getLogger() {
        return this.d;
    }

    @Override // com.applovin.sdk.AppLovinSdk
    public AppLovinNativeAdService getNativeAdService() {
        return this.o;
    }

    public bm getPersistentPostbackManager() {
        return this.r;
    }

    @Override // com.applovin.sdk.AppLovinSdk
    public PostbackServiceImpl getPostbackService() {
        return this.p;
    }

    @Override // com.applovin.sdk.AppLovinSdk
    public String getSdkKey() {
        return this.f396a;
    }

    @Override // com.applovin.sdk.AppLovinSdk
    public AppLovinSdkSettings getSettings() {
        return this.f397b;
    }

    public az getSettingsManager() {
        return this.f;
    }

    @Override // com.applovin.sdk.AppLovinSdk
    public AppLovinTargetingData getTargetingData() {
        return this.m;
    }

    @Override // com.applovin.sdk.AppLovinSdk
    public boolean hasCriticalErrors() {
        return this.v || this.w;
    }

    @Override // com.applovin.sdk.AppLovinSdk
    protected void initialize(String str, AppLovinSdkSettings appLovinSdkSettings, Context context) {
        this.f396a = str;
        this.f397b = appLovinSdkSettings;
        this.c = context;
        try {
            cs csVar = new cs();
            this.d = csVar;
            this.f = new az(this);
            this.e = new bo(this);
            this.g = new cv(this);
            this.h = new bc(this);
            this.i = new y(this);
            this.l = new cy(this);
            this.n = new AppLovinAdServiceImpl(this);
            this.o = new ae(this);
            this.p = new PostbackServiceImpl(this);
            this.q = new EventServiceImpl(this);
            this.r = new bm(this);
            this.j = new b(this);
            this.k = new bb(this);
            this.m = new cu(this);
            if (!h()) {
                this.v = true;
                Log.e(AppLovinLogger.SDK_TAG, "Unable to initalize AppLovin SDK: Android SDK version has to be at least level 8");
            }
            if (str == null || str.length() < 1) {
                this.w = true;
                Log.e(AppLovinLogger.SDK_TAG, "Unable to find AppLovin SDK key. Please add     meta-data android:name=\"applovin.sdk.key\" android:value=\"YOUR_SDK_KEY_HERE\" into AndroidManifest.xml.");
                StringWriter stringWriter = new StringWriter();
                new Throwable("").printStackTrace(new PrintWriter(stringWriter));
                Log.e(AppLovinLogger.SDK_TAG, "Called with an invalid SDK key from: " + stringWriter.toString());
            }
            if (hasCriticalErrors()) {
                a(false);
                return;
            }
            csVar.a(this.f);
            if (appLovinSdkSettings instanceof ab) {
                csVar.a(((ab) appLovinSdkSettings).a());
            }
            a(appLovinSdkSettings);
        } catch (Throwable th) {
            Log.e(AppLovinLogger.SDK_TAG, "Failed to load AppLovin SDK, ad serving will be disabled", th);
            a(false);
        }
    }

    @Override // com.applovin.sdk.AppLovinSdk
    public void initializeSdk() {
    }

    @Override // com.applovin.sdk.AppLovinSdk
    public boolean isEnabled() {
        return this.t;
    }

    @Override // com.applovin.sdk.AppLovinSdk
    public void setPluginVersion(String str) {
        if (str == null) {
            throw new IllegalArgumentException("No version specified");
        }
        this.f.a(av.F, str);
        this.f.b();
    }
}
