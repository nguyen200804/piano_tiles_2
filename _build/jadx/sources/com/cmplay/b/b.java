package com.cmplay.b;

import android.os.Handler;
import android.text.TextUtils;
import com.cmplay.tile2.GameApp;
import com.cmplay.tile2.ui.TipsGetGiftSuccedDialog;
import com.cmplay.util.NativeUtil;
import com.cmplay.util.d;
import com.cmplay.util.t;
import com.cmplay.util.v;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import org.cocos2dx.lib.GameControllerDelegate;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: AppCardHelper.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private static b f1171a;

    public static b a() {
        if (f1171a == null) {
            synchronized (b.class) {
                if (f1171a == null) {
                    f1171a = new b();
                }
            }
        }
        return f1171a;
    }

    public void b() {
        if (com.cmplay.i.c.b()) {
            com.cmplay.util.a.a.a(new Runnable() { // from class: com.cmplay.b.b.1
                @Override // java.lang.Runnable
                public void run() {
                    List c;
                    boolean z = (com.cmplay.cloud.a.a().a(2, "section_common", "cloud_key_is_load_card_image", true) || d.a(GameApp.f1598a)) ? false : true;
                    boolean c2 = t.c(GameApp.f1598a);
                    for (String str : new String[]{"section_result_card", "section_setting_card", "section_battle_card", "section_popup_card"}) {
                        String b2 = com.cmplay.cloud.a.a().b(2, str);
                        if (!TextUtils.isEmpty(b2) && (c = b.this.c(b2)) != null && c.size() > 0) {
                            Collections.sort(c, new a());
                            Iterator it = c.iterator();
                            while (it.hasNext()) {
                                c.a((com.cmplay.b.a) it.next(), str, c2, z);
                            }
                        }
                    }
                }
            });
        }
    }

    public String a(int i) {
        String b2 = com.cmplay.cloud.a.a().b(2, c(i));
        int a2 = com.cmplay.cloud.a.a().a(2, "section_common", "cloud_key_card_award_max_day", 3);
        if (TextUtils.isEmpty(b2)) {
            a(5, i, 0, "");
            return "";
        }
        com.cmplay.b.a a3 = a(b2, i, a2);
        if (a3 != null) {
            return a3.b();
        }
        return "";
    }

    public void c() {
        List<String> b2;
        String a2 = com.cmplay.cloud.a.a().a(2, "section_common", "cloud_key_report_app_install", "");
        if (!TextUtils.isEmpty(a2) && (b2 = d.b(a2)) != null && b2.size() != 0) {
            int size = b2.size();
            for (int i = 0; i < size; i++) {
                com.cmplay.g.c.a(b2.get(i));
            }
        }
    }

    public void b(int i) {
        int a2 = com.cmplay.util.b.a.a("card_show:" + i);
        if (a2 == -1) {
            a2 = 0;
        }
        com.cmplay.util.b.a.a("card_show:" + i, a2 + 1);
        int a3 = com.cmplay.util.b.a.a("card_show_max:" + i);
        com.cmplay.util.b.a.a("card_show_max:" + i, (a3 != -1 ? a3 : 0) + 1);
    }

    public void a(String str) {
        com.cmplay.b.a aVar = new com.cmplay.b.a(str);
        if (aVar != null && aVar.f1169a != 0) {
            com.cmplay.util.b.a.a("card_click:" + aVar.f1169a, true);
        }
    }

    public void d() {
        int a2 = com.cmplay.util.b.a.a("award_max:" + d.a());
        if (a2 == -1) {
            a2 = 0;
        }
        com.cmplay.util.b.a.a("award_max:" + d.a(), a2 + 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<com.cmplay.b.a> f() {
        String b2 = com.cmplay.util.b.a.b("card_install:");
        if (TextUtils.isEmpty(b2)) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = new JSONArray(b2);
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                arrayList.add(new com.cmplay.b.a(jSONArray.optJSONObject(i)));
            }
            return arrayList;
        } catch (JSONException e) {
            try {
                arrayList.add(new com.cmplay.b.a(new JSONObject(b2)));
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            e.printStackTrace();
            return arrayList;
        }
    }

    public void e() {
        com.cmplay.util.a.a.a(new Runnable() { // from class: com.cmplay.b.b.2
            @Override // java.lang.Runnable
            public void run() {
                List f = b.this.f();
                if (f != null && f.size() != 0) {
                    int size = f.size();
                    for (int i = 0; i < size; i++) {
                        com.cmplay.b.a aVar = (com.cmplay.b.a) f.get(i);
                        if (v.a(GameApp.f1598a, aVar.h)) {
                            b.this.b(aVar);
                        }
                    }
                }
            }
        });
    }

    public void b(String str) {
        List<com.cmplay.b.a> f;
        boolean z;
        com.cmplay.b.a aVar = new com.cmplay.b.a(str);
        if (aVar != null && !TextUtils.isEmpty(aVar.h) && (f = f()) != null) {
            int size = f.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    z = false;
                    break;
                } else if (aVar.f1169a != f.get(i).f1169a) {
                    i++;
                } else {
                    z = true;
                    break;
                }
            }
            if (!z) {
                f.add(aVar);
                JSONArray jSONArray = new JSONArray();
                Iterator<com.cmplay.b.a> it = f.iterator();
                while (it.hasNext()) {
                    jSONArray.put(it.next().a());
                }
                com.cmplay.util.b.a.a("card_install:", jSONArray.toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.cmplay.b.a aVar) {
        List<com.cmplay.b.a> f = f();
        if (f != null && f.size() > 0) {
            int size = f.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    break;
                }
                if (aVar.f1169a != f.get(i).f1169a) {
                    i++;
                } else {
                    f.remove(i);
                    break;
                }
            }
            JSONArray jSONArray = new JSONArray();
            Iterator<com.cmplay.b.a> it = f.iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next().a());
            }
            com.cmplay.util.b.a.a("card_install:", jSONArray.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final com.cmplay.b.a aVar) {
        if (aVar.c == 3) {
            com.cmplay.util.d.a(new d.a() { // from class: com.cmplay.b.b.3
                @Override // com.cmplay.util.d.a
                public void a() {
                    NativeUtil.notifyCheckRecommendInstalled();
                    b.this.a(aVar);
                    e.a(GameApp.f1598a).a(String.valueOf(aVar.f1169a), String.valueOf(System.currentTimeMillis()));
                }
            });
            return;
        }
        NativeUtil.DiamondToLogFile("gold_source_card_install=" + aVar.c + ", =" + aVar.f1169a);
        d();
        com.cmplay.util.d.a(new d.a() { // from class: com.cmplay.b.b.4
            @Override // com.cmplay.util.d.a
            public void a() {
                if (aVar.c == 1) {
                    NativeUtil.addDiamonds(GameControllerDelegate.BUTTON_RIGHT_SHOULDER, aVar.d);
                } else if (aVar.c == 2) {
                    NativeUtil.modifyGold(true, aVar.d, "");
                }
                NativeUtil.notifyCheckRecommendInstalled();
                b.this.a(aVar);
                e.a(GameApp.f1598a).a(String.valueOf(aVar.f1169a), String.valueOf(System.currentTimeMillis()));
            }
        });
        new Handler().postDelayed(new Runnable() { // from class: com.cmplay.b.b.5
            @Override // java.lang.Runnable
            public void run() {
                TipsGetGiftSuccedDialog.a(GameApp.f1598a, aVar.d, aVar.c);
            }
        }, 500L);
    }

    private com.cmplay.b.a a(String str, int i, int i2) {
        com.cmplay.b.a aVar = null;
        List<com.cmplay.b.a> c = c(str);
        if (com.cmplay.util.b.a.a("award_max:" + d.a()) >= i2) {
            a(4, i, 0, "");
            return null;
        }
        if (c == null || c.size() <= 0) {
            return null;
        }
        Collections.sort(c, new a());
        for (com.cmplay.b.a aVar2 : c) {
            int a2 = com.cmplay.util.b.a.a("card_show:" + aVar2.f1169a);
            boolean c2 = com.cmplay.util.b.a.c("card_click:" + aVar2.f1169a);
            if (i != 4 || com.cmplay.util.b.a.a("card_show_max:" + aVar2.f1169a) < aVar2.g) {
                if (!c2 && a2 < aVar2.e && c(aVar2) == 0) {
                    return aVar2;
                }
            }
        }
        int size = c.size();
        int i3 = 0;
        while (i3 < size) {
            com.cmplay.b.a aVar3 = c.get(i3);
            if (i != 4 || com.cmplay.util.b.a.a("card_show_max:" + aVar3.f1169a) < aVar3.g) {
                com.cmplay.util.b.a.a("card_show:" + aVar3.f1169a, 0);
                com.cmplay.util.b.a.a("card_click:" + aVar3.f1169a, false);
                int c3 = c(aVar3);
                if (aVar == null && c3 == 0) {
                    aVar = aVar3;
                }
                if (aVar == null && i3 == size - 1) {
                    a(c3, i, aVar3.f1169a, aVar3.h);
                }
            }
            i3++;
            aVar = aVar;
        }
        return aVar;
    }

    private void a(int i, int i2, int i3, String str) {
        if (i2 == 1 || i2 == 2 || i2 == 3) {
            int i4 = 0;
            if (i == 5) {
                i4 = 12;
            } else if (i == 1) {
                i4 = 13;
            } else if (i == 2) {
                i4 = 14;
            } else if (i == 3) {
                i4 = 15;
            } else if (i == 4) {
                i4 = 16;
            }
            if (i4 != 0) {
                com.cmplay.g.d.a(d.a(i2), i3, str, i4);
            }
        }
    }

    private int c(com.cmplay.b.a aVar) {
        if (v.a(GameApp.f1598a, aVar.h)) {
            return 1;
        }
        if (!c.a(aVar.i)) {
            return 2;
        }
        String a2 = e.a(GameApp.f1598a).a(String.valueOf(aVar.f1169a));
        if (TextUtils.isEmpty(a2)) {
            return 0;
        }
        try {
            long longValue = Long.valueOf(a2).longValue();
            if (longValue > 0) {
                return d.a(longValue, System.currentTimeMillis()) < 7 ? 3 : 0;
            }
            return 0;
        } catch (Exception e) {
            return 0;
        }
    }

    private String c(int i) {
        switch (i) {
            case 1:
                return "section_result_card";
            case 2:
                return "section_setting_card";
            case 3:
                return "section_battle_card";
            case 4:
                return "section_popup_card";
            default:
                return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<com.cmplay.b.a> c(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray optJSONArray = new JSONObject(str).optJSONArray("data");
            int length = optJSONArray.length();
            for (int i = 0; i < length; i++) {
                arrayList.add(new com.cmplay.b.a(optJSONArray.optJSONObject(i)));
            }
            return arrayList;
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* compiled from: AppCardHelper.java */
    static class a implements Comparator<com.cmplay.b.a> {
        a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(com.cmplay.b.a aVar, com.cmplay.b.a aVar2) {
            if (aVar.f1170b < aVar2.f1170b) {
                return 1;
            }
            if (aVar.f1170b == aVar2.f1170b) {
                return 0;
            }
            return -1;
        }
    }
}
