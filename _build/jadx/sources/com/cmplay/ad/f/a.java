package com.cmplay.ad.f;

import android.app.Activity;
import com.cmplay.ad.b;
import com.cmplay.ad.c;
import com.cmplay.util.c.a.e;
import com.unity3d.ads.IUnityAdsListener;
import com.unity3d.ads.UnityAds;
import java.lang.ref.WeakReference;

/* compiled from: UnityADS.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a extends b implements IUnityAdsListener {

    /* renamed from: b, reason: collision with root package name */
    private static a f1160b;
    private static WeakReference<Activity> d;

    /* renamed from: a, reason: collision with root package name */
    private c f1161a;
    private boolean c = false;

    private a() {
    }

    public static a a() {
        if (f1160b == null) {
            synchronized (a.class) {
                if (f1160b == null) {
                    f1160b = new a();
                }
            }
        }
        return f1160b;
    }

    public Activity b() {
        if (d == null) {
            return null;
        }
        return d.get();
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public void onCreate(Activity activity) {
        super.onCreate(activity);
        d = new WeakReference<>(activity);
        c();
    }

    private void c() {
        if (UnityAds.isSupported() && a().b() != null) {
            UnityAds.initialize(a().b(), "61378", this);
            this.c = true;
            new e().a(1, 0, 1, 2, com.cmplay.ad.a.f);
        }
    }

    @Override // com.unity3d.ads.IUnityAdsListener
    public void onUnityAdsError(UnityAds.UnityAdsError unityAdsError, String s) {
        new e().a(3, 0, 4, 2, com.cmplay.ad.a.f);
    }

    @Override // com.unity3d.ads.IUnityAdsListener
    public void onUnityAdsReady(String s) {
        new e().a(2, 0, 4, 2, com.cmplay.ad.a.f);
    }

    @Override // com.unity3d.ads.IUnityAdsListener
    public void onUnityAdsFinish(String s, UnityAds.FinishState finishState) {
        if (this.f1161a != null) {
            this.f1161a.a(finishState != UnityAds.FinishState.COMPLETED);
        }
    }

    @Override // com.unity3d.ads.IUnityAdsListener
    public void onUnityAdsStart(String s) {
        if (this.f1161a != null) {
            this.f1161a.a();
        }
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public void onResume(Activity activity) {
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public void onPaused(Activity activity) {
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public boolean canShow(int reportFrom) {
        if (this.c) {
            return UnityAds.isReady("rewardedVideoZone") && UnityAds.isSupported() && a().b() != null;
        }
        c();
        return false;
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public boolean show(int reportFrom) {
        com.cmplay.util.c.b("UnityADS", "show");
        try {
            if (canShow(reportFrom)) {
                UnityAds.show(a().b(), "rewardedVideoZone");
                return true;
            }
            return true;
        } catch (Exception e) {
            return true;
        }
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public void setListener(c l) {
        this.f1161a = l;
    }
}
