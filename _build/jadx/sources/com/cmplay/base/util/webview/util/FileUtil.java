package com.cmplay.base.util.webview.util;

import android.content.Context;
import android.os.Environment;
import android.text.TextUtils;
import java.io.File;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class FileUtil {
    public static String openFileInFilesDir(Context context, String pathname, String filename) {
        String str;
        if ("mounted".equals(Environment.getExternalStorageState())) {
            str = getExternalStorageDirectoryx(context) + pathname;
            if (TextUtils.isEmpty(str)) {
                str = context.getFilesDir().toString() + pathname;
            }
        } else {
            str = context.getFilesDir().toString() + pathname;
        }
        File file = new File(str);
        if (!file.exists()) {
            file.mkdir();
        }
        return str;
    }

    public static String getExternalStorageDirectoryx(Context context) {
        try {
            if (Environment.getExternalStorageDirectory() == null) {
                return "";
            }
            StringBuilder append = new StringBuilder(Environment.getExternalStorageDirectory().getPath()).append("/Android/data/").append(context.getPackageName()).append("/files");
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

    public static File getExternalFilesRootDir(Context context) {
        try {
            return context.getExternalFilesDir(null);
        } catch (ArrayIndexOutOfBoundsException e) {
            return null;
        } catch (NullPointerException e2) {
            return null;
        } catch (SecurityException e3) {
            return null;
        }
    }

    public static String getUrlFileName(String url) {
        return url.substring(url.charAt(url.lastIndexOf("/")), url.length());
    }

    public static boolean isExistsUrlFile(String path, String url) {
        File file;
        return (TextUtils.isEmpty(path) || (file = new File(new StringBuilder().append(path).append(getUrlFileName(url)).toString())) == null || !file.exists()) ? false : true;
    }

    public static String getUrlFilePath(String path, String url) {
        return TextUtils.isEmpty(path) ? "" : path + getUrlFileName(url);
    }

    public static String getUrlFileType(String url) {
        return url.substring(url.charAt(url.lastIndexOf(".")), url.length());
    }
}
