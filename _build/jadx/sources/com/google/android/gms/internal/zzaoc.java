package com.google.android.gms.internal;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzaoc extends zzaom {
    private final List<Object> bfB;
    private static final Reader bfz = new Reader() { // from class: com.google.android.gms.internal.zzaoc.1
        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Reader
        public int read(char[] cArr, int i, int i2) throws IOException {
            throw new AssertionError();
        }
    };
    private static final Object bfA = new Object();

    public zzaoc(zzamv zzamvVar) {
        super(bfz);
        this.bfB = new ArrayList();
        this.bfB.add(zzamvVar);
    }

    private Object c() {
        return this.bfB.get(this.bfB.size() - 1);
    }

    private Object d() {
        return this.bfB.remove(this.bfB.size() - 1);
    }

    private void zza(zzaon zzaonVar) throws IOException {
        if (b() != zzaonVar) {
            String valueOf = String.valueOf(zzaonVar);
            String valueOf2 = String.valueOf(b());
            throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 18 + String.valueOf(valueOf2).length()).append("Expected ").append(valueOf).append(" but was ").append(valueOf2).toString());
        }
    }

    @Override // com.google.android.gms.internal.zzaom
    public zzaon b() throws IOException {
        if (this.bfB.isEmpty()) {
            return zzaon.END_DOCUMENT;
        }
        Object c = c();
        if (c instanceof Iterator) {
            boolean z = this.bfB.get(this.bfB.size() - 2) instanceof zzamy;
            Iterator it = (Iterator) c;
            if (!it.hasNext()) {
                return z ? zzaon.END_OBJECT : zzaon.END_ARRAY;
            }
            if (z) {
                return zzaon.NAME;
            }
            this.bfB.add(it.next());
            return b();
        }
        if (c instanceof zzamy) {
            return zzaon.BEGIN_OBJECT;
        }
        if (c instanceof zzams) {
            return zzaon.BEGIN_ARRAY;
        }
        if (!(c instanceof zzanb)) {
            if (c instanceof zzamx) {
                return zzaon.NULL;
            }
            if (c == bfA) {
                throw new IllegalStateException("JsonReader is closed");
            }
            throw new AssertionError();
        }
        zzanb zzanbVar = (zzanb) c;
        if (zzanbVar.zzczq()) {
            return zzaon.STRING;
        }
        if (zzanbVar.zzczo()) {
            return zzaon.BOOLEAN;
        }
        if (zzanbVar.zzczp()) {
            return zzaon.NUMBER;
        }
        throw new AssertionError();
    }

    @Override // com.google.android.gms.internal.zzaom
    public void beginArray() throws IOException {
        zza(zzaon.BEGIN_ARRAY);
        this.bfB.add(((zzams) c()).iterator());
    }

    @Override // com.google.android.gms.internal.zzaom
    public void beginObject() throws IOException {
        zza(zzaon.BEGIN_OBJECT);
        this.bfB.add(((zzamy) c()).entrySet().iterator());
    }

    @Override // com.google.android.gms.internal.zzaom, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.bfB.clear();
        this.bfB.add(bfA);
    }

    public void e() throws IOException {
        zza(zzaon.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) c()).next();
        this.bfB.add(entry.getValue());
        this.bfB.add(new zzanb((String) entry.getKey()));
    }

    @Override // com.google.android.gms.internal.zzaom
    public void endArray() throws IOException {
        zza(zzaon.END_ARRAY);
        d();
        d();
    }

    @Override // com.google.android.gms.internal.zzaom
    public void endObject() throws IOException {
        zza(zzaon.END_OBJECT);
        d();
        d();
    }

    @Override // com.google.android.gms.internal.zzaom
    public boolean hasNext() throws IOException {
        zzaon b2 = b();
        return (b2 == zzaon.END_OBJECT || b2 == zzaon.END_ARRAY) ? false : true;
    }

    @Override // com.google.android.gms.internal.zzaom
    public boolean nextBoolean() throws IOException {
        zza(zzaon.BOOLEAN);
        return ((zzanb) d()).getAsBoolean();
    }

    @Override // com.google.android.gms.internal.zzaom
    public double nextDouble() throws IOException {
        zzaon b2 = b();
        if (b2 != zzaon.NUMBER && b2 != zzaon.STRING) {
            String valueOf = String.valueOf(zzaon.NUMBER);
            String valueOf2 = String.valueOf(b2);
            throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 18 + String.valueOf(valueOf2).length()).append("Expected ").append(valueOf).append(" but was ").append(valueOf2).toString());
        }
        double asDouble = ((zzanb) c()).getAsDouble();
        if (!isLenient() && (Double.isNaN(asDouble) || Double.isInfinite(asDouble))) {
            throw new NumberFormatException(new StringBuilder(57).append("JSON forbids NaN and infinities: ").append(asDouble).toString());
        }
        d();
        return asDouble;
    }

    @Override // com.google.android.gms.internal.zzaom
    public int nextInt() throws IOException {
        zzaon b2 = b();
        if (b2 == zzaon.NUMBER || b2 == zzaon.STRING) {
            int asInt = ((zzanb) c()).getAsInt();
            d();
            return asInt;
        }
        String valueOf = String.valueOf(zzaon.NUMBER);
        String valueOf2 = String.valueOf(b2);
        throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 18 + String.valueOf(valueOf2).length()).append("Expected ").append(valueOf).append(" but was ").append(valueOf2).toString());
    }

    @Override // com.google.android.gms.internal.zzaom
    public long nextLong() throws IOException {
        zzaon b2 = b();
        if (b2 == zzaon.NUMBER || b2 == zzaon.STRING) {
            long asLong = ((zzanb) c()).getAsLong();
            d();
            return asLong;
        }
        String valueOf = String.valueOf(zzaon.NUMBER);
        String valueOf2 = String.valueOf(b2);
        throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 18 + String.valueOf(valueOf2).length()).append("Expected ").append(valueOf).append(" but was ").append(valueOf2).toString());
    }

    @Override // com.google.android.gms.internal.zzaom
    public String nextName() throws IOException {
        zza(zzaon.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) c()).next();
        this.bfB.add(entry.getValue());
        return (String) entry.getKey();
    }

    @Override // com.google.android.gms.internal.zzaom
    public void nextNull() throws IOException {
        zza(zzaon.NULL);
        d();
    }

    @Override // com.google.android.gms.internal.zzaom
    public String nextString() throws IOException {
        zzaon b2 = b();
        if (b2 == zzaon.STRING || b2 == zzaon.NUMBER) {
            return ((zzanb) d()).zzczf();
        }
        String valueOf = String.valueOf(zzaon.STRING);
        String valueOf2 = String.valueOf(b2);
        throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 18 + String.valueOf(valueOf2).length()).append("Expected ").append(valueOf).append(" but was ").append(valueOf2).toString());
    }

    @Override // com.google.android.gms.internal.zzaom
    public void skipValue() throws IOException {
        if (b() == zzaon.NAME) {
            nextName();
        } else {
            d();
        }
    }

    @Override // com.google.android.gms.internal.zzaom
    public String toString() {
        return getClass().getSimpleName();
    }
}
