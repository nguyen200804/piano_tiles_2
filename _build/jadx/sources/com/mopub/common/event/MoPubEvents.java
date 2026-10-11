package com.mopub.common.event;

import android.os.HandlerThread;
import com.mopub.common.VisibleForTesting;
import java.util.ArrayList;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class MoPubEvents {

    /* renamed from: a, reason: collision with root package name */
    private static volatile EventDispatcher f4217a;

    public static void log(BaseEvent baseEvent) {
        a().dispatch(baseEvent);
    }

    @VisibleForTesting
    public static void setEventDispatcher(EventDispatcher dispatcher) {
        f4217a = dispatcher;
    }

    @VisibleForTesting
    static EventDispatcher a() {
        EventDispatcher eventDispatcher = f4217a;
        if (eventDispatcher == null) {
            synchronized (MoPubEvents.class) {
                eventDispatcher = f4217a;
                if (eventDispatcher == null) {
                    ArrayList arrayList = new ArrayList();
                    HandlerThread handlerThread = new HandlerThread("mopub_event_logging");
                    handlerThread.start();
                    arrayList.add(new ScribeEventRecorder(handlerThread.getLooper()));
                    eventDispatcher = new EventDispatcher(arrayList, handlerThread.getLooper());
                    f4217a = eventDispatcher;
                }
            }
        }
        return eventDispatcher;
    }
}
