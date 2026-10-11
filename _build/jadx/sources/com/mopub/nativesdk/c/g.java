package com.mopub.nativesdk.c;

import android.content.Context;
import java.util.Map;

/* compiled from: ImpressionLoader.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class g extends a<Boolean> {

    /* renamed from: b, reason: collision with root package name */
    private String f4627b;

    public g(Context context) {
        super(context);
    }

    public final void a(String str) {
        this.f4627b = str;
    }

    @Override // com.mopub.nativesdk.c.a
    protected final int a() {
        return 2;
    }

    @Override // com.mopub.nativesdk.c.a
    protected final String b() {
        return this.f4627b;
    }

    @Override // com.mopub.nativesdk.c.a
    protected final byte[] c() {
        return null;
    }

    @Override // com.mopub.nativesdk.c.a
    protected final /* synthetic */ Boolean a(Map map, byte[] bArr) {
        new StringBuilder("RESPONSE: ").append(new String(bArr));
        return true;
    }
}
