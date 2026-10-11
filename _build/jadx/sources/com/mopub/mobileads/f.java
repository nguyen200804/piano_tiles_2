package com.mopub.mobileads;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.mopub.common.MoPubBrowser;
import com.mopub.common.Preconditions;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Intents;
import com.mopub.exceptions.IntentNotResolvableException;
import com.mopub.network.TrackingRequest;
import java.io.Serializable;
import java.util.List;

/* compiled from: VastIconConfig.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class f implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    private final int f4494a;

    /* renamed from: b, reason: collision with root package name */
    private final int f4495b;
    private final int c;

    @Nullable
    private final Integer d;

    @NonNull
    private final k e;

    @NonNull
    private final List<VastTracker> f;

    @Nullable
    private final String g;

    @NonNull
    private final List<VastTracker> h;

    f(int i, int i2, @Nullable Integer num, @Nullable Integer num2, @NonNull k kVar, @NonNull List<VastTracker> list, @Nullable String str, @NonNull List<VastTracker> list2) {
        Preconditions.checkNotNull(kVar);
        Preconditions.checkNotNull(list);
        Preconditions.checkNotNull(list2);
        this.f4494a = i;
        this.f4495b = i2;
        this.c = num == null ? 0 : num.intValue();
        this.d = num2;
        this.e = kVar;
        this.f = list;
        this.g = str;
        this.h = list2;
    }

    int a() {
        return this.f4494a;
    }

    int b() {
        return this.f4495b;
    }

    int c() {
        return this.c;
    }

    @Nullable
    Integer d() {
        return this.d;
    }

    @NonNull
    k e() {
        return this.e;
    }

    @NonNull
    List<VastTracker> f() {
        return this.f;
    }

    void a(@NonNull Context context, int i, @NonNull String str) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(str);
        TrackingRequest.makeVastTrackingHttpRequest(this.h, null, Integer.valueOf(i), str, context);
    }

    void a(@NonNull final Context context, @Nullable String str, @Nullable final String str2) {
        Preconditions.checkNotNull(context);
        String correctClickThroughUrl = this.e.getCorrectClickThroughUrl(this.g, str);
        if (!TextUtils.isEmpty(correctClickThroughUrl)) {
            new UrlHandler.Builder().withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER).withResultActions(new UrlHandler.ResultActions() { // from class: com.mopub.mobileads.f.1
                @Override // com.mopub.common.UrlHandler.ResultActions
                public void urlHandlingSucceeded(@NonNull String url, @NonNull UrlAction urlAction) {
                    if (urlAction == UrlAction.OPEN_IN_APP_BROWSER) {
                        Bundle bundle = new Bundle();
                        bundle.putString(MoPubBrowser.DESTINATION_URL_KEY, url);
                        if (!TextUtils.isEmpty(str2)) {
                            bundle.putString(MoPubBrowser.DSP_CREATIVE_ID, str2);
                        }
                        try {
                            Intents.startActivity(context, Intents.getStartActivityIntent(context, MoPubBrowser.class, bundle));
                        } catch (IntentNotResolvableException e) {
                            MoPubLog.d(e.getMessage());
                        }
                    }
                }

                @Override // com.mopub.common.UrlHandler.ResultActions
                public void urlHandlingFailed(@NonNull String url, @NonNull UrlAction lastFailedUrlAction) {
                }
            }).withoutMoPubBrowser().build().handleUrl(context, correctClickThroughUrl);
        }
    }
}
