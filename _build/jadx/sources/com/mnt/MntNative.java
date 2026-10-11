package com.mnt;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.mnt.a.f;
import com.mnt.impl.b;
import com.mnt.impl.b.j;
import com.mnt.impl.b.k;
import com.mnt.impl.e.c;
import com.mnt.impl.h.a;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class MntNative {

    /* renamed from: a, reason: collision with root package name */
    private Context f3905a;

    /* renamed from: b, reason: collision with root package name */
    private String f3906b;
    private String c;
    private String d;
    private int e;
    private DownloadType f;
    private String g;
    private b h;

    public MntNative(Context context) {
        this(context, null);
    }

    public MntNative(Context context, String str) {
        this.f3905a = context;
        this.d = str;
        this.h = new b(context);
    }

    public String getPlacementId() {
        return this.d;
    }

    public void initNativeAd() {
        b bVar = this.h;
        MntAdConfig mntAdConfig = new MntAdConfig();
        mntAdConfig.setCreatives(bVar.f3929a.getCreatives());
        mntAdConfig.setAdsNum(bVar.f3929a.getAdsNum());
        mntAdConfig.setChannel(bVar.f3929a.getChannel());
        mntAdConfig.setDownloadType(bVar.f3929a.getDownloadType());
        a.a(bVar.f3929a.getContext(), bVar.f3929a.getAppKey(), mntAdConfig);
    }

    public void load(MntBuild mntBuild) {
        this.h.a(mntBuild);
    }

    public void clickAd(Object obj) {
        this.h.a(obj);
    }

    public void show(Object obj) {
        this.h.b(obj);
    }

    public void clean() {
        this.h.a();
    }

    public boolean isAdLoaded() {
        return this.h.d;
    }

    public void setAdListener(f fVar) {
        this.h.f3930b = fVar;
    }

    public Context getContext() {
        return this.f3905a;
    }

    public String getAppKey() {
        return this.f3906b;
    }

    public void setAppKey(String str) {
        this.f3906b = str;
    }

    public int getSDKVersion() {
        return 128;
    }

    public String getChannel() {
        return this.c;
    }

    public void setChannel(String str) {
        this.c = str;
    }

    public int getAdsNum() {
        return this.e;
    }

    public void setAdsNum(int i) {
        this.e = i;
    }

    public DownloadType getDownloadType() {
        return this.f;
    }

    public void setDownloadType(DownloadType downloadType) {
        this.f = downloadType;
    }

    public String getCreatives() {
        return this.g;
    }

    public void setCreatives(String str) {
        this.g = str;
    }

    public String getSDKName() {
        return j.f3950a;
    }

    public List<Ad> getAds() {
        return this.h.c;
    }

    public void registerView(View view, Ad ad) {
        b bVar = this.h;
        if (view == null || bVar.c == null) {
            return;
        }
        if (com.mnt.a.a.a(view)) {
            if (bVar.f3930b != null) {
                bVar.f3930b.b();
            }
            if (ad instanceof c) {
                c cVar = (c) ad;
                if (!TextUtils.isEmpty(cVar.f3986b)) {
                    com.mnt.impl.i.c.a(bVar.e).a(k.a(bVar.e, cVar.f3986b, cVar.h, cVar.i, cVar.getCampId()).toString());
                }
                bVar.a(cVar);
            }
        }
        if (!(ad instanceof c)) {
            return;
        }
        view.setOnClickListener(new com.mnt.impl.c(bVar, ad));
    }
}
