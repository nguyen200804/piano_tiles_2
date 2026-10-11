package android.support.v4.database;

import android.text.TextUtils;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class DatabaseUtilsCompat {
    private DatabaseUtilsCompat() {
    }

    public static String concatenateWhere(String a2, String b2) {
        if (TextUtils.isEmpty(a2)) {
            return b2;
        }
        return TextUtils.isEmpty(b2) ? a2 : "(" + a2 + ") AND (" + b2 + ")";
    }

    public static String[] appendSelectionArgs(String[] originalValues, String[] newValues) {
        if (originalValues != null && originalValues.length != 0) {
            String[] newValues2 = new String[originalValues.length + newValues.length];
            System.arraycopy(originalValues, 0, newValues2, 0, originalValues.length);
            System.arraycopy(newValues, 0, newValues2, originalValues.length, newValues.length);
            return newValues2;
        }
        return newValues;
    }
}
