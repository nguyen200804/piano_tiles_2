package com.google.android.gms.internal;

import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzaod extends zzaoo {
    private static final Writer bfC = new Writer() { // from class: com.google.android.gms.internal.zzaod.1
        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) {
            throw new AssertionError();
        }
    };
    private static final zzanb bfD = new zzanb("closed");
    private final List<zzamv> bfB;
    private String bfE;
    private zzamv bfF;

    public zzaod() {
        super(bfC);
        this.bfB = new ArrayList();
        this.bfF = zzamx.bei;
    }

    private zzamv g() {
        return this.bfB.get(this.bfB.size() - 1);
    }

    private void zzd(zzamv zzamvVar) {
        if (this.bfE != null) {
            if (!zzamvVar.zzczj() || y()) {
                ((zzamy) g()).zza(this.bfE, zzamvVar);
            }
            this.bfE = null;
            return;
        }
        if (this.bfB.isEmpty()) {
            this.bfF = zzamvVar;
            return;
        }
        zzamv g = g();
        if (!(g instanceof zzams)) {
            throw new IllegalStateException();
        }
        ((zzams) g).zzc(zzamvVar);
    }

    @Override // com.google.android.gms.internal.zzaoo, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.bfB.isEmpty()) {
            throw new IOException("Incomplete document");
        }
        this.bfB.add(bfD);
    }

    public zzamv f() {
        if (this.bfB.isEmpty()) {
            return this.bfF;
        }
        String valueOf = String.valueOf(this.bfB);
        throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 34).append("Expected one JSON element but was ").append(valueOf).toString());
    }

    @Override // com.google.android.gms.internal.zzaoo, java.io.Flushable
    public void flush() throws IOException {
    }

    @Override // com.google.android.gms.internal.zzaoo
    public zzaoo h() throws IOException {
        zzams zzamsVar = new zzams();
        zzd(zzamsVar);
        this.bfB.add(zzamsVar);
        return this;
    }

    @Override // com.google.android.gms.internal.zzaoo
    public zzaoo i() throws IOException {
        if (this.bfB.isEmpty() || this.bfE != null) {
            throw new IllegalStateException();
        }
        if (!(g() instanceof zzams)) {
            throw new IllegalStateException();
        }
        this.bfB.remove(this.bfB.size() - 1);
        return this;
    }

    @Override // com.google.android.gms.internal.zzaoo
    public zzaoo j() throws IOException {
        zzamy zzamyVar = new zzamy();
        zzd(zzamyVar);
        this.bfB.add(zzamyVar);
        return this;
    }

    @Override // com.google.android.gms.internal.zzaoo
    public zzaoo k() throws IOException {
        if (this.bfB.isEmpty() || this.bfE != null) {
            throw new IllegalStateException();
        }
        if (!(g() instanceof zzamy)) {
            throw new IllegalStateException();
        }
        this.bfB.remove(this.bfB.size() - 1);
        return this;
    }

    @Override // com.google.android.gms.internal.zzaoo
    public zzaoo l() throws IOException {
        zzd(zzamx.bei);
        return this;
    }

    @Override // com.google.android.gms.internal.zzaoo
    public zzaoo zza(Number number) throws IOException {
        if (number == null) {
            return l();
        }
        if (!isLenient()) {
            double doubleValue = number.doubleValue();
            if (Double.isNaN(doubleValue) || Double.isInfinite(doubleValue)) {
                String valueOf = String.valueOf(number);
                throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 33).append("JSON forbids NaN and infinities: ").append(valueOf).toString());
            }
        }
        zzd(new zzanb(number));
        return this;
    }

    @Override // com.google.android.gms.internal.zzaoo
    public zzaoo zzcr(long j) throws IOException {
        zzd(new zzanb(Long.valueOf(j)));
        return this;
    }

    @Override // com.google.android.gms.internal.zzaoo
    public zzaoo zzda(boolean z) throws IOException {
        zzd(new zzanb(Boolean.valueOf(z)));
        return this;
    }

    @Override // com.google.android.gms.internal.zzaoo
    public zzaoo zztr(String str) throws IOException {
        if (this.bfB.isEmpty() || this.bfE != null) {
            throw new IllegalStateException();
        }
        if (!(g() instanceof zzamy)) {
            throw new IllegalStateException();
        }
        this.bfE = str;
        return this;
    }

    @Override // com.google.android.gms.internal.zzaoo
    public zzaoo zzts(String str) throws IOException {
        if (str == null) {
            return l();
        }
        zzd(new zzanb(str));
        return this;
    }
}
