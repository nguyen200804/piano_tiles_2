package com.appsflyer;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/* compiled from: DebugLogQueue.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class g {

    /* renamed from: b, reason: collision with root package name */
    private static g f592b = new g();

    /* renamed from: a, reason: collision with root package name */
    List<a> f593a = new ArrayList();

    public static g a() {
        return f592b;
    }

    private g() {
    }

    public void a(String str) {
        this.f593a.add(new a(str));
    }

    /* compiled from: DebugLogQueue.java */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private String f594a;

        /* renamed from: b, reason: collision with root package name */
        private long f595b = new Date().getTime();

        public a(String str) {
            this.f594a = str;
        }
    }
}
