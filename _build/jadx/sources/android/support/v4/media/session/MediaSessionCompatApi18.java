package android.support.v4.media.session;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.media.AudioManager;
import android.media.RemoteControlClient;
import android.os.SystemClock;
import android.util.Log;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class MediaSessionCompatApi18 {
    private static final long ACTION_SEEK_TO = 256;
    private static final String TAG = "MediaSessionCompatApi18";
    private static boolean sIsMbrPendingIntentSupported = true;

    interface Callback {
        void onSeekTo(long j);
    }

    MediaSessionCompatApi18() {
    }

    public static Object createPlaybackPositionUpdateListener(Callback callback) {
        return new OnPlaybackPositionUpdateListener(callback);
    }

    public static void registerMediaButtonEventReceiver(Context context, PendingIntent pi, ComponentName cn) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (sIsMbrPendingIntentSupported) {
            try {
                audioManager.registerMediaButtonEventReceiver(pi);
            } catch (NullPointerException e) {
                Log.w(TAG, "Unable to register media button event receiver with PendingIntent, falling back to ComponentName.");
                sIsMbrPendingIntentSupported = false;
            }
        }
        if (!sIsMbrPendingIntentSupported) {
            audioManager.registerMediaButtonEventReceiver(cn);
        }
    }

    public static void unregisterMediaButtonEventReceiver(Context context, PendingIntent pi, ComponentName cn) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (sIsMbrPendingIntentSupported) {
            audioManager.unregisterMediaButtonEventReceiver(pi);
        } else {
            audioManager.unregisterMediaButtonEventReceiver(cn);
        }
    }

    public static void setState(Object rccObj, int state, long position, float speed, long updateTime) {
        long j = 0;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (state == 3 && position > 0) {
            if (updateTime > 0) {
                j = elapsedRealtime - updateTime;
                if (speed > 0.0f && speed != 1.0f) {
                    j = (long) (j * speed);
                }
            }
            position += j;
        }
        ((RemoteControlClient) rccObj).setPlaybackState(MediaSessionCompatApi14.getRccStateFromState(state), position, speed);
    }

    public static void setTransportControlFlags(Object rccObj, long actions) {
        ((RemoteControlClient) rccObj).setTransportControlFlags(getRccTransportControlFlagsFromActions(actions));
    }

    public static void setOnPlaybackPositionUpdateListener(Object rccObj, Object onPositionUpdateObj) {
        ((RemoteControlClient) rccObj).setPlaybackPositionUpdateListener((RemoteControlClient.OnPlaybackPositionUpdateListener) onPositionUpdateObj);
    }

    static int getRccTransportControlFlagsFromActions(long actions) {
        int rccTransportControlFlagsFromActions = MediaSessionCompatApi14.getRccTransportControlFlagsFromActions(actions);
        if ((256 & actions) != 0) {
            return rccTransportControlFlagsFromActions | 256;
        }
        return rccTransportControlFlagsFromActions;
    }

    static class OnPlaybackPositionUpdateListener<T extends Callback> implements RemoteControlClient.OnPlaybackPositionUpdateListener {
        protected final T mCallback;

        public OnPlaybackPositionUpdateListener(T callback) {
            this.mCallback = callback;
        }

        @Override // android.media.RemoteControlClient.OnPlaybackPositionUpdateListener
        public void onPlaybackPositionUpdate(long newPositionMs) {
            this.mCallback.onSeekTo(newPositionMs);
        }
    }
}
