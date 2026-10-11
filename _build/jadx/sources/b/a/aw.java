package b.a;

/* compiled from: EncodingUtils.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class aw {
    public static final boolean a(byte b2, int i) {
        return a((int) b2, i);
    }

    public static final boolean a(int i, int i2) {
        return ((1 << i2) & i) != 0;
    }

    public static final int b(int i, int i2) {
        return ((1 << i2) ^ (-1)) & i;
    }

    public static final byte a(byte b2, int i, boolean z) {
        return (byte) a((int) b2, i, z);
    }

    public static final int a(int i, int i2, boolean z) {
        return z ? (1 << i2) | i : b(i, i2);
    }
}
