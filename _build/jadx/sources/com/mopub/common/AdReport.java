package com.mopub.common;

import android.os.Build;
import android.support.annotation.NonNull;
import com.mopub.network.AdResponse;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import org.apache.commons.io.IOUtils;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AdReport implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    private final AdResponse f4112a;

    /* renamed from: b, reason: collision with root package name */
    private final String f4113b;
    private final String c;
    private final String d;
    private final Locale e;
    private final String f;

    public AdReport(@NonNull String adUnitId, @NonNull ClientMetadata clientMetadata, @NonNull AdResponse adResponse) {
        this.f4113b = adUnitId;
        this.c = clientMetadata.getSdkVersion();
        this.d = clientMetadata.getDeviceModel();
        this.e = clientMetadata.getDeviceLocale();
        this.f = clientMetadata.getDeviceId();
        this.f4112a = adResponse;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        a(sb, "sdk_version", this.c);
        a(sb, "creative_id", this.f4112a.getDspCreativeId());
        a(sb, "platform_version", Integer.toString(Build.VERSION.SDK_INT));
        a(sb, "device_model", this.d);
        a(sb, "ad_unit_id", this.f4113b);
        a(sb, "device_locale", this.e == null ? null : this.e.toString());
        a(sb, "device_id", this.f);
        a(sb, "network_type", this.f4112a.getNetworkType());
        a(sb, "platform", "android");
        a(sb, "timestamp", a(this.f4112a.getTimestamp()));
        a(sb, "ad_type", this.f4112a.getAdType());
        Object width = this.f4112a.getWidth();
        Integer height = this.f4112a.getHeight();
        StringBuilder append = new StringBuilder().append("{");
        if (width == null) {
            width = "0";
        }
        a(sb, "ad_size", append.append(width).append(", ").append(height == null ? "0" : height).append("}").toString());
        return sb.toString();
    }

    public String getResponseString() {
        return this.f4112a.getStringBody();
    }

    public String getDspCreativeId() {
        return this.f4112a.getDspCreativeId();
    }

    private void a(StringBuilder sb, String str, String str2) {
        sb.append(str);
        sb.append(" : ");
        sb.append(str2);
        sb.append(IOUtils.LINE_SEPARATOR_UNIX);
    }

    private String a(long j) {
        if (j != -1) {
            return new SimpleDateFormat("M/d/yy hh:mm:ss a z", Locale.US).format(new Date(j));
        }
        return null;
    }
}
