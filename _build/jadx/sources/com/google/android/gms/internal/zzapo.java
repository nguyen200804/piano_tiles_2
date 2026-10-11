package com.google.android.gms.internal;

import android.support.v4.media.TransportMediator;
import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzapo {
    private final ByteBuffer bjw;

    public static class zza extends IOException {
        zza(int i, int i2) {
            super(new StringBuilder(108).append("CodedOutputStream was writing to a flat byte array and ran out of space (pos ").append(i).append(" limit ").append(i2).append(").").toString());
        }
    }

    private zzapo(ByteBuffer byteBuffer) {
        this.bjw = byteBuffer;
        this.bjw.order(ByteOrder.LITTLE_ENDIAN);
    }

    private zzapo(byte[] bArr, int i, int i2) {
        this(ByteBuffer.wrap(bArr, i, i2));
    }

    private static int zza(CharSequence charSequence, int i) {
        int length = charSequence.length();
        int i2 = 0;
        int i3 = i;
        while (i3 < length) {
            char charAt = charSequence.charAt(i3);
            if (charAt < 2048) {
                i2 += (127 - charAt) >>> 31;
            } else {
                i2 += 2;
                if (55296 <= charAt && charAt <= 57343) {
                    if (Character.codePointAt(charSequence, i3) < 65536) {
                        throw new IllegalArgumentException(new StringBuilder(39).append("Unpaired surrogate at index ").append(i3).toString());
                    }
                    i3++;
                }
            }
            i3++;
        }
        return i2;
    }

    private static int zza(CharSequence charSequence, byte[] bArr, int i, int i2) {
        int i3;
        int length = charSequence.length();
        int i4 = 0;
        int i5 = i + i2;
        while (i4 < length && i4 + i < i5) {
            char charAt = charSequence.charAt(i4);
            if (charAt >= 128) {
                break;
            }
            bArr[i + i4] = (byte) charAt;
            i4++;
        }
        if (i4 == length) {
            return i + length;
        }
        int i6 = i + i4;
        while (i4 < length) {
            char charAt2 = charSequence.charAt(i4);
            if (charAt2 < 128 && i6 < i5) {
                i3 = i6 + 1;
                bArr[i6] = (byte) charAt2;
            } else if (charAt2 < 2048 && i6 <= i5 - 2) {
                int i7 = i6 + 1;
                bArr[i6] = (byte) ((charAt2 >>> 6) | 960);
                i3 = i7 + 1;
                bArr[i7] = (byte) ((charAt2 & '?') | 128);
            } else {
                if ((charAt2 >= 55296 && 57343 >= charAt2) || i6 > i5 - 3) {
                    if (i6 > i5 - 4) {
                        throw new ArrayIndexOutOfBoundsException(new StringBuilder(37).append("Failed writing ").append(charAt2).append(" at index ").append(i6).toString());
                    }
                    if (i4 + 1 != charSequence.length()) {
                        i4++;
                        char charAt3 = charSequence.charAt(i4);
                        if (Character.isSurrogatePair(charAt2, charAt3)) {
                            int codePoint = Character.toCodePoint(charAt2, charAt3);
                            int i8 = i6 + 1;
                            bArr[i6] = (byte) ((codePoint >>> 18) | 240);
                            int i9 = i8 + 1;
                            bArr[i8] = (byte) (((codePoint >>> 12) & 63) | 128);
                            int i10 = i9 + 1;
                            bArr[i9] = (byte) (((codePoint >>> 6) & 63) | 128);
                            i3 = i10 + 1;
                            bArr[i10] = (byte) ((codePoint & 63) | 128);
                        }
                    }
                    throw new IllegalArgumentException(new StringBuilder(39).append("Unpaired surrogate at index ").append(i4 - 1).toString());
                }
                int i11 = i6 + 1;
                bArr[i6] = (byte) ((charAt2 >>> '\f') | 480);
                int i12 = i11 + 1;
                bArr[i11] = (byte) (((charAt2 >>> 6) & 63) | 128);
                i3 = i12 + 1;
                bArr[i12] = (byte) ((charAt2 & '?') | 128);
            }
            i4++;
            i6 = i3;
        }
        return i6;
    }

    private static void zza(CharSequence charSequence, ByteBuffer byteBuffer) {
        if (byteBuffer.isReadOnly()) {
            throw new ReadOnlyBufferException();
        }
        if (!byteBuffer.hasArray()) {
            zzb(charSequence, byteBuffer);
            return;
        }
        try {
            byteBuffer.position(zza(charSequence, byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining()) - byteBuffer.arrayOffset());
        } catch (ArrayIndexOutOfBoundsException e) {
            BufferOverflowException bufferOverflowException = new BufferOverflowException();
            bufferOverflowException.initCause(e);
            throw bufferOverflowException;
        }
    }

    public static int zzafx(int i) {
        if (i >= 0) {
            return zzagc(i);
        }
        return 10;
    }

    public static int zzafy(int i) {
        return zzagc(zzage(i));
    }

    public static int zzag(int i, int i2) {
        return zzaga(i) + zzafx(i2);
    }

    public static int zzaga(int i) {
        return zzagc(zzapy.zzaj(i, 0));
    }

    public static int zzagc(int i) {
        if ((i & (-128)) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return ((-268435456) & i) == 0 ? 4 : 5;
    }

    public static int zzage(int i) {
        return (i << 1) ^ (i >> 31);
    }

    public static int zzah(int i, int i2) {
        return zzaga(i) + zzafy(i2);
    }

    public static int zzb(int i, double d) {
        return zzaga(i) + zzp(d);
    }

    public static int zzb(int i, zzapv zzapvVar) {
        return (zzaga(i) * 2) + zzd(zzapvVar);
    }

    public static int zzb(int i, byte[] bArr) {
        return zzaga(i) + zzbg(bArr);
    }

    private static void zzb(CharSequence charSequence, ByteBuffer byteBuffer) {
        int length = charSequence.length();
        int i = 0;
        while (i < length) {
            char charAt = charSequence.charAt(i);
            if (charAt < 128) {
                byteBuffer.put((byte) charAt);
            } else if (charAt < 2048) {
                byteBuffer.put((byte) ((charAt >>> 6) | 960));
                byteBuffer.put((byte) ((charAt & '?') | 128));
            } else {
                if (charAt >= 55296 && 57343 >= charAt) {
                    if (i + 1 != charSequence.length()) {
                        i++;
                        char charAt2 = charSequence.charAt(i);
                        if (Character.isSurrogatePair(charAt, charAt2)) {
                            int codePoint = Character.toCodePoint(charAt, charAt2);
                            byteBuffer.put((byte) ((codePoint >>> 18) | 240));
                            byteBuffer.put((byte) (((codePoint >>> 12) & 63) | 128));
                            byteBuffer.put((byte) (((codePoint >>> 6) & 63) | 128));
                            byteBuffer.put((byte) ((codePoint & 63) | 128));
                        }
                    }
                    throw new IllegalArgumentException(new StringBuilder(39).append("Unpaired surrogate at index ").append(i - 1).toString());
                }
                byteBuffer.put((byte) ((charAt >>> '\f') | 480));
                byteBuffer.put((byte) (((charAt >>> 6) & 63) | 128));
                byteBuffer.put((byte) ((charAt & '?') | 128));
            }
            i++;
        }
    }

    public static zzapo zzbe(byte[] bArr) {
        return zzc(bArr, 0, bArr.length);
    }

    public static int zzbg(byte[] bArr) {
        return zzagc(bArr.length) + bArr.length;
    }

    public static int zzc(int i, zzapv zzapvVar) {
        return zzaga(i) + zze(zzapvVar);
    }

    public static zzapo zzc(byte[] bArr, int i, int i2) {
        return new zzapo(bArr, i, i2);
    }

    public static int zzcx(long j) {
        return zzdc(j);
    }

    public static int zzcy(long j) {
        return zzdc(j);
    }

    public static int zzcz(long j) {
        return 8;
    }

    public static int zzd(int i, float f) {
        return zzaga(i) + zzl(f);
    }

    public static int zzd(zzapv zzapvVar) {
        return zzapvVar.aM();
    }

    private static int zzd(CharSequence charSequence) {
        int length = charSequence.length();
        int i = 0;
        while (i < length && charSequence.charAt(i) < 128) {
            i++;
        }
        int i2 = i;
        int i3 = length;
        while (true) {
            if (i2 < length) {
                char charAt = charSequence.charAt(i2);
                if (charAt >= 2048) {
                    i3 += zza(charSequence, i2);
                    break;
                }
                i2++;
                i3 = ((127 - charAt) >>> 31) + i3;
            } else {
                break;
            }
        }
        if (i3 >= length) {
            return i3;
        }
        throw new IllegalArgumentException(new StringBuilder(54).append("UTF-8 length does not fit in int: ").append(i3 + 4294967296L).toString());
    }

    public static int zzda(long j) {
        return zzdc(zzde(j));
    }

    public static int zzdc(long j) {
        if (((-128) & j) == 0) {
            return 1;
        }
        if (((-16384) & j) == 0) {
            return 2;
        }
        if (((-2097152) & j) == 0) {
            return 3;
        }
        if (((-268435456) & j) == 0) {
            return 4;
        }
        if (((-34359738368L) & j) == 0) {
            return 5;
        }
        if (((-4398046511104L) & j) == 0) {
            return 6;
        }
        if (((-562949953421312L) & j) == 0) {
            return 7;
        }
        if (((-72057594037927936L) & j) == 0) {
            return 8;
        }
        return (Long.MIN_VALUE & j) == 0 ? 9 : 10;
    }

    public static long zzde(long j) {
        return (j << 1) ^ (j >> 63);
    }

    public static int zzdg(boolean z) {
        return 1;
    }

    public static int zze(int i, long j) {
        return zzaga(i) + zzcy(j);
    }

    public static int zze(zzapv zzapvVar) {
        int aM = zzapvVar.aM();
        return aM + zzagc(aM);
    }

    public static int zzf(int i, long j) {
        return zzaga(i) + zzcz(j);
    }

    public static int zzg(int i, long j) {
        return zzaga(i) + zzda(j);
    }

    public static int zzk(int i, boolean z) {
        return zzaga(i) + zzdg(z);
    }

    public static int zzl(float f) {
        return 4;
    }

    public static int zzp(double d) {
        return 8;
    }

    public static int zzs(int i, String str) {
        return zzaga(i) + zztx(str);
    }

    public static int zztx(String str) {
        int zzd = zzd(str);
        return zzd + zzagc(zzd);
    }

    public int ay() {
        return this.bjw.remaining();
    }

    public void az() {
        if (ay() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public void zza(int i, double d) throws IOException {
        zzai(i, 1);
        zzo(d);
    }

    public void zza(int i, long j) throws IOException {
        zzai(i, 0);
        zzct(j);
    }

    public void zza(int i, zzapv zzapvVar) throws IOException {
        zzai(i, 2);
        zzc(zzapvVar);
    }

    public void zza(int i, byte[] bArr) throws IOException {
        zzai(i, 2);
        zzbf(bArr);
    }

    public void zzae(int i, int i2) throws IOException {
        zzai(i, 0);
        zzafv(i2);
    }

    public void zzaf(int i, int i2) throws IOException {
        zzai(i, 0);
        zzafw(i2);
    }

    public void zzafv(int i) throws IOException {
        if (i >= 0) {
            zzagb(i);
        } else {
            zzdb(i);
        }
    }

    public void zzafw(int i) throws IOException {
        zzagb(zzage(i));
    }

    public void zzafz(int i) throws IOException {
        zzc((byte) i);
    }

    public void zzagb(int i) throws IOException {
        while ((i & (-128)) != 0) {
            zzafz((i & TransportMediator.KEYCODE_MEDIA_PAUSE) | 128);
            i >>>= 7;
        }
        zzafz(i);
    }

    public void zzagd(int i) throws IOException {
        if (this.bjw.remaining() < 4) {
            throw new zza(this.bjw.position(), this.bjw.limit());
        }
        this.bjw.putInt(i);
    }

    public void zzai(int i, int i2) throws IOException {
        zzagb(zzapy.zzaj(i, i2));
    }

    public void zzb(int i, long j) throws IOException {
        zzai(i, 0);
        zzcu(j);
    }

    public void zzb(zzapv zzapvVar) throws IOException {
        zzapvVar.zza(this);
    }

    public void zzbf(byte[] bArr) throws IOException {
        zzagb(bArr.length);
        zzbh(bArr);
    }

    public void zzbh(byte[] bArr) throws IOException {
        zzd(bArr, 0, bArr.length);
    }

    public void zzc(byte b2) throws IOException {
        if (!this.bjw.hasRemaining()) {
            throw new zza(this.bjw.position(), this.bjw.limit());
        }
        this.bjw.put(b2);
    }

    public void zzc(int i, float f) throws IOException {
        zzai(i, 5);
        zzk(f);
    }

    public void zzc(int i, long j) throws IOException {
        zzai(i, 1);
        zzcv(j);
    }

    public void zzc(zzapv zzapvVar) throws IOException {
        zzagb(zzapvVar.aL());
        zzapvVar.zza(this);
    }

    public void zzct(long j) throws IOException {
        zzdb(j);
    }

    public void zzcu(long j) throws IOException {
        zzdb(j);
    }

    public void zzcv(long j) throws IOException {
        zzdd(j);
    }

    public void zzcw(long j) throws IOException {
        zzdb(zzde(j));
    }

    public void zzd(int i, long j) throws IOException {
        zzai(i, 0);
        zzcw(j);
    }

    public void zzd(byte[] bArr, int i, int i2) throws IOException {
        if (this.bjw.remaining() < i2) {
            throw new zza(this.bjw.position(), this.bjw.limit());
        }
        this.bjw.put(bArr, i, i2);
    }

    public void zzdb(long j) throws IOException {
        while (((-128) & j) != 0) {
            zzafz((((int) j) & TransportMediator.KEYCODE_MEDIA_PAUSE) | 128);
            j >>>= 7;
        }
        zzafz((int) j);
    }

    public void zzdd(long j) throws IOException {
        if (this.bjw.remaining() < 8) {
            throw new zza(this.bjw.position(), this.bjw.limit());
        }
        this.bjw.putLong(j);
    }

    public void zzdf(boolean z) throws IOException {
        zzafz(z ? 1 : 0);
    }

    public void zzj(int i, boolean z) throws IOException {
        zzai(i, 0);
        zzdf(z);
    }

    public void zzk(float f) throws IOException {
        zzagd(Float.floatToIntBits(f));
    }

    public void zzo(double d) throws IOException {
        zzdd(Double.doubleToLongBits(d));
    }

    public void zzr(int i, String str) throws IOException {
        zzai(i, 2);
        zztw(str);
    }

    public void zztw(String str) throws IOException {
        try {
            int zzagc = zzagc(str.length());
            if (zzagc != zzagc(str.length() * 3)) {
                zzagb(zzd(str));
                zza(str, this.bjw);
                return;
            }
            int position = this.bjw.position();
            if (this.bjw.remaining() < zzagc) {
                throw new zza(zzagc + position, this.bjw.limit());
            }
            this.bjw.position(position + zzagc);
            zza(str, this.bjw);
            int position2 = this.bjw.position();
            this.bjw.position(position);
            zzagb((position2 - position) - zzagc);
            this.bjw.position(position2);
        } catch (BufferOverflowException e) {
            zza zzaVar = new zza(this.bjw.position(), this.bjw.limit());
            zzaVar.initCause(e);
            throw zzaVar;
        }
    }
}
