package com.cmcm.orion.adsdk;

import android.support.v7.widget.helper.ItemTouchHelper;
import com.applovin.sdk.AppLovinErrorCodes;

/* compiled from: InternalAdError.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public enum d {
    NOT_WIFI_ERROR(100, "no wifi error"),
    NO_MEDIA_URL_ERROR(102, "no media url"),
    WRAPPER_LIMIT_ERROR(103, "wapper limit"),
    XML_NO_AD_DATA_ERROR(104, "xml is empty string"),
    MEDIA_TYPE_ERROR(105, "media_type_error"),
    APP_EXISTED_ERROR(106, "app exist error"),
    NETWORK_OTHER_ERROR(ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION, "network other error"),
    NETWORK_ENCODING_ERROR(201, "network encoding error"),
    NETWORK_PROTOCOL_ERROR(202, "network protocol error"),
    NETWORK_REDIRECT_ERROR(203, "network redirect error"),
    NETWORK_RESPONSE_ERROR(AppLovinErrorCodes.NO_FILL, "network response error"),
    NETWORK_TIMEOUT_ERROR(205, "network timeout error"),
    NETWORK_MAX_SIZE_ERROR(206, "network max size error"),
    NETWORK_DISK_SPACE_ERROR(207, "network_disk_space_error"),
    NETWORK_URL_ERROR(208, "network_url_error"),
    LUR_INIT_ERROR(300, "lru init error"),
    LRU_PUT_ERROR(301, "lru put error"),
    LRU_GET_ERROR(302, "lru get error"),
    EXCEPTION_ERROR(-1, ""),
    UNKNOWN_ERROR(0, "");

    private int u;
    private String v;

    d(int i, String str) {
        this.u = i;
        this.v = str;
    }

    public final int a() {
        return this.u;
    }

    public final String b() {
        return this.v;
    }

    public final d a(String str) {
        this.v = str;
        return this;
    }

    public final d a(Throwable th) {
        this.v = th.getMessage();
        return this;
    }
}
