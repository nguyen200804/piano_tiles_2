package com.mopub.mobileads;

import android.os.AsyncTask;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.AsyncTasks;
import java.lang.ref.WeakReference;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class VideoDownloader {

    /* renamed from: a, reason: collision with root package name */
    private static final Deque<WeakReference<b>> f4467a = new ArrayDeque();

    interface a {
        void onComplete(boolean z);
    }

    private VideoDownloader() {
    }

    public static void cache(@Nullable String url, @NonNull a listener) {
        Preconditions.checkNotNull(listener);
        if (url == null) {
            MoPubLog.d("VideoDownloader attempted to cache video with null url.");
            listener.onComplete(false);
        } else {
            try {
                AsyncTasks.safeExecuteOnExecutor(new b(listener), url);
            } catch (Exception e) {
                listener.onComplete(false);
            }
        }
    }

    public static void cancelAllDownloaderTasks() {
        Iterator<WeakReference<b>> it = f4467a.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
        f4467a.clear();
    }

    public static void cancelLastDownloadTask() {
        if (!f4467a.isEmpty()) {
            a(f4467a.peekLast());
            f4467a.removeLast();
        }
    }

    private static boolean a(@Nullable WeakReference<b> weakReference) {
        b bVar;
        if (weakReference != null && (bVar = weakReference.get()) != null) {
            return bVar.cancel(true);
        }
        return false;
    }

    @VisibleForTesting
    static class b extends AsyncTask<String, Void, Boolean> {

        /* renamed from: a, reason: collision with root package name */
        @NonNull
        private final a f4468a;

        /* renamed from: b, reason: collision with root package name */
        @NonNull
        private final WeakReference<b> f4469b = new WeakReference<>(this);

        @VisibleForTesting
        b(@NonNull a aVar) {
            this.f4468a = aVar;
            VideoDownloader.f4467a.add(this.f4469b);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Removed duplicated region for block: B:50:0x00b5  */
        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Boolean doInBackground(java.lang.String... r7) {
            /*
                r6 = this;
                r2 = 0
                r5 = 26214400(0x1900000, float:5.2897246E-38)
                r1 = 0
                if (r7 == 0) goto Ld
                int r0 = r7.length
                if (r0 == 0) goto Ld
                r0 = r7[r1]
                if (r0 != 0) goto L17
            Ld:
                java.lang.String r0 = "VideoDownloader task tried to execute null or empty url."
                com.mopub.common.logging.MoPubLog.d(r0)
                java.lang.Boolean r0 = java.lang.Boolean.valueOf(r1)
            L16:
                return r0
            L17:
                r0 = r7[r1]
                java.net.HttpURLConnection r3 = com.mopub.common.MoPubHttpUrlConnection.getHttpUrlConnection(r0)     // Catch: java.lang.Exception -> L97 java.lang.Throwable -> Lad
                java.io.BufferedInputStream r1 = new java.io.BufferedInputStream     // Catch: java.lang.Throwable -> Lb9 java.lang.Exception -> Lc1
                java.io.InputStream r4 = r3.getInputStream()     // Catch: java.lang.Throwable -> Lb9 java.lang.Exception -> Lc1
                r1.<init>(r4)     // Catch: java.lang.Throwable -> Lb9 java.lang.Exception -> Lc1
                int r2 = r3.getResponseCode()     // Catch: java.lang.Throwable -> Lbc java.lang.Exception -> Lc5
                r4 = 200(0xc8, float:2.8E-43)
                if (r2 < r4) goto L32
                r4 = 300(0x12c, float:4.2E-43)
                if (r2 < r4) goto L56
            L32:
                java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lbc java.lang.Exception -> Lc5
                r0.<init>()     // Catch: java.lang.Throwable -> Lbc java.lang.Exception -> Lc5
                java.lang.String r4 = "VideoDownloader encountered unexpected statusCode: "
                java.lang.StringBuilder r0 = r0.append(r4)     // Catch: java.lang.Throwable -> Lbc java.lang.Exception -> Lc5
                java.lang.StringBuilder r0 = r0.append(r2)     // Catch: java.lang.Throwable -> Lbc java.lang.Exception -> Lc5
                java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> Lbc java.lang.Exception -> Lc5
                com.mopub.common.logging.MoPubLog.d(r0)     // Catch: java.lang.Throwable -> Lbc java.lang.Exception -> Lc5
                r0 = 0
                java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)     // Catch: java.lang.Throwable -> Lbc java.lang.Exception -> Lc5
                com.mopub.common.util.Streams.closeStream(r1)
                if (r3 == 0) goto L16
                r3.disconnect()
                goto L16
            L56:
                int r2 = r3.getContentLength()     // Catch: java.lang.Throwable -> Lbc java.lang.Exception -> Lc5
                if (r2 <= r5) goto L86
                java.lang.String r0 = "VideoDownloader encountered video larger than disk cap. (%d bytes / %d maximum)."
                r4 = 2
                java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch: java.lang.Throwable -> Lbc java.lang.Exception -> Lc5
                r5 = 0
                java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.Throwable -> Lbc java.lang.Exception -> Lc5
                r4[r5] = r2     // Catch: java.lang.Throwable -> Lbc java.lang.Exception -> Lc5
                r2 = 1
                r5 = 26214400(0x1900000, float:5.2897246E-38)
                java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch: java.lang.Throwable -> Lbc java.lang.Exception -> Lc5
                r4[r2] = r5     // Catch: java.lang.Throwable -> Lbc java.lang.Exception -> Lc5
                java.lang.String r0 = java.lang.String.format(r0, r4)     // Catch: java.lang.Throwable -> Lbc java.lang.Exception -> Lc5
                com.mopub.common.logging.MoPubLog.d(r0)     // Catch: java.lang.Throwable -> Lbc java.lang.Exception -> Lc5
                r0 = 0
                java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)     // Catch: java.lang.Throwable -> Lbc java.lang.Exception -> Lc5
                com.mopub.common.util.Streams.closeStream(r1)
                if (r3 == 0) goto L16
                r3.disconnect()
                goto L16
            L86:
                boolean r0 = com.mopub.common.CacheService.putToDiskCache(r0, r1)     // Catch: java.lang.Throwable -> Lbc java.lang.Exception -> Lc5
                java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)     // Catch: java.lang.Throwable -> Lbc java.lang.Exception -> Lc5
                com.mopub.common.util.Streams.closeStream(r1)
                if (r3 == 0) goto L16
                r3.disconnect()
                goto L16
            L97:
                r0 = move-exception
                r1 = r2
            L99:
                java.lang.String r3 = "VideoDownloader task threw an internal exception."
                com.mopub.common.logging.MoPubLog.d(r3, r0)     // Catch: java.lang.Throwable -> Lbe
                r0 = 0
                java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)     // Catch: java.lang.Throwable -> Lbe
                com.mopub.common.util.Streams.closeStream(r1)
                if (r2 == 0) goto L16
                r2.disconnect()
                goto L16
            Lad:
                r0 = move-exception
                r1 = r2
                r3 = r2
            Lb0:
                com.mopub.common.util.Streams.closeStream(r1)
                if (r3 == 0) goto Lb8
                r3.disconnect()
            Lb8:
                throw r0
            Lb9:
                r0 = move-exception
                r1 = r2
                goto Lb0
            Lbc:
                r0 = move-exception
                goto Lb0
            Lbe:
                r0 = move-exception
                r3 = r2
                goto Lb0
            Lc1:
                r0 = move-exception
                r1 = r2
                r2 = r3
                goto L99
            Lc5:
                r0 = move-exception
                r2 = r3
                goto L99
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mopub.mobileads.VideoDownloader.b.doInBackground(java.lang.String[]):java.lang.Boolean");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(Boolean bool) {
            if (!isCancelled()) {
                VideoDownloader.f4467a.remove(this.f4469b);
                if (bool == null) {
                    this.f4468a.onComplete(false);
                    return;
                } else {
                    this.f4468a.onComplete(bool.booleanValue());
                    return;
                }
            }
            onCancelled();
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            MoPubLog.d("VideoDownloader task was cancelled.");
            VideoDownloader.f4467a.remove(this.f4469b);
            this.f4468a.onComplete(false);
        }
    }

    @VisibleForTesting
    @Deprecated
    public static Deque<WeakReference<b>> getDownloaderTasks() {
        return f4467a;
    }

    @VisibleForTesting
    @Deprecated
    public static void clearDownloaderTasks() {
        f4467a.clear();
    }
}
