package com.cmplay.internalpush.ipc;

import android.content.ContentValues;
import com.cmplay.base.util.ipc.a;
import com.cmplay.base.util.q;
import com.cmplay.internalpush.video.e;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class IpcVideoHelper extends a {
    private static final int GET_STRING = 4;
    private static final int GET_VIDEO_FILE_SIZE = 3;
    private static final int SERVICE_VIDEO_DOWN = 1;
    private static final int SET_STRING = 5;
    private static final int SET_VIDEO_FILE_SIZE = 2;
    private static IpcVideoHelper mInstance;

    private IpcVideoHelper() {
    }

    public static IpcVideoHelper getInstance() {
        if (mInstance == null) {
            mInstance = new IpcVideoHelper();
        }
        return mInstance;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.cmplay.base.util.ipc.a
    public String handler(ContentValues cv) {
        int mid = getMid(cv);
        String[] params = getParams(cv);
        switch (mid) {
            case 1:
                if (params.length >= 4) {
                    ipcServiceStartDown(params[0], params[1], params[2], params[3]);
                }
                return null;
            case 2:
                if (params.length >= 2) {
                    ipcSetLong(params[0], Long.valueOf(params[1]).longValue());
                }
                return null;
            case 3:
                if (params.length >= 2) {
                    return "" + ipcGetLong(params[0], Long.valueOf(params[1]).longValue());
                }
                return null;
            case 4:
                if (params.length >= 2) {
                    return ipcGetString(params[0], params[1]);
                }
                return null;
            case 5:
                if (params.length >= 2) {
                    ipcSetString(params[0], params[1]);
                }
                return null;
            default:
                return null;
        }
    }

    public void ipcServiceStartDown(String url, String fileName, String bgImgUrl, String iconUrl) {
        if (q.a()) {
            e.a(url, fileName, bgImgUrl, iconUrl);
        } else {
            invoke(createParams(1, url, fileName, bgImgUrl, iconUrl));
        }
    }

    public void ipcSetLong(String key, long value) {
        if (q.a()) {
            com.cmplay.internalpush.a.e.b(key, value);
        } else {
            invoke(createParams(2, key, Long.valueOf(value)));
        }
    }

    public long ipcGetLong(String key, long defValue) {
        if (q.a()) {
            return com.cmplay.internalpush.a.e.a(key, defValue);
        }
        return Long.valueOf(invoke(createParams(3, key, Long.valueOf(defValue)), Long.valueOf(defValue))).longValue();
    }

    public String ipcGetString(String key, String defValue) {
        if (q.a()) {
            return com.cmplay.internalpush.a.e.a(key, defValue);
        }
        return invoke(createParams(4, key, defValue), defValue);
    }

    public void ipcSetString(String key, String defValue) {
        if (q.a()) {
            com.cmplay.internalpush.a.e.b(key, defValue);
        } else {
            invoke(createParams(4, key, defValue), defValue);
        }
    }
}
