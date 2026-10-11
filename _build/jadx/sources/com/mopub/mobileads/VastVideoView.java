package com.mopub.mobileads;

import android.content.Context;
import android.media.MediaMetadataRetriever;
import android.os.AsyncTask;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.widget.ImageView;
import android.widget.VideoView;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.AsyncTasks;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class VastVideoView extends VideoView {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    private VastVideoBlurLastVideoFrameTask f4441a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private MediaMetadataRetriever f4442b;

    public VastVideoView(@NonNull Context context) {
        super(context);
        Preconditions.checkNotNull(context, "context cannot be null");
        this.f4442b = new MediaMetadataRetriever();
    }

    public void prepareBlurredLastVideoFrame(@NonNull ImageView blurredLastVideoFrameImageView, @NonNull String diskMediaFileUrl) {
        if (this.f4442b != null) {
            this.f4441a = new VastVideoBlurLastVideoFrameTask(this.f4442b, blurredLastVideoFrameImageView, getDuration());
            try {
                AsyncTasks.safeExecuteOnExecutor(this.f4441a, diskMediaFileUrl);
            } catch (Exception e) {
                MoPubLog.d("Failed to blur last video frame", e);
            }
        }
    }

    public void onDestroy() {
        if (this.f4441a != null && this.f4441a.getStatus() != AsyncTask.Status.FINISHED) {
            this.f4441a.cancel(true);
        }
    }
}
