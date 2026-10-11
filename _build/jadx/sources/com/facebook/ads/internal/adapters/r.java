package com.facebook.ads.internal.adapters;

import android.content.Context;
import android.os.Bundle;
import com.facebook.ads.CacheFlag;
import com.facebook.ads.internal.server.AdPlacementType;
import com.facebook.ads.internal.util.af;
import java.util.EnumSet;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class r implements AdAdapter, af<Bundle> {
    public abstract void a(Context context, com.facebook.ads.a.a aVar, Map<String, Object> map, com.facebook.ads.internal.g.f fVar, EnumSet<CacheFlag> enumSet);

    public abstract boolean e();

    @Override // com.facebook.ads.internal.adapters.AdAdapter
    public AdPlacementType getPlacementType() {
        return AdPlacementType.INSTREAM;
    }
}
