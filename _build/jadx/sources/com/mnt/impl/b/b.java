package com.mnt.impl.b;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public enum b {
    FLOAT_ICON(1),
    SMALL_BANNER(2),
    FULL_SCREEN(3),
    HALF_SCREEN(4),
    SIDEBAR(5),
    INSTALL_DETAIL(6),
    FULL_SCREEN_MULTI_IMG(7),
    UNINSTALL_DETAIL(8),
    FB_BANNER(9),
    FB_HALF_SCREEN(10),
    BIG_BANNER(11),
    INTERSTITIAL(12),
    RECTANGLE_BANNER(13),
    NOTIFICATION(14);

    public int c;

    static {
        String str = com.mnt.impl.e.pe;
        String str2 = com.mnt.impl.e.pf;
        String str3 = com.mnt.impl.e.pg;
        String str4 = com.mnt.impl.e.ph;
        String str5 = com.mnt.impl.e.pi;
        String str6 = com.mnt.impl.e.pj;
        String str7 = com.mnt.impl.e.pk;
        String str8 = com.mnt.impl.e.pl;
        String str9 = com.mnt.impl.e.pm;
        String str10 = com.mnt.impl.e.pn;
        String str11 = com.mnt.impl.e.po;
        String str12 = com.mnt.impl.e.pp;
        String str13 = com.mnt.impl.e.pq;
        String str14 = com.mnt.impl.e.pr;
    }

    b(int i) {
        this.c = i;
    }

    public static b a(int i) {
        for (b bVar : (b[]) values().clone()) {
            if (bVar.c == i) {
                return bVar;
            }
        }
        return null;
    }
}
