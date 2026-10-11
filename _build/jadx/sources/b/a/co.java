package b.a;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Caretaker.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class co {
    private SharedPreferences c;

    /* renamed from: a, reason: collision with root package name */
    private final String f140a = "umeng_event_snapshot";

    /* renamed from: b, reason: collision with root package name */
    private boolean f141b = false;
    private Map<String, ArrayList<Object>> d = new HashMap();

    public co(Context context) {
        this.c = cz.a(context, "umeng_event_snapshot");
    }

    public void a(boolean z) {
        this.f141b = z;
    }
}
