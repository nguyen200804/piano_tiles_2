package com.example.luckywheel.a;

import com.example.luckywheel.a.a;
import com.example.luckywheel.a.g;
import java.net.HttpURLConnection;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class l extends a.C0063a {
    final /* synthetic */ String d;
    final /* synthetic */ a e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    l(a aVar, g.b bVar, String str) {
        super(bVar);
        this.e = aVar;
        this.d = str;
    }

    @Override // com.example.luckywheel.a.g.c
    public void a(HttpURLConnection httpURLConnection) throws Exception {
        g.a(httpURLConnection, "application/json", this.d);
    }
}
