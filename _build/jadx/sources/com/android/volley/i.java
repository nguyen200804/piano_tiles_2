package com.android.volley;

import android.support.v7.widget.helper.ItemTouchHelper;
import java.util.Map;

/* compiled from: NetworkResponse.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class i {

    /* renamed from: a, reason: collision with root package name */
    public final int f243a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f244b;
    public final Map<String, String> c;
    public final boolean d;
    public final long e;

    public i(int i, byte[] bArr, Map<String, String> map, boolean z, long j) {
        this.f243a = i;
        this.f244b = bArr;
        this.c = map;
        this.d = z;
        this.e = j;
    }

    public i(byte[] bArr, Map<String, String> map) {
        this(ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION, bArr, map, false, 0L);
    }
}
