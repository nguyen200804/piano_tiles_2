package com.cmplay.internalpush.ipc;

import android.content.ContentValues;
import android.text.TextUtils;
import com.cmplay.base.util.g;
import com.cmplay.base.util.ipc.a;
import com.cmplay.base.util.q;
import com.cmplay.internalpush.f;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class IpcCloudHelper extends a {
    public static final int GET_CLOUD_URL = 5;
    public static final int GET_CLOUD_VERSION = 3;
    public static final int GET_IS_PULL_DATA_FROM_SERVER = 6;
    public static final int PULL_CLOUD = 2;
    public static final int PULL_CLOUDDATA = 1;
    public static final int SET_CLOUDLANGUAGE = 4;
    public static final String TAG = "zzb_ipc";
    private static IpcCloudHelper mInstance;

    private IpcCloudHelper() {
        if (q.a()) {
            g.a(TAG, "IpcCloudHelper 构造");
        }
    }

    public static IpcCloudHelper getInstance() {
        if (mInstance == null) {
            mInstance = new IpcCloudHelper();
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
                if (params.length >= 2) {
                    innpush_pullCloudData(Integer.valueOf(params[0]).intValue(), params[1]);
                }
                return null;
            case 2:
                innpush_pullCloud();
                return null;
            case 3:
                if (params.length >= 1) {
                    return innpush_getCloudVersion(params[0]);
                }
                return null;
            case 4:
                if (params.length >= 1) {
                    innpush_setCloudLanguage(params[0]);
                }
                return null;
            case 5:
                if (params.length >= 1) {
                    return innpush_getUrl(params[0]);
                }
                return null;
            case 6:
                return String.valueOf(innpush_isPullDataFromServer());
            default:
                return null;
        }
    }

    public void innpush_pullCloudData(int pullType, String version) {
        if (q.a()) {
            com.ijinshan.cloudconfig.a.a(pullType, version);
        } else {
            invoke(createParams(1, Integer.valueOf(pullType), version));
        }
    }

    public void innpush_pullCloud() {
        if (q.a()) {
            com.ijinshan.cloudconfig.c.a.a(q.f1259a);
            String a2 = com.ijinshan.cloudconfig.a.a();
            if (TextUtils.isEmpty(a2)) {
                a2 = "none";
            }
            if (TextUtils.isEmpty(a2) || TextUtils.equals(a2, "none") || !f.b(q.f1259a)) {
                g.a("innpush_pullCloud 强制拉取");
                com.ijinshan.cloudconfig.a.a(2, "");
                return;
            } else {
                g.a("innpush_pullCloud 按版本拉取");
                com.ijinshan.cloudconfig.a.a(3, a2);
                return;
            }
        }
        invoke(createParams(2, new Object[0]));
    }

    public String innpush_getCloudVersion(String defValue) {
        if (q.a()) {
            return com.ijinshan.cloudconfig.a.a();
        }
        return invoke(createParams(3, defValue), defValue);
    }

    public String innpush_getUrl(String defValue) {
        if (q.a()) {
            return com.ijinshan.cloudconfig.a.b();
        }
        return invoke(createParams(5, defValue), defValue);
    }

    public boolean innpush_isPullDataFromServer() {
        String valueOf = String.valueOf(false);
        if (q.a()) {
            return com.ijinshan.cloudconfig.a.c();
        }
        return Boolean.parseBoolean(invoke(createParams(6, valueOf), valueOf));
    }

    public void innpush_setCloudLanguage(String language) {
        if (q.a()) {
            com.ijinshan.cloudconfig.a.a(language);
        } else {
            invoke(createParams(4, language));
        }
    }
}
