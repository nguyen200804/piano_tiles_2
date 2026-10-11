package com.facebook.ads.internal.i.b;

import android.text.TextUtils;
import java.io.BufferedOutputStream;
import java.io.OutputStream;
import java.net.Socket;
import org.apache.commons.io.IOUtils;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class e extends k {

    /* renamed from: a, reason: collision with root package name */
    private final h f2778a;

    /* renamed from: b, reason: collision with root package name */
    private final com.facebook.ads.internal.i.b.a.b f2779b;
    private b c;

    public e(h hVar, com.facebook.ads.internal.i.b.a.b bVar) {
        super(hVar, bVar);
        this.f2779b = bVar;
        this.f2778a = hVar;
    }

    private void a(OutputStream outputStream, long j) {
        byte[] bArr = new byte[8192];
        while (true) {
            int a2 = a(bArr, j, bArr.length);
            if (a2 == -1) {
                outputStream.flush();
                return;
            } else {
                outputStream.write(bArr, 0, a2);
                j += a2;
            }
        }
    }

    private boolean a(d dVar) {
        int a2 = this.f2778a.a();
        boolean z = a2 > 0;
        int a3 = this.f2779b.a();
        if (z && dVar.c) {
            if (dVar.f2777b > (a2 * 0.2f) + a3) {
                return false;
            }
        }
        return true;
    }

    private String b(d dVar) {
        String c = this.f2778a.c();
        boolean z = !TextUtils.isEmpty(c);
        int a2 = this.f2779b.d() ? this.f2779b.a() : this.f2778a.a();
        boolean z2 = a2 >= 0;
        return (dVar.c ? "HTTP/1.1 206 PARTIAL CONTENT\n" : "HTTP/1.1 200 OK\n") + "Accept-Ranges: bytes\n" + (z2 ? String.format("Content-Length: %d\n", Long.valueOf(dVar.c ? a2 - dVar.f2777b : a2)) : "") + (z2 && dVar.c ? String.format("Content-Range: bytes %d-%d/%d\n", Long.valueOf(dVar.f2777b), Integer.valueOf(a2 - 1), Integer.valueOf(a2)) : "") + (z ? String.format("Content-Type: %s\n", c) : "") + IOUtils.LINE_SEPARATOR_UNIX;
    }

    private void b(OutputStream outputStream, long j) {
        try {
            h hVar = new h(this.f2778a);
            hVar.a((int) j);
            byte[] bArr = new byte[8192];
            while (true) {
                int a2 = hVar.a(bArr);
                if (a2 == -1) {
                    outputStream.flush();
                    return;
                } else {
                    outputStream.write(bArr, 0, a2);
                    j += a2;
                }
            }
        } finally {
            this.f2778a.b();
        }
    }

    @Override // com.facebook.ads.internal.i.b.k
    protected void a(int i) {
        if (this.c != null) {
            this.c.a(this.f2779b.f2768a, this.f2778a.f2795a, i);
        }
    }

    public void a(b bVar) {
        this.c = bVar;
    }

    public void a(d dVar, Socket socket) {
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(socket.getOutputStream());
        bufferedOutputStream.write(b(dVar).getBytes("UTF-8"));
        long j = dVar.f2777b;
        if (a(dVar)) {
            a(bufferedOutputStream, j);
        } else {
            b(bufferedOutputStream, j);
        }
    }
}
