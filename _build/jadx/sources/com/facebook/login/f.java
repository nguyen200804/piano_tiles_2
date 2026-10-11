package com.facebook.login;

import com.facebook.AccessToken;
import java.util.Set;

/* compiled from: LoginResult.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    private final AccessToken f3329a;

    /* renamed from: b, reason: collision with root package name */
    private final Set<String> f3330b;
    private final Set<String> c;

    public f(AccessToken accessToken, Set<String> set, Set<String> set2) {
        this.f3329a = accessToken;
        this.f3330b = set;
        this.c = set2;
    }

    public Set<String> a() {
        return this.f3330b;
    }
}
