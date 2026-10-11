package org.cocos2dx.lib;

import java.io.File;
import java.io.FileInputStream;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class GameControllerUtils {
    public static void ensureDirectoryExist(String path) {
        File file = new File(path);
        if (!file.exists()) {
            file.mkdirs();
        }
    }

    public static String readJsonFile(String filePath) {
        File file = new File(filePath);
        if (!file.exists()) {
            return null;
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                byte[] bArr = new byte[fileInputStream.available()];
                fileInputStream.read(bArr);
                String str = new String(bArr, "UTF-8");
                fileInputStream.close();
                return str;
            } catch (Throwable th) {
                fileInputStream.close();
                throw th;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
