package com.cmplay.base.util.webview.ipc;

import android.content.Context;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class AbsIpcProviderHandler implements IIpcProviderHandler {
    private Context mContext;

    @Override // com.cmplay.base.util.webview.ipc.IIpcProviderHandler
    public void setContext(Context context) {
        this.mContext = context;
    }

    @Override // com.cmplay.base.util.webview.ipc.IIpcProviderHandler
    public Context getContext() {
        return this.mContext;
    }
}
