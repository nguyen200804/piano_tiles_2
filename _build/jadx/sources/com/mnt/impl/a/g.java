package com.mnt.impl.a;

import android.view.View;
import com.mnt.MntBuild;
import java.lang.ref.SoftReference;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class g {
    private static g d;

    /* renamed from: a, reason: collision with root package name */
    public SoftReference<MntBuild> f3923a;

    /* renamed from: b, reason: collision with root package name */
    public SoftReference<com.mnt.impl.b> f3924b;
    public View c;

    private g() {
    }

    public static g a() {
        if (d == null) {
            synchronized (g.class) {
                if (d == null) {
                    d = new g();
                }
            }
        }
        return d;
    }

    public final MntBuild b() {
        if (this.f3923a != null) {
            return this.f3923a.get();
        }
        return null;
    }
}
