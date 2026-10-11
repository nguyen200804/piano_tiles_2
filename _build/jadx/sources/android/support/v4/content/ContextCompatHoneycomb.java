package android.support.v4.content;

import android.content.Context;
import android.content.Intent;
import java.io.File;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ContextCompatHoneycomb {
    ContextCompatHoneycomb() {
    }

    static void startActivities(Context context, Intent[] intents) {
        context.startActivities(intents);
    }

    public static File getObbDir(Context context) {
        return context.getObbDir();
    }
}
