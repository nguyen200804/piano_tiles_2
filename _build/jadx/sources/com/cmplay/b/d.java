package com.cmplay.b;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

/* compiled from: AppCardUtils.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d {

    /* compiled from: AppCardUtils.java */
    public interface a {
        void a(String str);
    }

    public static String a() {
        Calendar calendar = Calendar.getInstance();
        return String.valueOf(calendar.get(1)) + calendar.get(6);
    }

    public static int a(long j, long j2) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTimeInMillis(j2);
        calendar2.set(11, 0);
        calendar2.set(12, 0);
        calendar2.set(13, 0);
        calendar2.set(14, 0);
        return (int) ((calendar2.getTimeInMillis() - calendar.getTimeInMillis()) / 86400000);
    }

    public static boolean a(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            return false;
        }
        try {
            NetworkInfo networkInfo = connectivityManager.getNetworkInfo(1);
            if (networkInfo == null) {
                return false;
            }
            NetworkInfo.State state = networkInfo.getState();
            return state == NetworkInfo.State.CONNECTED || state == NetworkInfo.State.CONNECTING;
        } catch (Exception e) {
            return false;
        }
    }

    public static int a(String str) {
        if (TextUtils.equals(str, "section_result_card")) {
            return 1;
        }
        if (TextUtils.equals(str, "section_setting_card")) {
            return 2;
        }
        if (TextUtils.equals(str, "section_battle_card")) {
            return 3;
        }
        if (TextUtils.equals(str, "section_popup_card")) {
            return 4;
        }
        return 0;
    }

    public static int a(int i) {
        if (i == 1) {
            return 11;
        }
        if (i == 2) {
            return 13;
        }
        if (i == 3) {
            return 12;
        }
        return 0;
    }

    public static List<String> b(String str) {
        final ArrayList arrayList = new ArrayList();
        if (!TextUtils.isEmpty(str)) {
            a(str, "||", new a() { // from class: com.cmplay.b.d.1
                @Override // com.cmplay.b.d.a
                public void a(String str2) {
                    if (!TextUtils.isEmpty(str2)) {
                        arrayList.add(str2);
                    }
                }
            });
        }
        return arrayList;
    }

    public static void a(String str, String str2, a aVar) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && aVar != null) {
            int i = 0;
            while (true) {
                int indexOf = str.indexOf(str2, i);
                if (indexOf == -1) {
                    break;
                }
                aVar.a(str.substring(i, indexOf));
                i += (indexOf - i) + str2.length();
            }
            if (i < str.length()) {
                aVar.a(str.substring(i));
            }
        }
    }
}
