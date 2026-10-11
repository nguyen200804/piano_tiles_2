package com.google.android.gms.ads;

import com.google.android.gms.internal.zzin;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class VideoOptions {
    private final boolean zzaio;

    public static final class Builder {
        private boolean zzaio = false;

        public VideoOptions build() {
            return new VideoOptions(this);
        }

        public Builder setStartMuted(boolean z) {
            this.zzaio = z;
            return this;
        }
    }

    private VideoOptions(Builder builder) {
        this.zzaio = builder.zzaio;
    }

    public boolean getStartMuted() {
        return this.zzaio;
    }
}
