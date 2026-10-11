package com.mopub.mobileads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.mopub.common.Constants;
import com.mopub.common.MoPubBrowser;
import com.mopub.common.Preconditions;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import com.mopub.common.util.Intents;
import com.mopub.common.util.Strings;
import com.mopub.exceptions.IntentNotResolvableException;
import com.mopub.network.TrackingRequest;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class VastVideoConfig implements Serializable {

    @Nullable
    private String k;

    @Nullable
    private String l;

    @Nullable
    private String m;

    @Nullable
    private String n;

    @Nullable
    private VastCompanionAdConfig o;

    @Nullable
    private VastCompanionAdConfig p;

    @Nullable
    private f r;

    @Nullable
    private String t;

    @Nullable
    private String u;

    @Nullable
    private String v;

    @Nullable
    private VideoViewabilityTracker x;
    private String y;
    private boolean z;

    @NonNull
    private DeviceUtils.ForceOrientation w = DeviceUtils.ForceOrientation.FORCE_LANDSCAPE;

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final ArrayList<VastTracker> f4428a = new ArrayList<>();

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private final ArrayList<VastFractionalProgressTracker> f4429b = new ArrayList<>();

    @NonNull
    private final ArrayList<VastAbsoluteProgressTracker> c = new ArrayList<>();

    @NonNull
    private final ArrayList<VastTracker> d = new ArrayList<>();

    @NonNull
    private final ArrayList<VastTracker> e = new ArrayList<>();

    @NonNull
    private final ArrayList<VastTracker> f = new ArrayList<>();

    @NonNull
    private final ArrayList<VastTracker> g = new ArrayList<>();

    @NonNull
    private final ArrayList<VastTracker> h = new ArrayList<>();

    @NonNull
    private final ArrayList<VastTracker> i = new ArrayList<>();

    @NonNull
    private final ArrayList<VastTracker> j = new ArrayList<>();

    @NonNull
    private Map<String, VastCompanionAdConfig> q = new HashMap();
    private boolean s = false;

    public void setDspCreativeId(@NonNull String dspCreativeId) {
        this.y = dspCreativeId;
    }

    public String getDspCreativeId() {
        return this.y;
    }

    public void addImpressionTrackers(@NonNull List<VastTracker> impressionTrackers) {
        Preconditions.checkNotNull(impressionTrackers, "impressionTrackers cannot be null");
        this.f4428a.addAll(impressionTrackers);
    }

    public void addFractionalTrackers(@NonNull List<VastFractionalProgressTracker> fractionalTrackers) {
        Preconditions.checkNotNull(fractionalTrackers, "fractionalTrackers cannot be null");
        this.f4429b.addAll(fractionalTrackers);
        Collections.sort(this.f4429b);
    }

    public void addAbsoluteTrackers(@NonNull List<VastAbsoluteProgressTracker> absoluteTrackers) {
        Preconditions.checkNotNull(absoluteTrackers, "absoluteTrackers cannot be null");
        this.c.addAll(absoluteTrackers);
        Collections.sort(this.c);
    }

    public void addCompleteTrackers(@NonNull List<VastTracker> completeTrackers) {
        Preconditions.checkNotNull(completeTrackers, "completeTrackers cannot be null");
        this.f.addAll(completeTrackers);
    }

    public void addPauseTrackers(@NonNull List<VastTracker> pauseTrackers) {
        Preconditions.checkNotNull(pauseTrackers, "pauseTrackers cannot be null");
        this.d.addAll(pauseTrackers);
    }

    public void addResumeTrackers(@NonNull List<VastTracker> resumeTrackers) {
        Preconditions.checkNotNull(resumeTrackers, "resumeTrackers cannot be null");
        this.e.addAll(resumeTrackers);
    }

    public void addCloseTrackers(@NonNull List<VastTracker> closeTrackers) {
        Preconditions.checkNotNull(closeTrackers, "closeTrackers cannot be null");
        this.g.addAll(closeTrackers);
    }

    public void addSkipTrackers(@NonNull List<VastTracker> skipTrackers) {
        Preconditions.checkNotNull(skipTrackers, "skipTrackers cannot be null");
        this.h.addAll(skipTrackers);
    }

    public void addClickTrackers(@NonNull List<VastTracker> clickTrackers) {
        Preconditions.checkNotNull(clickTrackers, "clickTrackers cannot be null");
        this.i.addAll(clickTrackers);
    }

    public void addErrorTrackers(@NonNull List<VastTracker> errorTrackers) {
        Preconditions.checkNotNull(errorTrackers, "errorTrackers cannot be null");
        this.j.addAll(errorTrackers);
    }

    public void addVideoTrackers(@Nullable JSONObject videoTrackers) {
        if (videoTrackers != null) {
            JSONArray optJSONArray = videoTrackers.optJSONArray(Constants.VIDEO_TRACKING_URLS_KEY);
            JSONArray optJSONArray2 = videoTrackers.optJSONArray(Constants.VIDEO_TRACKING_EVENTS_KEY);
            if (optJSONArray != null && optJSONArray2 != null) {
                for (int i = 0; i < optJSONArray2.length(); i++) {
                    String optString = optJSONArray2.optString(i);
                    List<String> a2 = a(optString, optJSONArray);
                    o fromString = o.fromString(optString);
                    if (optString != null && a2 != null) {
                        switch (fromString) {
                            case START:
                                c(a2);
                                break;
                            case FIRST_QUARTILE:
                                a(a2, 0.25f);
                                break;
                            case MIDPOINT:
                                a(a2, 0.5f);
                                break;
                            case THIRD_QUARTILE:
                                a(a2, 0.75f);
                                break;
                            case COMPLETE:
                                b(a2);
                                break;
                            case COMPANION_AD_VIEW:
                                d(a2);
                                break;
                            case COMPANION_AD_CLICK:
                                e(a2);
                                break;
                            default:
                                MoPubLog.d("Encountered unknown video tracking event: " + optString);
                                break;
                        }
                    }
                }
            }
        }
    }

    public void setClickThroughUrl(@Nullable String clickThroughUrl) {
        this.k = clickThroughUrl;
    }

    public void setNetworkMediaFileUrl(@Nullable String networkMediaFileUrl) {
        this.l = networkMediaFileUrl;
    }

    public void setDiskMediaFileUrl(@Nullable String diskMediaFileUrl) {
        this.m = diskMediaFileUrl;
    }

    public void setVastCompanionAd(@Nullable VastCompanionAdConfig landscapeVastCompanionAdConfig, @Nullable VastCompanionAdConfig portraitVastCompanionAdConfig) {
        this.o = landscapeVastCompanionAdConfig;
        this.p = portraitVastCompanionAdConfig;
    }

    public void setSocialActionsCompanionAds(@NonNull Map<String, VastCompanionAdConfig> socialActionsCompanionAds) {
        this.q = socialActionsCompanionAds;
    }

    public void setVastIconConfig(@Nullable f vastIconConfig) {
        this.r = vastIconConfig;
    }

    public void setCustomCtaText(@Nullable String customCtaText) {
        if (customCtaText != null) {
            this.t = customCtaText;
        }
    }

    public void setCustomSkipText(@Nullable String customSkipText) {
        if (customSkipText != null) {
            this.u = customSkipText;
        }
    }

    public void setCustomCloseIconUrl(@Nullable String customCloseIconUrl) {
        if (customCloseIconUrl != null) {
            this.v = customCloseIconUrl;
        }
    }

    public void setCustomForceOrientation(@Nullable DeviceUtils.ForceOrientation customForceOrientation) {
        if (customForceOrientation != null && customForceOrientation != DeviceUtils.ForceOrientation.UNDEFINED) {
            this.w = customForceOrientation;
            this.z = true;
        }
    }

    public void setSkipOffset(@Nullable String skipOffset) {
        if (skipOffset != null) {
            this.n = skipOffset;
        }
    }

    public void setVideoViewabilityTracker(@Nullable VideoViewabilityTracker videoViewabilityTracker) {
        if (videoViewabilityTracker != null) {
            this.x = videoViewabilityTracker;
        }
    }

    public void setIsRewardedVideo(boolean isRewardedVideo) {
        this.s = isRewardedVideo;
    }

    @NonNull
    public List<VastTracker> getImpressionTrackers() {
        return this.f4428a;
    }

    @NonNull
    public ArrayList<VastAbsoluteProgressTracker> getAbsoluteTrackers() {
        return this.c;
    }

    @NonNull
    public ArrayList<VastFractionalProgressTracker> getFractionalTrackers() {
        return this.f4429b;
    }

    @NonNull
    public List<VastTracker> getPauseTrackers() {
        return this.d;
    }

    @NonNull
    public List<VastTracker> getResumeTrackers() {
        return this.e;
    }

    @NonNull
    public List<VastTracker> getCompleteTrackers() {
        return this.f;
    }

    @NonNull
    public List<VastTracker> getCloseTrackers() {
        return this.g;
    }

    @NonNull
    public List<VastTracker> getSkipTrackers() {
        return this.h;
    }

    @NonNull
    public List<VastTracker> getClickTrackers() {
        return this.i;
    }

    @NonNull
    public List<VastTracker> getErrorTrackers() {
        return this.j;
    }

    @Nullable
    public String getClickThroughUrl() {
        return this.k;
    }

    @Nullable
    public String getNetworkMediaFileUrl() {
        return this.l;
    }

    @Nullable
    public String getDiskMediaFileUrl() {
        return this.m;
    }

    @Nullable
    public VastCompanionAdConfig getVastCompanionAd(int orientation) {
        switch (orientation) {
            case 1:
                return this.p;
            case 2:
                return this.o;
            default:
                return this.o;
        }
    }

    @NonNull
    public Map<String, VastCompanionAdConfig> getSocialActionsCompanionAds() {
        return this.q;
    }

    @Nullable
    public f getVastIconConfig() {
        return this.r;
    }

    @Nullable
    public String getCustomCtaText() {
        return this.t;
    }

    @Nullable
    public String getCustomSkipText() {
        return this.u;
    }

    @Nullable
    public String getCustomCloseIconUrl() {
        return this.v;
    }

    @Nullable
    public VideoViewabilityTracker getVideoViewabilityTracker() {
        return this.x;
    }

    public boolean isCustomForceOrientationSet() {
        return this.z;
    }

    public boolean hasCompanionAd() {
        return (this.o == null || this.p == null) ? false : true;
    }

    @NonNull
    public DeviceUtils.ForceOrientation getCustomForceOrientation() {
        return this.w;
    }

    @Nullable
    public String getSkipOffsetString() {
        return this.n;
    }

    public boolean isRewardedVideo() {
        return this.s;
    }

    public void handleImpression(@NonNull Context context, int contentPlayHead) {
        Preconditions.checkNotNull(context, "context cannot be null");
        TrackingRequest.makeVastTrackingHttpRequest(this.f4428a, null, Integer.valueOf(contentPlayHead), this.l, context);
    }

    public void handleClickForResult(@NonNull Activity activity, int contentPlayHead, int requestCode) {
        a(activity, contentPlayHead, Integer.valueOf(requestCode));
    }

    public void handleClickWithoutResult(@NonNull Context context, int contentPlayHead) {
        a(context.getApplicationContext(), contentPlayHead, null);
    }

    private void a(@NonNull final Context context, int i, @Nullable final Integer num) {
        Preconditions.checkNotNull(context, "context cannot be null");
        TrackingRequest.makeVastTrackingHttpRequest(this.i, null, Integer.valueOf(i), this.l, context);
        if (!TextUtils.isEmpty(this.k)) {
            new UrlHandler.Builder().withDspCreativeId(this.y).withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_APP_MARKET, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK).withResultActions(new UrlHandler.ResultActions() { // from class: com.mopub.mobileads.VastVideoConfig.1
                @Override // com.mopub.common.UrlHandler.ResultActions
                public void urlHandlingSucceeded(@NonNull String url, @NonNull UrlAction urlAction) {
                    if (urlAction == UrlAction.OPEN_IN_APP_BROWSER) {
                        Bundle bundle = new Bundle();
                        bundle.putString(MoPubBrowser.DESTINATION_URL_KEY, url);
                        bundle.putString(MoPubBrowser.DSP_CREATIVE_ID, VastVideoConfig.this.y);
                        Intent startActivityIntent = Intents.getStartActivityIntent(context, MoPubBrowser.class, bundle);
                        try {
                            if (context instanceof Activity) {
                                Preconditions.checkNotNull(num);
                                ((Activity) context).startActivityForResult(startActivityIntent, num.intValue());
                            } else {
                                Intents.startActivity(context, startActivityIntent);
                            }
                        } catch (ActivityNotFoundException e) {
                            MoPubLog.d("Activity " + MoPubBrowser.class.getName() + " not found. Did you declare it in your AndroidManifest.xml?");
                        } catch (IntentNotResolvableException e2) {
                            MoPubLog.d("Activity " + MoPubBrowser.class.getName() + " not found. Did you declare it in your AndroidManifest.xml?");
                        }
                    }
                }

                @Override // com.mopub.common.UrlHandler.ResultActions
                public void urlHandlingFailed(@NonNull String url, @NonNull UrlAction lastFailedUrlAction) {
                }
            }).withoutMoPubBrowser().build().handleUrl(context, this.k);
        }
    }

    public void handleResume(@NonNull Context context, int contentPlayHead) {
        Preconditions.checkNotNull(context, "context cannot be null");
        TrackingRequest.makeVastTrackingHttpRequest(this.e, null, Integer.valueOf(contentPlayHead), this.l, context);
    }

    public void handlePause(@NonNull Context context, int contentPlayHead) {
        Preconditions.checkNotNull(context, "context cannot be null");
        TrackingRequest.makeVastTrackingHttpRequest(this.d, null, Integer.valueOf(contentPlayHead), this.l, context);
    }

    public void handleClose(@NonNull Context context, int contentPlayHead) {
        Preconditions.checkNotNull(context, "context cannot be null");
        TrackingRequest.makeVastTrackingHttpRequest(this.g, null, Integer.valueOf(contentPlayHead), this.l, context);
        TrackingRequest.makeVastTrackingHttpRequest(this.h, null, Integer.valueOf(contentPlayHead), this.l, context);
    }

    public void handleComplete(@NonNull Context context, int contentPlayHead) {
        Preconditions.checkNotNull(context, "context cannot be null");
        TrackingRequest.makeVastTrackingHttpRequest(this.f, null, Integer.valueOf(contentPlayHead), this.l, context);
    }

    public void handleError(@NonNull Context context, @Nullable VastErrorCode errorCode, int contentPlayHead) {
        Preconditions.checkNotNull(context, "context cannot be null");
        TrackingRequest.makeVastTrackingHttpRequest(this.j, errorCode, Integer.valueOf(contentPlayHead), this.l, context);
    }

    @NonNull
    public List<VastTracker> getUntriggeredTrackersBefore(int currentPositionMillis, int videoLengthMillis) {
        if (Preconditions.NoThrow.checkArgument(videoLengthMillis > 0) && currentPositionMillis >= 0) {
            float f = currentPositionMillis / videoLengthMillis;
            ArrayList arrayList = new ArrayList();
            VastAbsoluteProgressTracker vastAbsoluteProgressTracker = new VastAbsoluteProgressTracker("", currentPositionMillis);
            int size = this.c.size();
            for (int i = 0; i < size; i++) {
                VastAbsoluteProgressTracker vastAbsoluteProgressTracker2 = this.c.get(i);
                if (vastAbsoluteProgressTracker2.compareTo(vastAbsoluteProgressTracker) > 0) {
                    break;
                }
                if (!vastAbsoluteProgressTracker2.isTracked()) {
                    arrayList.add(vastAbsoluteProgressTracker2);
                }
            }
            VastFractionalProgressTracker vastFractionalProgressTracker = new VastFractionalProgressTracker("", f);
            int size2 = this.f4429b.size();
            for (int i2 = 0; i2 < size2; i2++) {
                VastFractionalProgressTracker vastFractionalProgressTracker2 = this.f4429b.get(i2);
                if (vastFractionalProgressTracker2.compareTo(vastFractionalProgressTracker) > 0) {
                    break;
                }
                if (!vastFractionalProgressTracker2.isTracked()) {
                    arrayList.add(vastFractionalProgressTracker2);
                }
            }
            return arrayList;
        }
        return Collections.emptyList();
    }

    public int getRemainingProgressTrackerCount() {
        return getUntriggeredTrackersBefore(Integer.MAX_VALUE, Integer.MAX_VALUE).size();
    }

    @Nullable
    public Integer getSkipOffsetMillis(int videoDuration) {
        Integer valueOf;
        if (this.n == null) {
            return null;
        }
        try {
            if (Strings.isAbsoluteTracker(this.n)) {
                valueOf = Strings.parseAbsoluteOffset(this.n);
            } else if (Strings.isPercentageTracker(this.n)) {
                valueOf = Integer.valueOf(Math.round((Float.parseFloat(this.n.replace("%", "")) / 100.0f) * videoDuration));
            } else {
                MoPubLog.d(String.format("Invalid VAST skipoffset format: %s", this.n));
                return null;
            }
            if (valueOf != null) {
                return valueOf.intValue() < videoDuration ? valueOf : Integer.valueOf(videoDuration);
            }
            return null;
        } catch (NumberFormatException e) {
            MoPubLog.d(String.format("Failed to parse skipoffset %s", this.n));
            return null;
        }
    }

    @Nullable
    private List<String> a(@Nullable String str, @NonNull JSONArray jSONArray) {
        Preconditions.checkNotNull(jSONArray);
        if (str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            String optString = jSONArray.optString(i);
            if (optString != null) {
                arrayList.add(optString.replace(Constants.VIDEO_TRACKING_URL_MACRO, str));
            }
        }
        return arrayList;
    }

    private List<VastTracker> a(@NonNull List<String> list) {
        Preconditions.checkNotNull(list);
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new VastTracker(it.next()));
        }
        return arrayList;
    }

    private void b(@NonNull List<String> list) {
        Preconditions.checkNotNull(list);
        addCompleteTrackers(a(list));
    }

    private void c(@NonNull List<String> list) {
        Preconditions.checkNotNull(list);
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new VastAbsoluteProgressTracker(it.next(), 0));
        }
        addAbsoluteTrackers(arrayList);
    }

    private void a(@NonNull List<String> list, float f) {
        Preconditions.checkNotNull(list);
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new VastFractionalProgressTracker(it.next(), f));
        }
        addFractionalTrackers(arrayList);
    }

    private void d(@NonNull List<String> list) {
        Preconditions.checkNotNull(list);
        if (hasCompanionAd()) {
            List<VastTracker> a2 = a(list);
            this.o.addCreativeViewTrackers(a2);
            this.p.addCreativeViewTrackers(a2);
        }
    }

    private void e(@NonNull List<String> list) {
        Preconditions.checkNotNull(list);
        if (hasCompanionAd()) {
            List<VastTracker> a2 = a(list);
            this.o.addClickTrackers(a2);
            this.p.addClickTrackers(a2);
        }
    }
}
