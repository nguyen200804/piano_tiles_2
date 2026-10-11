package android.support.v4.media.session;

import android.media.session.MediaSession;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class MediaSessionCompatApi22 {
    MediaSessionCompatApi22() {
    }

    public static void setRatingType(Object sessionObj, int type) {
        ((MediaSession) sessionObj).setRatingType(type);
    }
}
