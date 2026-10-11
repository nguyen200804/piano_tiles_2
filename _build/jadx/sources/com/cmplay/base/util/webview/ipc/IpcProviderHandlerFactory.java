package com.cmplay.base.util.webview.ipc;

import com.cmplay.base.util.webview.ipc.data.WebConfigMgrIPCInvoker;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class IpcProviderHandlerFactory {
    public static final int HANDLER_TYPE_BASE = 0;
    public static final int HANDLER_TYPE_CLOUD_CFG = 4;
    public static final int HANDLER_TYPE_SERVICE_CFG_MGR = 2;
    public static final int HANDLER_TYPE_SYNC_IPC = 1;
    public static final int HANDLER_TYPE_WEB_CFG = 3;

    public static IIpcProviderHandler createHandler(int type) {
        switch (type) {
            case 3:
                return new WebConfigMgrIPCInvoker.IpcProviderHandler();
            default:
                return null;
        }
    }
}
