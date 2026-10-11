package b.a;

/* compiled from: ShortStack.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ax {

    /* renamed from: a, reason: collision with root package name */
    private short[] f75a;

    /* renamed from: b, reason: collision with root package name */
    private int f76b = -1;

    public ax(int i) {
        this.f75a = new short[i];
    }

    public short a() {
        short[] sArr = this.f75a;
        int i = this.f76b;
        this.f76b = i - 1;
        return sArr[i];
    }

    public void a(short s) {
        if (this.f75a.length == this.f76b + 1) {
            c();
        }
        short[] sArr = this.f75a;
        int i = this.f76b + 1;
        this.f76b = i;
        sArr[i] = s;
    }

    private void c() {
        short[] sArr = new short[this.f75a.length * 2];
        System.arraycopy(this.f75a, 0, sArr, 0, this.f75a.length);
        this.f75a = sArr;
    }

    public void b() {
        this.f76b = -1;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("<ShortStack vector:[");
        for (int i = 0; i < this.f75a.length; i++) {
            if (i != 0) {
                sb.append(" ");
            }
            if (i == this.f76b) {
                sb.append(">>");
            }
            sb.append((int) this.f75a[i]);
            if (i == this.f76b) {
                sb.append("<<");
            }
        }
        sb.append("]>");
        return sb.toString();
    }
}
