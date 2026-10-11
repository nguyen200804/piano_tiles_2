package com.cmcm.dmc.sdk.g;

import android.content.ContentValues;
import android.text.TextUtils;
import com.cmplay.base.util.webview.util.WebUtils;
import com.mopub.mobileads.VastExtensionXmlManager;
import java.util.UUID;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    private final int f778a;

    /* renamed from: b, reason: collision with root package name */
    private final String f779b;
    private final String c;
    private final long d;
    private String e;

    public h(int i, String str, String str2) {
        this(i, str, str2, System.currentTimeMillis());
    }

    public h(int i, String str, String str2, long j) {
        this.f778a = i;
        this.f779b = str;
        this.c = str2;
        this.d = j / 1000;
        this.e = UUID.randomUUID().toString();
    }

    public long a() {
        return this.d;
    }

    public void a(ContentValues contentValues) {
        String b2 = TextUtils.isEmpty(this.c) ? null : c.a().b(this.c.getBytes());
        contentValues.put("mode", Integer.valueOf(this.f778a));
        contentValues.put(VastExtensionXmlManager.TYPE, this.f779b);
        contentValues.put("timestamp", Long.valueOf(this.d));
        contentValues.put("data", b2);
        contentValues.put(WebUtils.VER, (Integer) 2008600);
        contentValues.put("proto", (Integer) 1000000);
        contentValues.put("guid", this.e);
    }

    public String b() {
        return this.f779b;
    }

    public String c() {
        return this.c;
    }

    public String d() {
        return this.e;
    }

    public String toString() {
        return String.format("\ntype: %s\ntimestamp: %s\ndata: %s", this.f779b, Long.valueOf(this.d), this.c);
    }
}
