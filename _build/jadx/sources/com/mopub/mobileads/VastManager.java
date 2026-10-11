package com.mopub.mobileads;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import com.mopub.common.CacheService;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.AsyncTasks;
import com.mopub.mobileads.VastXmlManagerAggregator;
import com.mopub.mobileads.VideoDownloader;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class VastManager implements VastXmlManagerAggregator.b {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    private VastManagerListener f4415a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private VastXmlManagerAggregator f4416b;

    @Nullable
    private String c;
    private double d;
    private int e;
    private final boolean f;

    public interface VastManagerListener {
        void onVastVideoConfigurationPrepared(@Nullable VastVideoConfig vastVideoConfig);
    }

    public VastManager(@NonNull Context context, boolean shouldPreCacheVideo) {
        a(context);
        this.f = shouldPreCacheVideo;
    }

    public void prepareVastVideoConfiguration(@Nullable String vastXml, @NonNull VastManagerListener vastManagerListener, @Nullable String dspCreativeId, @NonNull Context context) {
        Preconditions.checkNotNull(vastManagerListener, "vastManagerListener cannot be null");
        Preconditions.checkNotNull(context, "context cannot be null");
        if (this.f4416b == null) {
            this.f4415a = vastManagerListener;
            this.f4416b = new VastXmlManagerAggregator(this, this.d, this.e, context.getApplicationContext());
            this.c = dspCreativeId;
            try {
                AsyncTasks.safeExecuteOnExecutor(this.f4416b, vastXml);
            } catch (Exception e) {
                MoPubLog.d("Failed to aggregate vast xml", e);
                this.f4415a.onVastVideoConfigurationPrepared(null);
            }
        }
    }

    public void cancel() {
        if (this.f4416b != null) {
            this.f4416b.cancel(true);
            this.f4416b = null;
        }
    }

    @Override // com.mopub.mobileads.VastXmlManagerAggregator.b
    public void onAggregationComplete(@Nullable final VastVideoConfig vastVideoConfig) {
        if (this.f4415a == null) {
            throw new IllegalStateException("mVastManagerListener cannot be null here. Did you call prepareVastVideoConfiguration()?");
        }
        if (vastVideoConfig == null) {
            this.f4415a.onVastVideoConfigurationPrepared(null);
            return;
        }
        if (!TextUtils.isEmpty(this.c)) {
            vastVideoConfig.setDspCreativeId(this.c);
        }
        if (!this.f || a(vastVideoConfig)) {
            this.f4415a.onVastVideoConfigurationPrepared(vastVideoConfig);
        } else {
            VideoDownloader.cache(vastVideoConfig.getNetworkMediaFileUrl(), new VideoDownloader.a() { // from class: com.mopub.mobileads.VastManager.1
                @Override // com.mopub.mobileads.VideoDownloader.a
                public void onComplete(boolean success) {
                    if (success && VastManager.this.a(vastVideoConfig)) {
                        VastManager.this.f4415a.onVastVideoConfigurationPrepared(vastVideoConfig);
                    } else {
                        MoPubLog.d("Failed to download VAST video.");
                        VastManager.this.f4415a.onVastVideoConfigurationPrepared(null);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(@NonNull VastVideoConfig vastVideoConfig) {
        Preconditions.checkNotNull(vastVideoConfig, "vastVideoConfig cannot be null");
        String networkMediaFileUrl = vastVideoConfig.getNetworkMediaFileUrl();
        if (!CacheService.containsKeyDiskCache(networkMediaFileUrl)) {
            return false;
        }
        vastVideoConfig.setDiskMediaFileUrl(CacheService.getFilePathDiskCache(networkMediaFileUrl));
        return true;
    }

    private void a(@NonNull Context context) {
        Preconditions.checkNotNull(context, "context cannot be null");
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        int width = defaultDisplay.getWidth();
        int height = defaultDisplay.getHeight();
        float f = context.getResources().getDisplayMetrics().density;
        if (f <= 0.0f) {
            f = 1.0f;
        }
        int max = Math.max(width, height);
        int min = Math.min(width, height);
        this.d = max / min;
        this.e = (int) ((min / f) * (max / f));
    }
}
