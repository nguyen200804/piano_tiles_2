package b.a;

import android.content.Context;
import android.text.TextUtils;
import java.io.File;
import java.nio.ByteBuffer;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;

/* compiled from: ImprintHandler.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ch {

    /* renamed from: a, reason: collision with root package name */
    private static final byte[] f124a = "pbl0".getBytes();
    private static ch d;

    /* renamed from: b, reason: collision with root package name */
    private cy f125b;
    private z c = null;
    private Context e;

    ch(Context context) {
        this.e = context;
    }

    public static synchronized ch a(Context context) {
        ch chVar;
        synchronized (ch.class) {
            if (d == null) {
                d = new ch(context);
                d.b();
            }
            chVar = d;
        }
        return chVar;
    }

    public void a(cy cyVar) {
        this.f125b = cyVar;
    }

    public String a(z zVar) {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry entry : new TreeMap(zVar.a()).entrySet()) {
            sb.append((String) entry.getKey());
            sb.append(((aa) entry.getValue()).a());
            sb.append(((aa) entry.getValue()).c());
            sb.append(((aa) entry.getValue()).e());
        }
        sb.append(zVar.f209b);
        return av.a(sb.toString()).toLowerCase(Locale.US);
    }

    private boolean c(z zVar) {
        if (!zVar.e().equals(a(zVar))) {
            return false;
        }
        for (aa aaVar : zVar.a().values()) {
            byte[] a2 = com.b.a.e.a(aaVar.e());
            byte[] a3 = a(aaVar);
            for (int i = 0; i < 4; i++) {
                if (a2[i] != a3[i]) {
                    return false;
                }
            }
        }
        return true;
    }

    public byte[] a(aa aaVar) {
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(null);
        allocate.putLong(aaVar.c());
        byte[] array = allocate.array();
        byte[] bArr = f124a;
        byte[] bArr2 = new byte[4];
        for (int i = 0; i < 4; i++) {
            bArr2[i] = (byte) (array[i] ^ bArr[i]);
        }
        return bArr2;
    }

    public void b(z zVar) {
        if (zVar != null && c(zVar)) {
            synchronized (this) {
                z zVar2 = this.c;
                if (zVar2 != null) {
                    zVar = a(zVar2, zVar);
                }
                this.c = zVar;
            }
            if (this.c != null) {
                d();
            }
        }
    }

    private z a(z zVar, z zVar2) {
        if (zVar2 != null) {
            Map<String, aa> a2 = zVar.a();
            for (Map.Entry<String, aa> entry : zVar2.a().entrySet()) {
                if (entry.getValue().b()) {
                    a2.put(entry.getKey(), entry.getValue());
                } else {
                    a2.remove(entry.getKey());
                }
            }
            zVar.a(zVar2.c());
            zVar.a(a(zVar));
        }
        return zVar;
    }

    private void d() {
        if (this.f125b != null) {
            int a2 = a("defcon");
            if (a2 != -1) {
                this.f125b.a(a2);
                com.b.a.k.a(this.e).a(a2);
            }
            int a3 = a("latent");
            if (a3 != -1) {
                int i = a3 * 1000;
                this.f125b.b(i);
                com.b.a.k.a(this.e).b(i);
            }
            int a4 = a("codex");
            if (a4 == 0 || a4 == 1 || a4 == -1) {
                this.f125b.c(a4);
                com.b.a.k.a(this.e).c(a4);
            }
        }
    }

    private int a(String str) {
        z zVar = this.c;
        if (zVar == null || !zVar.b()) {
            return -1;
        }
        aa aaVar = zVar.a().get(str);
        if (aaVar == null || TextUtils.isEmpty(aaVar.a())) {
            return -1;
        }
        try {
            return Integer.parseInt(aaVar.a().trim());
        } catch (Exception e) {
            return -1;
        }
    }

    public synchronized z a() {
        return this.c;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0026 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:18:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b() {
        /*
            r4 = this;
            r2 = 0
            java.io.File r0 = new java.io.File
            android.content.Context r1 = r4.e
            java.io.File r1 = r1.getFilesDir()
            java.lang.String r3 = ".imprint"
            r0.<init>(r1, r3)
            boolean r0 = r0.exists()
            if (r0 != 0) goto L15
        L14:
            return
        L15:
            android.content.Context r0 = r4.e     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L44
            java.lang.String r1 = ".imprint"
            java.io.FileInputStream r1 = r0.openFileInput(r1)     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> L44
            byte[] r2 = b.a.av.b(r1)     // Catch: java.lang.Throwable -> L49 java.lang.Exception -> L4c
            b.a.av.c(r1)
        L24:
            if (r2 == 0) goto L14
            b.a.z r0 = new b.a.z     // Catch: java.lang.Exception -> L36
            r0.<init>()     // Catch: java.lang.Exception -> L36
            b.a.ba r1 = new b.a.ba     // Catch: java.lang.Exception -> L36
            r1.<init>()     // Catch: java.lang.Exception -> L36
            r1.a(r0, r2)     // Catch: java.lang.Exception -> L36
            r4.c = r0     // Catch: java.lang.Exception -> L36
            goto L14
        L36:
            r0 = move-exception
            r0.printStackTrace()
            goto L14
        L3b:
            r0 = move-exception
            r1 = r2
        L3d:
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L49
            b.a.av.c(r1)
            goto L24
        L44:
            r0 = move-exception
        L45:
            b.a.av.c(r2)
            throw r0
        L49:
            r0 = move-exception
            r2 = r1
            goto L45
        L4c:
            r0 = move-exception
            goto L3d
        */
        throw new UnsupportedOperationException("Method not decompiled: b.a.ch.b():void");
    }

    public void c() {
        if (this.c != null) {
            try {
                av.a(new File(this.e.getFilesDir(), ".imprint"), new bd().a(this.c));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
