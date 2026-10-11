package com.google.android.gms.internal;

import android.support.v4.media.session.PlaybackStateCompat;
import com.google.android.gms.internal.zzae;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class zzak {
    static boolean zzxe = false;
    private static MessageDigest zzxf = null;
    private static final Object zzxg = new Object();
    private static final Object zzxh = new Object();
    static CountDownLatch zzxi = new CountDownLatch(1);

    private static final class zza implements Runnable {
        private zza() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                MessageDigest unused = zzak.zzxf = MessageDigest.getInstance("MD5");
            } catch (NoSuchAlgorithmException e) {
            } finally {
                zzak.zzxi.countDown();
            }
        }
    }

    private static int zza(boolean z) {
        return z ? 239 : 255;
    }

    static String zza(zzae.zza zzaVar, String str, boolean z) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        return zza(zzapv.zzf(zzaVar), str, z);
    }

    static String zza(String str, String str2, boolean z) {
        byte[] zzb = zzb(str, str2, z);
        return zzb != null ? zzaj.zza(zzb, true) : Integer.toString(7);
    }

    static String zza(byte[] bArr, String str, boolean z) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        return zzaj.zza(z ? zzb(bArr, str) : zza(bArr, str), true);
    }

    static Vector<byte[]> zza(byte[] bArr, int i) {
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        int length = ((bArr.length + i) - 1) / i;
        Vector<byte[]> vector = new Vector<>();
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i2 * i;
            try {
                vector.add(Arrays.copyOfRange(bArr, i3, bArr.length - i3 > i ? i3 + i : bArr.length));
            } catch (IndexOutOfBoundsException e) {
                return null;
            }
        }
        return vector;
    }

    static void zza(String str, byte[] bArr) throws UnsupportedEncodingException {
        if (str.length() > 32) {
            str = str.substring(0, 32);
        }
        new zzaoq(str.getBytes("UTF-8")).zzax(bArr);
    }

    static byte[] zza(byte[] bArr, String str) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        Vector<byte[]> zza2 = zza(bArr, 255);
        if (zza2 == null || zza2.size() == 0) {
            return zzb(zzapv.zzf(zzb(PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM)), str);
        }
        zzae.zzf zzfVar = new zzae.zzf();
        zzfVar.zzey = new byte[zza2.size()][];
        Iterator<byte[]> it = zza2.iterator();
        int i = 0;
        while (it.hasNext()) {
            zzfVar.zzey[i] = zzb(it.next(), str, false);
            i++;
        }
        zzfVar.zzet = zzg(bArr);
        return zzapv.zzf(zzfVar);
    }

    static void zzar() {
        synchronized (zzxh) {
            if (!zzxe) {
                zzxe = true;
                new Thread(new zza()).start();
            }
        }
    }

    static MessageDigest zzas() {
        zzar();
        boolean z = false;
        try {
            z = zzxi.await(2L, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
        }
        if (z && zzxf != null) {
            return zzxf;
        }
        return null;
    }

    static zzae.zza zzb(long j) {
        zzae.zza zzaVar = new zzae.zza();
        zzaVar.zzdl = Long.valueOf(j);
        return zzaVar;
    }

    static byte[] zzb(String str, String str2, boolean z) {
        zzae.zzc zzcVar = new zzae.zzc();
        try {
            zzcVar.zzer = str.length() < 3 ? str.getBytes("ISO-8859-1") : zzaj.zza(str, true);
            zzcVar.zzes = z ? str2.length() < 3 ? str2.getBytes("ISO-8859-1") : zzaj.zza(str2, true) : (str2 == null || str2.length() == 0) ? Integer.toString(5).getBytes("ISO-8859-1") : zzaj.zza(zza(str2.getBytes("ISO-8859-1"), (String) null, true), true);
            return zzapv.zzf(zzcVar);
        } catch (UnsupportedEncodingException | NoSuchAlgorithmException e) {
            return null;
        }
    }

    static byte[] zzb(byte[] bArr, String str) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        return zzb(bArr, str, true);
    }

    private static byte[] zzb(byte[] bArr, String str, boolean z) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        byte[] array;
        int zza2 = zza(z);
        if (bArr.length > zza2) {
            bArr = zzapv.zzf(zzb(PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM));
        }
        if (bArr.length < zza2) {
            byte[] bArr2 = new byte[zza2 - bArr.length];
            new SecureRandom().nextBytes(bArr2);
            array = ByteBuffer.allocate(zza2 + 1).put((byte) bArr.length).put(bArr).put(bArr2).array();
        } else {
            array = ByteBuffer.allocate(zza2 + 1).put((byte) bArr.length).put(bArr).array();
        }
        if (z) {
            array = ByteBuffer.allocate(256).put(zzg(array)).put(array).array();
        }
        byte[] bArr3 = new byte[256];
        new zzal().zzb(array, bArr3);
        if (str != null && str.length() > 0) {
            zza(str, bArr3);
        }
        return bArr3;
    }

    public static byte[] zzg(byte[] bArr) throws NoSuchAlgorithmException {
        byte[] digest;
        synchronized (zzxg) {
            MessageDigest zzas = zzas();
            if (zzas == null) {
                throw new NoSuchAlgorithmException("Cannot compute hash");
            }
            zzas.reset();
            zzas.update(bArr);
            digest = zzxf.digest();
        }
        return digest;
    }
}
