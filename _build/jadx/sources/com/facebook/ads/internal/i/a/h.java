package com.facebook.ads.internal.i.a;

import android.os.AsyncTask;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class h extends AsyncTask<l, Void, n> implements c {

    /* renamed from: a, reason: collision with root package name */
    private a f2758a;

    /* renamed from: b, reason: collision with root package name */
    private b f2759b;
    private Exception c;

    public h(a aVar, b bVar) {
        this.f2758a = aVar;
        this.f2759b = bVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public n doInBackground(l... lVarArr) {
        if (lVarArr != null) {
            try {
                if (lVarArr.length > 0) {
                    return this.f2758a.a(lVarArr[0]);
                }
            } catch (Exception e) {
                this.c = e;
                cancel(true);
                return null;
            }
        }
        throw new IllegalArgumentException("DoHttpRequestTask takes exactly one argument of type HttpRequest");
    }

    @Override // com.facebook.ads.internal.i.a.c
    public void a(l lVar) {
        super.execute(lVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(n nVar) {
        this.f2759b.a(nVar);
    }

    @Override // android.os.AsyncTask
    protected void onCancelled() {
        this.f2759b.a(this.c);
    }
}
