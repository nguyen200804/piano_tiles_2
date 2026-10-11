package com.cmplay.util;

import com.cmplay.tile2.GameApp;
import java.io.File;

/* compiled from: PathUtil.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class x {
    public static String a() {
        return com.cmplay.webview.d.a.a("/iconcache/", ".nomedia");
    }

    public static File b() {
        File cacheDir = GameApp.f1598a.getCacheDir();
        if (cacheDir == null) {
            return null;
        }
        File file = new File(cacheDir.getAbsolutePath() + "/iconcache/");
        if (!file.exists()) {
            file.mkdirs();
            return cacheDir;
        }
        return cacheDir;
    }
}
