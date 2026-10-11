package android.support.v4.util;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class DebugUtils {
    public static void buildShortClassTag(Object cls, StringBuilder out) {
        int lastIndexOf;
        if (cls == null) {
            out.append("null");
            return;
        }
        String simpleName = cls.getClass().getSimpleName();
        if ((simpleName == null || simpleName.length() <= 0) && (lastIndexOf = (simpleName = cls.getClass().getName()).lastIndexOf(46)) > 0) {
            simpleName = simpleName.substring(lastIndexOf + 1);
        }
        out.append(simpleName);
        out.append('{');
        out.append(Integer.toHexString(System.identityHashCode(cls)));
    }
}
