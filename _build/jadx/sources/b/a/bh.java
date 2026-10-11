package b.a;

import java.io.Serializable;

/* compiled from: FieldValueMetaData.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class bh implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    private final boolean f89a;

    /* renamed from: b, reason: collision with root package name */
    public final byte f90b;
    private final String c;
    private final boolean d;

    public bh(byte b2, boolean z) {
        this.f90b = b2;
        this.f89a = false;
        this.c = null;
        this.d = z;
    }

    public bh(byte b2) {
        this(b2, false);
    }
}
