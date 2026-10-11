package com.mopub.mobileads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
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
import com.mopub.network.TrackingRequest;
import java.io.Serializable;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class VastCompanionAdConfig implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    private final int f4402a;

    /* renamed from: b, reason: collision with root package name */
    private final int f4403b;

    @NonNull
    private final k c;

    @Nullable
    private final String d;

    @NonNull
    private final List<VastTracker> e;

    @NonNull
    private final List<VastTracker> f;

    public VastCompanionAdConfig(int width, int height, @NonNull k vastResource, @Nullable String clickThroughUrl, @NonNull List<VastTracker> clickTrackers, @NonNull List<VastTracker> creativeViewTrackers) {
        Preconditions.checkNotNull(vastResource);
        Preconditions.checkNotNull(clickTrackers, "clickTrackers cannot be null");
        Preconditions.checkNotNull(creativeViewTrackers, "creativeViewTrackers cannot be null");
        this.f4402a = width;
        this.f4403b = height;
        this.c = vastResource;
        this.d = clickThroughUrl;
        this.e = clickTrackers;
        this.f = creativeViewTrackers;
    }

    public void addClickTrackers(@NonNull List<VastTracker> clickTrackers) {
        Preconditions.checkNotNull(clickTrackers, "clickTrackers cannot be null");
        this.e.addAll(clickTrackers);
    }

    public void addCreativeViewTrackers(@NonNull List<VastTracker> creativeViewTrackers) {
        Preconditions.checkNotNull(creativeViewTrackers, "creativeViewTrackers cannot be null");
        this.f.addAll(creativeViewTrackers);
    }

    public int getWidth() {
        return this.f4402a;
    }

    public int getHeight() {
        return this.f4403b;
    }

    @NonNull
    public k getVastResource() {
        return this.c;
    }

    @Nullable
    public String getClickThroughUrl() {
        return this.d;
    }

    @NonNull
    public List<VastTracker> getClickTrackers() {
        return this.e;
    }

    @NonNull
    public List<VastTracker> getCreativeViewTrackers() {
        return this.f;
    }

    void a(@NonNull Context context, int i) {
        Preconditions.checkNotNull(context);
        TrackingRequest.makeVastTrackingHttpRequest(this.f, null, Integer.valueOf(i), null, context);
    }

    void a(@NonNull final Context context, final int i, @Nullable String str, @Nullable final String str2) {
        Preconditions.checkNotNull(context);
        Preconditions.checkArgument(context instanceof Activity, "context must be an activity");
        String correctClickThroughUrl = this.c.getCorrectClickThroughUrl(this.d, str);
        if (!TextUtils.isEmpty(correctClickThroughUrl)) {
            new UrlHandler.Builder().withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_APP_MARKET, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK).withResultActions(new UrlHandler.ResultActions() { // from class: com.mopub.mobileads.VastCompanionAdConfig.1
                @Override // com.mopub.common.UrlHandler.ResultActions
                public void urlHandlingSucceeded(@NonNull String url, @NonNull UrlAction urlAction) {
                    if (urlAction == UrlAction.OPEN_IN_APP_BROWSER) {
                        Bundle bundle = new Bundle();
                        bundle.putString(MoPubBrowser.DESTINATION_URL_KEY, url);
                        if (!TextUtils.isEmpty(str2)) {
                            bundle.putString(MoPubBrowser.DSP_CREATIVE_ID, str2);
                        }
                        try {
                            ((Activity) context).startActivityForResult(Intents.getStartActivityIntent(context, MoPubBrowser.class, bundle), i);
                        } catch (ActivityNotFoundException e) {
                            MoPubLog.d("Activity " + MoPubBrowser.class.getName() + " not found. Did you declare it in your AndroidManifest.xml?");
                        }
                    }
                }

                @Override // com.mopub.common.UrlHandler.ResultActions
                public void urlHandlingFailed(@NonNull String url, @NonNull UrlAction lastFailedUrlAction) {
                }
            }).withDspCreativeId(str2).withoutMoPubBrowser().build().handleUrl(context, correctClickThroughUrl);
        }
    }
}
