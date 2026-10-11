package com.facebook.ads.internal.f;

import android.support.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d {
    private e c;

    @Nullable
    private String d;

    /* renamed from: b, reason: collision with root package name */
    private int f2709b = 0;

    /* renamed from: a, reason: collision with root package name */
    private List<a> f2708a = new ArrayList();

    public d(e eVar, @Nullable String str) {
        this.c = eVar;
        this.d = str;
    }

    public e a() {
        return this.c;
    }

    public void a(a aVar) {
        this.f2708a.add(aVar);
    }

    @Nullable
    public String b() {
        return this.d;
    }

    public int c() {
        return this.f2708a.size();
    }

    public a d() {
        if (this.f2709b >= this.f2708a.size()) {
            return null;
        }
        this.f2709b++;
        return this.f2708a.get(this.f2709b - 1);
    }
}
