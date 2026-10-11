package b.a;

import android.content.Context;

/* compiled from: MacTracker.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ci extends a {

    /* renamed from: a, reason: collision with root package name */
    private Context f126a;

    public ci(Context context) {
        super("mac");
        this.f126a = context;
    }

    @Override // b.a.a
    public String f() {
        try {
            return ao.k(this.f126a);
        } catch (Exception e) {
            return null;
        }
    }
}
