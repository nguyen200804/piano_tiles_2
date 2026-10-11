package com.facebook;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Log;
import java.net.HttpURLConnection;
import java.util.List;

/* compiled from: GraphRequestAsyncTask.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class o extends AsyncTask<Void, Void, List<q>> {

    /* renamed from: a, reason: collision with root package name */
    private static final String f3460a = o.class.getCanonicalName();

    /* renamed from: b, reason: collision with root package name */
    private final HttpURLConnection f3461b;
    private final p c;
    private Exception d;

    public o(p pVar) {
        this(null, pVar);
    }

    public o(HttpURLConnection httpURLConnection, p pVar) {
        this.c = pVar;
        this.f3461b = httpURLConnection;
    }

    public String toString() {
        return "{RequestAsyncTask:  connection: " + this.f3461b + ", requests: " + this.c + "}";
    }

    @Override // android.os.AsyncTask
    protected void onPreExecute() {
        Handler handler;
        super.onPreExecute();
        if (l.b()) {
            Log.d(f3460a, String.format("execute async task: %s", this));
        }
        if (this.c.c() == null) {
            if (Thread.currentThread() instanceof HandlerThread) {
                handler = new Handler();
            } else {
                handler = new Handler(Looper.getMainLooper());
            }
            this.c.a(handler);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(List<q> list) {
        super.onPostExecute(list);
        if (this.d != null) {
            Log.d(f3460a, String.format("onPostExecute: exception encountered during request: %s", this.d.getMessage()));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public List<q> doInBackground(Void... voidArr) {
        List<q> a2;
        try {
            if (this.f3461b == null) {
                a2 = this.c.g();
            } else {
                a2 = GraphRequest.a(this.f3461b, this.c);
            }
            return a2;
        } catch (Exception e) {
            this.d = e;
            return null;
        }
    }
}
