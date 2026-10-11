package com.google.android.gms.internal;

import java.io.EOFException;
import java.io.IOException;
import java.io.Writer;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzanw {

    private static final class zza extends Writer {
        private final Appendable bfn;
        private final C0149zza bfo;

        /* renamed from: com.google.android.gms.internal.zzanw$zza$zza, reason: collision with other inner class name */
        static class C0149zza implements CharSequence {
            char[] bfp;

            C0149zza() {
            }

            @Override // java.lang.CharSequence
            public char charAt(int i) {
                return this.bfp[i];
            }

            @Override // java.lang.CharSequence
            public int length() {
                return this.bfp.length;
            }

            @Override // java.lang.CharSequence
            public CharSequence subSequence(int i, int i2) {
                return new String(this.bfp, i, i2 - i);
            }
        }

        private zza(Appendable appendable) {
            this.bfo = new C0149zza();
            this.bfn = appendable;
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
        }

        @Override // java.io.Writer
        public void write(int i) throws IOException {
            this.bfn.append((char) i);
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) throws IOException {
            this.bfo.bfp = cArr;
            this.bfn.append(this.bfo, i, i + i2);
        }
    }

    public static Writer zza(Appendable appendable) {
        return appendable instanceof Writer ? (Writer) appendable : new zza(appendable);
    }

    public static void zzb(zzamv zzamvVar, zzaoo zzaooVar) throws IOException {
        zzaok.bgM.zza(zzaooVar, zzamvVar);
    }

    public static zzamv zzh(zzaom zzaomVar) throws zzamz {
        boolean z = true;
        try {
            zzaomVar.b();
            z = false;
            return zzaok.bgM.zzb(zzaomVar);
        } catch (zzaop e) {
            throw new zzane(e);
        } catch (EOFException e2) {
            if (z) {
                return zzamx.bei;
            }
            throw new zzane(e2);
        } catch (IOException e3) {
            throw new zzamw(e3);
        } catch (NumberFormatException e4) {
            throw new zzane(e4);
        }
    }
}
