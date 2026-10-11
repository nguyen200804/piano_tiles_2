package com.mopub.network;

import android.content.Context;
import android.net.Uri;
import com.mopub.common.GpsHelper;
import com.mopub.volley.toolbox.HurlStack;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class PlayServicesUrlRewriter implements HurlStack.UrlRewriter {
    public static final String DO_NOT_TRACK_TEMPLATE = "mp_tmpl_do_not_track";
    public static final String UDID_TEMPLATE = "mp_tmpl_advertising_id";

    /* renamed from: a, reason: collision with root package name */
    private final String f4734a;

    /* renamed from: b, reason: collision with root package name */
    private final Context f4735b;

    public PlayServicesUrlRewriter(String deviceId, Context context) {
        this.f4734a = deviceId;
        this.f4735b = context.getApplicationContext();
    }

    @Override // com.mopub.volley.toolbox.HurlStack.UrlRewriter
    public String rewriteUrl(String url) {
        GpsHelper.AdvertisingInfo advertisingInfo;
        String str;
        if (url.contains(UDID_TEMPLATE) || url.contains(DO_NOT_TRACK_TEMPLATE)) {
            GpsHelper.AdvertisingInfo advertisingInfo2 = new GpsHelper.AdvertisingInfo(this.f4734a, false);
            if (!GpsHelper.isPlayServicesAvailable(this.f4735b) || (advertisingInfo = GpsHelper.fetchAdvertisingInfoSync(this.f4735b)) == null) {
                advertisingInfo = advertisingInfo2;
                str = "";
            } else {
                str = "ifa:";
            }
            return url.replace(UDID_TEMPLATE, Uri.encode(str + advertisingInfo.advertisingId)).replace(DO_NOT_TRACK_TEMPLATE, advertisingInfo.limitAdTracking ? "1" : "0");
        }
        return url;
    }
}
