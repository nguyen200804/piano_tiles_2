package com.unity3d.ads.api;

import android.annotation.TargetApi;
import android.media.MediaMetadataRetriever;
import android.util.Base64;
import android.util.SparseArray;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.unity3d.ads.cache.CacheError;
import com.unity3d.ads.cache.CacheThread;
import com.unity3d.ads.device.Device;
import com.unity3d.ads.log.DeviceLog;
import com.unity3d.ads.misc.Utilities;
import com.unity3d.ads.properties.SdkProperties;
import com.unity3d.ads.request.WebRequestError;
import com.unity3d.ads.webview.bridge.WebViewCallback;
import com.unity3d.ads.webview.bridge.WebViewExposed;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class Cache {
    @WebViewExposed
    public static void download(String url, String fileId, JSONArray headers, WebViewCallback callback) {
        if (CacheThread.isActive()) {
            callback.error(CacheError.FILE_ALREADY_CACHING, new Object[0]);
            return;
        }
        if (!Device.isActiveNetworkConnected()) {
            callback.error(CacheError.NO_INTERNET, new Object[0]);
            return;
        }
        try {
            CacheThread.download(url, fileIdToFilename(fileId), Request.getHeadersMap(headers));
            callback.invoke(new Object[0]);
        } catch (Exception e) {
            DeviceLog.exception("Error mapping headers for the request", e);
            callback.error(WebRequestError.MAPPING_HEADERS_FAILED, url, fileId);
        }
    }

    @WebViewExposed
    public static void stop(WebViewCallback callback) {
        if (!CacheThread.isActive()) {
            callback.error(CacheError.NOT_CACHING, new Object[0]);
        } else {
            CacheThread.cancel();
            callback.invoke(new Object[0]);
        }
    }

    @WebViewExposed
    public static void isCaching(WebViewCallback callback) {
        callback.invoke(Boolean.valueOf(CacheThread.isActive()));
    }

    @WebViewExposed
    public static void getFileContent(String fileId, String encoding, WebViewCallback callback) {
        String fileIdToFilename = fileIdToFilename(fileId);
        File file = new File(fileIdToFilename);
        if (file.exists()) {
            try {
                byte[] readFileBytes = Utilities.readFileBytes(file);
                String str = new String(readFileBytes);
                if (encoding != null && encoding.length() > 0) {
                    if (encoding.equals("UTF-8")) {
                        try {
                            str = new String(readFileBytes, "UTF-8");
                        } catch (UnsupportedEncodingException e) {
                            callback.error(CacheError.UNSUPPORTED_ENCODING, fileId, fileIdToFilename, encoding);
                            return;
                        }
                    } else if (encoding.equals("Base64")) {
                        str = Base64.encodeToString(readFileBytes, 2);
                    } else {
                        callback.error(CacheError.UNSUPPORTED_ENCODING, fileId, fileIdToFilename, encoding);
                        return;
                    }
                }
                callback.invoke(str);
                return;
            } catch (IOException e2) {
                callback.error(CacheError.FILE_IO_ERROR, fileId, fileIdToFilename, e2.getMessage() + ", " + e2.getClass().getName());
                return;
            }
        }
        callback.error(CacheError.FILE_NOT_FOUND, fileId, fileIdToFilename);
    }

    @WebViewExposed
    public static void getFiles(WebViewCallback callback) {
        File cacheDirectory = SdkProperties.getCacheDirectory();
        if (cacheDirectory != null) {
            DeviceLog.debug("Unity Ads cache: checking app directory for Unity Ads cached files");
            File[] listFiles = cacheDirectory.listFiles(new FilenameFilter() { // from class: com.unity3d.ads.api.Cache.1
                @Override // java.io.FilenameFilter
                public boolean accept(File dir, String filename) {
                    return filename.startsWith(SdkProperties.getCacheFilePrefix());
                }
            });
            if (listFiles == null || listFiles.length == 0) {
                callback.invoke(new JSONArray());
            }
            try {
                JSONArray jSONArray = new JSONArray();
                for (File file : listFiles) {
                    String substring = file.getName().substring(SdkProperties.getCacheFilePrefix().length());
                    DeviceLog.debug("Unity Ads cache: found " + substring + ", " + file.length() + " bytes");
                    jSONArray.put(getFileJson(substring));
                }
                callback.invoke(jSONArray);
            } catch (JSONException e) {
                DeviceLog.exception("Error creating JSON", e);
                callback.error(CacheError.JSON_ERROR, new Object[0]);
            }
        }
    }

    @WebViewExposed
    public static void getFileInfo(String fileId, WebViewCallback callback) {
        try {
            callback.invoke(getFileJson(fileId));
        } catch (JSONException e) {
            DeviceLog.exception("Error creating JSON", e);
            callback.error(CacheError.JSON_ERROR, new Object[0]);
        }
    }

    @WebViewExposed
    public static void getFilePath(String fileId, WebViewCallback callback) {
        if (new File(fileIdToFilename(fileId)).exists()) {
            callback.invoke(fileIdToFilename(fileId));
        } else {
            callback.error(CacheError.FILE_NOT_FOUND, new Object[0]);
        }
    }

    @WebViewExposed
    public static void deleteFile(String fileId, WebViewCallback callback) {
        if (new File(fileIdToFilename(fileId)).delete()) {
            callback.invoke(new Object[0]);
        } else {
            callback.error(CacheError.FILE_IO_ERROR, new Object[0]);
        }
    }

    @WebViewExposed
    public static void getHash(String fileId, WebViewCallback callback) {
        callback.invoke(Utilities.Sha256(fileId));
    }

    @WebViewExposed
    public static void setTimeouts(Integer connectTimeout, Integer readTimeout, WebViewCallback callback) {
        CacheThread.setConnectTimeout(connectTimeout.intValue());
        CacheThread.setReadTimeout(readTimeout.intValue());
        callback.invoke(new Object[0]);
    }

    @WebViewExposed
    public static void getTimeouts(WebViewCallback callback) {
        callback.invoke(Integer.valueOf(CacheThread.getConnectTimeout()), Integer.valueOf(CacheThread.getReadTimeout()));
    }

    @WebViewExposed
    public static void setProgressInterval(Integer interval, WebViewCallback callback) {
        CacheThread.setProgressInterval(interval.intValue());
        callback.invoke(new Object[0]);
    }

    @WebViewExposed
    public static void getProgressInterval(WebViewCallback callback) {
        callback.invoke(Integer.valueOf(CacheThread.getProgressInterval()));
    }

    @WebViewExposed
    public static void getFreeSpace(WebViewCallback callback) {
        callback.invoke(Long.valueOf(Device.getFreeSpace(SdkProperties.getCacheDirectory())));
    }

    @WebViewExposed
    public static void getTotalSpace(WebViewCallback callback) {
        callback.invoke(Long.valueOf(Device.getTotalSpace(SdkProperties.getCacheDirectory())));
    }

    @WebViewExposed
    public static void getMetaData(String fileId, JSONArray requestedMetaDatas, WebViewCallback webViewCallback) {
        try {
            SparseArray<String> metaData = getMetaData(fileIdToFilename(fileId), requestedMetaDatas);
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < metaData.size(); i++) {
                JSONArray jSONArray2 = new JSONArray();
                jSONArray2.put(metaData.keyAt(i));
                jSONArray2.put(metaData.valueAt(i));
                jSONArray.put(jSONArray2);
            }
            webViewCallback.invoke(jSONArray);
        } catch (IOException e) {
            webViewCallback.error(CacheError.FILE_IO_ERROR, e.getMessage());
        } catch (RuntimeException e2) {
            webViewCallback.error(CacheError.INVALID_ARGUMENT, e2.getMessage());
        } catch (JSONException e3) {
            webViewCallback.error(CacheError.JSON_ERROR, e3.getMessage());
        }
    }

    @TargetApi(10)
    private static SparseArray<String> getMetaData(String videoFile, JSONArray requestedMetaDatas) throws JSONException, IOException, RuntimeException {
        File file = new File(videoFile);
        SparseArray<String> sparseArray = new SparseArray<>();
        if (file.exists()) {
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            mediaMetadataRetriever.setDataSource(file.getAbsolutePath());
            for (int i = 0; i < requestedMetaDatas.length(); i++) {
                int i2 = requestedMetaDatas.getInt(i);
                String extractMetadata = mediaMetadataRetriever.extractMetadata(i2);
                if (extractMetadata != null) {
                    sparseArray.put(i2, extractMetadata);
                }
            }
            return sparseArray;
        }
        throw new IOException("File: " + file.getAbsolutePath() + " doesn't exist");
    }

    private static String fileIdToFilename(String fileId) {
        return SdkProperties.getCacheDirectory() + "/" + SdkProperties.getCacheFilePrefix() + fileId;
    }

    private static JSONObject getFileJson(String fileId) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(FacebookAdapter.KEY_ID, fileId);
        File file = new File(fileIdToFilename(fileId));
        if (file.exists()) {
            jSONObject.put("found", true);
            jSONObject.put("size", file.length());
            jSONObject.put("mtime", file.lastModified());
        } else {
            jSONObject.put("found", false);
        }
        return jSONObject;
    }
}
