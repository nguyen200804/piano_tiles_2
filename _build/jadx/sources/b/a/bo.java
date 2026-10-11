package b.a;

/* compiled from: TField.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class bo {

    /* renamed from: a, reason: collision with root package name */
    public final String f105a;

    /* renamed from: b, reason: collision with root package name */
    public final byte f106b;
    public final short c;

    public bo() {
        this("", (byte) 0, (short) 0);
    }

    public bo(String str, byte b2, short s) {
        this.f105a = str;
        this.f106b = b2;
        this.c = s;
    }

    public String toString() {
        return "<TField name:'" + this.f105a + "' type:" + ((int) this.f106b) + " field-id:" + ((int) this.c) + ">";
    }
}
