package com.facebook.ads.internal.view.d.c;

import android.net.Uri;
import android.view.View;
import com.facebook.ads.VideoStartReason;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public interface c {
    void a(int i);

    void a(VideoStartReason videoStartReason);

    void a(boolean z);

    void b();

    void b(boolean z);

    void c();

    void d();

    int getCurrentPosition();

    int getDuration();

    long getInitialBufferTime();

    VideoStartReason getStartReason();

    d getState();

    int getVideoHeight();

    int getVideoWidth();

    View getView();

    float getVolume();

    void setBackgroundPlaybackEnabled(boolean z);

    void setControlsAnchorView(View view);

    void setFullScreen(boolean z);

    void setRequestedVolume(float f);

    void setVideoMPD(String str);

    void setVideoStateChangeListener(e eVar);

    void setup(Uri uri);
}
