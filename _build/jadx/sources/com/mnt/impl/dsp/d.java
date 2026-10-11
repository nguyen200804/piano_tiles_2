package com.mnt.impl.dsp;

import android.content.Context;
import android.text.TextUtils;
import com.mnt.impl.b.e;
import com.mnt.impl.e.g;
import com.mnt.impl.f.n;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d extends e<Boolean> {

    /* renamed from: a, reason: collision with root package name */
    private Context f3977a;

    /* renamed from: b, reason: collision with root package name */
    private a f3978b;
    private String c;
    private c d;

    public interface a {
        void a();

        void a(c cVar);

        void b();
    }

    static {
        String str = com.mnt.impl.e.aI;
    }

    public d(Context context, String str, a aVar) {
        this.f3977a = context;
        this.f3978b = aVar;
        this.c = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.mnt.impl.b.e
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public Boolean a() {
        int i;
        int i2 = 5000;
        synchronized (d.class) {
            try {
                g a2 = com.mnt.impl.f.d.a(this.f3977a);
                if (a2 != null) {
                    i = a2.d;
                    i2 = a2.e;
                } else {
                    i = 5000;
                }
                this.d = new c(new com.mnt.impl.f.e().a(n.a(com.mnt.impl.e.aJ), new n(this.f3977a, this.c).a(), i, i2));
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mnt.impl.b.e
    public final /* synthetic */ void a(Boolean bool) {
        try {
            if (this.d == null) {
                if (this.f3978b != null) {
                    this.f3978b.b();
                    return;
                }
                return;
            }
            if (!TextUtils.isEmpty(this.d.e.f3975a)) {
                com.mnt.impl.i.c.a(this.f3977a).a(this.d.e.f3975a);
            }
            if (this.d.f3971a == 200) {
                new com.mnt.impl.b(this.f3977a).a(true, null);
                if (TextUtils.isEmpty(this.d.d.f3973a)) {
                    if (this.f3978b != null) {
                        this.f3978b.a();
                        return;
                    }
                    return;
                } else {
                    if (this.f3978b != null) {
                        this.f3978b.a(this.d);
                        return;
                    }
                    return;
                }
            }
            if (this.d.f3971a == 300) {
                if (TextUtils.isEmpty(this.d.d.f3973a)) {
                    if (this.f3978b != null) {
                        this.f3978b.b();
                        return;
                    }
                    return;
                } else {
                    new com.mnt.impl.b(this.f3977a).a(true, null);
                    if (this.f3978b != null) {
                        this.f3978b.a(this.d);
                        return;
                    }
                    return;
                }
            }
            if (this.f3978b != null) {
                this.f3978b.b();
            }
        } catch (Throwable th) {
            try {
                th.printStackTrace();
                if (this.f3978b != null) {
                    this.f3978b.b();
                }
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
    }
}
