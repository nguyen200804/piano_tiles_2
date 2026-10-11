package com.mopub.nativesdk;

import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public interface AdListener {
    void onLoadFailed(String str);

    void onLoadFinish(List<Campaign> list);

    void onPreLoadFinish(Campaign campaign);
}
