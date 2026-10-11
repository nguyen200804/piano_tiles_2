package android.support.v4.media.session;

import android.media.session.PlaybackState;
import android.os.Bundle;
import java.util.Iterator;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class PlaybackStateCompatApi22 {
    PlaybackStateCompatApi22() {
    }

    public static Bundle getExtras(Object stateObj) {
        return ((PlaybackState) stateObj).getExtras();
    }

    public static Object newInstance(int state, long position, long bufferedPosition, float speed, long actions, CharSequence errorMessage, long updateTime, List<Object> customActions, long activeItemId, Bundle extras) {
        PlaybackState.Builder builder = new PlaybackState.Builder();
        builder.setState(state, position, speed, updateTime);
        builder.setBufferedPosition(bufferedPosition);
        builder.setActions(actions);
        builder.setErrorMessage(errorMessage);
        Iterator<Object> it = customActions.iterator();
        while (it.hasNext()) {
            builder.addCustomAction((PlaybackState.CustomAction) it.next());
        }
        builder.setActiveQueueItemId(activeItemId);
        builder.setExtras(extras);
        return builder.build();
    }
}
