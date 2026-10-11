package com.cmplay.util.b;

import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;
import java.util.Calendar;
import org.cocos2dx.lib.Cocos2dxHelper;

/* compiled from: CocosSharedPreferenceHelper.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b {
    public static boolean a() {
        return c(Cocos2dxHelper.getIntegerForKey("InstallTime", (int) (System.currentTimeMillis() / 1000)) * 1000);
    }

    private static boolean c(long j) {
        Calendar calendar = Calendar.getInstance();
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTimeInMillis(j);
        calendar.setTimeInMillis(System.currentTimeMillis());
        return calendar2.get(1) == calendar.get(1) && calendar2.get(2) == calendar.get(2) && calendar2.get(5) == calendar.get(5);
    }

    public static void a(long j) {
        Cocos2dxHelper.setLongForKey("last_enter_game_time", j);
    }

    public static void b(long j) {
        Cocos2dxHelper.setLongForKey("last_exit_game_time", j);
    }

    public static ArrayList<c> b() {
        long currentTimeMillis = System.currentTimeMillis();
        String stringForKey = Cocos2dxHelper.getStringForKey("LevelRecord", "");
        if (TextUtils.isEmpty(stringForKey)) {
            return null;
        }
        String[] split = stringForKey.split("\\*");
        ArrayList<c> arrayList = new ArrayList<>();
        if (split != null && split.length > 0) {
            for (String str : split) {
                c cVar = new c();
                String[] split2 = str.split("@");
                if (split2.length >= 6) {
                    try {
                        cVar.f1718a = Integer.valueOf(split2[0]).intValue();
                        cVar.f1719b = Integer.valueOf(split2[1]).intValue();
                        cVar.c = Integer.valueOf(split2[2]).intValue();
                        cVar.d = Integer.valueOf(split2[3]).intValue();
                        cVar.e = Integer.valueOf(split2[4]).intValue();
                        cVar.f = Integer.valueOf(split2[5]).intValue();
                        arrayList.add(cVar);
                    } catch (NumberFormatException e) {
                    }
                }
            }
        }
        Log.e("ymymym", " over : " + (System.currentTimeMillis() - currentTimeMillis));
        return arrayList;
    }

    public static int c() {
        return Cocos2dxHelper.getIntegerForKey("UserLevel", 1);
    }

    public static int d() {
        return Cocos2dxHelper.getIntegerForKey("play_once_count", 0);
    }

    public static int e() {
        return Cocos2dxHelper.getIntegerForKey("play_mid_id_count", 0);
    }
}
