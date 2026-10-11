package android.support.v4.util;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class Pair<F, S> {
    public final F first;
    public final S second;

    public Pair(F first, S second) {
        this.first = first;
        this.second = second;
    }

    public boolean equals(Object o) {
        if (!(o instanceof Pair)) {
            return false;
        }
        Pair pair = (Pair) o;
        return objectsEqual(pair.first, this.first) && objectsEqual(pair.second, this.second);
    }

    private static boolean objectsEqual(Object a2, Object b2) {
        return a2 == b2 || (a2 != null && a2.equals(b2));
    }

    public int hashCode() {
        return (this.first == null ? 0 : this.first.hashCode()) ^ (this.second != null ? this.second.hashCode() : 0);
    }

    public static <A, B> Pair<A, B> create(A a2, B b2) {
        return new Pair<>(a2, b2);
    }
}
