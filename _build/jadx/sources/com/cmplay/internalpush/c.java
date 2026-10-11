package com.cmplay.internalpush;

import com.cmplay.tile2.GameApp;
import com.cmplay.util.NativeUtil;
import com.cmplay.util.d;
import com.cmplay.webview.ui.WebViewActivity;
import com.ijinshan.cloudconfig.a;
import java.util.ArrayList;

/* compiled from: CMPPromotionCallBack.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c implements h, a.InterfaceC0203a {

    /* renamed from: a, reason: collision with root package name */
    private l f1416a = null;

    /* renamed from: b, reason: collision with root package name */
    private l f1417b = null;

    @Override // com.cmplay.internalpush.h
    public void a(ArrayList<String> arrayList) {
        if (arrayList != null) {
            arrayList.add("open_screen_scene");
            arrayList.add("section_result_card");
            arrayList.add("section_setting_card");
            arrayList.add("insert_screen_scene");
            arrayList.add("section_family_popup");
            com.cmplay.exitpopup.b.a(GameApp.f1598a);
        }
    }

    @Override // com.cmplay.internalpush.h
    public void a(String str) {
        com.cmplay.base.util.g.a("zzb_opens", "innerPushJumpToLevel ---" + str);
    }

    @Override // com.cmplay.base.util.b.a
    public boolean b(String str) {
        com.cmplay.base.util.g.a("zzb", "innerPushJumpWebView --> " + str);
        WebViewActivity.a(e.f1466a, str, 0);
        return true;
    }

    @Override // com.cmplay.base.util.b.a
    public void a(int i) {
        com.cmplay.base.util.g.a("zzb", "CMPPromotionCallBack.onDataUpdate  sceneType:" + i);
        if (3 == i) {
            if (this.f1416a != null) {
                this.f1416a.a();
            }
            com.cmplay.base.util.g.a("internal_push", "CMPPromotionCallBack.onDataUpdate  sceneType:SCENE_TYPE_SETTING");
            com.cmplay.util.d.a(new d.a() { // from class: com.cmplay.internalpush.c.1
                @Override // com.cmplay.util.d.a
                public void a() {
                    NativeUtil.onSettingsPushUpdate();
                }
            });
        }
        if (5 == i) {
            if (this.f1417b != null) {
                this.f1417b.a();
            }
            com.cmplay.base.util.g.a("internal_push", "CMPPromotionCallBack.onDataUpdate  sceneType:SCENE_TYPE_FAMILY_POPUP");
            com.cmplay.util.d.a(new d.a() { // from class: com.cmplay.internalpush.c.2
                @Override // com.cmplay.util.d.a
                public void a() {
                    NativeUtil.onFamilyGamesPushUpdate();
                }
            });
        }
    }

    @Override // com.ijinshan.cloudconfig.a.InterfaceC0203a
    public void a(String str, int i, String str2, String str3) {
        e.a(com.cmplay.base.util.i.a() + "_cloud_magic", "magic_ver=" + str + "&action=" + i + "&remark=" + str2 + "&error_url=" + str3, true);
    }

    @Override // com.cmplay.base.util.b.a
    public void a(String str, String str2, boolean z) {
        e.a(str, str2, z);
    }
}
