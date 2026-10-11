package com.cmcm.dmc.sdk.g;

import android.content.Context;
import android.database.Cursor;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import com.cmcm.dmc.sdk.a.q;
import com.cmcm.dmc.sdk.g.j;
import com.cmplay.base.util.webview.util.WebUtils;
import com.mopub.mobileads.VastExtensionXmlManager;
import com.unity3d.ads.metadata.MediationMetaData;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONStringer;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class i {

    /* renamed from: a, reason: collision with root package name */
    private static final String f780a = i.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private static String f781b;
    private static String c;
    private Context d;
    private List e;
    private Handler f;

    public i(Context context, Handler handler) {
        this.d = context;
        this.f = handler;
    }

    private String b() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("uptime", System.currentTimeMillis() / 1000);
            jSONObject.put("oslanguage", Locale.getDefault().toString());
            jSONObject.put("timezone", TimeZone.getDefault().getRawOffset());
            jSONObject.put("network", q.j(this.d));
            if (this.e != null) {
                jSONObject.put("receiverOn", new JSONArray((Collection) this.e));
            }
            jSONObject.put("bootTime", SystemClock.elapsedRealtime());
            c = jSONObject.toString();
        } catch (Exception e) {
        }
        return c;
    }

    private void c() {
        if (TextUtils.isEmpty(f781b)) {
            try {
                f781b = k.a(this.d);
            } catch (Throwable th) {
                f781b = "";
            }
        }
    }

    public List<String> a(Cursor cursor, File file, int i) {
        j.b bVar = null;
        try {
            bVar = j.b.a(file);
            bVar.a(String.format("{\"SequenceID\":\"%s\",", Integer.valueOf(com.cmcm.dmc.sdk.a.k.a().b("report_sequence") + 1)));
            if (!TextUtils.isEmpty(com.cmcm.dmc.sdk.a.f.f674b)) {
                bVar.a(String.format("\"env\":\"%s\",", com.cmcm.dmc.sdk.a.f.f674b));
            }
            c();
            bVar.a("\"header\":");
            bVar.a(f781b);
            bVar.a(",\"extras\":");
            bVar.a(b());
            bVar.a(",\"body\":[");
            int columnIndex = cursor.getColumnIndex(WebUtils.VER);
            int columnIndex2 = cursor.getColumnIndex("proto");
            int columnIndex3 = cursor.getColumnIndex("timestamp");
            int columnIndex4 = cursor.getColumnIndex("guid");
            int columnIndex5 = cursor.getColumnIndex(VastExtensionXmlManager.TYPE);
            int columnIndex6 = cursor.getColumnIndex("data");
            ArrayList arrayList = new ArrayList(cursor.getCount());
            while (cursor.moveToNext()) {
                if (cursor.getPosition() != 0) {
                    bVar.a(",");
                }
                String string = cursor.getString(columnIndex4);
                arrayList.add(string);
                JSONStringer jSONStringer = new JSONStringer();
                jSONStringer.object();
                jSONStringer.key(MediationMetaData.KEY_VERSION).value(cursor.getInt(columnIndex));
                jSONStringer.key("protocol").value(cursor.getInt(columnIndex2));
                jSONStringer.key("timestamp").value(cursor.getLong(columnIndex3));
                jSONStringer.key("guid").value(string);
                jSONStringer.key(VastExtensionXmlManager.TYPE).value(cursor.getString(columnIndex5));
                jSONStringer.key("data").value(cursor.getString(columnIndex6));
                jSONStringer.endObject();
                bVar.a(jSONStringer.toString());
                if (bVar.a() > i) {
                    break;
                }
            }
            bVar.a("]}");
            return arrayList;
        } finally {
            q.a(bVar);
        }
    }

    public void a(h hVar, File file) {
        j.b bVar;
        j.b bVar2 = null;
        try {
            bVar = j.b.a(file);
            try {
                bVar.a(String.format("{\"SequenceID\":\"%s\",", Integer.valueOf(com.cmcm.dmc.sdk.a.k.a().b("report_sequence") + 1)));
                if (!TextUtils.isEmpty(com.cmcm.dmc.sdk.a.f.f674b)) {
                    bVar.a(String.format("\"env\":\"%s\",", com.cmcm.dmc.sdk.a.f.f674b));
                }
                c();
                bVar.a("\"header\":");
                bVar.a(f781b);
                bVar.a(",\"extras\":");
                bVar.a(b());
                bVar.a(",\"body\":[");
                JSONStringer jSONStringer = new JSONStringer();
                jSONStringer.object();
                jSONStringer.key(MediationMetaData.KEY_VERSION).value(2008600L);
                jSONStringer.key("protocol").value(1000000L);
                jSONStringer.key("timestamp").value(hVar.a());
                jSONStringer.key("guid").value(hVar.d());
                jSONStringer.key(VastExtensionXmlManager.TYPE).value(hVar.b());
                String c2 = hVar.c();
                jSONStringer.key("data").value(TextUtils.isEmpty(c2) ? null : c.a().b(c2.getBytes()));
                jSONStringer.endObject();
                bVar.a(jSONStringer.toString());
                bVar.a("]}");
                q.a(bVar);
            } catch (Exception e) {
                q.a(bVar);
            } catch (Throwable th) {
                bVar2 = bVar;
                th = th;
                q.a(bVar2);
                throw th;
            }
        } catch (Exception e2) {
            bVar = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public void a(final String str, final File file, final j.c cVar) {
        new Thread(new Runnable() { // from class: com.cmcm.dmc.sdk.g.i.1
            /* JADX WARN: Removed duplicated region for block: B:39:0x00d1  */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void run() {
                /*
                    Method dump skipped, instructions count: 230
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.cmcm.dmc.sdk.g.i.AnonymousClass1.run():void");
            }
        }).start();
    }

    public void a(List list) {
        this.e = list;
    }
}
