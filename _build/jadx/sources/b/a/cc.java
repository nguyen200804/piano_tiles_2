package b.a;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* compiled from: TIOStreamTransport.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class cc extends ce {

    /* renamed from: a, reason: collision with root package name */
    protected InputStream f118a;

    /* renamed from: b, reason: collision with root package name */
    protected OutputStream f119b;

    protected cc() {
        this.f118a = null;
        this.f119b = null;
    }

    public cc(OutputStream outputStream) {
        this.f118a = null;
        this.f119b = null;
        this.f119b = outputStream;
    }

    @Override // b.a.ce
    public int a(byte[] bArr, int i, int i2) throws cf {
        if (this.f118a == null) {
            throw new cf(1, "Cannot read from null inputStream");
        }
        try {
            int read = this.f118a.read(bArr, i, i2);
            if (read < 0) {
                throw new cf(4);
            }
            return read;
        } catch (IOException e) {
            throw new cf(0, e);
        }
    }

    @Override // b.a.ce
    public void b(byte[] bArr, int i, int i2) throws cf {
        if (this.f119b == null) {
            throw new cf(1, "Cannot write to null outputStream");
        }
        try {
            this.f119b.write(bArr, i, i2);
        } catch (IOException e) {
            throw new cf(0, e);
        }
    }
}
