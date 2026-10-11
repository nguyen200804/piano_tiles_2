package com.cmplay.crashreport;

import android.content.Context;
import android.os.Build;
import java.io.File;
import java.lang.reflect.Array;
import java.lang.reflect.Field;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class j {
    private static Object a(Object obj, Class cls, String str) {
        Field declaredField = cls.getDeclaredField(str);
        declaredField.setAccessible(true);
        return declaredField.get(obj);
    }

    public static final String a(Context context) {
        return Build.VERSION.SDK_INT >= 14 ? c(context) : b(context);
    }

    private static String b(Context context) {
        String str = "";
        ClassLoader classLoader = context.getClassLoader();
        try {
            Object a2 = a(classLoader, classLoader.getClass(), "mPaths");
            int length = Array.getLength(a2);
            for (int i = 0; i < length; i++) {
                str = str + Integer.toString(i) + " Path:" + ((String) Array.get(a2, i)) + " ";
            }
            Object a3 = a(classLoader, classLoader.getClass(), "mFiles");
            int length2 = Array.getLength(a3);
            for (int i2 = 0; i2 < length2; i2++) {
                str = str + Integer.toString(i2) + " File:" + ((File) Array.get(a3, i2)).toString() + " ";
            }
            Object a4 = a(classLoader, classLoader.getClass(), "mZips");
            int length3 = Array.getLength(a4);
            for (int i3 = 0; i3 < length3; i3++) {
                Object obj = Array.get(a4, i3);
                str = str + Integer.toString(i3) + " Zip:" + ((String) a(obj, obj.getClass(), "fileName")) + " ";
            }
            Object a5 = a(classLoader, classLoader.getClass(), "mDexs");
            int length4 = Array.getLength(a5);
            for (int i4 = 0; i4 < length4; i4++) {
                Object obj2 = Array.get(a5, i4);
                str = str + Integer.toString(i4) + " Dex:" + ((String) a(obj2, obj2.getClass(), "mFileName")) + " ";
            }
            return str;
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    private static String c(Context context) {
        Object a2;
        String str;
        String str2 = "";
        try {
            Object a3 = a(context.getClassLoader(), Class.forName("dalvik.system.BaseDexClassLoader"), "pathList");
            if (a3 != null && (a2 = a(a3, a3.getClass(), "dexElements")) != null) {
                int length = Array.getLength(a2);
                int i = 0;
                while (i < length) {
                    Object obj = Array.get(a2, i);
                    Object a4 = a(obj, obj.getClass(), "file");
                    if (a4 == null) {
                        str = str2;
                    } else {
                        String str3 = str2 + "#" + Integer.toString(i) + " File:" + ((File) a4).toString();
                        Object a5 = a(obj, obj.getClass(), "zipFile");
                        if (a5 == null) {
                            str = str3;
                        } else {
                            Object a6 = a(a5, a5.getClass(), "fileName");
                            if (a6 == null) {
                                str = str3;
                            } else {
                                String str4 = str3 + " Zip:" + ((String) a6);
                                Object a7 = a(obj, obj.getClass(), "dexFile");
                                if (a7 == null) {
                                    str = str4;
                                } else {
                                    Object a8 = a(a7, a7.getClass(), "mFileName");
                                    str = a8 == null ? str4 : str4 + " Dex:" + ((String) a8) + " ";
                                }
                            }
                        }
                    }
                    i++;
                    str2 = str;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return str2;
    }
}
