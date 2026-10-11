package android.support.v4.content;

import android.content.SharedPreferences;
import android.support.annotation.NonNull;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class EditorCompatGingerbread {
    EditorCompatGingerbread() {
    }

    public static void apply(@NonNull SharedPreferences.Editor editor) {
        try {
            editor.apply();
        } catch (AbstractMethodError e) {
            editor.commit();
        }
    }
}
