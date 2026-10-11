package com.mopub.common;

import android.content.Context;
import android.os.AsyncTask;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.mopub.common.DiskLruCache;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import com.mopub.common.util.Streams;
import com.mopub.common.util.Utils;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class CacheService {

    /* renamed from: a, reason: collision with root package name */
    private static DiskLruCache f4118a;

    public interface DiskLruCacheGetListener {
        void onComplete(String str, byte[] bArr);
    }

    public static boolean initializeDiskCache(Context context) {
        if (context == null) {
            return false;
        }
        if (f4118a == null) {
            File diskCacheDirectory = getDiskCacheDirectory(context);
            if (diskCacheDirectory == null) {
                return false;
            }
            try {
                f4118a = DiskLruCache.open(diskCacheDirectory, 1, 1, DeviceUtils.diskCacheSizeBytes(diskCacheDirectory));
            } catch (IOException e) {
                MoPubLog.d("Unable to create DiskLruCache", e);
                return false;
            }
        }
        return true;
    }

    public static void initialize(Context context) {
        initializeDiskCache(context);
    }

    public static String createValidDiskCacheKey(String key) {
        return Utils.sha1(key);
    }

    @Nullable
    public static File getDiskCacheDirectory(@NonNull Context context) {
        File cacheDir = context.getCacheDir();
        if (cacheDir == null) {
            return null;
        }
        return new File(cacheDir.getPath() + File.separator + "mopub-cache");
    }

    public static boolean containsKeyDiskCache(String key) {
        if (f4118a == null) {
            return false;
        }
        try {
            return f4118a.get(createValidDiskCacheKey(key)) != null;
        } catch (Exception e) {
            return false;
        }
    }

    public static String getFilePathDiskCache(String key) {
        if (f4118a == null) {
            return null;
        }
        return f4118a.getDirectory() + File.separator + createValidDiskCacheKey(key) + ".0";
    }

    public static byte[] getFromDiskCache(String key) {
        DiskLruCache.Snapshot snapshot;
        Throwable th;
        byte[] bArr = null;
        if (f4118a != null) {
            try {
                snapshot = f4118a.get(createValidDiskCacheKey(key));
                if (snapshot != null) {
                    try {
                        try {
                            InputStream inputStream = snapshot.getInputStream(0);
                            if (inputStream != null) {
                                byte[] bArr2 = new byte[(int) snapshot.getLength(0)];
                                try {
                                    BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
                                    try {
                                        Streams.readStream(bufferedInputStream, bArr2);
                                        bArr = bArr2;
                                    } finally {
                                        Streams.closeStream(bufferedInputStream);
                                    }
                                } catch (Exception e) {
                                    bArr = bArr2;
                                    e = e;
                                    MoPubLog.d("Unable to get from DiskLruCache", e);
                                    if (snapshot != null) {
                                        snapshot.close();
                                    }
                                    return bArr;
                                }
                            }
                            if (snapshot != null) {
                                snapshot.close();
                            }
                        } catch (Exception e2) {
                            e = e2;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (snapshot != null) {
                            snapshot.close();
                        }
                        throw th;
                    }
                } else if (snapshot != null) {
                    snapshot.close();
                }
            } catch (Exception e3) {
                e = e3;
                snapshot = null;
            } catch (Throwable th3) {
                snapshot = null;
                th = th3;
            }
        }
        return bArr;
    }

    public static void getFromDiskCacheAsync(String key, DiskLruCacheGetListener diskLruCacheGetListener) {
        new a(key, diskLruCacheGetListener).execute(new Void[0]);
    }

    public static boolean putToDiskCache(String key, byte[] content) {
        return putToDiskCache(key, new ByteArrayInputStream(content));
    }

    public static boolean putToDiskCache(String key, InputStream content) {
        if (f4118a == null) {
            return false;
        }
        DiskLruCache.Editor editor = null;
        try {
            editor = f4118a.edit(createValidDiskCacheKey(key));
            if (editor == null) {
                return false;
            }
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(editor.newOutputStream(0));
            Streams.copyContent(content, bufferedOutputStream);
            bufferedOutputStream.flush();
            bufferedOutputStream.close();
            f4118a.flush();
            editor.commit();
            return true;
        } catch (Exception e) {
            MoPubLog.d("Unable to put to DiskLruCache", e);
            if (editor == null) {
                return false;
            }
            try {
                editor.abort();
                return false;
            } catch (IOException e2) {
                return false;
            }
        }
    }

    public static void putToDiskCacheAsync(String key, byte[] content) {
        new b(key, content).execute(new Void[0]);
    }

    private static class a extends AsyncTask<Void, Void, byte[]> {

        /* renamed from: a, reason: collision with root package name */
        private final DiskLruCacheGetListener f4119a;

        /* renamed from: b, reason: collision with root package name */
        private final String f4120b;

        a(String str, DiskLruCacheGetListener diskLruCacheGetListener) {
            this.f4119a = diskLruCacheGetListener;
            this.f4120b = str;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public byte[] doInBackground(Void... voidArr) {
            return CacheService.getFromDiskCache(this.f4120b);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(byte[] bArr) {
            if (isCancelled()) {
                onCancelled();
            } else if (this.f4119a != null) {
                this.f4119a.onComplete(this.f4120b, bArr);
            }
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            if (this.f4119a != null) {
                this.f4119a.onComplete(this.f4120b, null);
            }
        }
    }

    private static class b extends AsyncTask<Void, Void, Void> {

        /* renamed from: a, reason: collision with root package name */
        private final String f4121a;

        /* renamed from: b, reason: collision with root package name */
        private final byte[] f4122b;

        b(String str, byte[] bArr) {
            this.f4121a = str;
            this.f4122b = bArr;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void doInBackground(Void... voidArr) {
            CacheService.putToDiskCache(this.f4121a, this.f4122b);
            return null;
        }
    }

    @VisibleForTesting
    @Deprecated
    public static void clearAndNullCaches() {
        if (f4118a != null) {
            try {
                f4118a.delete();
                f4118a = null;
            } catch (IOException e) {
                f4118a = null;
            }
        }
    }

    @VisibleForTesting
    @Deprecated
    public static DiskLruCache getDiskLruCache() {
        return f4118a;
    }
}
