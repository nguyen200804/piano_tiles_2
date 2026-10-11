package com.cmcm.dmc.sdk;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import com.cmcm.dmc.sdk.a.f;
import com.cmcm.dmc.sdk.a.i;
import com.cmcm.dmc.sdk.g.j;
import com.mopub.mobileads.VastExtensionXmlManager;
import java.io.File;
import java.util.Map;
import org.json.JSONStringer;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private static final c f701a = new c();

    /* renamed from: b, reason: collision with root package name */
    private volatile boolean f702b;

    public static c a() {
        return f701a;
    }

    public void a(int i) {
        com.cmcm.dmc.sdk.a.c.a(i);
    }

    public void a(String str, Map<String, Object> map) {
        if (!this.f702b) {
            i.a("DmcContext", "call startup() first");
            return;
        }
        try {
            JSONStringer jSONStringer = new JSONStringer();
            jSONStringer.object();
            jSONStringer.key(VastExtensionXmlManager.TYPE).value(str);
            jSONStringer.key("data_map");
            jSONStringer.object();
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                jSONStringer.key(entry.getKey()).value(entry.getValue());
            }
            jSONStringer.endObject();
            jSONStringer.endObject();
            j.a().a(10, "reporter", jSONStringer.toString());
        } catch (Exception e) {
            if (f.f673a) {
                i.a("Failed to report : " + e.getMessage(), new Object[0]);
            }
        }
    }

    public void a(boolean z) {
        j.a().a(z);
    }

    public boolean a(Context context, int i, a aVar) {
        return a(context, i, aVar, null);
    }

    public synchronized boolean a(Context context, int i, a aVar, b bVar) {
        boolean z = true;
        synchronized (this) {
            if (this.f702b) {
                i.a("DmcContext", "retry to startup");
            } else {
                if (context == null) {
                    throw new RuntimeException("invalid parameters");
                }
                File file = new File(context.getFilesDir(), "dmc");
                if (file.exists() || file.mkdirs()) {
                    if (f.f673a) {
                        i.a("DmcContext", "DMC startup...");
                    } else {
                        i.a("DmcContext", "DMC log disabled");
                    }
                    HandlerThread handlerThread = new HandlerThread("DMC");
                    handlerThread.start();
                    Handler handler = new Handler(handlerThread.getLooper());
                    com.cmcm.dmc.sdk.a.b bVar2 = new com.cmcm.dmc.sdk.a.b(aVar, file, context, handler);
                    com.cmcm.dmc.sdk.a.c.a(context, handler, file, bVar2);
                    if (com.cmcm.dmc.sdk.a.c.a("main_switch", "receiver_switch", 1) == 1) {
                        j a2 = j.a();
                        a2.a(com.cmcm.dmc.sdk.a.c.a("reporter", "interval_check_batch", 0));
                        a2.a(context, file);
                        com.cmcm.dmc.sdk.a.c.b();
                        bVar2.a();
                        this.f702b = true;
                    } else {
                        i.a("DmcContext", "don't start dmcSdk");
                        bVar2.a();
                    }
                } else {
                    i.a("DmcContext", "failed to initialize the root directory");
                    z = false;
                }
            }
        }
        return z;
    }
}
