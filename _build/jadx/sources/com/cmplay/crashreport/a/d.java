package com.cmplay.crashreport.a;

import android.content.Context;
import android.os.Environment;
import android.text.TextUtils;
import java.io.File;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d {
    public static String a(Context context) {
        String str = null;
        if (Environment.getExternalStorageState().equals("mounted")) {
            File externalFilesDir = context.getExternalFilesDir(null);
            if (externalFilesDir == null) {
                externalFilesDir = new File(Environment.getExternalStorageDirectory(), "Android/data/" + context.getPackageName() + "/files");
            }
            if (!externalFilesDir.exists() && !externalFilesDir.mkdirs()) {
                return a(context.getApplicationInfo().dataDir);
            }
            str = externalFilesDir.getPath();
        }
        return str == null ? a(context.getApplicationInfo().dataDir) : str;
    }

    public static String a(String str) {
        return TextUtils.isEmpty(str) ? File.separator : str.charAt(str.length() + (-1)) != File.separatorChar ? str + File.separatorChar : str;
    }
}
