package com.jirbo.adcolony;

import java.io.File;
import java.util.List;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class b extends aj implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    af f3812a;

    /* renamed from: b, reason: collision with root package name */
    a f3813b;
    String c;
    File d;
    Object e;
    String f;
    String g;
    boolean h;
    boolean i;
    boolean j;
    Map<String, List<String>> k;
    int l;
    String m;

    public interface a {
        void a(b bVar);
    }

    b(af afVar, String str, a aVar) {
        this(afVar, str, aVar, null);
    }

    b(af afVar, String str, a aVar, String str2) {
        super(afVar, false);
        this.c = "";
        this.c = str;
        if (str == null) {
            this.c = "";
        }
        this.f3813b = aVar;
        if (str2 != null) {
            this.d = new File(str2);
        }
    }

    b a(Object obj) {
        this.e = obj;
        return this;
    }

    b a(String str, String str2) {
        this.f = str;
        this.g = str2;
        return this;
    }

    public void a() {
        ay.a(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:141:0x01e5, code lost:
    
        r11.i = true;
        com.jirbo.adcolony.t.a(r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:?, code lost:
    
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:66:0x02fc  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00f0 A[EDGE_INSN: B:74:0x00f0->B:75:0x00f0 BREAK  A[LOOP:0: B:2:0x0006->B:71:0x0306], SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            Method dump skipped, instructions count: 806
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.jirbo.adcolony.b.run():void");
    }

    @Override // com.jirbo.adcolony.aj
    void b() {
        this.f3813b.a(this);
    }
}
