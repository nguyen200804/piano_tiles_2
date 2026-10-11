package com.facebook.ads.internal.util;

import android.content.Context;
import android.support.annotation.WorkerThread;
import android.util.Log;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.mopub.mobileads.VastExtensionXmlManager;
import java.io.File;
import java.io.FileOutputStream;
import java.util.UUID;
import org.apache.commons.io.IOUtils;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class o {

    /* renamed from: a, reason: collision with root package name */
    private static final String f2898a = o.class.getName();

    /* renamed from: b, reason: collision with root package name */
    private static final Object f2899b = new Object();

    public static com.facebook.ads.internal.g.p a(Exception exc, Context context) {
        com.facebook.ads.internal.g.p pVar = new com.facebook.ads.internal.g.p(com.facebook.ads.internal.f.g.b(), com.facebook.ads.internal.f.g.c(), new n(ag.a(exc), com.facebook.ads.internal.f.j.f, true));
        a(pVar, context);
        return pVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x0086 A[Catch: all -> 0x0070, IOException -> 0x008f, TryCatch #4 {IOException -> 0x008f, blocks: (B:58:0x0081, B:50:0x0086, B:52:0x008b), top: B:57:0x0081, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x008b A[Catch: all -> 0x0070, IOException -> 0x008f, TRY_LEAVE, TryCatch #4 {IOException -> 0x008f, blocks: (B:58:0x0081, B:50:0x0086, B:52:0x008b), top: B:57:0x0081, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0081 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @android.support.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.json.JSONArray a(android.content.Context r8) {
        /*
            Method dump skipped, instructions count: 178
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.internal.util.o.a(android.content.Context):org.json.JSONArray");
    }

    private static JSONObject a(com.facebook.ads.internal.g.p pVar) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(FacebookAdapter.KEY_ID, UUID.randomUUID().toString());
        jSONObject.put(VastExtensionXmlManager.TYPE, pVar.b());
        jSONObject.put("time", g.a(pVar.e()));
        jSONObject.put("session_time", g.a(pVar.f()));
        jSONObject.put("session_id", pVar.g());
        jSONObject.put("data", pVar.h() != null ? new JSONObject(pVar.h()) : new JSONObject());
        return jSONObject;
    }

    public static void a(com.facebook.ads.internal.g.p pVar, Context context) {
        if (pVar == null || context == null) {
            return;
        }
        synchronized (f2899b) {
            try {
                JSONObject a2 = a(pVar);
                FileOutputStream openFileOutput = context.openFileOutput("crasheslog", 32768);
                openFileOutput.write((a2.toString() + IOUtils.LINE_SEPARATOR_UNIX).getBytes());
                openFileOutput.close();
            } catch (Exception e) {
                Log.e(f2898a, "Failed to store crash", e);
            }
        }
    }

    @WorkerThread
    public static void b(Context context) {
        synchronized (f2899b) {
            File file = new File(context.getFilesDir(), "crasheslog");
            if (file.exists()) {
                file.delete();
            }
        }
    }
}
