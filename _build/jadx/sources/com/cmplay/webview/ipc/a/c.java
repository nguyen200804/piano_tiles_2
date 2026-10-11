package com.cmplay.webview.ipc.a;

import android.content.ContentValues;
import android.text.TextUtils;
import com.cmplay.webview.ipc.WebIpcProvider;

/* compiled from: WebConfigMgrIPCInvoker.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c implements com.cmplay.webview.ipc.a, com.cmplay.webview.ipc.a.a {

    /* compiled from: WebConfigMgrIPCInvoker.java */
    public static class a extends com.cmplay.ipc.a {
        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // com.cmplay.ipc.b
        public String a(ContentValues contentValues) {
            switch (contentValues.getAsInteger("func_type").intValue()) {
                case 1:
                    return b.a(a()).a(contentValues.getAsString("arg1"), contentValues.getAsString("arg2"));
                case 2:
                    return String.valueOf(b.a(a()).a(contentValues.getAsString("arg1"), contentValues.getAsInteger("arg2").intValue()));
                case 3:
                    return String.valueOf(b.a(a()).a(contentValues.getAsString("arg1"), contentValues.getAsLong("arg2").longValue()));
                case 4:
                    return String.valueOf(b.a(a()).a(contentValues.getAsString("arg1"), contentValues.getAsBoolean("arg2").booleanValue()));
                case 5:
                    b.a(a()).b(contentValues.getAsString("arg1"), contentValues.getAsString("arg2"));
                    return null;
                case 6:
                    b.a(a()).b(contentValues.getAsString("arg1"), contentValues.getAsInteger("arg2").intValue());
                    return null;
                case 7:
                    b.a(a()).b(contentValues.getAsString("arg1"), contentValues.getAsLong("arg2").longValue());
                    return null;
                case 8:
                    b.a(a()).b(contentValues.getAsString("arg1"), contentValues.getAsBoolean("arg2").booleanValue());
                    return null;
                default:
                    return null;
            }
        }
    }

    @Override // com.cmplay.webview.ipc.a.a
    public long a(String str, long j) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("func_type", (Integer) 3);
        contentValues.put("arg1", str);
        contentValues.put("arg2", Long.valueOf(j));
        String a2 = WebIpcProvider.a(contentValues, this);
        return TextUtils.isEmpty(a2) ? j : Long.valueOf(a2).longValue();
    }

    @Override // com.cmplay.webview.ipc.a.a
    public boolean a(String str, boolean z) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("func_type", (Integer) 4);
        contentValues.put("arg1", str);
        contentValues.put("arg2", Boolean.valueOf(z));
        String a2 = WebIpcProvider.a(contentValues, this);
        return TextUtils.isEmpty(a2) ? z : Boolean.valueOf(a2).booleanValue();
    }

    @Override // com.cmplay.webview.ipc.a.a
    public int a(String str, int i) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("func_type", (Integer) 2);
        contentValues.put("arg1", str);
        contentValues.put("arg2", Integer.valueOf(i));
        String a2 = WebIpcProvider.a(contentValues, this);
        return TextUtils.isEmpty(a2) ? i : Integer.valueOf(a2).intValue();
    }

    @Override // com.cmplay.webview.ipc.a.a
    public String a(String str, String str2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("func_type", (Integer) 1);
        contentValues.put("arg1", str);
        contentValues.put("arg2", str2);
        return WebIpcProvider.a(contentValues, this);
    }

    @Override // com.cmplay.webview.ipc.a.a
    public void b(String str, boolean z) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("func_type", (Integer) 8);
        contentValues.put("arg1", str);
        contentValues.put("arg2", Boolean.valueOf(z));
        WebIpcProvider.a(contentValues, this);
    }

    @Override // com.cmplay.webview.ipc.a.a
    public void b(String str, long j) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("func_type", (Integer) 7);
        contentValues.put("arg1", str);
        contentValues.put("arg2", Long.valueOf(j));
        WebIpcProvider.a(contentValues, this);
    }

    @Override // com.cmplay.webview.ipc.a.a
    public void b(String str, int i) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("func_type", (Integer) 6);
        contentValues.put("arg1", str);
        contentValues.put("arg2", Integer.valueOf(i));
        WebIpcProvider.a(contentValues, this);
    }

    @Override // com.cmplay.webview.ipc.a.a
    public void b(String str, String str2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("func_type", (Integer) 5);
        contentValues.put("arg1", str);
        contentValues.put("arg2", str2);
        WebIpcProvider.a(contentValues, this);
    }

    @Override // com.cmplay.webview.ipc.a
    public int a() {
        return 2;
    }
}
