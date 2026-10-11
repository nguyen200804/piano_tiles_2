package com.cmplay.base.util.ipc;

import android.content.ContentValues;
import android.text.TextUtils;

/* compiled from: IpcHandler.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class a {
    public static final String CLASS_TAG = "class_tag";
    public static final String FORCE_STATIC_METHOD = "getInstance";
    public static final int ID_BASE = 0;
    public static final String METHOD_ID = "method_id";
    public static final String PARAMS_NUM = "params_num";
    public static final String PARAMS_TAG = "arg";

    public abstract String handler(ContentValues contentValues);

    protected String invoke(ContentValues cv) {
        return IpcProvider.a(cv);
    }

    protected String invoke(ContentValues cv, Object defValue) {
        String a2 = IpcProvider.a(cv);
        if (TextUtils.isEmpty(a2)) {
            return defValue.toString();
        }
        return a2;
    }

    protected ContentValues createParams(int type, Object... args) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(CLASS_TAG, getClass().getName());
        contentValues.put(METHOD_ID, Integer.valueOf(type));
        if (args != null) {
            contentValues.put(PARAMS_NUM, Integer.valueOf(args.length));
            for (int i = 0; i < args.length; i++) {
                contentValues.put(PARAMS_TAG + i, args[i].toString());
            }
        }
        return contentValues;
    }

    protected int getMid(ContentValues cv) {
        return cv.getAsInteger(METHOD_ID).intValue();
    }

    protected String[] getParams(ContentValues cv) {
        String[] strArr = new String[cv.getAsInteger(PARAMS_NUM).intValue()];
        for (int i = 0; i < strArr.length; i++) {
            if (cv.containsKey(PARAMS_TAG + i)) {
                strArr[i] = cv.get(PARAMS_TAG + i).toString();
            }
        }
        return strArr;
    }
}
