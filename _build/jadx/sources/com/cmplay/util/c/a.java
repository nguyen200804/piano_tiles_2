package com.cmplay.util.c;

import android.content.ContentValues;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Map;

/* compiled from: BaseTracker.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    protected String f1727a;

    /* renamed from: b, reason: collision with root package name */
    protected ContentValues f1728b = new ContentValues();

    public a(String str) {
        this.f1727a = str;
    }

    public String a() {
        return this.f1727a;
    }

    public String b() {
        if (this.f1728b == null || this.f1728b.valueSet() == null) {
            return "";
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, Object> entry : this.f1728b.valueSet()) {
            arrayList.add(entry.getKey() + "=" + entry.getValue());
        }
        return TextUtils.join("&", arrayList);
    }

    protected void b(String str, int i) {
        this.f1728b.put(str, Integer.valueOf(i));
    }

    protected void a(String str, long j) {
        this.f1728b.put(str, Long.valueOf(j));
    }

    protected void a(String str, byte b2) {
        this.f1728b.put(str, Byte.valueOf(b2));
    }

    protected void a(String str, String str2) {
        this.f1728b.put(str, str2);
    }
}
