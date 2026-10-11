package com.mnt.impl.f;

import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.mnt.impl.b.i;
import java.util.Map;
import java.util.WeakHashMap;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class d extends com.mnt.impl.b.e<Boolean> {
    private static com.mnt.impl.e.g c;

    /* renamed from: a, reason: collision with root package name */
    public String f4008a;
    private Context d;
    private a e;

    /* renamed from: b, reason: collision with root package name */
    private static final String f4007b = com.mnt.impl.e.dQ;
    private static Map<String, Long> f = new WeakHashMap();

    public interface a {
        void a(com.mnt.impl.e.g gVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mnt.impl.b.e
    public final /* synthetic */ void a(Boolean bool) {
        Boolean bool2 = bool;
        try {
            if (this.e != null) {
                a aVar = this.e;
                com.mnt.impl.e.g gVar = c;
                bool2.booleanValue();
                aVar.a(gVar);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public d(Context context, a aVar) {
        this.d = context;
        this.e = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.mnt.impl.b.e
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public Boolean a() {
        boolean z;
        synchronized (f4007b) {
            if (c != null && !c.b() && TextUtils.isEmpty(this.f4008a)) {
                z = true;
            } else {
                com.mnt.impl.b.i iVar = new com.mnt.impl.b.i(i.a.f3949b, this.d);
                iVar.f3947b = com.mnt.impl.b.h.i(this.d);
                iVar.c = this.f4008a;
                if (!TextUtils.isEmpty(this.f4008a)) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put(com.mnt.impl.i.b.c.c, this.f4008a);
                    contentValues.put(com.mnt.impl.i.b.c.g, Long.valueOf(System.currentTimeMillis()));
                    com.mnt.impl.i.b.a.a(this.d).a(contentValues);
                }
                String a2 = new e().a(iVar.f3946a.c, iVar.c(), null);
                long currentTimeMillis = System.currentTimeMillis();
                if (TextUtils.isEmpty(a2)) {
                    a2 = com.mnt.impl.e.g.a();
                }
                c = new com.mnt.impl.e.g(a2, currentTimeMillis);
                if (!TextUtils.isEmpty(this.f4008a)) {
                    ContentValues contentValues2 = new ContentValues();
                    contentValues2.put(com.mnt.impl.i.b.c.c, this.f4008a);
                    contentValues2.put(com.mnt.impl.i.b.c.h, Long.valueOf(System.currentTimeMillis()));
                    contentValues2.put(com.mnt.impl.i.b.c.j, com.mnt.impl.e.dR);
                    contentValues2.put(com.mnt.impl.i.b.c.i, Long.valueOf(c.f3992b));
                    com.mnt.impl.i.b.a.a(this.d).a(contentValues2);
                }
                com.mnt.impl.b.h.a(this.d, a2, currentTimeMillis);
                com.mnt.impl.k.a.a(this.d, c, true, this.f4008a);
                h.a(this.d);
                SharedPreferences.Editor edit = com.mnt.impl.b.h.c(com.mnt.impl.b.a.a(this.d).f3932b).edit();
                edit.clear();
                com.mnt.impl.b.h.a(edit);
                com.mnt.impl.b.a.f3931a.clear();
                z = false;
            }
        }
        return z;
    }

    public static com.mnt.impl.e.g a(Context context) {
        if (c == null) {
            c = com.mnt.impl.b.h.e(context);
        }
        return c;
    }

    public static void d() {
        c = null;
    }

    public static void a(Context context, String str, int i) {
        com.mnt.impl.e.g a2 = a(context);
        if (a2 == null || a2.c != 1) {
            if (f.get(str) == null) {
                if (i == 1) {
                    f.put(str, Long.valueOf(System.currentTimeMillis()));
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put(com.mnt.impl.i.b.c.c, str);
                contentValues.put(com.mnt.impl.i.b.c.e, (Integer) 3);
                com.mnt.impl.i.b.a.a(context).a(contentValues);
                com.mnt.impl.b bVar = new com.mnt.impl.b(context);
                if (!TextUtils.isEmpty(str)) {
                    if (com.mnt.impl.b.k.c(bVar.e, str)) {
                        bVar.a(true, str);
                        return;
                    } else {
                        bVar.a(false, str);
                        return;
                    }
                }
                return;
            }
            if (i == 0) {
                f.remove(str);
            }
        }
    }
}
