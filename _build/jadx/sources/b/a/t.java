package b.a;

/* compiled from: ErrorSource.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public enum t {
    LEGIT(1),
    ALIEN(2);

    private final int c;

    t(int i) {
        this.c = i;
    }

    public int a() {
        return this.c;
    }

    public static t a(int i) {
        switch (i) {
            case 1:
                return LEGIT;
            case 2:
                return ALIEN;
            default:
                return null;
        }
    }
}
