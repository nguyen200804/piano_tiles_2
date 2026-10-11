package b.a;

import android.content.Context;
import android.content.SharedPreferences;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;

/* compiled from: Envelope.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class at {
    private String e;
    private int j;
    private int k;
    private byte[] l;
    private byte[] m;

    /* renamed from: a, reason: collision with root package name */
    private final byte[] f71a = {0, 0, 0, 0, 0, 0, 0, 0};

    /* renamed from: b, reason: collision with root package name */
    private final int f72b = 1;
    private final int c = 0;
    private String d = "1.0";
    private byte[] f = null;
    private byte[] g = null;
    private byte[] h = null;
    private int i = 0;
    private boolean n = false;

    private at(byte[] bArr, String str, byte[] bArr2) throws Exception {
        this.e = null;
        this.j = 0;
        this.k = 0;
        this.l = null;
        this.m = null;
        if (bArr == null || bArr.length == 0) {
            throw new Exception("entity is null or empty");
        }
        this.e = str;
        this.k = bArr.length;
        this.l = au.a(bArr);
        this.j = (int) (System.currentTimeMillis() / 1000);
        this.m = bArr2;
    }

    public static String a(Context context) {
        SharedPreferences a2 = cz.a(context);
        if (a2 == null) {
            return null;
        }
        return a2.getString(InAppPurchaseMetaData.KEY_SIGNATURE, null);
    }

    public void a(String str) {
        this.f = com.b.a.e.a(str);
    }

    public String a() {
        return com.b.a.e.a(this.f);
    }

    public void a(int i) {
        this.i = i;
    }

    public void a(boolean z) {
        this.n = z;
    }

    public static at a(Context context, String str, byte[] bArr) {
        try {
            String k = ao.k(context);
            String c = ao.c(context);
            SharedPreferences a2 = cz.a(context);
            String string = a2.getString(InAppPurchaseMetaData.KEY_SIGNATURE, null);
            int i = a2.getInt("serial", 1);
            at atVar = new at(bArr, str, (c + k).getBytes());
            atVar.a(string);
            atVar.a(i);
            atVar.b();
            a2.edit().putInt("serial", i + 1).putString(InAppPurchaseMetaData.KEY_SIGNATURE, atVar.a()).commit();
            return atVar;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static at b(Context context, String str, byte[] bArr) {
        try {
            String k = ao.k(context);
            String c = ao.c(context);
            SharedPreferences a2 = cz.a(context);
            String string = a2.getString(InAppPurchaseMetaData.KEY_SIGNATURE, null);
            int i = a2.getInt("serial", 1);
            at atVar = new at(bArr, str, (c + k).getBytes());
            atVar.a(true);
            atVar.a(string);
            atVar.a(i);
            atVar.b();
            a2.edit().putInt("serial", i + 1).putString(InAppPurchaseMetaData.KEY_SIGNATURE, atVar.a()).commit();
            return atVar;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void b() {
        if (this.f == null) {
            this.f = d();
        }
        if (this.n) {
            byte[] bArr = new byte[16];
            try {
                System.arraycopy(this.f, 1, bArr, 0, 16);
                this.l = com.b.a.e.a(this.l, bArr);
            } catch (Exception e) {
            }
        }
        this.g = a(this.f, this.j);
        this.h = e();
    }

    private byte[] a(byte[] bArr, int i) {
        byte[] b2 = com.b.a.e.b(this.m);
        byte[] b3 = com.b.a.e.b(this.l);
        int length = b2.length;
        byte[] bArr2 = new byte[length * 2];
        for (int i2 = 0; i2 < length; i2++) {
            bArr2[i2 * 2] = b3[i2];
            bArr2[(i2 * 2) + 1] = b2[i2];
        }
        for (int i3 = 0; i3 < 2; i3++) {
            bArr2[i3] = bArr[i3];
            bArr2[(bArr2.length - i3) - 1] = bArr[(bArr.length - i3) - 1];
        }
        byte[] bArr3 = {(byte) (i & 255), (byte) ((i >> 8) & 255), (byte) ((i >> 16) & 255), (byte) (i >>> 24)};
        for (int i4 = 0; i4 < bArr2.length; i4++) {
            bArr2[i4] = (byte) (bArr2[i4] ^ bArr3[i4 % 4]);
        }
        return bArr2;
    }

    private byte[] d() {
        return a(this.f71a, (int) (System.currentTimeMillis() / 1000));
    }

    private byte[] e() {
        return com.b.a.e.b((com.b.a.e.a(this.f) + this.i + this.j + this.k + com.b.a.e.a(this.g)).getBytes());
    }

    public byte[] c() {
        an anVar = new an();
        anVar.a(this.d);
        anVar.b(this.e);
        anVar.c(com.b.a.e.a(this.f));
        anVar.a(this.i);
        anVar.b(this.j);
        anVar.c(this.k);
        anVar.a(this.l);
        anVar.d(this.n ? 1 : 0);
        anVar.d(com.b.a.e.a(this.g));
        anVar.e(com.b.a.e.a(this.h));
        try {
            return new bd().a(anVar);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(String.format("version : %s\n", this.d));
        sb.append(String.format("address : %s\n", this.e));
        sb.append(String.format("signature : %s\n", com.b.a.e.a(this.f)));
        sb.append(String.format("serial : %s\n", Integer.valueOf(this.i)));
        sb.append(String.format("timestamp : %d\n", Integer.valueOf(this.j)));
        sb.append(String.format("length : %d\n", Integer.valueOf(this.k)));
        sb.append(String.format("guid : %s\n", com.b.a.e.a(this.g)));
        sb.append(String.format("checksum : %s ", com.b.a.e.a(this.h)));
        Object[] objArr = new Object[1];
        objArr[0] = Integer.valueOf(this.n ? 1 : 0);
        sb.append(String.format("codex : %d", objArr));
        return sb.toString();
    }
}
