package com.google.android.gms.internal;

import com.mopub.mobileads.VastExtensionXmlManager;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class zziu {
    private String zzae;
    private final String zzbvq;
    private int zzbyi;
    private final List<String> zzcfu;
    private final List<String> zzcfv;
    private final String zzcfw;
    private final String zzcfx;
    private final String zzcfy;
    private final String zzcfz;
    private final boolean zzcga;
    private final boolean zzcgb;
    private final String zzcgc;

    public zziu(int i, Map<String, String> map) {
        this.zzae = map.get("url");
        this.zzcfx = map.get("base_uri");
        this.zzcfy = map.get("post_parameters");
        this.zzcga = parseBoolean(map.get("drt_include"));
        this.zzcgb = parseBoolean(map.get("pan_include"));
        this.zzcfw = map.get("activation_overlay_url");
        this.zzcfv = zzce(map.get("check_packages"));
        this.zzbvq = map.get("request_id");
        this.zzcfz = map.get(VastExtensionXmlManager.TYPE);
        this.zzcfu = zzce(map.get("errors"));
        this.zzbyi = i;
        this.zzcgc = map.get("fetched_ad");
    }

    private static boolean parseBoolean(String str) {
        return str != null && (str.equals("1") || str.equals("true"));
    }

    private List<String> zzce(String str) {
        if (str == null) {
            return null;
        }
        return Arrays.asList(str.split(","));
    }

    public int getErrorCode() {
        return this.zzbyi;
    }

    public String getRequestId() {
        return this.zzbvq;
    }

    public String getType() {
        return this.zzcfz;
    }

    public String getUrl() {
        return this.zzae;
    }

    public void setUrl(String str) {
        this.zzae = str;
    }

    public List<String> zzrj() {
        return this.zzcfu;
    }

    public String zzrk() {
        return this.zzcfy;
    }

    public boolean zzrl() {
        return this.zzcga;
    }

    public String zzrm() {
        return this.zzcgc;
    }
}
