package com.cmcm.dmc.sdk.c;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import java.util.ArrayList;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
abstract class b<T> {

    /* renamed from: a, reason: collision with root package name */
    Context f711a;

    b(Context context) {
        this.f711a = context;
    }

    private boolean h() {
        return "mounted".equals(Environment.getExternalStorageState());
    }

    private Cursor i() {
        return this.f711a.getContentResolver().query(c(), d(), e(), f(), g());
    }

    abstract T a(Cursor cursor);

    public List<T> a() {
        b();
        List<T> arrayList = new ArrayList<>();
        if (h()) {
            Cursor i = i();
            if (i != null && i.getCount() > 0) {
                i.moveToFirst();
                do {
                    arrayList.add(a(i));
                } while (i.moveToNext());
                i.close();
            }
            a(arrayList);
        }
        return arrayList;
    }

    void a(List<T> list) {
    }

    void b() {
    }

    abstract Uri c();

    abstract String[] d();

    abstract String e();

    abstract String[] f();

    abstract String g();
}
