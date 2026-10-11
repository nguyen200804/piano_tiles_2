package com.jirbo.adcolony;

import android.support.v4.view.MotionEventCompat;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    static i f3686a = new h();

    /* renamed from: b, reason: collision with root package name */
    static i f3687b = new C0206a();
    static i c = new d();

    static class i {
        i() {
        }

        boolean l() {
            return false;
        }

        boolean f() {
            return false;
        }

        boolean g_() {
            return false;
        }

        boolean n() {
            return i() || c();
        }

        boolean i() {
            return false;
        }

        boolean c() {
            return false;
        }

        boolean a() {
            return false;
        }

        boolean g() {
            return true;
        }

        g m() {
            return null;
        }

        c h() {
            return null;
        }

        String b() {
            return o();
        }

        double d() {
            return 0.0d;
        }

        int e() {
            return 0;
        }

        boolean k() {
            return false;
        }

        public String toString() {
            return o();
        }

        String o() {
            ax axVar = new ax();
            a(axVar);
            return axVar.toString();
        }

        void a(y yVar) {
        }

        void a(y yVar, String str) {
            if (str != null) {
                yVar.b('\"');
                int length = str.length();
                for (int i = 0; i < length; i++) {
                    char charAt = str.charAt(i);
                    switch (charAt) {
                        case '\b':
                            yVar.a("\\b");
                            break;
                        case '\t':
                            yVar.a("\\t");
                            break;
                        case '\n':
                            yVar.a("\\n");
                            break;
                        case '\f':
                            yVar.a("\\f");
                            break;
                        case '\r':
                            yVar.a("\\r");
                            break;
                        case MotionEventCompat.AXIS_GENERIC_3 /* 34 */:
                            yVar.a("\\\"");
                            break;
                        case MotionEventCompat.AXIS_GENERIC_16 /* 47 */:
                            yVar.a("\\/");
                            break;
                        case '\\':
                            yVar.a("\\\\");
                            break;
                        default:
                            if (charAt >= ' ' && charAt <= '~') {
                                yVar.b(charAt);
                                break;
                            } else {
                                yVar.a("\\u");
                                int i2 = charAt;
                                for (int i3 = 0; i3 < 4; i3++) {
                                    int i4 = (i2 >> 12) & 15;
                                    i2 <<= 4;
                                    if (i4 <= 9) {
                                        yVar.a(i4);
                                    } else {
                                        yVar.b((char) ((i4 - 10) + 97));
                                    }
                                }
                                break;
                            }
                    }
                }
                yVar.b('\"');
            }
        }
    }

    static class d extends i {
        d() {
        }

        @Override // com.jirbo.adcolony.a.i
        String b() {
            return "null";
        }

        @Override // com.jirbo.adcolony.a.i
        void a(y yVar) {
            yVar.a("null");
        }
    }

    static class h extends i {
        h() {
        }

        @Override // com.jirbo.adcolony.a.i
        boolean a() {
            return true;
        }

        @Override // com.jirbo.adcolony.a.i
        String b() {
            return "true";
        }

        @Override // com.jirbo.adcolony.a.i
        double d() {
            return 1.0d;
        }

        @Override // com.jirbo.adcolony.a.i
        int e() {
            return 1;
        }

        @Override // com.jirbo.adcolony.a.i
        boolean k() {
            return true;
        }

        @Override // com.jirbo.adcolony.a.i
        void a(y yVar) {
            yVar.a("true");
        }
    }

    /* renamed from: com.jirbo.adcolony.a$a, reason: collision with other inner class name */
    static class C0206a extends i {
        C0206a() {
        }

        @Override // com.jirbo.adcolony.a.i
        boolean a() {
            return true;
        }

        @Override // com.jirbo.adcolony.a.i
        String b() {
            return "false";
        }

        @Override // com.jirbo.adcolony.a.i
        void a(y yVar) {
            yVar.a("false");
        }
    }

    static class g extends i implements Serializable {

        /* renamed from: a, reason: collision with root package name */
        HashMap<String, i> f3692a = new HashMap<>();

        /* renamed from: b, reason: collision with root package name */
        ArrayList<String> f3693b = new ArrayList<>();

        g() {
        }

        @Override // com.jirbo.adcolony.a.i
        boolean l() {
            return true;
        }

        @Override // com.jirbo.adcolony.a.i
        boolean g() {
            return this.f3692a.size() < 0 || (this.f3692a.size() == 1 && this.f3692a.get(this.f3693b.get(0)).g());
        }

        @Override // com.jirbo.adcolony.a.i
        g m() {
            return this;
        }

        @Override // com.jirbo.adcolony.a.i
        void a(y yVar) {
            boolean z;
            int size = this.f3693b.size();
            if (size == 0) {
                yVar.a("{}");
                return;
            }
            if (size == 1 && this.f3692a.get(this.f3693b.get(0)).g()) {
                yVar.a("{");
                String str = this.f3693b.get(0);
                i iVar = this.f3692a.get(str);
                a(yVar, str);
                yVar.b(':');
                iVar.a(yVar);
                yVar.a("}");
                return;
            }
            yVar.b("{");
            yVar.f3879b += 2;
            int i = 0;
            boolean z2 = true;
            while (i < size) {
                if (z2) {
                    z = false;
                } else {
                    yVar.c(',');
                    z = z2;
                }
                String str2 = this.f3693b.get(i);
                i iVar2 = this.f3692a.get(str2);
                a(yVar, str2);
                yVar.b(':');
                if (!iVar2.g()) {
                    yVar.b();
                }
                iVar2.a(yVar);
                i++;
                z2 = z;
            }
            yVar.b();
            yVar.f3879b -= 2;
            yVar.a("}");
        }

        g a(String str, g gVar) {
            i iVar = this.f3692a.get(str);
            return (iVar == null || !iVar.l()) ? gVar : iVar.m();
        }

        c a(String str, c cVar) {
            i iVar = this.f3692a.get(str);
            return (iVar == null || !iVar.f()) ? cVar : iVar.h();
        }

        ArrayList<String> a(String str, ArrayList<String> arrayList) {
            c b2 = b(str);
            if (b2 != null) {
                arrayList = new ArrayList<>();
                for (int i = 0; i < b2.f_(); i++) {
                    String b3 = b2.b(i);
                    if (b3 != null) {
                        arrayList.add(b3);
                    }
                }
            }
            return arrayList;
        }

        String a(String str, String str2) {
            i iVar = this.f3692a.get(str);
            return (iVar == null || !iVar.g_()) ? str2 : iVar.b();
        }

        double a(String str, double d) {
            i iVar = this.f3692a.get(str);
            return (iVar == null || !iVar.n()) ? d : iVar.d();
        }

        int a(String str, int i) {
            i iVar = this.f3692a.get(str);
            return (iVar == null || !iVar.n()) ? i : iVar.e();
        }

        boolean a(String str, boolean z) {
            i iVar = this.f3692a.get(str);
            if (iVar != null) {
                return (iVar.a() || iVar.g_()) ? iVar.k() : z;
            }
            return z;
        }

        g a(String str) {
            g a2 = a(str, (g) null);
            return a2 != null ? a2 : new g();
        }

        c b(String str) {
            c a2 = a(str, (c) null);
            return a2 != null ? a2 : new c();
        }

        ArrayList<String> c(String str) {
            ArrayList<String> a2 = a(str, (ArrayList<String>) null);
            return a2 == null ? new ArrayList<>() : a2;
        }

        String d(String str) {
            return a(str, "");
        }

        double e(String str) {
            return a(str, 0.0d);
        }

        int f(String str) {
            return a(str, 0);
        }

        boolean g(String str) {
            return a(str, false);
        }

        void a(String str, i iVar) {
            if (!this.f3692a.containsKey(str)) {
                this.f3693b.add(str);
            }
            this.f3692a.put(str, iVar);
        }

        void b(String str, String str2) {
            a(str, new f(str2));
        }

        void b(String str, double d) {
            a(str, new e(d));
        }

        void b(String str, int i) {
            a(str, new b(i));
        }

        void b(String str, boolean z) {
            a(str, z ? a.f3686a : a.f3687b);
        }
    }

    static class c extends i {

        /* renamed from: a, reason: collision with root package name */
        ArrayList<i> f3689a = new ArrayList<>();

        c() {
        }

        @Override // com.jirbo.adcolony.a.i
        boolean f() {
            return true;
        }

        @Override // com.jirbo.adcolony.a.i
        boolean g() {
            return this.f3689a.size() == 0 || (this.f3689a.size() == 1 && this.f3689a.get(0).g());
        }

        @Override // com.jirbo.adcolony.a.i
        c h() {
            return this;
        }

        @Override // com.jirbo.adcolony.a.i
        void a(y yVar) {
            boolean z;
            int size = this.f3689a.size();
            if (size == 0) {
                yVar.a("[]");
                return;
            }
            if (size == 1 && this.f3689a.get(0).g()) {
                yVar.a("[");
                this.f3689a.get(0).a(yVar);
                yVar.a("]");
                return;
            }
            yVar.b("[");
            yVar.f3879b += 2;
            int i = 0;
            boolean z2 = true;
            while (i < size) {
                if (z2) {
                    z = false;
                } else {
                    yVar.c(',');
                    z = z2;
                }
                this.f3689a.get(i).a(yVar);
                i++;
                z2 = z;
            }
            yVar.b();
            yVar.f3879b -= 2;
            yVar.a("]");
        }

        int f_() {
            return this.f3689a.size();
        }

        void j() {
            this.f3689a.clear();
        }

        c a(i iVar) {
            this.f3689a.add(iVar);
            return this;
        }

        c a(String str) {
            a(new f(str));
            return this;
        }

        g a(int i, g gVar) {
            i iVar = this.f3689a.get(i);
            return (iVar == null || !iVar.l()) ? gVar : iVar.m();
        }

        String a(int i, String str) {
            i iVar = this.f3689a.get(i);
            return (iVar == null || !iVar.g_()) ? str : iVar.b();
        }

        g a(int i) {
            g a2 = a(i, (g) null);
            return a2 != null ? a2 : new g();
        }

        String b(int i) {
            return a(i, "");
        }
    }

    static class f extends i implements Serializable {

        /* renamed from: a, reason: collision with root package name */
        String f3691a;

        f(String str) {
            this.f3691a = str;
        }

        @Override // com.jirbo.adcolony.a.i
        boolean g_() {
            return true;
        }

        @Override // com.jirbo.adcolony.a.i
        String b() {
            return this.f3691a;
        }

        @Override // com.jirbo.adcolony.a.i
        double d() {
            try {
                return Double.parseDouble(this.f3691a);
            } catch (NumberFormatException e) {
                return 0.0d;
            }
        }

        @Override // com.jirbo.adcolony.a.i
        int e() {
            return (int) d();
        }

        @Override // com.jirbo.adcolony.a.i
        boolean k() {
            String lowerCase = this.f3691a.toLowerCase();
            return lowerCase.equals("true") || lowerCase.equals("yes");
        }

        @Override // com.jirbo.adcolony.a.i
        void a(y yVar) {
            a(yVar, this.f3691a);
        }
    }

    static class e extends i {

        /* renamed from: a, reason: collision with root package name */
        double f3690a;

        e(double d) {
            this.f3690a = d;
        }

        @Override // com.jirbo.adcolony.a.i
        boolean i() {
            return true;
        }

        @Override // com.jirbo.adcolony.a.i
        double d() {
            return this.f3690a;
        }

        @Override // com.jirbo.adcolony.a.i
        int e() {
            return (int) this.f3690a;
        }

        @Override // com.jirbo.adcolony.a.i
        void a(y yVar) {
            yVar.a(this.f3690a);
        }
    }

    static class b extends i {

        /* renamed from: a, reason: collision with root package name */
        int f3688a;

        b(int i) {
            this.f3688a = i;
        }

        @Override // com.jirbo.adcolony.a.i
        boolean c() {
            return true;
        }

        @Override // com.jirbo.adcolony.a.i
        double d() {
            return this.f3688a;
        }

        @Override // com.jirbo.adcolony.a.i
        int e() {
            return this.f3688a;
        }

        @Override // com.jirbo.adcolony.a.i
        void a(y yVar) {
            yVar.a(this.f3688a);
        }
    }
}
