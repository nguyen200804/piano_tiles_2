package com.cmplay.base.util.webview.ipc.data;

import android.content.ContentValues;
import android.text.TextUtils;
import com.cmplay.base.util.webview.ipc.AbsIpcProviderHandler;
import com.cmplay.base.util.webview.ipc.IWebIpcProviderInvoker;
import com.cmplay.base.util.webview.ipc.WebIpcProvider;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class WebConfigMgrIPCInvoker implements IWebIpcProviderInvoker, IWebConfigManager {
    private static final String ARG1 = "arg1";
    private static final String ARG2 = "arg2";
    private static final String KEY_FUNC_TYPE = "func_type";
    private static final int TYPE_BASE = 0;
    private static final int TYPE_GET_BOOLEAN_VALUE = 4;
    private static final int TYPE_GET_INT_VALUE = 2;
    private static final int TYPE_GET_LONG_VALUE = 3;
    private static final int TYPE_GET_STRING_VALUE = 1;
    private static final int TYPE_SET_BOOLEAN_VALUE = 8;
    private static final int TYPE_SET_INT_VALUE = 6;
    private static final int TYPE_SET_LONG_VALUE = 7;
    private static final int TYPE_SET_STRING_VALUE = 5;

    public static class IpcProviderHandler extends AbsIpcProviderHandler {
        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // com.cmplay.base.util.webview.ipc.IIpcProviderHandler
        public String handleRequest(ContentValues values) {
            switch (values.getAsInteger(WebConfigMgrIPCInvoker.KEY_FUNC_TYPE).intValue()) {
                case 1:
                    return WebConfigManager.getInstanse(getContext()).getStringValue(values.getAsString(WebConfigMgrIPCInvoker.ARG1), values.getAsString(WebConfigMgrIPCInvoker.ARG2));
                case 2:
                    return String.valueOf(WebConfigManager.getInstanse(getContext()).getIntValue(values.getAsString(WebConfigMgrIPCInvoker.ARG1), values.getAsInteger(WebConfigMgrIPCInvoker.ARG2).intValue()));
                case 3:
                    return String.valueOf(WebConfigManager.getInstanse(getContext()).getLongValue(values.getAsString(WebConfigMgrIPCInvoker.ARG1), values.getAsLong(WebConfigMgrIPCInvoker.ARG2).longValue()));
                case 4:
                    return String.valueOf(WebConfigManager.getInstanse(getContext()).getBooleanValue(values.getAsString(WebConfigMgrIPCInvoker.ARG1), values.getAsBoolean(WebConfigMgrIPCInvoker.ARG2).booleanValue()));
                case 5:
                    WebConfigManager.getInstanse(getContext()).setStringValue(values.getAsString(WebConfigMgrIPCInvoker.ARG1), values.getAsString(WebConfigMgrIPCInvoker.ARG2));
                    return null;
                case 6:
                    WebConfigManager.getInstanse(getContext()).setIntValue(values.getAsString(WebConfigMgrIPCInvoker.ARG1), values.getAsInteger(WebConfigMgrIPCInvoker.ARG2).intValue());
                    return null;
                case 7:
                    WebConfigManager.getInstanse(getContext()).setLongValue(values.getAsString(WebConfigMgrIPCInvoker.ARG1), values.getAsLong(WebConfigMgrIPCInvoker.ARG2).longValue());
                    return null;
                case 8:
                    WebConfigManager.getInstanse(getContext()).setBooleanValue(values.getAsString(WebConfigMgrIPCInvoker.ARG1), values.getAsBoolean(WebConfigMgrIPCInvoker.ARG2).booleanValue());
                    return null;
                default:
                    return null;
            }
        }
    }

    @Override // com.cmplay.base.util.webview.ipc.data.IWebConfigManager
    public long getLongValue(String key, long defValue) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(KEY_FUNC_TYPE, (Integer) 3);
        contentValues.put(ARG1, key);
        contentValues.put(ARG2, Long.valueOf(defValue));
        String invoke = WebIpcProvider.invoke(contentValues, this);
        return TextUtils.isEmpty(invoke) ? defValue : Long.valueOf(invoke).longValue();
    }

    @Override // com.cmplay.base.util.webview.ipc.data.IWebConfigManager
    public boolean getBooleanValue(String key, boolean defValue) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(KEY_FUNC_TYPE, (Integer) 4);
        contentValues.put(ARG1, key);
        contentValues.put(ARG2, Boolean.valueOf(defValue));
        String invoke = WebIpcProvider.invoke(contentValues, this);
        return TextUtils.isEmpty(invoke) ? defValue : Boolean.valueOf(invoke).booleanValue();
    }

    @Override // com.cmplay.base.util.webview.ipc.data.IWebConfigManager
    public int getIntValue(String key, int defValue) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(KEY_FUNC_TYPE, (Integer) 2);
        contentValues.put(ARG1, key);
        contentValues.put(ARG2, Integer.valueOf(defValue));
        String invoke = WebIpcProvider.invoke(contentValues, this);
        return TextUtils.isEmpty(invoke) ? defValue : Integer.valueOf(invoke).intValue();
    }

    @Override // com.cmplay.base.util.webview.ipc.data.IWebConfigManager
    public String getStringValue(String key, String defValue) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(KEY_FUNC_TYPE, (Integer) 1);
        contentValues.put(ARG1, key);
        contentValues.put(ARG2, defValue);
        return WebIpcProvider.invoke(contentValues, this);
    }

    @Override // com.cmplay.base.util.webview.ipc.data.IWebConfigManager
    public void setBooleanValue(String key, boolean value) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(KEY_FUNC_TYPE, (Integer) 8);
        contentValues.put(ARG1, key);
        contentValues.put(ARG2, Boolean.valueOf(value));
        WebIpcProvider.invoke(contentValues, this);
    }

    @Override // com.cmplay.base.util.webview.ipc.data.IWebConfigManager
    public void setLongValue(String key, long value) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(KEY_FUNC_TYPE, (Integer) 7);
        contentValues.put(ARG1, key);
        contentValues.put(ARG2, Long.valueOf(value));
        WebIpcProvider.invoke(contentValues, this);
    }

    @Override // com.cmplay.base.util.webview.ipc.data.IWebConfigManager
    public void setIntValue(String key, int value) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(KEY_FUNC_TYPE, (Integer) 6);
        contentValues.put(ARG1, key);
        contentValues.put(ARG2, Integer.valueOf(value));
        WebIpcProvider.invoke(contentValues, this);
    }

    @Override // com.cmplay.base.util.webview.ipc.data.IWebConfigManager
    public void setStringValue(String key, String value) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(KEY_FUNC_TYPE, (Integer) 5);
        contentValues.put(ARG1, key);
        contentValues.put(ARG2, value);
        WebIpcProvider.invoke(contentValues, this);
    }

    @Override // com.cmplay.base.util.webview.ipc.IWebIpcProviderInvoker
    public int getIPDId() {
        return 3;
    }
}
