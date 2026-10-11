package com.facebook;

import android.os.Handler;
import com.facebook.p;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.Map;

/* compiled from: ProgressOutputStream.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class y extends FilterOutputStream implements z {

    /* renamed from: a, reason: collision with root package name */
    private final Map<GraphRequest, aa> f3579a;

    /* renamed from: b, reason: collision with root package name */
    private final p f3580b;
    private final long c;
    private long d;
    private long e;
    private long f;
    private aa g;

    y(OutputStream outputStream, p pVar, Map<GraphRequest, aa> map, long j) {
        super(outputStream);
        this.f3580b = pVar;
        this.f3579a = map;
        this.f = j;
        this.c = l.h();
    }

    private void a(long j) {
        if (this.g != null) {
            this.g.a(j);
        }
        this.d += j;
        if (this.d >= this.e + this.c || this.d >= this.f) {
            a();
        }
    }

    private void a() {
        if (this.d > this.e) {
            for (p.a aVar : this.f3580b.e()) {
                if (aVar instanceof p.b) {
                    Handler c = this.f3580b.c();
                    final p.b bVar = (p.b) aVar;
                    if (c == null) {
                        bVar.a(this.f3580b, this.d, this.f);
                    } else {
                        c.post(new Runnable() { // from class: com.facebook.y.1
                            @Override // java.lang.Runnable
                            public void run() {
                                bVar.a(y.this.f3580b, y.this.d, y.this.f);
                            }
                        });
                    }
                }
            }
            this.e = this.d;
        }
    }

    @Override // com.facebook.z
    public void a(GraphRequest graphRequest) {
        this.g = graphRequest != null ? this.f3579a.get(graphRequest) : null;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] buffer) throws IOException {
        this.out.write(buffer);
        a(buffer.length);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] buffer, int offset, int length) throws IOException {
        this.out.write(buffer, offset, length);
        a(length);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int oneByte) throws IOException {
        this.out.write(oneByte);
        a(1L);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        Iterator<aa> it = this.f3579a.values().iterator();
        while (it.hasNext()) {
            it.next().a();
        }
        a();
    }
}
