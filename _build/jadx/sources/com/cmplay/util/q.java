package com.cmplay.util;

import android.text.TextUtils;
import android.util.Log;
import org.cocos2dx.lib.Cocos2dxHelper;

/* compiled from: MusicUnlockHelper.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class q {
    public static int a(int i) {
        String stringForKey = Cocos2dxHelper.getStringForKey("LevelRecord", "");
        if (TextUtils.isEmpty(stringForKey)) {
            return 0;
        }
        try {
            String[] split = stringForKey.split("\\*");
            if (split == null || split.length < 1) {
                return 0;
            }
            for (String str : split) {
                String[] split2 = str.split("@");
                if (split2 != null && split2.length >= 6) {
                    try {
                        if (Integer.valueOf(split2[1]).intValue() == i) {
                            Log.d("JsInterface", "level " + i + " = " + str);
                            try {
                                return Integer.valueOf(split2[5]).intValue();
                            } catch (NumberFormatException e) {
                                return 0;
                            }
                        }
                    } catch (NumberFormatException e2) {
                    }
                }
            }
            return 0;
        } catch (Exception e3) {
            return 0;
        }
    }

    public static boolean b(int i) {
        return a(i) == 4;
    }

    public static boolean c(int i) {
        int a2 = a(i);
        return a2 == 4 || a2 == 5 || a2 == 6 || a2 == 8 || a2 == 10 || a2 == 12 || a2 == 15 || a2 == 17;
    }
}
