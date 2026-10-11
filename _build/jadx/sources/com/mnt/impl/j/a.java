package com.mnt.impl.j;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    String f4070a;

    /* renamed from: b, reason: collision with root package name */
    String[] f4071b;
    int c;
    boolean d;

    public a(String str) {
        this.f4070a = str;
    }

    public final String a() {
        StringBuilder sb = new StringBuilder();
        if (this.f4071b != null && this.f4071b.length > 0) {
            for (String str : this.f4071b) {
                sb.append(',').append(str);
            }
            sb.deleteCharAt(0);
        }
        return sb.toString();
    }
}
