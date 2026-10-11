package b.a;

/* compiled from: TProtocolUtil.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class bu {

    /* renamed from: a, reason: collision with root package name */
    private static int f112a = Integer.MAX_VALUE;

    public static void a(br brVar, byte b2) throws bb {
        a(brVar, b2, f112a);
    }

    public static void a(br brVar, byte b2, int i) throws bb {
        int i2 = 0;
        if (i <= 0) {
            throw new bb("Maximum skip depth exceeded");
        }
        switch (b2) {
            case 2:
                brVar.p();
                return;
            case 3:
                brVar.q();
                return;
            case 4:
                brVar.u();
                return;
            case 5:
            case 7:
            case 9:
            default:
                return;
            case 6:
                brVar.r();
                return;
            case 8:
                brVar.s();
                return;
            case 10:
                brVar.t();
                return;
            case 11:
                brVar.w();
                return;
            case 12:
                brVar.f();
                while (true) {
                    bo h = brVar.h();
                    if (h.f106b != 0) {
                        a(brVar, h.f106b, i - 1);
                        brVar.i();
                    } else {
                        brVar.g();
                        return;
                    }
                }
            case 13:
                bq j = brVar.j();
                while (i2 < j.c) {
                    a(brVar, j.f109a, i - 1);
                    a(brVar, j.f110b, i - 1);
                    i2++;
                }
                brVar.k();
                return;
            case 14:
                bv n = brVar.n();
                while (i2 < n.f114b) {
                    a(brVar, n.f113a, i - 1);
                    i2++;
                }
                brVar.o();
                return;
            case 15:
                bp l = brVar.l();
                while (i2 < l.f108b) {
                    a(brVar, l.f107a, i - 1);
                    i2++;
                }
                brVar.m();
                return;
        }
    }
}
