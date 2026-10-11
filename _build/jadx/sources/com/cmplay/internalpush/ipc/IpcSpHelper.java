package com.cmplay.internalpush.ipc;

import android.content.ContentValues;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.cmplay.base.util.g;
import com.cmplay.base.util.ipc.a;
import com.cmplay.base.util.q;
import com.cmplay.base.util.s;
import java.io.File;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class IpcSpHelper extends a {
    private static final int GET_BOOLEAN_VALUE = 2;
    private static final int GET_INT_VALUE = 3;
    private static final int GET_LONG_VALUE = 1;
    private static final int GET_STRING_VALUE = 4;
    private static final int REMOVE_KEY = 9;
    private static final int SET_BOOLEAN_VALUE = 6;
    private static final int SET_INT_VALUE = 7;
    private static final int SET_LONG_VALUE = 5;
    private static final int SET_STRING_VALUE = 8;
    private static final String TAG = "zzb_ipc";
    private static IpcSpHelper mInstance;
    private SharedPreferences mShardPreferences;

    private IpcSpHelper() {
        if (q.a()) {
            this.mShardPreferences = q.f1259a.getSharedPreferences("openscreen_save_data_service", 0);
        }
    }

    public static IpcSpHelper getInstance() {
        if (mInstance == null) {
            mInstance = new IpcSpHelper();
        }
        return mInstance;
    }

    private synchronized SharedPreferences getSharedPreference() {
        q.e();
        return this.mShardPreferences;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.cmplay.base.util.ipc.a
    public String handler(ContentValues cv) {
        int mid = getMid(cv);
        String[] params = getParams(cv);
        switch (mid) {
            case 1:
                if (params.length >= 2) {
                    return "" + sp_getLongValue(params[0], Long.valueOf(params[1]).longValue());
                }
                return null;
            case 2:
                if (params.length >= 2) {
                    return "" + sp_getBooleanValue(params[0], Boolean.valueOf(params[1]).booleanValue());
                }
                return null;
            case 3:
                if (params.length >= 2) {
                    return "" + sp_getIntValue(params[0], Integer.valueOf(params[1]).intValue());
                }
                return null;
            case 4:
                if (params.length >= 2) {
                    return "" + sp_getStringValue(params[0], params[1]);
                }
                return null;
            case 5:
                if (params.length >= 2) {
                    sp_setLongValue(params[0], Long.valueOf(params[1]).longValue());
                }
                return null;
            case 6:
                if (params.length >= 2) {
                    sp_setBooleanValue(params[0], Boolean.valueOf(params[1]).booleanValue());
                }
                return null;
            case 7:
                if (params.length >= 2) {
                    sp_setIntValue(params[0], Integer.valueOf(params[1]).intValue());
                }
                return null;
            case 8:
                if (params.length >= 2) {
                    sp_setStringValue(params[0], params[1]);
                }
                return null;
            case 9:
                if (params.length >= 2) {
                    sp_removeSomeKey(params[0], params[1]);
                }
                return null;
            default:
                return null;
        }
    }

    public long sp_getLongValue(String key, long defValue) {
        if (q.a()) {
            return getSharedPreference().getLong(key, defValue);
        }
        return Long.valueOf(invoke(createParams(1, key, Long.valueOf(defValue)), Long.valueOf(defValue))).longValue();
    }

    public boolean sp_getBooleanValue(String key, boolean defValue) {
        if (q.a()) {
            return getSharedPreference().getBoolean(key, defValue);
        }
        return Boolean.valueOf(invoke(createParams(2, key, Boolean.valueOf(defValue)), Boolean.valueOf(defValue))).booleanValue();
    }

    public synchronized int sp_getIntValue(String key, int defValue) {
        int intValue;
        if (q.a()) {
            intValue = getSharedPreference().getInt(key, defValue);
        } else {
            intValue = Integer.valueOf(invoke(createParams(3, key, Integer.valueOf(defValue)), Integer.valueOf(defValue))).intValue();
        }
        return intValue;
    }

    public String sp_getStringValue(String key, String defValue) {
        if (q.a()) {
            return getSharedPreference().getString(key, defValue);
        }
        return invoke(createParams(4, key, defValue), defValue);
    }

    public void sp_setBooleanValue(String key, boolean value) {
        if (q.a()) {
            SharedPreferences.Editor edit = getSharedPreference().edit();
            edit.putBoolean(key, value);
            s.a(edit);
            return;
        }
        invoke(createParams(6, key, Boolean.valueOf(value)));
    }

    public void sp_setLongValue(String key, long value) {
        if (q.a()) {
            SharedPreferences.Editor edit = getSharedPreference().edit();
            edit.putLong(key, value);
            s.a(edit);
            return;
        }
        invoke(createParams(5, key, Long.valueOf(value)));
    }

    public synchronized void sp_setIntValue(String key, int value) {
        if (q.a()) {
            SharedPreferences.Editor edit = getSharedPreference().edit();
            edit.putInt(key, value);
            s.a(edit);
        } else {
            invoke(createParams(7, key, Integer.valueOf(value)));
        }
    }

    public synchronized void sp_setStringValue(String key, String value) {
        if (q.a()) {
            SharedPreferences.Editor edit = getSharedPreference().edit();
            edit.putString(key, value);
            s.a(edit);
        } else {
            invoke(createParams(8, key, value));
        }
    }

    public void sp_removeSomeKey(String startFlag, String key) {
        if (q.a()) {
            if (!TextUtils.isEmpty(key)) {
                removeKey(key);
            }
            if (!TextUtils.isEmpty(startFlag)) {
                for (String str : getSharedPreference().getAll().keySet()) {
                    if (str != null && str.startsWith(startFlag)) {
                        try {
                            if (!new File(sp_getStringValue(str, "")).exists()) {
                                removeKey(str);
                                g.a("zzb", "清理key =" + str);
                            }
                        } catch (Exception e) {
                            removeKey(str);
                            g.a("zzb", "清理key =" + str);
                        }
                    }
                }
                return;
            }
            return;
        }
        invoke(createParams(9, startFlag, key));
    }

    public void removeKey(String key) {
        q.e();
        SharedPreferences.Editor edit = getSharedPreference().edit();
        edit.remove(key);
        s.a(edit);
    }
}
