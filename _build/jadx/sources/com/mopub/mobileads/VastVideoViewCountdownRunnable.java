package com.mopub.mobileads;

import android.os.Handler;
import android.support.annotation.NonNull;
import com.mopub.common.Preconditions;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class VastVideoViewCountdownRunnable extends RepeatingHandlerRunnable {

    @NonNull
    private final VastVideoViewController c;

    public VastVideoViewCountdownRunnable(@NonNull VastVideoViewController videoViewController, @NonNull Handler handler) {
        super(handler);
        Preconditions.checkNotNull(handler);
        Preconditions.checkNotNull(videoViewController);
        this.c = videoViewController;
    }

    @Override // com.mopub.mobileads.RepeatingHandlerRunnable
    public void doWork() {
        this.c.m();
        if (this.c.l()) {
            this.c.k();
        }
    }
}
