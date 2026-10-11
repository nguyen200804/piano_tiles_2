package com.unity3d.ads.cache;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import com.unity3d.ads.log.DeviceLog;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class CacheDirectory {
    private static final String TEST_FILE_NAME = "UnityAdsTest.txt";
    private String _cacheDirName;
    private boolean _initialized = false;
    private File _cacheDirectory = null;

    public CacheDirectory(String cacheDirName) {
        this._cacheDirName = cacheDirName;
    }

    public File getCacheDirectory(Context context) {
        File file;
        if (this._initialized) {
            return this._cacheDirectory;
        }
        this._initialized = true;
        if (Build.VERSION.SDK_INT > 18) {
            if ("mounted".equals(Environment.getExternalStorageState())) {
                try {
                    file = createCacheDirectory(context.getExternalCacheDir(), this._cacheDirName);
                } catch (Exception e) {
                    DeviceLog.exception("Creating external cache directory failed", e);
                    file = null;
                }
                if (testCacheDirectory(file)) {
                    this._cacheDirectory = file;
                    DeviceLog.debug("Unity Ads is using external cache directory: " + file.getAbsolutePath());
                    return this._cacheDirectory;
                }
            } else {
                DeviceLog.debug("External media not mounted");
            }
        }
        File filesDir = context.getFilesDir();
        if (testCacheDirectory(filesDir)) {
            this._cacheDirectory = filesDir;
            DeviceLog.debug("Unity Ads is using internal cache directory: " + filesDir.getAbsolutePath());
            return this._cacheDirectory;
        }
        DeviceLog.error("Unity Ads failed to initialize cache directory");
        return null;
    }

    public File createCacheDirectory(File baseDir, String newDir) {
        if (baseDir == null) {
            return null;
        }
        File file = new File(baseDir, newDir);
        file.mkdirs();
        if (file.isDirectory()) {
            return file;
        }
        return null;
    }

    public boolean testCacheDirectory(File directory) {
        boolean z = false;
        if (directory != null && directory.isDirectory()) {
            try {
                byte[] bytes = "test".getBytes("UTF-8");
                byte[] bArr = new byte[bytes.length];
                File file = new File(directory, TEST_FILE_NAME);
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                fileOutputStream.write(bytes);
                fileOutputStream.flush();
                fileOutputStream.close();
                if (directory.listFiles() == null) {
                    DeviceLog.debug("Failed to list files in directory " + directory.getAbsolutePath());
                } else {
                    FileInputStream fileInputStream = new FileInputStream(file);
                    int read = fileInputStream.read(bArr, 0, bArr.length);
                    fileInputStream.close();
                    if (!file.delete()) {
                        DeviceLog.debug("Failed to delete testfile " + file.getAbsoluteFile());
                    } else if (read != bArr.length) {
                        DeviceLog.debug("Read buffer size mismatch");
                    } else if (new String(bArr, "UTF-8").equals("test")) {
                        z = true;
                    } else {
                        DeviceLog.debug("Read buffer content mismatch");
                    }
                }
            } catch (Exception e) {
                DeviceLog.debug("Unity Ads exception while testing cache directory " + directory.getAbsolutePath() + ": " + e.getMessage());
            }
        }
        return z;
    }
}
