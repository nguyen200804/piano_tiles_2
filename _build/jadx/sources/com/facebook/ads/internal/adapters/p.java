package com.facebook.ads.internal.adapters;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class p extends a {
    private static final String c = p.class.getSimpleName();
    private final com.facebook.ads.internal.view.b d;
    private final Context e;
    private o f;
    private boolean g;

    public p(Context context, com.facebook.ads.internal.view.b bVar, com.facebook.ads.internal.j.a aVar, b bVar2) {
        super(context, bVar2, aVar);
        this.e = context.getApplicationContext();
        this.d = bVar;
    }

    public void a(o oVar) {
        this.f = oVar;
    }

    @Override // com.facebook.ads.internal.adapters.a
    protected void a(Map<String, String> map) {
        if (this.f == null || TextUtils.isEmpty(this.f.D())) {
            return;
        }
        com.facebook.ads.internal.g.g.a(this.e).a(this.f.D(), map);
    }

    public synchronized void b() {
        if (!this.g && this.f != null) {
            this.g = true;
            if (this.d != null && !TextUtils.isEmpty(this.f.b())) {
                this.d.post(new Runnable() { // from class: com.facebook.ads.internal.adapters.p.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (p.this.d.c()) {
                            Log.w(p.c, "Webview already destroyed, cannot activate");
                        } else {
                            p.this.d.loadUrl("javascript:" + p.this.f.b());
                        }
                    }
                });
            }
        }
    }
}
