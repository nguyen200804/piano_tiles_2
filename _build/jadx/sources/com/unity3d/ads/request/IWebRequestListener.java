package com.unity3d.ads.request;

import java.util.List;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public interface IWebRequestListener {
    void onComplete(String str, String str2, int i, Map<String, List<String>> map);

    void onFailed(String str, String str2);
}
