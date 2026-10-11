package com.tencent.wxop.stat;

import org.apache.http.HttpResponse;
import org.apache.http.impl.client.DefaultConnectionKeepAliveStrategy;
import org.apache.http.protocol.HttpContext;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class al extends DefaultConnectionKeepAliveStrategy {
    final /* synthetic */ ak dl;

    al(ak akVar) {
        this.dl = akVar;
    }

    @Override // org.apache.http.impl.client.DefaultConnectionKeepAliveStrategy, org.apache.http.conn.ConnectionKeepAliveStrategy
    public final long getKeepAliveDuration(HttpResponse httpResponse, HttpContext httpContext) {
        long keepAliveDuration = super.getKeepAliveDuration(httpResponse, httpContext);
        if (keepAliveDuration == -1) {
            return 30000L;
        }
        return keepAliveDuration;
    }
}
