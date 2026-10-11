package android.support.v4.content;

import android.content.Context;
import java.io.File;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ContextCompatFroyo {
    ContextCompatFroyo() {
    }

    public static File getExternalCacheDir(Context context) {
        return context.getExternalCacheDir();
    }

    public static File getExternalFilesDir(Context context, String type) {
        return context.getExternalFilesDir(type);
    }
}
