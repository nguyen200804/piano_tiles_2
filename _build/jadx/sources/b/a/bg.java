package b.a;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* compiled from: FieldMetaData.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class bg implements Serializable {
    private static Map<Class<? extends ay>, Map<? extends bc, bg>> d = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final String f87a;

    /* renamed from: b, reason: collision with root package name */
    public final byte f88b;
    public final bh c;

    public bg(String str, byte b2, bh bhVar) {
        this.f87a = str;
        this.f88b = b2;
        this.c = bhVar;
    }

    public static void a(Class<? extends ay> cls, Map<? extends bc, bg> map) {
        d.put(cls, map);
    }
}
