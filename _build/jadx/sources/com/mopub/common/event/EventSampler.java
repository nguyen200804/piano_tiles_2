package com.mopub.common.event;

import android.support.annotation.NonNull;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Random;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class EventSampler {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private Random f4214a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private LinkedHashMap<String, Boolean> f4215b;

    public EventSampler() {
        this(new Random());
    }

    @VisibleForTesting
    public EventSampler(@NonNull Random random) {
        this.f4214a = random;
        this.f4215b = new LinkedHashMap<String, Boolean>(135, 0.75f, true) { // from class: com.mopub.common.event.EventSampler.1
            @Override // java.util.LinkedHashMap
            protected boolean removeEldestEntry(Map.Entry<String, Boolean> eldest) {
                return size() > 100;
            }
        };
    }

    boolean a(@NonNull BaseEvent baseEvent) {
        Preconditions.checkNotNull(baseEvent);
        String requestId = baseEvent.getRequestId();
        if (requestId == null) {
            return this.f4214a.nextDouble() < baseEvent.getSamplingRate();
        }
        Boolean bool = this.f4215b.get(requestId);
        if (bool != null) {
            return bool.booleanValue();
        }
        boolean z = this.f4214a.nextDouble() < baseEvent.getSamplingRate();
        this.f4215b.put(requestId, Boolean.valueOf(z));
        return z;
    }
}
