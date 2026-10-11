package com.cmcm.orion.picks.b;

import android.content.Context;
import android.view.View;
import com.cmcm.orion.picks.b.a;
import com.cmcm.orion.picks.impl.IncentiveVideoPlayActivity;
import com.cmcm.orion.utils.e;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;

/* compiled from: IncentiveVideoAd.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private Context f874a;

    /* renamed from: b, reason: collision with root package name */
    private String f875b;
    private com.cmcm.orion.picks.b.a c;
    private boolean d;
    private View e;
    private a f;
    private InterfaceC0014b g;
    private a.b h = new a.b() { // from class: com.cmcm.orion.picks.b.b.1
        @Override // com.cmcm.orion.picks.b.a.d
        public void b(int i) {
            b.a(b.this);
            b.a(b.this, 1, i);
        }

        @Override // com.cmcm.orion.picks.b.a.b
        public void a(View view, int i) {
            b.a(b.this);
            b.this.e = view;
            b.a(b.this, 2, 0);
        }
    };

    /* compiled from: IncentiveVideoAd.java */
    public interface a {
        void a();

        void a(int i);

        void a(String str);

        void b();

        void c();
    }

    /* compiled from: IncentiveVideoAd.java */
    /* renamed from: com.cmcm.orion.picks.b.b$b, reason: collision with other inner class name */
    public interface InterfaceC0014b {
        void a(int i);

        void b(int i);
    }

    static /* synthetic */ boolean a(b bVar) {
        bVar.d = false;
        return false;
    }

    public b(Context context, String str) {
        if (context == null || str == null) {
            throw new RuntimeException("context or posId can not be null.");
        }
        this.f874a = context;
        this.f875b = str;
    }

    public void a(a aVar) {
        this.f = aVar;
        IncentiveVideoPlayActivity.a(aVar);
    }

    public void a() {
        if (!this.d) {
            this.d = true;
            this.c = new com.cmcm.orion.picks.b.a(this.f874a, this.f875b, null);
            this.c.a(AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS);
            this.c.b(false);
            this.c.c(false);
            this.c.a(false);
            this.c.d(false);
            this.c.a(this.h);
        }
    }

    public boolean b() {
        return (this.f874a == null || this.c == null || !this.c.c() || d() == null) ? false : true;
    }

    public boolean c() {
        if (this.d || !b() || this.c == null) {
            return false;
        }
        return IncentiveVideoPlayActivity.a(this.f874a, this.c);
    }

    public View d() {
        return this.e;
    }

    static /* synthetic */ void a(b bVar, final int i, final int i2) {
        e.b(new Runnable() { // from class: com.cmcm.orion.picks.b.b.2
            @Override // java.lang.Runnable
            public void run() {
                switch (i) {
                    case 1:
                        if (b.this.f != null) {
                            b.this.f.a(i2);
                            break;
                        }
                        break;
                    case 2:
                        if (b.this.f != null) {
                            b.this.f.c();
                            break;
                        }
                        break;
                    case 11:
                        if (b.this.g != null) {
                            b.this.g.a(i2);
                            break;
                        }
                        break;
                    case 12:
                        if (b.this.g != null) {
                            b.this.g.b(i2);
                            break;
                        }
                        break;
                }
            }
        });
    }
}
