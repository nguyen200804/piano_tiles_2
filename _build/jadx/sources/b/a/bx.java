package b.a;

import java.util.BitSet;

/* compiled from: TTupleProtocol.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class bx extends bn {
    @Override // b.a.br
    public Class<? extends by> y() {
        return cb.class;
    }

    public void a(BitSet bitSet, int i) throws bb {
        for (byte b2 : b(bitSet, i)) {
            a(b2);
        }
    }

    public BitSet b(int i) throws bb {
        int ceil = (int) Math.ceil(i / 8.0d);
        byte[] bArr = new byte[ceil];
        for (int i2 = 0; i2 < ceil; i2++) {
            bArr[i2] = q();
        }
        return a(bArr);
    }

    public static BitSet a(byte[] bArr) {
        BitSet bitSet = new BitSet();
        for (int i = 0; i < bArr.length * 8; i++) {
            if ((bArr[(bArr.length - (i / 8)) - 1] & (1 << (i % 8))) > 0) {
                bitSet.set(i);
            }
        }
        return bitSet;
    }

    public static byte[] b(BitSet bitSet, int i) {
        byte[] bArr = new byte[(int) Math.ceil(i / 8.0d)];
        for (int i2 = 0; i2 < bitSet.length(); i2++) {
            if (bitSet.get(i2)) {
                int length = (bArr.length - (i2 / 8)) - 1;
                bArr[length] = (byte) (bArr[length] | (1 << (i2 % 8)));
            }
        }
        return bArr;
    }
}
