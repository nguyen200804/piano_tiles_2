package com.mopub.common.event;

import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.network.ScribeBackoffPolicy;
import com.mopub.network.ScribeRequest;
import com.mopub.network.ScribeRequestManager;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ScribeEventRecorder implements EventRecorder {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final EventSampler f4218a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private final Queue<BaseEvent> f4219b;

    @NonNull
    private final EventSerializer c;

    @NonNull
    private final ScribeRequestManager d;

    @NonNull
    private final Handler e;

    @NonNull
    private final a f;

    ScribeEventRecorder(@NonNull Looper looper) {
        this(new EventSampler(), new LinkedList(), new EventSerializer(), new ScribeRequestManager(looper), new Handler(looper));
    }

    @VisibleForTesting
    ScribeEventRecorder(@NonNull EventSampler eventSampler, @NonNull Queue<BaseEvent> eventQueue, @NonNull EventSerializer eventSerializer, @NonNull ScribeRequestManager scribeRequestManager, @NonNull Handler handler) {
        this.f4218a = eventSampler;
        this.f4219b = eventQueue;
        this.c = eventSerializer;
        this.d = scribeRequestManager;
        this.e = handler;
        this.f = new a();
    }

    @Override // com.mopub.common.event.EventRecorder
    public void record(@NonNull BaseEvent baseEvent) {
        if (this.f4218a.a(baseEvent)) {
            if (this.f4219b.size() >= 500) {
                MoPubLog.d("EventQueue is at max capacity. Event \"" + baseEvent.getName() + "\" is being dropped.");
                return;
            }
            this.f4219b.add(baseEvent);
            if (this.f4219b.size() >= 100) {
                a();
            }
            c();
        }
    }

    @VisibleForTesting
    void a() {
        if (!this.d.isAtCapacity()) {
            final List<BaseEvent> b2 = b();
            if (!b2.isEmpty()) {
                this.d.makeRequest(new ScribeRequest.ScribeRequestFactory() { // from class: com.mopub.common.event.ScribeEventRecorder.1
                    @Override // com.mopub.network.ScribeRequest.ScribeRequestFactory
                    public ScribeRequest createRequest(ScribeRequest.Listener listener) {
                        return new ScribeRequest("https://analytics.mopub.col/i/jot/exchange_client_event", b2, ScribeEventRecorder.this.c, listener);
                    }
                }, new ScribeBackoffPolicy());
            }
        }
    }

    @NonNull
    @VisibleForTesting
    List<BaseEvent> b() {
        ArrayList arrayList = new ArrayList();
        while (this.f4219b.peek() != null && arrayList.size() < 100) {
            arrayList.add(this.f4219b.poll());
        }
        return arrayList;
    }

    @VisibleForTesting
    void c() {
        if (!this.e.hasMessages(0) && !this.f4219b.isEmpty()) {
            this.e.postDelayed(this.f, 120000L);
        }
    }

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ScribeEventRecorder.this.a();
            ScribeEventRecorder.this.c();
        }
    }
}
