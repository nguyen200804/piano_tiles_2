package com.mopub.mobileads;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class VastMacroHelper {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final List<String> f4413a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private final Map<i, String> f4414b;

    public VastMacroHelper(@NonNull List<String> uris) {
        Preconditions.checkNotNull(uris, "uris cannot be null");
        this.f4413a = uris;
        this.f4414b = new HashMap();
        this.f4414b.put(i.CACHEBUSTING, a());
    }

    @NonNull
    public List<String> getUris() {
        ArrayList arrayList = new ArrayList();
        for (String str : this.f4413a) {
            if (!TextUtils.isEmpty(str)) {
                String str2 = str;
                for (i iVar : i.values()) {
                    String str3 = this.f4414b.get(iVar);
                    if (str3 == null) {
                        str3 = "";
                    }
                    str2 = str2.replaceAll("\\[" + iVar.name() + "\\]", str3);
                }
                arrayList.add(str2);
            }
        }
        return arrayList;
    }

    @NonNull
    public VastMacroHelper withErrorCode(@Nullable VastErrorCode errorCode) {
        if (errorCode != null) {
            this.f4414b.put(i.ERRORCODE, errorCode.a());
        }
        return this;
    }

    @NonNull
    public VastMacroHelper withContentPlayHead(@Nullable Integer contentPlayHeadMS) {
        if (contentPlayHeadMS != null) {
            String a2 = a(contentPlayHeadMS.intValue());
            if (!TextUtils.isEmpty(a2)) {
                this.f4414b.put(i.CONTENTPLAYHEAD, a2);
            }
        }
        return this;
    }

    @NonNull
    public VastMacroHelper withAssetUri(@Nullable String assetUri) {
        if (!TextUtils.isEmpty(assetUri)) {
            try {
                assetUri = URLEncoder.encode(assetUri, "UTF-8");
            } catch (UnsupportedEncodingException e) {
                MoPubLog.w("Failed to encode url", e);
            }
            this.f4414b.put(i.ASSETURI, assetUri);
        }
        return this;
    }

    @NonNull
    private String a() {
        return String.format(Locale.US, "%08d", Long.valueOf(Math.round(Math.random() * 1.0E8d)));
    }

    @NonNull
    private String a(int i) {
        return String.format("%02d:%02d:%02d.%03d", Long.valueOf(TimeUnit.MILLISECONDS.toHours(i)), Long.valueOf(TimeUnit.MILLISECONDS.toMinutes(i) % TimeUnit.HOURS.toMinutes(1L)), Long.valueOf(TimeUnit.MILLISECONDS.toSeconds(i) % TimeUnit.MINUTES.toSeconds(1L)), Integer.valueOf(i % 1000));
    }
}
