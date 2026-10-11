package com.facebook;

import android.os.Handler;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;

/* compiled from: ProgressNoopOutputStream.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class x extends OutputStream implements z {

    /* renamed from: a, reason: collision with root package name */
    private final Map<GraphRequest, aa> f3577a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    private final Handler f3578b;
    private GraphRequest c;
    private aa d;
    private int e;

    x(Handler handler) {
        this.f3578b = handler;
    }

    @Override // com.facebook.z
    public void a(GraphRequest graphRequest) {
        this.c = graphRequest;
        this.d = graphRequest != null ? this.f3577a.get(graphRequest) : null;
    }

    int a() {
        return this.e;
    }

    Map<GraphRequest, aa> b() {
        return this.f3577a;
    }

    void a(long j) {
        if (this.d == null) {
            this.d = new aa(this.f3578b, this.c);
            this.f3577a.put(this.c, this.d);
        }
        this.d.b(j);
        this.e = (int) (this.e + j);
    }

    @Override // java.io.OutputStream
    public void write(byte[] buffer) {
        a(buffer.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] buffer, int offset, int length) {
        a(length);
    }

    @Override // java.io.OutputStream
    public void write(int oneByte) {
        a(1L);
    }
}
