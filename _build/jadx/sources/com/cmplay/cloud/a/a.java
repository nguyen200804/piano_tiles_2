package com.cmplay.cloud.a;

import android.content.ContentValues;
import android.content.Context;
import com.cmplay.cloud.c;
import com.cmplay.ipc.IpcProvider;
import java.util.List;

/* compiled from: CloudCfgGetterIPCInvoker.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a implements c, com.cmplay.ipc.c {

    /* compiled from: CloudCfgGetterIPCInvoker.java */
    /* renamed from: com.cmplay.cloud.a.a$a, reason: collision with other inner class name */
    public static class C0037a extends com.cmplay.ipc.a {
        @Override // com.cmplay.ipc.b
        public String a(ContentValues contentValues) {
            switch (contentValues.getAsInteger("func_type").intValue()) {
                case 1:
                    return com.cmplay.cloud.a.a().b(contentValues.getAsInteger("arg1").intValue(), contentValues.getAsString("arg2"));
                case 2:
                    List<String> a2 = com.cmplay.cloud.a.a().a(contentValues.getAsInteger("arg1").intValue(), contentValues.getAsString("arg2"));
                    if (a2 == null || a2.size() <= 0) {
                        return null;
                    }
                    StringBuilder sb = new StringBuilder(a2.get(0));
                    int i = 1;
                    while (true) {
                        int i2 = i;
                        if (i2 < a2.size()) {
                            sb.append("**").append(a2.get(i2));
                            i = i2 + 1;
                        } else {
                            return sb.toString();
                        }
                    }
                    break;
                case 3:
                    return com.cmplay.cloud.a.a().a(contentValues.getAsInteger("arg1").intValue(), contentValues.getAsString("arg2"), contentValues.getAsString("arg3"), contentValues.getAsString("arg4"));
                case 4:
                    return String.valueOf(com.cmplay.cloud.a.a().a(contentValues.getAsInteger("arg1").intValue(), contentValues.getAsString("arg2"), contentValues.getAsString("arg3"), contentValues.getAsInteger("arg4").intValue()));
                case 5:
                    return String.valueOf(com.cmplay.cloud.a.a().a(contentValues.getAsInteger("arg1").intValue(), contentValues.getAsString("arg2"), contentValues.getAsString("arg3"), contentValues.getAsLong("arg4").longValue()));
                case 6:
                    return String.valueOf(com.cmplay.cloud.a.a().a(contentValues.getAsInteger("arg1").intValue(), contentValues.getAsString("arg2"), contentValues.getAsString("arg3"), contentValues.getAsBoolean("arg4").booleanValue()));
                case 7:
                    return String.valueOf(com.cmplay.cloud.a.a().a(contentValues.getAsInteger("arg1").intValue(), contentValues.getAsString("arg2"), contentValues.getAsString("arg3"), contentValues.getAsDouble("arg4").doubleValue()));
                case 8:
                    com.cmplay.cloud.a.a().a(a(), contentValues.getAsBoolean("arg1").booleanValue());
                    return null;
                case 9:
                    com.cmplay.cloud.a.a().a(a());
                    return null;
                default:
                    return null;
            }
        }
    }

    @Override // com.cmplay.ipc.c
    public int a() {
        return 1;
    }

    @Override // com.cmplay.cloud.c
    public void a(Context context, boolean z) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("func_type", (Integer) 8);
        contentValues.put("arg1", Boolean.valueOf(z));
        IpcProvider.a(contentValues, this);
    }

    @Override // com.cmplay.cloud.c
    public void a(Context context) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("func_type", (Integer) 9);
        IpcProvider.a(contentValues, this);
    }
}
