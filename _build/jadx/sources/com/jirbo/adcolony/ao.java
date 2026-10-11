package com.jirbo.adcolony;

import com.jirbo.adcolony.a;
import com.jirbo.adcolony.b;
import com.jirbo.adcolony.u;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ao implements b.a {

    /* renamed from: a, reason: collision with root package name */
    af f3789a;
    int f;
    boolean h;
    boolean i;
    double j;

    /* renamed from: b, reason: collision with root package name */
    ArrayList<a> f3790b = new ArrayList<>();
    HashMap<String, a> c = new HashMap<>();
    int d = 1;
    u.b e = new u.b(2.0d);
    ArrayList<String> g = new ArrayList<>();

    ao(af afVar) {
        this.f3789a = afVar;
    }

    void a() {
        b();
        this.h = true;
    }

    void b() {
        al.f3721a.b((Object) "Loading media info");
        a.g b2 = ak.b(new ag("media_info.txt"));
        if (b2 == null) {
            b2 = new a.g();
            al.f3721a.b((Object) "No saved media info exists.");
        } else {
            al.f3721a.b((Object) "Loaded media info");
        }
        this.d = b2.f("next_file_number");
        if (this.d <= 0) {
            this.d = 1;
        }
        a.c b3 = b2.b("assets");
        if (b3 != null) {
            this.f3790b.clear();
            for (int i = 0; i < b3.f_(); i++) {
                a.g a2 = b3.a(i);
                a aVar = new a();
                aVar.f3791a = a2.d("url");
                aVar.f3792b = a2.d("filepath");
                aVar.c = a2.d("last_modified");
                aVar.f = a2.f("file_number");
                aVar.g = a2.f("size");
                aVar.e = a2.g("ready");
                aVar.h = a2.e("last_accessed");
                if (aVar.f > this.d) {
                    this.d = aVar.f + 1;
                }
                this.f3790b.add(aVar);
            }
        }
        c();
    }

    void c() {
        HashMap hashMap = new HashMap();
        String str = this.f3789a.f.c;
        String[] list = new File(str).list();
        String[] strArr = list == null ? new String[0] : list;
        for (String str2 : strArr) {
            String str3 = str + str2;
            hashMap.put(str3, str3);
        }
        HashMap hashMap2 = new HashMap();
        this.j = 0.0d;
        ArrayList<a> arrayList = new ArrayList<>();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.f3790b.size()) {
                break;
            }
            a aVar = this.f3790b.get(i2);
            if (!aVar.d && aVar.e) {
                String str4 = aVar.f3792b;
                if (hashMap.containsKey(str4) && new File(str4).length() == aVar.g) {
                    this.j += aVar.g;
                    arrayList.add(aVar);
                    hashMap2.put(str4, str4);
                }
            }
            i = i2 + 1;
        }
        this.f3790b = arrayList;
        for (String str5 : strArr) {
            String str6 = str + str5;
            if (!hashMap2.containsKey(str6)) {
                al.f3722b.a("Deleting unused media ").b((Object) str6);
                new File(str6).delete();
            }
        }
        this.c.clear();
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i4 >= this.f3790b.size()) {
                break;
            }
            a aVar2 = this.f3790b.get(i4);
            this.c.put(aVar2.f3791a, aVar2);
            i3 = i4 + 1;
        }
        double d = this.f3789a.f3702b.i.g;
        if (d > 0.0d) {
            al.f3722b.a("Media pool at ").a(this.j / 1048576.0d).a("/").a(d / 1048576.0d).b((Object) " MB");
        }
    }

    void d() {
        al.f3721a.b((Object) "Saving media info");
        a.c cVar = new a.c();
        for (int i = 0; i < this.f3790b.size(); i++) {
            a aVar = this.f3790b.get(i);
            if (aVar.e && !aVar.d) {
                a.g gVar = new a.g();
                gVar.b("url", aVar.f3791a);
                gVar.b("filepath", aVar.f3792b);
                gVar.b("last_modified", aVar.c);
                gVar.b("file_number", aVar.f);
                gVar.b("size", aVar.g);
                gVar.b("ready", aVar.e);
                gVar.b("last_accessed", aVar.h);
                cVar.a(gVar);
            }
        }
        a.g gVar2 = new a.g();
        gVar2.b("next_file_number", this.d);
        gVar2.a("assets", (a.i) cVar);
        ak.a(new ag("media_info.txt"), gVar2);
        this.i = false;
    }

    boolean a(String str) {
        if (str == null || str.equals("")) {
            return false;
        }
        a aVar = this.c.get(str);
        if (aVar == null) {
            this.f3789a.f3702b.i.a();
            return false;
        }
        if (aVar.e) {
            if (aVar.d) {
                return false;
            }
            aVar.h = u.b();
            return true;
        }
        if (!aVar.d) {
            this.f3789a.f3702b.i.a();
        }
        return false;
    }

    String b(String str) {
        a aVar = this.c.get(str);
        if (aVar == null || aVar.f3792b == null) {
            return "(file not found)";
        }
        aVar.h = u.b();
        this.i = true;
        this.e.a(2.0d);
        return aVar.f3792b;
    }

    void a(String str, String str2) {
        if (str != null && !str.equals("")) {
            if (str2 == null) {
                str2 = "";
            }
            a aVar = this.c.get(str);
            if (aVar != null) {
                aVar.h = u.b();
                if (aVar.c.equals(str2) && (aVar.e || aVar.d)) {
                    return;
                }
            } else {
                aVar = new a();
                aVar.f3791a = str;
                this.f3790b.add(aVar);
                aVar.h = u.b();
                this.c.put(str, aVar);
            }
            if (aVar.f == 0) {
                int h = h();
                String str3 = this.f3789a.f.c + a(str, h);
                aVar.f = h;
                aVar.f3792b = str3;
            }
            aVar.c = str2;
            aVar.d = true;
            aVar.e = false;
            al.f3721a.a("Adding ").a(str).b((Object) " to pending downloads.");
            this.g.add(str);
            this.i = true;
            this.e.a(2.0d);
            t.o = true;
        }
    }

    void e() {
        f();
        if (this.i && this.e.a()) {
            g();
            d();
        }
    }

    void f() {
        if (this.f3789a.f3702b.i.j.equals("wifi") && !aq.a()) {
            al.f3721a.b((Object) "Skipping asset download due to CACHE_FILTER_WIFI");
            return;
        }
        if (this.f3789a.f3702b.i.j.equals("cell") && !aq.b()) {
            al.f3721a.b((Object) "Skipping asset download due to CACHE_FILTER_CELL.");
            return;
        }
        while (this.f < 3 && this.g.size() > 0) {
            String remove = this.g.remove(0);
            a aVar = this.c.get(remove);
            if (aVar != null && (remove == null || remove.equals(""))) {
                al.d.b((Object) "[ADC ERROR] - NULL URL");
                new RuntimeException().printStackTrace();
            }
            if (aVar != null && remove != null && !remove.equals("")) {
                t.o = true;
                this.f++;
                new b(this.f3789a, remove, this, aVar.f3792b).a(aVar).a();
            }
        }
    }

    @Override // com.jirbo.adcolony.b.a
    public void a(b bVar) {
        a aVar = (a) bVar.e;
        this.f--;
        this.i = true;
        this.e.a(2.0d);
        aVar.e = bVar.i;
        aVar.d = false;
        if (bVar.i) {
            aVar.g = bVar.l;
            this.j += aVar.g;
            al.f3721a.a("Downloaded ").b((Object) aVar.f3791a);
        }
        t.f();
        f();
    }

    void g() {
        double d = this.f3789a.f3702b.i.g;
        if (d == 0.0d) {
            return;
        }
        while (this.j > this.f3789a.f3702b.i.g) {
            int i = 0;
            a aVar = null;
            while (i < this.f3790b.size()) {
                a aVar2 = this.f3790b.get(i);
                if (!aVar2.e || (aVar != null && aVar2.h >= aVar.h)) {
                    aVar2 = aVar;
                }
                i++;
                aVar = aVar2;
            }
            if (aVar != null && aVar.f3792b != null) {
                al.f3722b.a("Deleting ").b((Object) aVar.f3792b);
                aVar.e = false;
                new File(aVar.f3792b).delete();
                aVar.f3792b = null;
                this.j -= aVar.g;
                al.f3722b.a("Media pool now at ").a(this.j / 1048576.0d).a("/").a(d / 1048576.0d).b((Object) " MB");
                this.i = true;
                this.e.a(2.0d);
            } else {
                return;
            }
        }
    }

    int h() {
        this.i = true;
        this.e.a(2.0d);
        int i = this.d;
        this.d = i + 1;
        return i;
    }

    String a(String str, int i) {
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf == -1) {
            return i + "";
        }
        String substring = str.substring(lastIndexOf);
        if (substring.contains("/")) {
            substring = ".0";
        }
        return i + substring;
    }

    static class a {

        /* renamed from: a, reason: collision with root package name */
        String f3791a;

        /* renamed from: b, reason: collision with root package name */
        String f3792b;
        String c;
        boolean d;
        boolean e;
        int f;
        int g;
        double h;

        a() {
        }
    }
}
