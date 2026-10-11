package com.mnt.impl.k;

import android.content.ContentValues;
import android.content.Context;
import android.text.TextUtils;
import com.mnt.impl.e;
import com.mnt.impl.e.b;
import com.mnt.impl.e.g;
import com.mnt.impl.f.h;
import com.mnt.impl.i.b.c;
import com.mnt.impl.j.d;
import java.util.Calendar;
import java.util.Iterator;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    private Context f4085a;

    /* renamed from: b, reason: collision with root package name */
    private g f4086b;
    private boolean c;
    private String d;

    static {
        String str = e.pv;
    }

    private a(Context context, g gVar, boolean z, String str) {
        this.f4085a = context;
        this.f4086b = gVar;
        this.c = z;
        this.d = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f4086b != null && this.f4086b.f != null) {
            for (g.a aVar : this.f4086b.f) {
                g.b bVar = aVar.f3993a;
                if (bVar != null) {
                    if (!TextUtils.isEmpty(this.d) && this.d.equals(bVar.e) && aVar.c != 4) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put(c.c, this.d);
                        contentValues.put(c.d, bVar.f3995a);
                        contentValues.put(c.j, e.pw);
                        com.mnt.impl.i.b.a.a(this.f4085a).a(contentValues);
                        h hVar = new h(this.f4085a, new b(bVar.f3995a, bVar.e, bVar.f3996b, aVar.f, aVar.g), null, this.c);
                        hVar.f4013a = true;
                        hVar.f4014b = 4;
                        hVar.c();
                    } else if (aVar.c == 1) {
                        switch (aVar.h) {
                            case 1:
                                a(this.f4085a, aVar, this.c);
                                break;
                            default:
                                a(this.f4085a, aVar, this.c);
                                break;
                        }
                    }
                }
            }
        }
    }

    public static void a(Context context, g gVar) {
        a(context, gVar, false, null);
    }

    public static void a(Context context, g gVar, boolean z, String str) {
        boolean z2;
        com.mnt.impl.j.b a2 = d.b(context).a();
        if (a2.f4072a) {
            int i = Calendar.getInstance().get(11);
            Iterator<String> it = a2.e.iterator();
            while (it.hasNext()) {
                String[] split = it.next().split(e.iu);
                int intValue = Integer.valueOf(split[0]).intValue();
                int intValue2 = Integer.valueOf(split[1]).intValue();
                if (i >= intValue && i < intValue2) {
                    z2 = true;
                    break;
                }
            }
        }
        z2 = false;
        if (!z2) {
            new Thread(new a(context, gVar, z, str)).start();
        }
    }

    private static void a(Context context, g.a aVar, boolean z) {
        g.b bVar = aVar.f3993a;
        h.a(context, new b(bVar.f3995a, bVar.e, bVar.f3996b, aVar.f, aVar.g), null, z);
    }
}
