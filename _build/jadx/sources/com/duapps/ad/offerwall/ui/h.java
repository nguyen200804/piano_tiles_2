package com.duapps.ad.offerwall.ui;

import android.app.Activity;
import android.content.Context;
import android.support.v4.app.Fragment;

/* compiled from: TabFragment.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class h extends Fragment {

    /* renamed from: a, reason: collision with root package name */
    protected int f2242a;
    protected a c;
    protected Context d;

    /* renamed from: b, reason: collision with root package name */
    boolean f2243b = false;
    protected int e = -1;

    /* compiled from: TabFragment.java */
    public interface a {
        int a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.support.v4.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.d = activity.getApplicationContext();
        this.c = (a) activity;
        this.f2242a = getArguments().getInt("pid");
        this.e = getArguments().getInt("pos");
    }

    public void b(boolean z) {
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.c.a() == this.e) {
            b(true);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
        if (this.c.a() == this.e) {
            b(false);
        }
    }
}
