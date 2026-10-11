package b.a;

import android.content.Context;
import android.provider.Settings;

/* compiled from: AndroidIdTracker.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class y extends a {

    /* renamed from: a, reason: collision with root package name */
    private Context f207a;

    public y(Context context) {
        super("android_id");
        this.f207a = context;
    }

    @Override // b.a.a
    public String f() {
        try {
            return Settings.Secure.getString(this.f207a.getContentResolver(), "android_id");
        } catch (Exception e) {
            return null;
        }
    }
}
