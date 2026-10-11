package com.mnt;

import com.mnt.a.a;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class MntAdConfig {
    public static final int BANNER_STYLE_COMMON = 0;
    public static final int BANNER_STYLE_RECTANGLE = 1;

    /* renamed from: a, reason: collision with root package name */
    private String f3892a;

    /* renamed from: b, reason: collision with root package name */
    private int f3893b;
    private DownloadType c;
    private String d;
    private int e;

    public String getChannel() {
        return this.f3892a;
    }

    public void setChannel(String str) {
        this.f3892a = str;
    }

    public int getAdsNum() {
        return this.f3893b;
    }

    public void setAdsNum(int i) {
        this.f3893b = i;
    }

    public DownloadType getDownloadType() {
        return this.c;
    }

    public void setDownloadType(DownloadType downloadType) {
        this.c = downloadType;
    }

    public String getCreatives() {
        return this.d;
    }

    public void setCreatives(String... strArr) {
        this.d = a.a(strArr);
    }

    public int getmBannerType() {
        return this.e;
    }

    public void setmBannerType(int i) {
        this.e = i;
    }
}
