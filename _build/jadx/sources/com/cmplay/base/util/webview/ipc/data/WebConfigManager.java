package com.cmplay.base.util.webview.ipc.data;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import com.cmplay.base.util.g;
import com.cmplay.base.util.q;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class WebConfigManager implements IWebConfigManager {
    public static final String LOADING_ID = "sharepic_loading";
    public static final String WEB_SHAREPREFERENCES_NAME = "com.cmplay.base.util.webview.web";
    private static WebConfigManager sInstance;
    private IWebConfigManager mIPCInvoker;
    private SharedPreferences mShardPreferences;
    private String mStrSharedPreferenceName;

    private WebConfigManager(Context context) {
        g.c("ly", "WebConfigManager\u3000RuntimeCheck.IsWebProcess() = " + q.d());
        if (q.d()) {
            this.mStrSharedPreferenceName = new String(WEB_SHAREPREFERENCES_NAME);
            this.mShardPreferences = context.getSharedPreferences(this.mStrSharedPreferenceName, 0);
        }
        this.mIPCInvoker = new WebConfigMgrIPCInvoker();
    }

    public static WebConfigManager getInstanse(Context context) {
        if (sInstance == null) {
            synchronized (WebConfigManager.class) {
                if (sInstance == null) {
                    sInstance = new WebConfigManager(context);
                }
            }
        }
        return sInstance;
    }

    private SharedPreferences getSharedPreference() {
        q.f();
        return this.mShardPreferences;
    }

    @Override // com.cmplay.base.util.webview.ipc.data.IWebConfigManager
    public long getLongValue(String key, long defValue) {
        return q.d() ? getSharedPreference().getLong(key, defValue) : this.mIPCInvoker.getLongValue(key, defValue);
    }

    @Override // com.cmplay.base.util.webview.ipc.data.IWebConfigManager
    public boolean getBooleanValue(String key, boolean defValue) {
        return q.d() ? getSharedPreference().getBoolean(key, defValue) : this.mIPCInvoker.getBooleanValue(key, defValue);
    }

    @Override // com.cmplay.base.util.webview.ipc.data.IWebConfigManager
    public int getIntValue(String key, int defValue) {
        return q.d() ? getSharedPreference().getInt(key, defValue) : this.mIPCInvoker.getIntValue(key, defValue);
    }

    @Override // com.cmplay.base.util.webview.ipc.data.IWebConfigManager
    public String getStringValue(String key, String defValue) {
        return q.d() ? getSharedPreference().getString(key, defValue) : this.mIPCInvoker.getStringValue(key, defValue);
    }

    @Override // com.cmplay.base.util.webview.ipc.data.IWebConfigManager
    public void setBooleanValue(String key, boolean value) {
        if (q.d()) {
            SharedPreferences.Editor edit = getSharedPreference().edit();
            edit.putBoolean(key, value);
            applyToEditor(edit);
            return;
        }
        this.mIPCInvoker.setBooleanValue(key, value);
    }

    @Override // com.cmplay.base.util.webview.ipc.data.IWebConfigManager
    public void setLongValue(String key, long value) {
        if (q.d()) {
            SharedPreferences.Editor edit = getSharedPreference().edit();
            edit.putLong(key, value);
            applyToEditor(edit);
            return;
        }
        this.mIPCInvoker.setLongValue(key, value);
    }

    @Override // com.cmplay.base.util.webview.ipc.data.IWebConfigManager
    public void setIntValue(String key, int value) {
        if (q.d()) {
            SharedPreferences.Editor edit = getSharedPreference().edit();
            edit.putInt(key, value);
            applyToEditor(edit);
            return;
        }
        this.mIPCInvoker.setIntValue(key, value);
    }

    @Override // com.cmplay.base.util.webview.ipc.data.IWebConfigManager
    public void setStringValue(String key, String value) {
        if (q.d()) {
            SharedPreferences.Editor edit = getSharedPreference().edit();
            edit.putString(key, value);
            applyToEditor(edit);
            return;
        }
        this.mIPCInvoker.setStringValue(key, value);
    }

    @SuppressLint({"NewApi"})
    public static void applyToEditor(SharedPreferences.Editor editor) {
        if (Build.VERSION.SDK_INT >= 9) {
            editor.apply();
        } else {
            editor.commit();
        }
    }
}
