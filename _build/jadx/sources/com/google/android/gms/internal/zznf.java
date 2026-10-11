package com.google.android.gms.internal;

import com.google.android.gms.auth.api.proxy.ProxyApi;
import com.google.android.gms.auth.api.proxy.ProxyResponse;
import com.google.android.gms.common.api.Status;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class zznf implements ProxyApi.ProxyResult {
    private Status bY;
    private ProxyResponse dz;

    public zznf(ProxyResponse proxyResponse) {
        this.dz = proxyResponse;
        this.bY = Status.sq;
    }

    public zznf(Status status) {
        this.bY = status;
    }

    @Override // com.google.android.gms.auth.api.proxy.ProxyApi.ProxyResult
    public ProxyResponse getResponse() {
        return this.dz;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.bY;
    }
}
