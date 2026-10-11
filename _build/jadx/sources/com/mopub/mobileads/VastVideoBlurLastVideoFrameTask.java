package com.mopub.mobileads;

import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.AsyncTask;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.widget.ImageView;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.ImageUtils;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class VastVideoBlurLastVideoFrameTask extends AsyncTask<String, Void, Boolean> {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final MediaMetadataRetriever f4422a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private final ImageView f4423b;
    private int c;

    @Nullable
    private Bitmap d;

    @Nullable
    private Bitmap e;

    public VastVideoBlurLastVideoFrameTask(@NonNull MediaMetadataRetriever mediaMetadataRetriever, @NonNull ImageView blurredLastVideoFrameImageView, int videoDuration) {
        this.f4422a = mediaMetadataRetriever;
        this.f4423b = blurredLastVideoFrameImageView;
        this.c = videoDuration;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Boolean doInBackground(String... strArr) {
        boolean z;
        if (strArr == null || strArr.length == 0 || strArr[0] == null) {
            return false;
        }
        try {
            this.f4422a.setDataSource(strArr[0]);
            this.d = this.f4422a.getFrameAtTime((this.c * 1000) - 200000, 3);
            if (this.d == null) {
                z = false;
            } else {
                this.e = ImageUtils.applyFastGaussianBlurToBitmap(this.d, 4);
                z = true;
            }
            return z;
        } catch (Exception e) {
            MoPubLog.d("Failed to blur last video frame", e);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(Boolean bool) {
        if (isCancelled()) {
            onCancelled();
        } else if (bool != null && bool.booleanValue()) {
            this.f4423b.setImageBitmap(this.e);
            this.f4423b.setImageAlpha(100);
        }
    }

    @Override // android.os.AsyncTask
    protected void onCancelled() {
        MoPubLog.d("VastVideoBlurLastVideoFrameTask was cancelled.");
    }
}
