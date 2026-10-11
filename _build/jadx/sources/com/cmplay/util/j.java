package com.cmplay.util;

import android.text.TextUtils;
import com.applovin.sdk.AppLovinEventTypes;
import com.cmplay.base.util.webview.util.WebUtils;
import com.cmplay.tile2.GameApp;
import com.cmplay.tile2.ui.LoveShareActivity;
import com.cmplay.util.ab;
import com.mopub.common.Constants;
import com.mopub.mobileads.VastExtensionXmlManager;
import com.unity3d.ads.metadata.MediationMetaData;
import java.io.File;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: HttpUtil.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class j {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f1777a;

    /* compiled from: HttpUtil.java */
    public interface a {
        void a();
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [com.cmplay.util.j$1] */
    public static void a(final String str, final a aVar) {
        final String b2 = com.cmplay.h.d.b();
        aa.a("key_uploading_cd_image_url", "");
        aa.a("key_share_h5_url", "");
        aa.a("key_uploading_audio_url", "");
        aa.a("key_share_bannner_url", "");
        new Thread() { // from class: com.cmplay.util.j.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                JSONObject jSONObject;
                String h = j.h("http://p2.cmcm.com/shares/" + b2 + "/url");
                if (!TextUtils.isEmpty(str)) {
                    h = h + "&event_name=" + str;
                }
                try {
                    JSONObject jSONObject2 = new JSONObject(j.e(j.b(ab.a.GET, h)));
                    if (jSONObject2 != null && (jSONObject = jSONObject2.getJSONObject("data")) != null) {
                        if (!jSONObject.isNull("image_url")) {
                            aa.a("key_uploading_cd_image_url", jSONObject.getString("image_url"));
                        }
                        if (!jSONObject.isNull("share_url")) {
                            aa.a("key_share_h5_url", jSONObject.getString("share_url"));
                        }
                        if (!jSONObject.isNull("audio_url")) {
                            aa.a("key_uploading_audio_url", jSONObject.getString("audio_url"));
                        }
                        if (!jSONObject.isNull("banner_url")) {
                            aa.a("key_share_bannner_url", jSONObject.getString("banner_url"));
                        }
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                if (aVar != null) {
                    aVar.a();
                }
            }
        }.start();
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [com.cmplay.util.j$11] */
    /* JADX WARN: Type inference failed for: r2v1, types: [com.cmplay.util.j$12] */
    public static void a(final String str) {
        final String b2 = com.cmplay.h.d.b();
        final String str2 = com.cmplay.h.d.c;
        new Thread() { // from class: com.cmplay.util.j.11
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                JSONObject jSONObject;
                String d = j.d();
                String h = j.h("http://p2.cmcm.com/shares/" + b2);
                if (!TextUtils.isEmpty(str)) {
                    h = h + "&eventName=" + str;
                }
                try {
                    JSONObject jSONObject2 = new JSONObject(j.c(j.b(ab.a.PUT, h), d));
                    if (jSONObject2 != null && (jSONObject = jSONObject2.getJSONObject("data")) != null && !jSONObject.isNull("share_url")) {
                        aa.a("key_share_h5_url", jSONObject.getString("share_url"));
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }.start();
        new Thread() { // from class: com.cmplay.util.j.12
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                JSONObject jSONObject;
                if (com.cmplay.h.d.j) {
                    try {
                        JSONObject jSONObject2 = new JSONObject(j.c(j.b(ab.a.PUT, j.h("http://p2.cmcm.com/shares/" + b2 + "/audio")), str2));
                        if (jSONObject2 != null && (jSONObject = jSONObject2.getJSONObject("data")) != null && !jSONObject.isNull("audio_url")) {
                            aa.a("key_share_audio_url", jSONObject.getString("audio_url"));
                        }
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
                com.cmplay.h.d.j = false;
            }
        }.start();
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.cmplay.util.j$13] */
    public static void a() {
        final String b2 = com.cmplay.h.d.b();
        new Thread() { // from class: com.cmplay.util.j.13
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                JSONObject jSONObject;
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put("music_id", com.cmplay.h.d.d);
                    jSONObject2.put("music_name", com.cmplay.h.d.e);
                    jSONObject2.put("desc", NativeUtil.getLanguageTextByKey("Share_collection_txt"));
                    jSONObject2.put("song_desc", com.cmplay.h.d.g);
                    jSONObject2.put("score", com.cmplay.h.d.f);
                    jSONObject2.put("star", i.e());
                    if (!com.cmplay.h.d.i) {
                        String b3 = aa.b("key_share_cd_file_url", "");
                        if (!TextUtils.isEmpty(b3)) {
                            jSONObject2.put("image_url", b3);
                        }
                    } else {
                        String b4 = aa.b("key_share_cd_file_url", "");
                        if (!TextUtils.isEmpty(b4)) {
                            jSONObject2.put("image_url", b4);
                        } else {
                            jSONObject2.put("image_url", aa.b("key_uploading_cd_image_url", ""));
                        }
                    }
                    if (!com.cmplay.h.d.j) {
                        String b5 = aa.b("key_share_audio_url", "");
                        if (!TextUtils.isEmpty(b5)) {
                            jSONObject2.put("audio_url", b5);
                        }
                    } else {
                        String b6 = aa.b("key_share_audio_url", "");
                        if (!TextUtils.isEmpty(b6)) {
                            jSONObject2.put("audio_url", b6);
                        } else {
                            jSONObject2.put("audio_url", aa.b("key_uploading_audio_url", ""));
                        }
                    }
                    String b7 = aa.b("key_screenshot_url", "");
                    if (!TextUtils.isEmpty(b7)) {
                        jSONObject2.put("banner_url", b7);
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                try {
                    JSONObject jSONObject3 = new JSONObject(j.c(j.b(ab.a.PUT, j.h("http://p2.cmcm.com/shares/" + b2) + "&eventName=collection_system"), jSONObject2.toString()));
                    if (jSONObject3 != null && (jSONObject = jSONObject3.getJSONObject("data")) != null && !jSONObject.isNull("share_url")) {
                        aa.a("key_share_h5_url", jSONObject.getString("share_url"));
                    }
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            }
        }.start();
    }

    static {
        f1777a = NativeUtil.getAndroidIdLast() % 2 == 0;
    }

    public static void b(String str) {
        final String b2 = com.cmplay.h.d.b();
        aa.a("key_top_charts_url", "");
        final List<com.cmplay.a.d> c = com.cmplay.a.c.a().c(str);
        new Thread(new Runnable() { // from class: com.cmplay.util.j.14
            @Override // java.lang.Runnable
            public void run() {
                JSONObject jSONObject;
                com.cmplay.a.e c2 = com.cmplay.a.c.a().c();
                if (c2 != null) {
                    String b3 = j.b(false, c2, c);
                    if (!TextUtils.isEmpty(b3)) {
                        String h = j.h("http://p2.cmcm.com/shares/" + b2 + "/rank_banner" + (j.f1777a ? "_v2" : ""));
                        try {
                            JSONObject jSONObject2 = new JSONObject(j.c(h + "&sig=" + ab.a(ab.a.PUT, h + "&__entity=" + b3), b3));
                            if (jSONObject2 != null && (jSONObject = jSONObject2.getJSONObject("data")) != null && !jSONObject.isNull("image_url")) {
                                aa.a("key_top_charts_url", jSONObject.getString("image_url"));
                            }
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                    }
                }
            }
        }).start();
    }

    public static void c(String str) {
        final String b2 = com.cmplay.h.d.b();
        aa.a("key_singles_ranking_url", "");
        final List<com.cmplay.a.d> d = com.cmplay.a.c.a().d(str);
        new Thread(new Runnable() { // from class: com.cmplay.util.j.15
            @Override // java.lang.Runnable
            public void run() {
                JSONObject jSONObject;
                com.cmplay.a.e c = com.cmplay.a.c.a().c();
                if (c != null) {
                    String b3 = j.b(true, c, d);
                    if (!TextUtils.isEmpty(b3)) {
                        String h = j.h("http://p2.cmcm.com/shares/" + b2 + "/rank_banner" + (j.f1777a ? "_v2" : ""));
                        try {
                            JSONObject jSONObject2 = new JSONObject(j.c(h + "&sig=" + ab.a(ab.a.PUT, h + "&__entity=" + b3), b3));
                            if (jSONObject2 != null && (jSONObject = jSONObject2.getJSONObject("data")) != null && !jSONObject.isNull("image_url")) {
                                aa.a("key_singles_ranking_url", jSONObject.getString("image_url"));
                            }
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                    }
                }
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(boolean z, com.cmplay.a.e eVar, List<com.cmplay.a.d> list) {
        Object languageTextByKey;
        com.cmplay.a.c a2 = com.cmplay.a.c.a();
        List<com.cmplay.a.d> b2 = a2.b(eVar.a(), list);
        if (b2 == null || b2.size() == 0) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            int a3 = a2.a(eVar.f1144a, list);
            if (a3 < 0) {
                return null;
            }
            jSONObject.put("user_ranking", a3 + 1);
            if (z) {
                languageTextByKey = NativeUtil.getSongName();
            } else {
                languageTextByKey = NativeUtil.getLanguageTextByKey("leaderboard");
            }
            jSONObject.put("rank_name", languageTextByKey);
            jSONObject.put(VastExtensionXmlManager.TYPE, z ? 1 : 0);
            jSONObject.put("access_token", com.cmplay.a.a.a().e());
            if (f1777a) {
                if (z) {
                    jSONObject.put("order", NativeUtil.getSongOrder());
                } else {
                    jSONObject.put("order", 0);
                }
            }
            JSONArray jSONArray = new JSONArray();
            int i = -1;
            for (com.cmplay.a.d dVar : b2) {
                JSONObject jSONObject2 = new JSONObject();
                if (i < 0) {
                    int a4 = a2.a(dVar.f1142a, list);
                    if (a4 < 0) {
                        return null;
                    }
                    i = a4 + 1;
                } else {
                    i++;
                }
                jSONObject2.put("ranking", i);
                jSONObject2.put("user_id", dVar.f1142a);
                jSONObject2.put("user_name", dVar.f1143b);
                int i2 = dVar.d;
                int i3 = dVar.c;
                if (z) {
                    if (i2 > 3) {
                        i3 = i2 - 3;
                        i2 = 0;
                    } else {
                        i3 = 0;
                    }
                }
                jSONObject2.put("stars", i2);
                jSONObject2.put("crowns", i3);
                jSONObject2.put("score", dVar.g);
                jSONObject2.put("user_level", dVar.e);
                jSONArray.put(jSONObject2);
            }
            jSONObject.put("list", jSONArray);
            return jSONObject.toString();
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* JADX WARN: Type inference failed for: r2v6, types: [com.cmplay.util.j$16] */
    public static void a(String str, String str2, String str3) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("music_id", com.cmplay.h.d.d);
            jSONObject.put("music_name", NativeUtil.getSongName());
            jSONObject.put("score", NativeUtil.getScore());
            jSONObject.put("star", String.valueOf(i.e()));
            if (!TextUtils.isEmpty(str)) {
                jSONObject.put("eventName", str);
            }
            jSONObject.put("activity_status", NativeUtil.getChallengeCopyAllFinishStatus() ? 1 : 2);
            if (!TextUtils.isEmpty(str2)) {
                jSONObject.put(MediationMetaData.KEY_NAME, str2);
            }
            if (!TextUtils.isEmpty(str3)) {
                jSONObject.put("words", str3);
            }
            if (!com.cmplay.h.d.i) {
                String b2 = aa.b("key_share_cd_file_url", "");
                if (!TextUtils.isEmpty(b2)) {
                    jSONObject.put("image_url", b2);
                }
            } else {
                String b3 = aa.b("key_share_cd_file_url", "");
                if (!TextUtils.isEmpty(b3)) {
                    jSONObject.put("image_url", b3);
                } else {
                    jSONObject.put("image_url", aa.b("key_uploading_cd_image_url", ""));
                }
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        final String jSONObject2 = jSONObject.toString();
        String h = h("http://p2.cmcm.com/shares/" + com.cmplay.h.d.b() + "/event_banner");
        if (!TextUtils.isEmpty(str)) {
            h = h + "&eventName=" + str;
        }
        final String b4 = b(ab.a.PUT, h);
        aa.a("key_screenshot_url", "");
        new Thread() { // from class: com.cmplay.util.j.16
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                String c = j.c(b4, jSONObject2);
                if (!TextUtils.isEmpty(c)) {
                    try {
                        aa.a("key_screenshot_url", new JSONObject(c).getJSONObject("data").getString("image_url"));
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                    }
                }
            }
        }.start();
    }

    /* JADX WARN: Type inference failed for: r2v5, types: [com.cmplay.util.j$17] */
    public static void a(int i, String str, String str2, int i2) {
        String languageTextByKey;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(VastExtensionXmlManager.TYPE, String.valueOf(i));
            jSONObject.put(MediationMetaData.KEY_NAME, str);
            jSONObject.put("score", str2);
            jSONObject.put("star", String.valueOf(i2));
            if (i == 0) {
                languageTextByKey = NativeUtil.getLanguageTextByKey("sharepic_score");
            } else if (i2 == 16) {
                int i3 = 0;
                try {
                    i3 = Integer.parseInt(str2);
                } catch (NumberFormatException e) {
                }
                if (i3 == 1) {
                    languageTextByKey = NativeUtil.getLanguageTextByKey("jd_world_tile1");
                } else {
                    languageTextByKey = NativeUtil.getLanguageTextByKey("jd_world_tile2");
                }
            } else {
                languageTextByKey = NativeUtil.getLanguageTextByKey("sharepic_title_tile");
            }
            jSONObject.put("unit", languageTextByKey);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        final String jSONObject2 = jSONObject.toString();
        final String b2 = b(ab.a.PUT, h("http://p2.cmcm.com/shares/" + com.cmplay.h.d.b() + "/banner"));
        aa.a("key_screenshot_url", "");
        new Thread() { // from class: com.cmplay.util.j.17
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                String c = j.c(b2, jSONObject2);
                if (!TextUtils.isEmpty(c)) {
                    try {
                        aa.a("key_screenshot_url", new JSONObject(c).getJSONObject("data").getString("image_url"));
                    } catch (JSONException e3) {
                        e3.printStackTrace();
                    }
                }
            }
        }.start();
    }

    /* JADX WARN: Type inference failed for: r2v6, types: [com.cmplay.util.j$18] */
    public static void a(String str, String str2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("songName", com.cmplay.h.d.e);
            jSONObject.put("songId", com.cmplay.h.d.d);
            if (!TextUtils.isEmpty(str2)) {
                jSONObject.put("words", str2);
            }
            if (!com.cmplay.h.d.i) {
                String b2 = aa.b("key_share_cd_file_url", "");
                if (!TextUtils.isEmpty(b2)) {
                    jSONObject.put("url ", b2);
                }
            } else {
                String b3 = aa.b("key_share_cd_file_url", "");
                if (!TextUtils.isEmpty(b3)) {
                    jSONObject.put("url ", b3);
                } else {
                    jSONObject.put("url ", aa.b("key_uploading_cd_image_url", ""));
                }
            }
            if (!TextUtils.isEmpty(str)) {
                jSONObject.put("eventName", str);
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        final String jSONObject2 = jSONObject.toString();
        String h = h("http://p2.cmcm.com/shares/" + com.cmplay.h.d.b() + "/event_banner");
        if (!TextUtils.isEmpty(str)) {
            h = h + "&eventName=" + str;
        }
        final String b4 = b(ab.a.PUT, h);
        aa.a("key_screenshot_url", "");
        new Thread() { // from class: com.cmplay.util.j.18
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                String c = j.c(b4, jSONObject2);
                if (!TextUtils.isEmpty(c)) {
                    try {
                        aa.a("key_screenshot_url", new JSONObject(c).getJSONObject("data").getString("image_url"));
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                    }
                }
            }
        }.start();
    }

    /* JADX WARN: Type inference failed for: r1v7, types: [com.cmplay.util.j$2] */
    public static void b() {
        final String b2 = b(ab.a.PUT, h("http://p2.cmcm.com/shares/" + com.cmplay.h.d.b() + "/event_banner") + "&eventName=valentine_2017");
        aa.a("key_valentine_card_url", "");
        new Thread() { // from class: com.cmplay.util.j.2
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("songName", NativeUtil.getSongName());
                    jSONObject.put("songId", com.cmplay.h.d.d);
                    jSONObject.put(MediationMetaData.KEY_NAME, LoveShareActivity.f1635b[0]);
                    jSONObject.put("words", LoveShareActivity.f1635b[1]);
                    String b3 = aa.b("key_share_cd_file_url", "");
                    if (!TextUtils.isEmpty(b3)) {
                        jSONObject.put("url", b3);
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                String c = j.c(b2, jSONObject.toString());
                if (!TextUtils.isEmpty(c)) {
                    try {
                        aa.a("key_valentine_card_url", new JSONObject(c).getJSONObject("data").getString("image_url"));
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                    }
                }
            }
        }.start();
    }

    /* JADX WARN: Type inference failed for: r1v7, types: [com.cmplay.util.j$3] */
    public static void b(final String str, final String str2) {
        final String b2 = b(ab.a.PUT, h("http://p2.cmcm.com/shares/" + com.cmplay.h.d.b() + "/event_banner") + "&eventName=song_mix");
        aa.a("key_screenshot_url", "");
        new Thread() { // from class: com.cmplay.util.j.3
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("songId", com.cmplay.h.d.d);
                    jSONObject.put("songName", str);
                    jSONObject.put("words", str2);
                    String b3 = aa.b("key_share_cd_file_url", "");
                    if (!TextUtils.isEmpty(b3)) {
                        jSONObject.put("url", b3);
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                String c = j.c(b2, jSONObject.toString());
                if (!TextUtils.isEmpty(c)) {
                    try {
                        aa.a("key_screenshot_url", new JSONObject(c).getJSONObject("data").getString("image_url"));
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                    }
                }
            }
        }.start();
    }

    /* JADX WARN: Type inference failed for: r1v7, types: [com.cmplay.util.j$4] */
    public static void a(int i) {
        final String b2 = b(ab.a.PUT, h("http://p2.cmcm.com/shares/" + com.cmplay.h.d.b() + "/vip_banner") + "&vipId=" + i);
        aa.a("key_vip_banner_url", "");
        new Thread() { // from class: com.cmplay.util.j.4
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                String e = j.e(b2);
                if (!TextUtils.isEmpty(e)) {
                    try {
                        aa.a("key_vip_banner_url", new JSONObject(e).getJSONObject("data").getString("image_url"));
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                    }
                }
            }
        }.start();
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [com.cmplay.util.j$5] */
    public static void a(final int i, final String str, final int i2, final int i3) {
        final String b2 = b(ab.a.PUT, h("http://p2.cmcm.com/shares/" + com.cmplay.h.d.b() + "/event_banner") + "&eventName=christmas_2016");
        aa.a("key_copy_url", "");
        new Thread() { // from class: com.cmplay.util.j.5
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("status", i);
                    jSONObject.put("songName", str);
                    jSONObject.put("star", i2);
                    jSONObject.put(AppLovinEventTypes.USER_COMPLETED_LEVEL, i3);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                String c = j.c(b2, jSONObject.toString());
                if (!TextUtils.isEmpty(c)) {
                    try {
                        aa.a("key_copy_url", new JSONObject(c).getJSONObject("data").getString("image_url"));
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                    }
                }
            }
        }.start();
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [com.cmplay.util.j$6] */
    public static void a(final int i, final String str, final int i2, final int i3, final int i4, final int i5, final int i6) {
        final String b2 = b(ab.a.PUT, h("http://p2.cmcm.com/shares/" + com.cmplay.h.d.b() + "/event_banner") + "&eventName=easterday_add");
        aa.a("key_copy_url", "");
        new Thread() { // from class: com.cmplay.util.j.6
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("status", i);
                    jSONObject.put("music_name", str);
                    jSONObject.put("star", i2);
                    jSONObject.put(AppLovinEventTypes.USER_COMPLETED_LEVEL, i3);
                    jSONObject.put("score", i4);
                    jSONObject.put("total_score", i5);
                    jSONObject.put(VastExtensionXmlManager.TYPE, i6);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                String c = j.c(b2, jSONObject.toString());
                if (!TextUtils.isEmpty(c)) {
                    try {
                        aa.a("key_copy_url", new JSONObject(c).getJSONObject("data").getString("image_url"));
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                    }
                }
            }
        }.start();
    }

    /* JADX WARN: Type inference failed for: r1v7, types: [com.cmplay.util.j$7] */
    public static void d(final String str) {
        final String b2 = b(ab.a.PUT, h("http://p2.cmcm.com/shares/" + com.cmplay.h.d.b() + "/event_banner") + "&eventName=easterday");
        aa.a("key_christmas_card_url", "");
        new Thread() { // from class: com.cmplay.util.j.7
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(MediationMetaData.KEY_NAME, str);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                String c = j.c(b2, jSONObject.toString());
                if (!TextUtils.isEmpty(c)) {
                    try {
                        aa.a("key_christmas_card_url", new JSONObject(c).getJSONObject("data").getString("image_url"));
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                    }
                }
            }
        }.start();
    }

    /* JADX WARN: Type inference failed for: r1v7, types: [com.cmplay.util.j$8] */
    public static void a(final int i, final int i2) {
        final String b2 = b(ab.a.PUT, h("http://p2.cmcm.com/shares/" + com.cmplay.h.d.b() + "/event_banner") + "&eventName=halloween_2016");
        aa.a("key_halloween_banner_url", "");
        new Thread() { // from class: com.cmplay.util.j.8
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("status", i);
                    jSONObject.put(AppLovinEventTypes.USER_COMPLETED_LEVEL, i2);
                    jSONObject.put(WebUtils.LANG, j.e());
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                String c = j.c(b2, jSONObject.toString());
                if (!TextUtils.isEmpty(c)) {
                    try {
                        aa.a("key_halloween_banner_url", new JSONObject(c).getJSONObject("data").getString("image_url"));
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                    }
                }
            }
        }.start();
    }

    /* JADX WARN: Type inference failed for: r1v7, types: [com.cmplay.util.j$9] */
    public static void a(final String str, final int i, final float f) {
        final String b2 = b(ab.a.PUT, h("http://p2.cmcm.com/shares/" + com.cmplay.h.d.b() + "/event_banner") + "&eventName=master");
        aa.a("key_master_banner_url", "");
        new Thread() { // from class: com.cmplay.util.j.9
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("speed", str);
                    jSONObject.put("rank", i);
                    jSONObject.put("score", f);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                String c = j.c(b2, jSONObject.toString());
                if (!TextUtils.isEmpty(c)) {
                    try {
                        aa.a("key_master_banner_url", new JSONObject(c).getJSONObject("data").getString("image_url"));
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                    }
                }
            }
        }.start();
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.cmplay.util.j$10] */
    public static void c() {
        final String b2 = com.cmplay.h.d.b();
        new Thread() { // from class: com.cmplay.util.j.10
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                JSONObject jSONObject;
                com.cmplay.h.d.i = true;
                com.cmplay.h.d.k = false;
                String h = j.h("http://p2.cmcm.com/shares/" + b2 + "/image");
                String d = i.d();
                if (!TextUtils.isEmpty(d)) {
                    String d2 = j.d(j.b(ab.a.PUT, h), d);
                    if (!TextUtils.isEmpty(d2)) {
                        i.a(new File(d));
                        try {
                            JSONObject jSONObject2 = new JSONObject(d2);
                            if (jSONObject2 != null && (jSONObject = jSONObject2.getJSONObject("data")) != null && !jSONObject.isNull("image_url")) {
                                aa.a("key_share_cd_file_url", jSONObject.getString("image_url"));
                            }
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                    }
                }
                com.cmplay.h.d.k = true;
            }
        }.start();
    }

    public static String d() {
        String str;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("music_id", com.cmplay.h.d.d);
            jSONObject.put("music_name", com.cmplay.h.d.e);
            jSONObject.put("score", com.cmplay.h.d.f);
            jSONObject.put("star", i.e());
            if (18 == com.cmplay.h.d.l) {
                str = NativeUtil.getShareDescription();
            } else {
                str = com.cmplay.h.d.h;
            }
            jSONObject.put("desc", str);
            if (!com.cmplay.h.d.i) {
                String b2 = aa.b("key_share_cd_file_url", "");
                if (!TextUtils.isEmpty(b2)) {
                    jSONObject.put("image_url", b2);
                }
            } else {
                String b3 = aa.b("key_share_cd_file_url", "");
                if (!TextUtils.isEmpty(b3)) {
                    jSONObject.put("image_url", b3);
                } else {
                    jSONObject.put("image_url", aa.b("key_uploading_cd_image_url", ""));
                }
            }
            if (!com.cmplay.h.d.j) {
                String b4 = aa.b("key_share_audio_url", "");
                if (!TextUtils.isEmpty(b4)) {
                    jSONObject.put("audio_url", b4);
                }
            } else {
                String b5 = aa.b("key_share_audio_url", "");
                if (!TextUtils.isEmpty(b5)) {
                    jSONObject.put("audio_url", b5);
                } else {
                    jSONObject.put("audio_url", aa.b("key_uploading_audio_url", ""));
                }
            }
            String b6 = aa.b("key_screenshot_url", "");
            if (!TextUtils.isEmpty(b6)) {
                jSONObject.put("banner_url", b6);
            }
            if (LoveShareActivity.f1634a > 0) {
                jSONObject.put(MediationMetaData.KEY_NAME, LoveShareActivity.f1635b[0]);
                jSONObject.put("bless", LoveShareActivity.f1635b[1]);
                jSONObject.put("from", "love");
                jSONObject.put("dear", LoveShareActivity.f1635b[2]);
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(ab.a aVar, String str) {
        String a2 = ab.a(aVar, str);
        try {
            if (new URL(str).getQuery() == null) {
                return str + "?sig=" + a2;
            }
        } catch (MalformedURLException e) {
            e.printStackTrace();
        }
        return str + "&sig=" + a2;
    }

    public static String e() {
        String b2 = aa.b("key_language_selected", "en");
        String b3 = aa.b("key_country_selected", "");
        StringBuilder sb = new StringBuilder();
        sb.append(b2);
        if (!TextUtils.isEmpty(b3)) {
            sb.append("-");
            sb.append(b3);
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String h(String str) {
        return str + "?_plat=android&_cv=" + e.a(GameApp.f1598a, GameApp.f1598a.getPackageName()) + "&_network=" + t.a(GameApp.f1598a) + "&_lang=" + e() + "&music_id=" + com.cmplay.h.d.d;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00ee A[LOOP:0: B:6:0x001a->B:42:0x00ee, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x008f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00cb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String c(java.lang.String r17, java.lang.String r18) {
        /*
            Method dump skipped, instructions count: 249
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmplay.util.j.c(java.lang.String, java.lang.String):java.lang.String");
    }

    private static String f() {
        com.cmplay.kinfoc.report.a g = com.cmplay.kinfoc.report.c.g(GameApp.f1598a);
        return String.format("mt=%s;os=%s;cv=%s", g.t, String.valueOf(g.D), g.f1563b);
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x010f A[LOOP:0: B:6:0x0014->B:52:0x010f, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00aa A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00cc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String d(java.lang.String r17, java.lang.String r18) {
        /*
            Method dump skipped, instructions count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmplay.util.j.d(java.lang.String, java.lang.String):java.lang.String");
    }

    private static void a(HttpURLConnection httpURLConnection, ab.a aVar, String str) throws ProtocolException {
        httpURLConnection.setConnectTimeout(Constants.TEN_SECONDS_MILLIS);
        httpURLConnection.setReadTimeout(20000);
        httpURLConnection.setDoInput(true);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setRequestMethod(aVar.a());
        httpURLConnection.setRequestProperty("Connection", "Keep-Alive");
        httpURLConnection.setRequestProperty("Content-Type", "multipart/form-data; boundary=" + str);
        httpURLConnection.setRequestProperty("User-Agent", f());
        Locale locale = Locale.getDefault();
        String country = locale.getCountry();
        String language = locale.getLanguage();
        httpURLConnection.setRequestProperty("Accept-Language", String.format("%s-%s,%s;q=0.8", language, country, language));
        httpURLConnection.setRequestProperty("Content-Type", "application/json");
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x009c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String e(java.lang.String r13) {
        /*
            r3 = 0
            java.lang.String r6 = ""
            r1 = 0
            r4 = 0
            java.lang.String r2 = ""
            long r4 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L99 java.lang.Exception -> La8
            java.net.URL r0 = new java.net.URL     // Catch: java.lang.Throwable -> L99 java.lang.Exception -> La8
            r0.<init>(r13)     // Catch: java.lang.Throwable -> L99 java.lang.Exception -> La8
            java.net.URLConnection r0 = r0.openConnection()     // Catch: java.lang.Throwable -> L99 java.lang.Exception -> La8
            java.net.HttpURLConnection r0 = (java.net.HttpURLConnection) r0     // Catch: java.lang.Throwable -> L99 java.lang.Exception -> La8
            r1 = 0
            r0.setDoOutput(r1)     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> Lae
            r1 = 1
            r0.setDoInput(r1)     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> Lae
            r1 = 0
            r0.setUseCaches(r1)     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> Lae
            r1 = 10000(0x2710, float:1.4013E-41)
            r0.setReadTimeout(r1)     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> Lae
            r1 = 10000(0x2710, float:1.4013E-41)
            r0.setConnectTimeout(r1)     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> Lae
            java.lang.String r1 = "GET"
            r0.setRequestMethod(r1)     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> Lae
            r0.connect()     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> Lae
            int r1 = r0.getResponseCode()     // Catch: java.lang.Throwable -> La0 java.lang.Exception -> Lae
            r3 = 200(0xc8, float:2.8E-43)
            if (r1 == r3) goto L41
            r3 = 201(0xc9, float:2.82E-43)
            if (r1 != r3) goto Lb9
        L41:
            java.lang.StringBuffer r3 = new java.lang.StringBuffer     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> La0
            r3.<init>()     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> La0
            java.io.BufferedReader r7 = new java.io.BufferedReader     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> La0
            java.io.InputStreamReader r8 = new java.io.InputStreamReader     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> La0
            java.io.InputStream r9 = r0.getInputStream()     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> La0
            java.lang.String r10 = "UTF-8"
            r8.<init>(r9, r10)     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> La0
            r9 = 10240(0x2800, float:1.4349E-41)
            r7.<init>(r8, r9)     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> La0
        L58:
            java.lang.String r8 = r7.readLine()     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> La0
            boolean r9 = android.text.TextUtils.isEmpty(r8)     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> La0
            if (r9 != 0) goto L8b
            java.lang.StringBuffer r8 = r3.append(r8)     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> La0
            java.lang.String r9 = "\n"
            r8.append(r9)     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> La0
            goto L58
        L6c:
            r2 = move-exception
            r3 = r1
            r11 = r4
            r4 = r0
            r0 = r11
        L71:
            java.lang.String r2 = r2.getMessage()     // Catch: java.lang.Throwable -> La5
            if (r4 == 0) goto Lb4
            r4.disconnect()
            r4 = r0
            r1 = r3
        L7c:
            com.cmplay.h.f r0 = com.cmplay.h.f.b()
            long r8 = java.lang.System.currentTimeMillis()
            long r4 = r8 - r4
            r3 = r13
            r0.a(r1, r2, r3, r4)
            return r6
        L8b:
            r7.close()     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> La0
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Exception -> L6c java.lang.Throwable -> La0
        L92:
            if (r0 == 0) goto Lb7
            r0.disconnect()
            r6 = r3
            goto L7c
        L99:
            r0 = move-exception
        L9a:
            if (r1 == 0) goto L9f
            r1.disconnect()
        L9f:
            throw r0
        La0:
            r1 = move-exception
            r11 = r1
            r1 = r0
            r0 = r11
            goto L9a
        La5:
            r0 = move-exception
            r1 = r4
            goto L9a
        La8:
            r0 = move-exception
            r2 = r0
            r11 = r4
            r4 = r1
            r0 = r11
            goto L71
        Lae:
            r1 = move-exception
            r2 = r1
            r11 = r4
            r4 = r0
            r0 = r11
            goto L71
        Lb4:
            r4 = r0
            r1 = r3
            goto L7c
        Lb7:
            r6 = r3
            goto L7c
        Lb9:
            r3 = r6
            goto L92
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmplay.util.j.e(java.lang.String):java.lang.String");
    }

    public static boolean f(String str) {
        if (TextUtils.isEmpty(str) || !str.contains("Unable to resolve host") || !str.contains("p2.cmcm.com")) {
            return false;
        }
        return true;
    }

    private static String i(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return str.replace("p2.cmcm.com", com.cmplay.h.d.f1383a);
    }
}
