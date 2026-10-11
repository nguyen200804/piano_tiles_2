package com.google.android.gms.internal;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import org.apache.commons.io.IOUtils;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzaoo implements Closeable, Flushable {
    private static final String[] bhA = new String[128];
    private static final String[] bhB;
    private boolean bdS;
    private boolean bdT;
    private String bhC;
    private String bhD;
    private boolean bhd;
    private int[] bhl = new int[32];
    private int bhm = 0;
    private final Writer out;
    private String separator;

    static {
        for (int i = 0; i <= 31; i++) {
            bhA[i] = String.format("\\u%04x", Integer.valueOf(i));
        }
        bhA[34] = "\\\"";
        bhA[92] = "\\\\";
        bhA[9] = "\\t";
        bhA[8] = "\\b";
        bhA[10] = "\\n";
        bhA[13] = "\\r";
        bhA[12] = "\\f";
        bhB = (String[]) bhA.clone();
        bhB[60] = "\\u003c";
        bhB[62] = "\\u003e";
        bhB[38] = "\\u0026";
        bhB[61] = "\\u003d";
        bhB[39] = "\\u0027";
    }

    public zzaoo(Writer writer) {
        zzafl(6);
        this.separator = ":";
        this.bdS = true;
        if (writer == null) {
            throw new NullPointerException("out == null");
        }
        this.out = writer;
    }

    private void A() throws IOException {
        if (this.bhD != null) {
            C();
            zztv(this.bhD);
            this.bhD = null;
        }
    }

    private void B() throws IOException {
        if (this.bhC == null) {
            return;
        }
        this.out.write(IOUtils.LINE_SEPARATOR_UNIX);
        int i = this.bhm;
        for (int i2 = 1; i2 < i; i2++) {
            this.out.write(this.bhC);
        }
    }

    private void C() throws IOException {
        int z = z();
        if (z == 5) {
            this.out.write(44);
        } else if (z != 3) {
            throw new IllegalStateException("Nesting problem.");
        }
        B();
        zzafn(4);
    }

    private int z() {
        if (this.bhm == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        return this.bhl[this.bhm - 1];
    }

    private void zzafl(int i) {
        if (this.bhm == this.bhl.length) {
            int[] iArr = new int[this.bhm * 2];
            System.arraycopy(this.bhl, 0, iArr, 0, this.bhm);
            this.bhl = iArr;
        }
        int[] iArr2 = this.bhl;
        int i2 = this.bhm;
        this.bhm = i2 + 1;
        iArr2[i2] = i;
    }

    private void zzafn(int i) {
        this.bhl[this.bhm - 1] = i;
    }

    private zzaoo zzc(int i, int i2, String str) throws IOException {
        int z = z();
        if (z != i2 && z != i) {
            throw new IllegalStateException("Nesting problem.");
        }
        if (this.bhD != null) {
            String valueOf = String.valueOf(this.bhD);
            throw new IllegalStateException(valueOf.length() != 0 ? "Dangling name: ".concat(valueOf) : new String("Dangling name: "));
        }
        this.bhm--;
        if (z == i2) {
            B();
        }
        this.out.write(str);
        return this;
    }

    private void zzde(boolean z) throws IOException {
        switch (z()) {
            case 1:
                zzafn(2);
                B();
                return;
            case 2:
                this.out.append(',');
                B();
                return;
            case 3:
            case 5:
            default:
                throw new IllegalStateException("Nesting problem.");
            case 4:
                this.out.append((CharSequence) this.separator);
                zzafn(5);
                return;
            case 6:
                break;
            case 7:
                if (!this.bhd) {
                    throw new IllegalStateException("JSON must have only one top-level value.");
                }
                break;
        }
        if (!this.bhd && !z) {
            throw new IllegalStateException("JSON must start with an array or an object.");
        }
        zzafn(7);
    }

    private zzaoo zzq(int i, String str) throws IOException {
        zzde(true);
        zzafl(i);
        this.out.write(str);
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0030  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void zztv(java.lang.String r8) throws java.io.IOException {
        /*
            r7 = this;
            r1 = 0
            boolean r0 = r7.bdT
            if (r0 == 0) goto L25
            java.lang.String[] r0 = com.google.android.gms.internal.zzaoo.bhB
        L7:
            java.io.Writer r2 = r7.out
            java.lang.String r3 = "\""
            r2.write(r3)
            int r4 = r8.length()
            r3 = r1
        L13:
            if (r3 >= r4) goto L46
            char r2 = r8.charAt(r3)
            r5 = 128(0x80, float:1.794E-43)
            if (r2 >= r5) goto L28
            r2 = r0[r2]
            if (r2 != 0) goto L2e
        L21:
            int r2 = r3 + 1
            r3 = r2
            goto L13
        L25:
            java.lang.String[] r0 = com.google.android.gms.internal.zzaoo.bhA
            goto L7
        L28:
            r5 = 8232(0x2028, float:1.1535E-41)
            if (r2 != r5) goto L3f
            java.lang.String r2 = "\\u2028"
        L2e:
            if (r1 >= r3) goto L37
            java.io.Writer r5 = r7.out
            int r6 = r3 - r1
            r5.write(r8, r1, r6)
        L37:
            java.io.Writer r1 = r7.out
            r1.write(r2)
            int r1 = r3 + 1
            goto L21
        L3f:
            r5 = 8233(0x2029, float:1.1537E-41)
            if (r2 != r5) goto L21
            java.lang.String r2 = "\\u2029"
            goto L2e
        L46:
            if (r1 >= r4) goto L4f
            java.io.Writer r0 = r7.out
            int r2 = r4 - r1
            r0.write(r8, r1, r2)
        L4f:
            java.io.Writer r0 = r7.out
            java.lang.String r1 = "\""
            r0.write(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaoo.zztv(java.lang.String):void");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.out.close();
        int i = this.bhm;
        if (i > 1 || (i == 1 && this.bhl[i - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.bhm = 0;
    }

    public void flush() throws IOException {
        if (this.bhm == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.out.flush();
    }

    public zzaoo h() throws IOException {
        A();
        return zzq(1, "[");
    }

    public zzaoo i() throws IOException {
        return zzc(1, 2, "]");
    }

    public boolean isLenient() {
        return this.bhd;
    }

    public zzaoo j() throws IOException {
        A();
        return zzq(3, "{");
    }

    public zzaoo k() throws IOException {
        return zzc(3, 5, "}");
    }

    public zzaoo l() throws IOException {
        if (this.bhD != null) {
            if (!this.bdS) {
                this.bhD = null;
                return this;
            }
            A();
        }
        zzde(false);
        this.out.write("null");
        return this;
    }

    public final void setIndent(String str) {
        if (str.length() == 0) {
            this.bhC = null;
            this.separator = ":";
        } else {
            this.bhC = str;
            this.separator = ": ";
        }
    }

    public final void setLenient(boolean z) {
        this.bhd = z;
    }

    public final boolean x() {
        return this.bdT;
    }

    public final boolean y() {
        return this.bdS;
    }

    public zzaoo zza(Number number) throws IOException {
        if (number == null) {
            return l();
        }
        A();
        String obj = number.toString();
        if (!this.bhd && (obj.equals("-Infinity") || obj.equals("Infinity") || obj.equals("NaN"))) {
            String valueOf = String.valueOf(number);
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 39).append("Numeric values must be finite, but was ").append(valueOf).toString());
        }
        zzde(false);
        this.out.append((CharSequence) obj);
        return this;
    }

    public zzaoo zzcr(long j) throws IOException {
        A();
        zzde(false);
        this.out.write(Long.toString(j));
        return this;
    }

    public zzaoo zzda(boolean z) throws IOException {
        A();
        zzde(false);
        this.out.write(z ? "true" : "false");
        return this;
    }

    public final void zzdc(boolean z) {
        this.bdT = z;
    }

    public final void zzdd(boolean z) {
        this.bdS = z;
    }

    public zzaoo zztr(String str) throws IOException {
        if (str == null) {
            throw new NullPointerException("name == null");
        }
        if (this.bhD != null) {
            throw new IllegalStateException();
        }
        if (this.bhm == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.bhD = str;
        return this;
    }

    public zzaoo zzts(String str) throws IOException {
        if (str == null) {
            return l();
        }
        A();
        zzde(false);
        zztv(str);
        return this;
    }
}
