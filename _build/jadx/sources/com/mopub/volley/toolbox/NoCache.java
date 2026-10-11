package com.mopub.volley.toolbox;

import com.mopub.volley.Cache;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class NoCache implements Cache {
    @Override // com.mopub.volley.Cache
    public void clear() {
    }

    @Override // com.mopub.volley.Cache
    public Cache.Entry get(String key) {
        return null;
    }

    @Override // com.mopub.volley.Cache
    public void put(String key, Cache.Entry entry) {
    }

    @Override // com.mopub.volley.Cache
    public void invalidate(String key, boolean fullExpire) {
    }

    @Override // com.mopub.volley.Cache
    public void remove(String key) {
    }

    @Override // com.mopub.volley.Cache
    public void initialize() {
    }
}
