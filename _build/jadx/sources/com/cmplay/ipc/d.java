package com.cmplay.ipc;

import com.cmplay.cloud.a.a;
import com.cmplay.ipc.SyncIpcProvider;
import com.cmplay.util.b.d;
import com.cmplay.webview.ipc.a.c;

/* compiled from: IpcProviderHandlerFactory.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d {
    public static b a(int i) {
        switch (i) {
            case 1:
                return new a.C0037a();
            case 2:
                return new c.a();
            case 3:
                return new SyncIpcProvider.a();
            case 4:
                return new d.a();
            default:
                return null;
        }
    }
}
