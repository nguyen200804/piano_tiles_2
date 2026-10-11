package a;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import java.util.Map;

/* compiled from: AppLinks.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class a {
    public static Bundle a(Intent intent) {
        return intent.getBundleExtra("al_applink_data");
    }

    public static Uri a(Context context, Intent intent) {
        String string;
        Bundle a2 = a(intent);
        if (a2 == null || (string = a2.getString("target_url")) == null) {
            return null;
        }
        b.a(context, "al_nav_in", intent, (Map<String, String>) null);
        return Uri.parse(string);
    }
}
