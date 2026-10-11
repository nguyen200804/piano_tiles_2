package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdSize;
import java.util.Collection;
import java.util.HashSet;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class cq {

    /* renamed from: a, reason: collision with root package name */
    final AppLovinAdSize f503a;

    /* renamed from: b, reason: collision with root package name */
    final Object f504b;
    AppLovinAd c;
    long d;
    boolean e;
    private final Collection f;
    private final Collection g;

    private cq(AppLovinAdSize appLovinAdSize) {
        this.f = new HashSet();
        this.g = new HashSet();
        this.f503a = appLovinAdSize;
        this.f504b = new Object();
        this.c = null;
        this.d = 0L;
        this.e = false;
    }

    /* synthetic */ cq(AppLovinAdSize appLovinAdSize, cm cmVar) {
        this(appLovinAdSize);
    }
}
