package com.mnt.impl.e;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public enum e {
    DIRECTING_PAGE(0),
    ROUTE_PRELOAD(1),
    GP(2),
    FTP(3),
    GP_DL(4),
    NO_PAGE(5);

    private static String h;
    private int g;

    static {
        h = null;
        e[] eVarArr = (e[]) i.clone();
        StringBuilder sb = new StringBuilder();
        for (e eVar : eVarArr) {
            if (eVar != GP && eVar != GP_DL) {
                sb.append(',').append(eVar.g);
            }
        }
        h = sb.deleteCharAt(0).toString();
    }

    e(int i2) {
        this.g = i2;
    }

    public static String a() {
        return h;
    }
}
