package b.a;

import org.json.JSONObject;

/* compiled from: URequest.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class ar {

    /* renamed from: b, reason: collision with root package name */
    protected static String f70b = "POST";
    protected static String c = "GET";
    protected String d;

    public abstract JSONObject a();

    public abstract String b();

    protected String c() {
        return f70b;
    }

    public ar(String str) {
        this.d = str;
    }
}
