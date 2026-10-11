package com.mopub.mobileads.dfp.adapters;

import com.google.ads.mediation.NetworkExtras;
import java.util.HashMap;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class MoPubExtras implements NetworkExtras {

    /* renamed from: a, reason: collision with root package name */
    private Map<String, Object> f4491a;

    public MoPubExtras() {
        eraseExtras();
    }

    public MoPubExtras eraseExtras() {
        this.f4491a = new HashMap();
        return this;
    }

    public Map<String, Object> getExtras() {
        return this.f4491a;
    }

    public MoPubExtras setExtras(Map<String, Object> extras) {
        if (extras == null) {
            throw new IllegalArgumentException("Extras cannot be empty");
        }
        this.f4491a = extras;
        return this;
    }

    public MoPubExtras addExtra(String key, Object value) {
        this.f4491a.put(key, value);
        return this;
    }
}
