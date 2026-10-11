package com.mopub.dg.d;

import android.content.Context;
import android.os.AsyncTask;
import android.util.Log;
import java.lang.ref.WeakReference;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class i extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    private WeakReference f4300a;

    /* renamed from: b, reason: collision with root package name */
    private WeakReference f4301b;
    private WeakReference c;

    public i(h hVar, Context context, j jVar) {
        this.f4300a = new WeakReference(hVar);
        this.f4301b = new WeakReference(context);
        this.c = new WeakReference(jVar);
    }

    private Void a() {
        String str;
        try {
            Context context = (Context) this.f4301b.get();
            h hVar = (h) this.f4300a.get();
            if (context != null) {
                c a2 = b.a(context);
                String str2 = a2.f4290a;
                if (!a2.f4291b) {
                    com.mopub.dg.d.b.b a3 = com.mopub.dg.d.b.b.a(context);
                    str = h.d;
                    a3.a(str, str2);
                    if (hVar != null) {
                        hVar.f4299b = str2;
                    }
                }
            }
        } catch (Exception e) {
            if (n.a(3)) {
                if (com.mopub.dg.c.g.f4267a) {
                    Log.e("DG", "Unable to obtain Google AdvertisingIdClient.Info via reflection.");
                }
                Log.d("DG", "Unable to obtain Google AdvertisingIdClient.Info via reflection.");
            }
        }
        return null;
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ Object doInBackground(Object[] objArr) {
        return a();
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ void onPostExecute(Object obj) {
        j jVar = (j) this.c.get();
        if (jVar != null) {
            jVar.a();
        }
    }
}
