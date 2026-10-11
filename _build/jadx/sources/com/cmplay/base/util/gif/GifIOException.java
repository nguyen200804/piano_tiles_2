package com.cmplay.base.util.gif;

import android.support.annotation.NonNull;
import java.io.IOException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class GifIOException extends IOException {
    private static final long serialVersionUID = 13038402904505L;
    private final String mErrnoMessage;

    @NonNull
    public final GifError reason;

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.mErrnoMessage == null ? this.reason.getFormattedDescription() : this.reason.getFormattedDescription() + ": " + this.mErrnoMessage;
    }

    private GifIOException(int errorCode, String errnoMessage) {
        this.reason = GifError.fromCode(errorCode);
        this.mErrnoMessage = errnoMessage;
    }

    static GifIOException fromCode(int nativeErrorCode) {
        if (nativeErrorCode == GifError.NO_ERROR.errorCode) {
            return null;
        }
        return new GifIOException(nativeErrorCode, null);
    }
}
