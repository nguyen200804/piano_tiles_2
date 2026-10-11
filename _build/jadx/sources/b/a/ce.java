package b.a;

/* compiled from: TTransport.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class ce {
    public abstract int a(byte[] bArr, int i, int i2) throws cf;

    public abstract void b(byte[] bArr, int i, int i2) throws cf;

    public int d(byte[] bArr, int i, int i2) throws cf {
        int i3 = 0;
        while (i3 < i2) {
            int a2 = a(bArr, i + i3, i2 - i3);
            if (a2 <= 0) {
                throw new cf("Cannot read. Remote side has closed. Tried to read " + i2 + " bytes, but only got " + i3 + " bytes. (This is often indicative of an internal error on the server side. Please check your server logs.)");
            }
            i3 += a2;
        }
        return i3;
    }

    public void b(byte[] bArr) throws cf {
        b(bArr, 0, bArr.length);
    }

    public byte[] b() {
        return null;
    }

    public int c() {
        return 0;
    }

    public int d() {
        return -1;
    }

    public void a(int i) {
    }
}
