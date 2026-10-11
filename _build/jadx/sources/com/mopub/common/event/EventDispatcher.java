package com.mopub.common.event;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import java.util.Iterator;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class EventDispatcher {

    /* renamed from: a, reason: collision with root package name */
    private final Iterable<EventRecorder> f4211a;

    /* renamed from: b, reason: collision with root package name */
    private final Looper f4212b;
    private final Handler c;
    private final Handler.Callback d = new Handler.Callback() { // from class: com.mopub.common.event.EventDispatcher.1
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message msg) {
            if (msg.obj instanceof BaseEvent) {
                Iterator it = EventDispatcher.this.f4211a.iterator();
                while (it.hasNext()) {
                    ((EventRecorder) it.next()).record((BaseEvent) msg.obj);
                }
                return true;
            }
            MoPubLog.d("EventDispatcher received non-BaseEvent message type.");
            return true;
        }
    };

    @VisibleForTesting
    EventDispatcher(Iterable<EventRecorder> recorders, Looper looper) {
        this.f4211a = recorders;
        this.f4212b = looper;
        this.c = new Handler(this.f4212b, this.d);
    }

    public void dispatch(BaseEvent event) {
        Message.obtain(this.c, 0, event).sendToTarget();
    }
}
