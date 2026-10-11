package b.a;

/* compiled from: AccessType.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public enum l {
    ACCESS_TYPE_UNKNOWN(0),
    ACCESS_TYPE_2G_3G(1),
    ACCESS_TYPE_WIFI(2),
    ACCESS_TYPE_ETHERNET(3);

    private final int e;

    l(int i) {
        this.e = i;
    }

    public int a() {
        return this.e;
    }

    public static l a(int i) {
        switch (i) {
            case 0:
                return ACCESS_TYPE_UNKNOWN;
            case 1:
                return ACCESS_TYPE_2G_3G;
            case 2:
                return ACCESS_TYPE_WIFI;
            case 3:
                return ACCESS_TYPE_ETHERNET;
            default:
                return null;
        }
    }
}
