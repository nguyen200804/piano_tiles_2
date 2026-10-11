package b.a;

import android.content.Context;
import android.content.SharedPreferences;

/* compiled from: PreferenceWrapper.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class cz {
    public static SharedPreferences a(Context context, String str) {
        return context.getSharedPreferences(str, 0);
    }

    public static SharedPreferences a(Context context) {
        return context.getSharedPreferences("umeng_general_config", 0);
    }
}
