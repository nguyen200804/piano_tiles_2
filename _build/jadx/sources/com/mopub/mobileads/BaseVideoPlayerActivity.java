package com.mopub.mobileads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import com.mopub.common.AdType;
import com.mopub.common.Constants;
import com.mopub.common.DataKeys;
import com.mopub.common.FullAdType;
import com.mopub.common.logging.MoPubLog;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class BaseVideoPlayerActivity extends Activity {
    public static final String VIDEO_CLASS_EXTRAS_KEY = "video_view_class_name";
    public static final String VIDEO_URL = "video_url";

    public static void startMraid(Context context, String videoUrl) {
        try {
            context.startActivity(a(context, videoUrl));
        } catch (ActivityNotFoundException e) {
            MoPubLog.d("Activity MraidVideoPlayerActivity not found. Did you declare it in your AndroidManifest.xml?");
        }
    }

    static Intent a(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) MraidVideoPlayerActivity.class);
        intent.setFlags(268435456);
        intent.putExtra(VIDEO_CLASS_EXTRAS_KEY, AdType.MRAID);
        intent.putExtra(VIDEO_URL, str);
        return intent;
    }

    static void a(Context context, VastVideoConfig vastVideoConfig, long j) {
        try {
            context.startActivity(b(context, vastVideoConfig, j));
        } catch (ActivityNotFoundException e) {
            MoPubLog.d("Activity MraidVideoPlayerActivity not found. Did you declare it in your AndroidManifest.xml?");
        }
    }

    static Intent b(Context context, VastVideoConfig vastVideoConfig, long j) {
        Intent intent = new Intent(context, (Class<?>) MraidVideoPlayerActivity.class);
        intent.setFlags(268435456);
        intent.putExtra(VIDEO_CLASS_EXTRAS_KEY, FullAdType.VAST);
        intent.putExtra("vast_video_config", vastVideoConfig);
        intent.putExtra(DataKeys.BROADCAST_IDENTIFIER_KEY, j);
        return intent;
    }

    public static void startNativeVideo(Context context, long nativeVideoId, VastVideoConfig vastVideoConfig) {
        try {
            context.startActivity(createIntentNativeVideo(context, nativeVideoId, vastVideoConfig));
        } catch (ActivityNotFoundException e) {
            MoPubLog.d("Activity MraidVideoPlayerActivity not found. Did you declare it in your AndroidManifest.xml?");
        }
    }

    public static Intent createIntentNativeVideo(Context context, long nativeVideoId, VastVideoConfig vastVideoConfig) {
        Intent intent = new Intent(context, (Class<?>) MraidVideoPlayerActivity.class);
        intent.setFlags(268435456);
        intent.putExtra(VIDEO_CLASS_EXTRAS_KEY, "native");
        intent.putExtra(Constants.NATIVE_VIDEO_ID, nativeVideoId);
        intent.putExtra(Constants.NATIVE_VAST_VIDEO_CONFIG, vastVideoConfig);
        return intent;
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        AudioManager audioManager = (AudioManager) getSystemService("audio");
        if (audioManager != null) {
            audioManager.abandonAudioFocus(null);
        }
    }
}
