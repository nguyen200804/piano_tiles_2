package com.facebook.ads;

import java.util.EnumSet;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public enum CacheFlag {
    NONE,
    ICON,
    IMAGE,
    VIDEO;

    public static final EnumSet<CacheFlag> ALL = EnumSet.allOf(CacheFlag.class);
}
