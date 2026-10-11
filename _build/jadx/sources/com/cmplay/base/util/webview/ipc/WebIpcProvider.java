package com.cmplay.base.util.webview.ipc;

import android.content.ContentProvider;
import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.cmplay.base.util.g;
import com.cmplay.base.util.q;
import com.cmplay.base.util.webview.ui.WebViewActivity;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class WebIpcProvider extends ContentProvider {
    private static String IPC_PROVIDER_AUTH;
    private static int LENGTH_CONTENT_URI;
    private static Uri sContentUri;
    private static Object s_LockFixedBug = new Object();
    private static boolean s_bFixedSysBug = false;
    public static ContentProviderClient s_cpClientFixer = null;

    private static ContentResolver getCr() {
        return WebViewActivity.mContext.getContentResolver();
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        q.a(getContext());
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        return null;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues values) {
        q.f();
        String str = "";
        if (values != null && (str = ipcHandle(3, values)) == null) {
            str = "";
        }
        StringBuilder append = new StringBuilder(uri.toString()).append("/").append(str);
        g.c("ly", "webipc provider insert = " + append.toString());
        return Uri.parse(append.toString());
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String selection, String[] selectionArgs) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        return 0;
    }

    private String ipcHandle(int type, ContentValues values) {
        IIpcProviderHandler createHandler = IpcProviderHandlerFactory.createHandler(type);
        if (createHandler == null) {
            return "";
        }
        createHandler.setContext(getContext());
        return createHandler.handleRequest(values);
    }

    public static String invoke(ContentValues values, IWebIpcProviderInvoker invoker) {
        if (invoker == null) {
            return "";
        }
        if (values == null) {
            values = new ContentValues();
        }
        values.put(IWebIpcProviderInvoker.IPC_ID, Integer.valueOf(invoker.getIPDId()));
        FixProviderSystemBug();
        Uri uri = null;
        try {
            uri = getCr().insert(sContentUri, values);
        } catch (IllegalArgumentException e) {
        } catch (IllegalStateException e2) {
            e2.printStackTrace();
        }
        g.c("ly", "web ipc invoke = " + uri);
        if (uri != null) {
            String uri2 = uri.toString();
            if (TextUtils.isEmpty(uri2) || uri2.length() <= LENGTH_CONTENT_URI) {
                return "";
            }
            return uri2.substring(LENGTH_CONTENT_URI);
        }
        return "";
    }

    public static void FixProviderSystemBug() {
        synchronized (s_LockFixedBug) {
            IPC_PROVIDER_AUTH = WebViewActivity.mContext.getPackageName() + ".ipc.web";
            if (!s_bFixedSysBug) {
                s_bFixedSysBug = true;
                if (sContentUri == null) {
                    sContentUri = Uri.parse("content://" + IPC_PROVIDER_AUTH);
                    LENGTH_CONTENT_URI = sContentUri.toString().length() + 1;
                }
                if ((Build.VERSION.SDK_INT >= 16 && Build.VERSION.SDK_INT <= 18) || (Build.VERSION.SDK_INT >= 9 && Build.VERSION.SDK_INT <= 10)) {
                    s_cpClientFixer = getCr().acquireContentProviderClient(sContentUri);
                    g.c("ly", "sContentUri = " + sContentUri + " s_cpClientFixer = " + s_cpClientFixer);
                }
            }
        }
    }

    public static void release() {
        try {
            if (s_cpClientFixer != null) {
                s_cpClientFixer.release();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        s_cpClientFixer = null;
        sContentUri = null;
        s_bFixedSysBug = false;
    }
}
