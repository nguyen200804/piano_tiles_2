package com.cmplay.webview.d;

import android.os.Environment;
import android.text.TextUtils;
import com.cmplay.tile2.GameApp;
import java.io.File;

/* compiled from: FileUtil.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {
    public static String a(String str, String str2) {
        String str3;
        if ("mounted".equals(Environment.getExternalStorageState())) {
            str3 = a() + str;
            if (TextUtils.isEmpty(str3)) {
                str3 = GameApp.f1598a.getFilesDir().toString() + str;
            }
        } else {
            str3 = GameApp.f1598a.getFilesDir().toString() + str;
        }
        File file = new File(str3);
        if (!file.exists()) {
            file.mkdir();
        }
        return str3;
    }

    public static String a() {
        try {
            if (Environment.getExternalStorageDirectory() == null) {
                return "";
            }
            StringBuilder append = new StringBuilder(Environment.getExternalStorageDirectory().getPath()).append("/Android/data/").append(GameApp.f1598a.getPackageName()).append("/files");
            File file = new File(Environment.getExternalStorageDirectory(), append.toString());
            if (!file.exists()) {
                file.mkdirs();
            }
            return append.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String a(String str) {
        return str.substring(str.charAt(str.lastIndexOf("/")), str.length());
    }

    public static boolean b(String str, String str2) {
        File file;
        return (TextUtils.isEmpty(str) || (file = new File(new StringBuilder().append(str).append(a(str2)).toString())) == null || !file.exists()) ? false : true;
    }

    public static String c(String str, String str2) {
        return TextUtils.isEmpty(str) ? "" : str + a(str2);
    }

    public static String b(String str) {
        return str.substring(str.charAt(str.lastIndexOf(".")), str.length());
    }
}
