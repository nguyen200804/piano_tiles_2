package com.mopub.mobileads;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.location.Location;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.webkit.WebViewDatabase;
import android.widget.FrameLayout;
import com.mopub.common.AdFormat;
import com.mopub.common.AdReport;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.ManifestUtils;
import com.mopub.common.util.Reflection;
import com.mopub.common.util.Visibility;
import com.mopub.mobileads.factories.AdViewControllerFactory;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class MoPubView extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    private Context f4387a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    protected AdViewController f4388b;
    protected Object c;
    private int d;
    private BroadcastReceiver e;
    private BannerAdListener f;

    public interface BannerAdListener {
        void onBannerClicked(MoPubView moPubView);

        void onBannerCollapsed(MoPubView moPubView);

        void onBannerExpanded(MoPubView moPubView);

        void onBannerFailed(MoPubView moPubView, MoPubErrorCode moPubErrorCode);

        void onBannerLoaded(MoPubView moPubView);
    }

    public MoPubView(Context context) {
        this(context, null);
    }

    public MoPubView(Context context, AttributeSet attrs) {
        super(context, attrs);
        ManifestUtils.checkWebViewActivitiesDeclared(context);
        this.f4387a = context;
        this.d = getVisibility();
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
        try {
            if (WebViewDatabase.getInstance(context) == null) {
                MoPubLog.e("Disabling MoPub. Local cache file is inaccessible so MoPub will fail if we try to create a WebView. Details of this Android bug found at:https://code.google.com/p/android/issues/detail?id=10789");
            } else {
                this.f4388b = AdViewControllerFactory.create(context, this);
                a();
            }
        } catch (Exception e) {
            MoPubLog.e("Disabling MoPub due to no WebView, or it's being updated", e);
        }
    }

    private void a() {
        this.e = new BroadcastReceiver() { // from class: com.mopub.mobileads.MoPubView.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                if (Visibility.isScreenVisible(MoPubView.this.d) && intent != null) {
                    String action = intent.getAction();
                    if ("android.intent.action.USER_PRESENT".equals(action)) {
                        MoPubView.this.a(0);
                    } else if ("android.intent.action.SCREEN_OFF".equals(action)) {
                        MoPubView.this.a(8);
                    }
                }
            }
        };
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        this.f4387a.registerReceiver(this.e, intentFilter);
    }

    private void b() {
        try {
            this.f4387a.unregisterReceiver(this.e);
        } catch (Exception e) {
            MoPubLog.d("Failed to unregister screen state broadcast receiver (never registered).");
        }
    }

    public void loadAd() {
        if (this.f4388b != null) {
            AdViewController adViewController = this.f4388b;
        }
    }

    public void destroy() {
        b();
        removeAllViews();
        if (this.f4388b != null) {
            this.f4388b.d();
            this.f4388b = null;
        }
        if (this.c != null) {
            f();
            this.c = null;
        }
    }

    private void f() {
        if (this.c != null) {
            try {
                new Reflection.MethodBuilder(this.c, "invalidate").setAccessible().execute();
            } catch (Exception e) {
                MoPubLog.e("Error invalidating adapter", e);
            }
        }
    }

    Integer c() {
        if (this.f4388b != null) {
            return this.f4388b.e();
        }
        return null;
    }

    protected boolean b(@NonNull MoPubErrorCode moPubErrorCode) {
        if (this.f4388b == null) {
            return false;
        }
        return this.f4388b.a(moPubErrorCode);
    }

    protected void a(String str, Map<String, String> map) {
        if (this.f4388b != null) {
            if (TextUtils.isEmpty(str)) {
                MoPubLog.d("Couldn't invoke custom event because the server did not specify one.");
                b(MoPubErrorCode.ADAPTER_NOT_FOUND);
                return;
            }
            if (this.c != null) {
                f();
            }
            MoPubLog.d("Loading custom event adapter.");
            if (Reflection.classFound("com.mopub.mobileads.factories.CustomEventBannerAdapterFactory")) {
                try {
                    this.c = new Reflection.MethodBuilder(null, "create").setStatic(Class.forName("com.mopub.mobileads.factories.CustomEventBannerAdapterFactory")).addParam(MoPubView.class, this).addParam(String.class, str).addParam(Map.class, map).addParam(Long.TYPE, Long.valueOf(this.f4388b.getBroadcastIdentifier())).addParam(AdReport.class, this.f4388b.getAdReport()).execute();
                    new Reflection.MethodBuilder(this.c, "loadAd").setAccessible().execute();
                    return;
                } catch (Exception e) {
                    MoPubLog.e("Error loading custom event", e);
                    return;
                }
            }
            MoPubLog.e("Could not load custom event -- missing banner module");
        }
    }

    protected void d() {
        if (this.f4388b != null) {
            this.f4388b.g();
            e();
        }
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int visibility) {
        if (Visibility.hasScreenVisibilityChanged(this.d, visibility)) {
            this.d = visibility;
            a(this.d);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        if (this.f4388b != null) {
            if (Visibility.isScreenVisible(i)) {
                this.f4388b.c();
            } else {
                this.f4388b.b();
            }
        }
    }

    protected void a(MoPubErrorCode moPubErrorCode) {
        if (this.f != null) {
            this.f.onBannerFailed(this, moPubErrorCode);
        }
    }

    protected void e() {
        if (this.f != null) {
            this.f.onBannerClicked(this);
        }
    }

    public void setAdUnitId(String adUnitId) {
        if (this.f4388b != null) {
            this.f4388b.setAdUnitId(adUnitId);
        }
    }

    public String getAdUnitId() {
        if (this.f4388b != null) {
            return this.f4388b.getAdUnitId();
        }
        return null;
    }

    public void setKeywords(String keywords) {
        if (this.f4388b != null) {
            this.f4388b.setKeywords(keywords);
        }
    }

    public String getKeywords() {
        if (this.f4388b != null) {
            return this.f4388b.getKeywords();
        }
        return null;
    }

    public void setLocation(Location location) {
        if (this.f4388b != null) {
            this.f4388b.setLocation(location);
        }
    }

    public Location getLocation() {
        if (this.f4388b != null) {
            return this.f4388b.getLocation();
        }
        return null;
    }

    public int getAdWidth() {
        if (this.f4388b != null) {
            return this.f4388b.getAdWidth();
        }
        return 0;
    }

    public int getAdHeight() {
        if (this.f4388b != null) {
            return this.f4388b.getAdHeight();
        }
        return 0;
    }

    public Activity getActivity() {
        return (Activity) this.f4387a;
    }

    public void setBannerAdListener(BannerAdListener listener) {
        this.f = listener;
    }

    public BannerAdListener getBannerAdListener() {
        return this.f;
    }

    public void setLocalExtras(Map<String, Object> localExtras) {
        if (this.f4388b != null) {
            this.f4388b.a(localExtras);
        }
    }

    public Map<String, Object> getLocalExtras() {
        return this.f4388b != null ? this.f4388b.k() : new TreeMap();
    }

    public void setAutorefreshEnabled(boolean enabled) {
        if (this.f4388b != null) {
            this.f4388b.a(enabled);
        }
    }

    public boolean getAutorefreshEnabled() {
        if (this.f4388b != null) {
            return this.f4388b.getCurrentAutoRefreshStatus();
        }
        MoPubLog.d("Can't get autorefresh status for destroyed MoPubView. Returning false.");
        return false;
    }

    public void setAdContentView(View view) {
        if (this.f4388b != null) {
            this.f4388b.a(view);
        }
    }

    public void setTesting(boolean testing) {
        if (this.f4388b != null) {
            this.f4388b.setTesting(testing);
        }
    }

    public boolean getTesting() {
        if (this.f4388b != null) {
            return this.f4388b.getTesting();
        }
        MoPubLog.d("Can't get testing status for destroyed MoPubView. Returning false.");
        return false;
    }

    public void forceRefresh() {
        if (this.c != null) {
            f();
            this.c = null;
        }
        if (this.f4388b != null) {
            this.f4388b.h();
        }
    }

    public AdFormat getAdFormat() {
        return AdFormat.BANNER;
    }

    @Deprecated
    public void setTimeout(int milliseconds) {
    }

    @Deprecated
    public String getResponseString() {
        return null;
    }

    @Deprecated
    public String getClickTrackingUrl() {
        return null;
    }
}
