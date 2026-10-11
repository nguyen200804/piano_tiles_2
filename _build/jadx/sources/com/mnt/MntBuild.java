package com.mnt;

import android.content.Context;
import com.mnt.a.a;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class MntBuild {
    public MntAdConfig mAdConfig;
    public IAdListener mAdListener;
    public int mAdsNum;
    public String mChannel;
    public IUrlAnalysisListener mClickUrl;
    public Context mContext;
    public String mCreatives;
    public DownloadType mDownloadType;
    public String mPlacementId;
    public int mType;

    public MntBuild(Builder builder) {
        this.mContext = builder.f3900a.getApplicationContext();
        this.mType = builder.c;
        this.mPlacementId = builder.f3901b;
        this.mAdsNum = builder.e;
        this.mChannel = builder.d;
        this.mDownloadType = builder.f;
        this.mCreatives = builder.g;
        this.mAdListener = builder.h;
        this.mAdConfig = builder.i;
        this.mClickUrl = builder.j;
    }

    public Context getContext() {
        return this.mContext;
    }

    public String getPlacementId() {
        return this.mPlacementId;
    }

    public void setPlacementId(String str) {
        this.mPlacementId = str;
    }

    public int getType() {
        return this.mType;
    }

    public void setType(int i) {
        this.mType = i;
    }

    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        private Context f3900a;

        /* renamed from: b, reason: collision with root package name */
        private String f3901b;
        private int c;
        private String d;
        private int e;
        private DownloadType f;
        private String g;
        private IAdListener h;
        private MntAdConfig i;
        private IUrlAnalysisListener j;

        public Builder(Context context, String str, int i, IAdListener iAdListener) {
            this.f3900a = context;
            this.c = i;
            this.f3901b = str;
            this.h = iAdListener;
        }

        public Builder setAdsNum(int i) {
            this.e = i;
            return this;
        }

        public Builder setDownLoadType(DownloadType downloadType) {
            this.f = downloadType;
            return this;
        }

        public Builder setCreatives(String... strArr) {
            this.g = a.a(strArr);
            return this;
        }

        public Builder setChannel(String str) {
            this.d = str;
            return this;
        }

        public Builder setAdConfig(MntAdConfig mntAdConfig) {
            this.i = mntAdConfig;
            return this;
        }

        public Builder setClickUrlListener(IUrlAnalysisListener iUrlAnalysisListener) {
            this.j = iUrlAnalysisListener;
            return this;
        }

        public MntBuild build() {
            return new MntBuild(this);
        }
    }
}
