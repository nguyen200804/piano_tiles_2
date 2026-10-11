package com.b.a;

import android.content.Context;
import b.a.ao;

/* compiled from: ReportPolicy.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c {

    /* compiled from: ReportPolicy.java */
    public static class f {
        public boolean a(boolean z) {
            return true;
        }

        public boolean a() {
            return true;
        }
    }

    /* compiled from: ReportPolicy.java */
    /* renamed from: com.b.a.c$c, reason: collision with other inner class name */
    public static class C0006c extends f {
        @Override // com.b.a.c.f
        public boolean a(boolean z) {
            return z;
        }
    }

    /* compiled from: ReportPolicy.java */
    public static class d extends f {

        /* renamed from: a, reason: collision with root package name */
        private long f631a = 90000;

        /* renamed from: b, reason: collision with root package name */
        private long f632b;
        private b.a.b c;

        public d(b.a.b bVar, long j) {
            this.c = bVar;
            this.f632b = j < this.f631a ? this.f631a : j;
        }

        @Override // com.b.a.c.f
        public boolean a(boolean z) {
            return System.currentTimeMillis() - this.c.c >= this.f632b;
        }
    }

    /* compiled from: ReportPolicy.java */
    public static class e extends f {

        /* renamed from: a, reason: collision with root package name */
        private long f633a = 86400000;

        /* renamed from: b, reason: collision with root package name */
        private b.a.b f634b;

        public e(b.a.b bVar) {
            this.f634b = bVar;
        }

        @Override // com.b.a.c.f
        public boolean a(boolean z) {
            return System.currentTimeMillis() - this.f634b.c >= this.f633a;
        }
    }

    /* compiled from: ReportPolicy.java */
    public static class g extends f {

        /* renamed from: a, reason: collision with root package name */
        private Context f635a;

        public g(Context context) {
            this.f635a = null;
            this.f635a = context;
        }

        @Override // com.b.a.c.f
        public boolean a(boolean z) {
            return ao.f(this.f635a);
        }
    }

    /* compiled from: ReportPolicy.java */
    public static class a extends f {

        /* renamed from: a, reason: collision with root package name */
        private b.a.k f627a;

        /* renamed from: b, reason: collision with root package name */
        private b.a.b f628b;

        public a(b.a.b bVar, b.a.k kVar) {
            this.f628b = bVar;
            this.f627a = kVar;
        }

        @Override // com.b.a.c.f
        public boolean a(boolean z) {
            return System.currentTimeMillis() - this.f628b.c >= this.f627a.a();
        }

        @Override // com.b.a.c.f
        public boolean a() {
            return this.f627a.b();
        }
    }

    /* compiled from: ReportPolicy.java */
    public static class b extends f {

        /* renamed from: a, reason: collision with root package name */
        private long f629a;

        /* renamed from: b, reason: collision with root package name */
        private long f630b;

        public b(int i) {
            this.f630b = 0L;
            this.f629a = i;
            this.f630b = System.currentTimeMillis();
        }

        @Override // com.b.a.c.f
        public boolean a(boolean z) {
            return System.currentTimeMillis() - this.f630b >= this.f629a;
        }

        @Override // com.b.a.c.f
        public boolean a() {
            return System.currentTimeMillis() - this.f630b < this.f629a;
        }
    }
}
