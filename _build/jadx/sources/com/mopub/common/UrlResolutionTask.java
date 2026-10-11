package com.mopub.common;

import android.net.Uri;
import android.os.AsyncTask;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.mopub.common.util.AsyncTasks;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;

@VisibleForTesting
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class UrlResolutionTask extends AsyncTask<String, Void, String> {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final a f4182a;

    interface a {
        void onFailure(@NonNull String str, @Nullable Throwable th);

        void onSuccess(@NonNull String str);
    }

    public static void getResolvedUrl(@NonNull String urlString, @NonNull a listener) {
        try {
            AsyncTasks.safeExecuteOnExecutor(new UrlResolutionTask(listener), urlString);
        } catch (Exception e) {
            listener.onFailure("Failed to resolve url", e);
        }
    }

    UrlResolutionTask(@NonNull a listener) {
        this.f4182a = listener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    @Nullable
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public String doInBackground(@Nullable String... strArr) {
        if (strArr == null || strArr.length == 0) {
            return null;
        }
        try {
            int i = 0;
            String str = strArr[0];
            String str2 = null;
            while (str != null && i < 10) {
                if (UrlAction.OPEN_IN_APP_BROWSER.shouldTryHandlingUrl(Uri.parse(str))) {
                    i++;
                    str2 = str;
                    str = b(str);
                } else {
                    return str;
                }
            }
            return str2;
        } catch (IOException e) {
            return null;
        } catch (URISyntaxException e2) {
            return null;
        }
    }

    @Nullable
    private String b(@NonNull String str) throws IOException, URISyntaxException {
        HttpURLConnection httpURLConnection = null;
        try {
            HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(str).openConnection();
            try {
                httpURLConnection2.setInstanceFollowRedirects(false);
                String a2 = a(str, httpURLConnection2);
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
                return a2;
            } catch (Throwable th) {
                httpURLConnection = httpURLConnection2;
                th = th;
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Nullable
    @VisibleForTesting
    static String a(@NonNull String str, @NonNull HttpURLConnection httpURLConnection) throws IOException, URISyntaxException {
        URI uri = new URI(str);
        int responseCode = httpURLConnection.getResponseCode();
        String headerField = httpURLConnection.getHeaderField("Location");
        if (responseCode < 300 || responseCode >= 400) {
            return null;
        }
        try {
            return uri.resolve(headerField).toString();
        } catch (IllegalArgumentException e) {
            throw new URISyntaxException(headerField, "Unable to parse invalid URL");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(@Nullable String str) {
        super.onPostExecute(str);
        if (isCancelled() || str == null) {
            onCancelled();
        } else {
            this.f4182a.onSuccess(str);
        }
    }

    @Override // android.os.AsyncTask
    protected void onCancelled() {
        super.onCancelled();
        this.f4182a.onFailure("Task for resolving url was cancelled", null);
    }
}
