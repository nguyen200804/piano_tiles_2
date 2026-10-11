package com.google.android.gms.ads.search;

import android.content.Context;
import android.graphics.Color;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.internal.client.zzad;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class SearchAdRequest {
    public static final int BORDER_TYPE_DASHED = 1;
    public static final int BORDER_TYPE_DOTTED = 2;
    public static final int BORDER_TYPE_NONE = 0;
    public static final int BORDER_TYPE_SOLID = 3;
    public static final int CALL_BUTTON_COLOR_DARK = 2;
    public static final int CALL_BUTTON_COLOR_LIGHT = 0;
    public static final int CALL_BUTTON_COLOR_MEDIUM = 1;
    public static final String DEVICE_ID_EMULATOR = zzad.DEVICE_ID_EMULATOR;
    public static final int ERROR_CODE_INTERNAL_ERROR = 0;
    public static final int ERROR_CODE_INVALID_REQUEST = 1;
    public static final int ERROR_CODE_NETWORK_ERROR = 2;
    public static final int ERROR_CODE_NO_FILL = 3;
    private final int mBackgroundColor;
    private final zzad zzaic;
    private final String zzanr;
    private final int zzcrb;
    private final int zzcrc;
    private final int zzcrd;
    private final int zzcre;
    private final int zzcrf;
    private final int zzcrg;
    private final int zzcrh;
    private final String zzcri;
    private final int zzcrj;
    private final String zzcrk;
    private final int zzcrl;
    private final int zzcrm;

    public static final class Builder {
        private int mBackgroundColor;
        private String zzanr;
        private int zzcrb;
        private int zzcrc;
        private int zzcrd;
        private int zzcre;
        private int zzcrf;
        private int zzcrh;
        private String zzcri;
        private int zzcrj;
        private String zzcrk;
        private int zzcrl;
        private int zzcrm;
        private final zzad.zza zzaid = new zzad.zza();
        private int zzcrg = 0;

        public Builder addCustomEventExtrasBundle(Class<? extends CustomEvent> cls, Bundle bundle) {
            this.zzaid.zzb(cls, bundle);
            return this;
        }

        public Builder addNetworkExtras(NetworkExtras networkExtras) {
            this.zzaid.zza(networkExtras);
            return this;
        }

        public Builder addNetworkExtrasBundle(Class<? extends MediationAdapter> cls, Bundle bundle) {
            this.zzaid.zza(cls, bundle);
            return this;
        }

        public Builder addTestDevice(String str) {
            this.zzaid.zzag(str);
            return this;
        }

        public SearchAdRequest build() {
            return new SearchAdRequest(this);
        }

        public Builder setAnchorTextColor(int i) {
            this.zzcrb = i;
            return this;
        }

        public Builder setBackgroundColor(int i) {
            this.mBackgroundColor = i;
            this.zzcrc = Color.argb(0, 0, 0, 0);
            this.zzcrd = Color.argb(0, 0, 0, 0);
            return this;
        }

        public Builder setBackgroundGradient(int i, int i2) {
            this.mBackgroundColor = Color.argb(0, 0, 0, 0);
            this.zzcrc = i2;
            this.zzcrd = i;
            return this;
        }

        public Builder setBorderColor(int i) {
            this.zzcre = i;
            return this;
        }

        public Builder setBorderThickness(int i) {
            this.zzcrf = i;
            return this;
        }

        public Builder setBorderType(int i) {
            this.zzcrg = i;
            return this;
        }

        public Builder setCallButtonColor(int i) {
            this.zzcrh = i;
            return this;
        }

        public Builder setCustomChannels(String str) {
            this.zzcri = str;
            return this;
        }

        public Builder setDescriptionTextColor(int i) {
            this.zzcrj = i;
            return this;
        }

        public Builder setFontFace(String str) {
            this.zzcrk = str;
            return this;
        }

        public Builder setHeaderTextColor(int i) {
            this.zzcrl = i;
            return this;
        }

        public Builder setHeaderTextSize(int i) {
            this.zzcrm = i;
            return this;
        }

        public Builder setLocation(Location location) {
            this.zzaid.zzb(location);
            return this;
        }

        public Builder setQuery(String str) {
            this.zzanr = str;
            return this;
        }

        public Builder setRequestAgent(String str) {
            this.zzaid.zzak(str);
            return this;
        }

        public Builder tagForChildDirectedTreatment(boolean z) {
            this.zzaid.zzn(z);
            return this;
        }
    }

    private SearchAdRequest(Builder builder) {
        this.zzcrb = builder.zzcrb;
        this.mBackgroundColor = builder.mBackgroundColor;
        this.zzcrc = builder.zzcrc;
        this.zzcrd = builder.zzcrd;
        this.zzcre = builder.zzcre;
        this.zzcrf = builder.zzcrf;
        this.zzcrg = builder.zzcrg;
        this.zzcrh = builder.zzcrh;
        this.zzcri = builder.zzcri;
        this.zzcrj = builder.zzcrj;
        this.zzcrk = builder.zzcrk;
        this.zzcrl = builder.zzcrl;
        this.zzcrm = builder.zzcrm;
        this.zzanr = builder.zzanr;
        this.zzaic = new zzad(builder.zzaid, this);
    }

    public int getAnchorTextColor() {
        return this.zzcrb;
    }

    public int getBackgroundColor() {
        return this.mBackgroundColor;
    }

    public int getBackgroundGradientBottom() {
        return this.zzcrc;
    }

    public int getBackgroundGradientTop() {
        return this.zzcrd;
    }

    public int getBorderColor() {
        return this.zzcre;
    }

    public int getBorderThickness() {
        return this.zzcrf;
    }

    public int getBorderType() {
        return this.zzcrg;
    }

    public int getCallButtonColor() {
        return this.zzcrh;
    }

    public String getCustomChannels() {
        return this.zzcri;
    }

    public <T extends CustomEvent> Bundle getCustomEventExtrasBundle(Class<T> cls) {
        return this.zzaic.getCustomEventExtrasBundle(cls);
    }

    public int getDescriptionTextColor() {
        return this.zzcrj;
    }

    public String getFontFace() {
        return this.zzcrk;
    }

    public int getHeaderTextColor() {
        return this.zzcrl;
    }

    public int getHeaderTextSize() {
        return this.zzcrm;
    }

    public Location getLocation() {
        return this.zzaic.getLocation();
    }

    @Deprecated
    public <T extends NetworkExtras> T getNetworkExtras(Class<T> cls) {
        return (T) this.zzaic.getNetworkExtras(cls);
    }

    public <T extends MediationAdapter> Bundle getNetworkExtrasBundle(Class<T> cls) {
        return this.zzaic.getNetworkExtrasBundle(cls);
    }

    public String getQuery() {
        return this.zzanr;
    }

    public boolean isTestDevice(Context context) {
        return this.zzaic.isTestDevice(context);
    }

    zzad zzdc() {
        return this.zzaic;
    }
}
