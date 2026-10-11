package com.facebook.internal;

import android.app.Activity;
import android.content.Intent;
import android.support.v4.app.Fragment;

/* compiled from: FragmentWrapper.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class l {

    /* renamed from: a, reason: collision with root package name */
    private Fragment f3222a;

    /* renamed from: b, reason: collision with root package name */
    private android.app.Fragment f3223b;

    public l(Fragment fragment) {
        ab.a(fragment, "fragment");
        this.f3222a = fragment;
    }

    public l(android.app.Fragment fragment) {
        ab.a(fragment, "fragment");
        this.f3223b = fragment;
    }

    public android.app.Fragment a() {
        return this.f3223b;
    }

    public Fragment b() {
        return this.f3222a;
    }

    public void a(Intent intent, int i) {
        if (this.f3222a != null) {
            this.f3222a.startActivityForResult(intent, i);
        } else {
            this.f3223b.startActivityForResult(intent, i);
        }
    }

    public final Activity c() {
        return this.f3222a != null ? this.f3222a.getActivity() : this.f3223b.getActivity();
    }
}
