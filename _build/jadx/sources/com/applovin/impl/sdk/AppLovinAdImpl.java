package com.applovin.impl.sdk;

import android.net.Uri;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinSdkUtils;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AppLovinAdImpl implements ay, AppLovinAd {

    /* renamed from: a, reason: collision with root package name */
    private final AppLovinAdSize f389a;

    /* renamed from: b, reason: collision with root package name */
    private final AppLovinAdType f390b;
    private final long c;
    private final String d;
    private final AdTarget e;
    private final String f;
    private final String g;
    private final float h;
    private final float i;
    private final int j;
    private final String k;
    private final String l;
    private final String m;
    private final String n;
    private final com.applovin.impl.adview.v o;

    public enum AdTarget {
        DEFAULT,
        ACTIVITY_PORTRAIT,
        ACTIVITY_LANDSCAPE
    }

    public class Builder {

        /* renamed from: a, reason: collision with root package name */
        private String f392a;

        /* renamed from: b, reason: collision with root package name */
        private AppLovinAdSize f393b;
        private AppLovinAdType c;
        private String d;
        private AdTarget e;
        private com.applovin.impl.adview.v f;
        private float g;
        private float h;
        private int i;
        private long j;
        private String k;
        private String l;
        private String m;
        private String n;
        private String o;

        public AppLovinAdImpl build() {
            return new AppLovinAdImpl(this.f392a, this.f393b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.o);
        }

        public Builder setClCode(String str) {
            this.k = str;
            return this;
        }

        public Builder setCloseStyle(com.applovin.impl.adview.v vVar) {
            this.f = vVar;
            return this;
        }

        public Builder setCompletionUrl(String str) {
            this.l = str;
            return this;
        }

        public Builder setCountdownLength(int i) {
            this.i = i;
            return this;
        }

        public Builder setCurrentAdIdNumber(long j) {
            this.j = j;
            return this;
        }

        public Builder setHtml(String str) {
            this.f392a = str;
            return this;
        }

        public Builder setMuteImageFilename(String str) {
            this.n = str;
            return this;
        }

        public Builder setPoststitialCloseDelay(float f) {
            this.h = f;
            return this;
        }

        public Builder setSize(AppLovinAdSize appLovinAdSize) {
            this.f393b = appLovinAdSize;
            return this;
        }

        public Builder setSupplementalClickTrackingUrl(String str) {
            this.m = str;
            return this;
        }

        public Builder setTarget(AdTarget adTarget) {
            this.e = adTarget;
            return this;
        }

        public Builder setType(AppLovinAdType appLovinAdType) {
            this.c = appLovinAdType;
            return this;
        }

        public Builder setUnmuteImageFilename(String str) {
            this.o = str;
            return this;
        }

        public Builder setVideoCloseDelay(float f) {
            this.g = f;
            return this;
        }

        public Builder setVideoFilename(String str) {
            this.d = str;
            return this;
        }
    }

    private AppLovinAdImpl(String str, AppLovinAdSize appLovinAdSize, AppLovinAdType appLovinAdType, String str2, AdTarget adTarget, com.applovin.impl.adview.v vVar, float f, float f2, int i, long j, String str3, String str4, String str5, String str6, String str7) {
        if (appLovinAdSize == null) {
            throw new IllegalArgumentException("No size specified");
        }
        if (appLovinAdType == null) {
            throw new IllegalArgumentException("No type specified");
        }
        this.f389a = appLovinAdSize;
        this.f390b = appLovinAdType;
        this.d = str2;
        this.c = j;
        this.g = str;
        this.e = adTarget;
        this.h = f;
        this.j = i;
        this.f = str3;
        this.o = vVar;
        this.i = f2;
        this.k = str4;
        this.l = str5;
        this.m = str6;
        this.n = str7;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AppLovinAdImpl appLovinAdImpl = (AppLovinAdImpl) obj;
        if (this.c != appLovinAdImpl.c || Float.compare(appLovinAdImpl.h, this.h) != 0 || Float.compare(appLovinAdImpl.i, this.i) != 0 || this.j != appLovinAdImpl.j) {
            return false;
        }
        if (this.f389a != null) {
            if (!this.f389a.equals(appLovinAdImpl.f389a)) {
                return false;
            }
        } else if (appLovinAdImpl.f389a != null) {
            return false;
        }
        if (this.f390b != null) {
            if (!this.f390b.equals(appLovinAdImpl.f390b)) {
                return false;
            }
        } else if (appLovinAdImpl.f390b != null) {
            return false;
        }
        if (this.d != null) {
            if (!this.d.equals(appLovinAdImpl.d)) {
                return false;
            }
        } else if (appLovinAdImpl.d != null) {
            return false;
        }
        if (this.e != appLovinAdImpl.e) {
            return false;
        }
        if (this.f != null) {
            if (!this.f.equals(appLovinAdImpl.f)) {
                return false;
            }
        } else if (appLovinAdImpl.f != null) {
            return false;
        }
        if (this.g != null) {
            if (!this.g.equals(appLovinAdImpl.g)) {
                return false;
            }
        } else if (appLovinAdImpl.g != null) {
            return false;
        }
        if (this.k != null) {
            if (!this.k.equals(appLovinAdImpl.k)) {
                return false;
            }
        } else if (appLovinAdImpl.k != null) {
            return false;
        }
        if (this.l != null) {
            if (!this.l.equals(appLovinAdImpl.l)) {
                return false;
            }
        } else if (appLovinAdImpl.l != null) {
            return false;
        }
        if (this.m != null) {
            if (!this.m.equals(appLovinAdImpl.m)) {
                return false;
            }
        } else if (appLovinAdImpl.m != null) {
            return false;
        }
        if (this.n != null) {
            if (!this.n.equals(appLovinAdImpl.n)) {
                return false;
            }
        } else if (appLovinAdImpl.n != null) {
            return false;
        }
        return this.o == appLovinAdImpl.o;
    }

    @Override // com.applovin.sdk.AppLovinAd
    public long getAdIdNumber() {
        return this.c;
    }

    public String getClCode() {
        return this.f;
    }

    public com.applovin.impl.adview.v getCloseStyle() {
        return this.o;
    }

    public String getCompletionUrl() {
        return this.k;
    }

    public int getCountdownLength() {
        return this.j;
    }

    public String getHtmlSource() {
        return this.g;
    }

    public String getMuteImageFilename() {
        return this.m;
    }

    public String getParametrizedCompletionUrl(int i) {
        String completionUrl = getCompletionUrl();
        return AppLovinSdkUtils.isValidString(completionUrl) ? Uri.parse(completionUrl.replace("{CLCODE}", getClCode())).buildUpon().appendQueryParameter(NativeAdImpl.QUERY_PARAM_VIDEO_PERCENT_VIEWED, Integer.toString(i)).build().toString() : "";
    }

    public float getPoststitialCloseDelay() {
        return this.i;
    }

    @Override // com.applovin.sdk.AppLovinAd
    public AppLovinAdSize getSize() {
        return this.f389a;
    }

    public String getSupplementalClickTrackingUrl() {
        String str = this.l;
        return AppLovinSdkUtils.isValidString(str) ? str.replace("{CLCODE}", getClCode()) : "";
    }

    public AdTarget getTarget() {
        return this.e;
    }

    @Override // com.applovin.sdk.AppLovinAd
    public AppLovinAdType getType() {
        return this.f390b;
    }

    public String getUnmuteImageFilename() {
        return this.n;
    }

    public float getVideoCloseDelay() {
        return this.h;
    }

    public String getVideoFilename() {
        return this.d;
    }

    public int hashCode() {
        return (((this.n != null ? this.n.hashCode() : 0) + (((this.m != null ? this.m.hashCode() : 0) + (((this.l != null ? this.l.hashCode() : 0) + (((this.k != null ? this.k.hashCode() : 0) + (((((this.i != 0.0f ? Float.floatToIntBits(this.i) : 0) + (((this.h != 0.0f ? Float.floatToIntBits(this.h) : 0) + (((this.g != null ? this.g.hashCode() : 0) + (((this.f != null ? this.f.hashCode() : 0) + (((this.e != null ? this.e.hashCode() : 0) + (((this.d != null ? this.d.hashCode() : 0) + (((((this.f390b != null ? this.f390b.hashCode() : 0) + ((this.f389a != null ? this.f389a.hashCode() : 0) * 31)) * 31) + ((int) (this.c ^ (this.c >>> 32)))) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31) + this.j) * 31)) * 31)) * 31)) * 31)) * 31) + (this.o != null ? this.o.hashCode() : 0);
    }

    @Override // com.applovin.sdk.AppLovinAd
    public boolean isVideoAd() {
        return AppLovinSdkUtils.isValidString(this.d);
    }

    public String toString() {
        return "AppLovinAdImpl{size=" + this.f389a + ", type=" + this.f390b + ", adIdNumber=" + this.c + ", videoFilename='" + this.d + "', target=" + this.e + ", clCode='" + this.f + "', htmlSource='" + this.g + "', videoCloseDelay=" + this.h + ", poststitialCloseDelay=" + this.i + ", countdownLength=" + this.j + ", completionUrl='" + this.k + "', supplementalClickTrackingUrl='" + this.l + "', muteImageFilename='" + this.m + "', unmuteImageFilename='" + this.n + "', closeStyle=" + this.o + '}';
    }
}
