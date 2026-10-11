package com.cmplay.internalpush;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.text.TextUtils;
import com.cmplay.internalpush.ipc.IpcCloudHelper;
import com.cmplay.internalpush.ipc.IpcSpHelper;
import com.ijinshan.cloudconfig.a;

/* compiled from: CloudHeplerProxy.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    public static Context f1470a;

    public static void a(Context context, String str, String str2, boolean z, boolean z2) {
        f1470a = context;
        com.ijinshan.cloudconfig.a.a(context, str, str2, z, z2);
        com.ijinshan.cloudconfig.a.a(new a.InterfaceC0203a() { // from class: com.cmplay.internalpush.f.1
            @Override // com.ijinshan.cloudconfig.a.InterfaceC0203a
            public void a(String str3, int i, String str4, String str5) {
                o.a().a(str3, i, str4, str5);
            }
        });
        String sp_getStringValue = IpcSpHelper.getInstance().sp_getStringValue("cloud_current_language", "en");
        com.cmplay.base.util.g.a("zzb_cloud", "CloudHeplerProxy.initCloud  当前语言：" + sp_getStringValue);
        IpcCloudHelper.getInstance().innpush_setCloudLanguage(sp_getStringValue);
    }

    public static void a(Context context) {
        com.cmplay.base.util.g.a("zzb_CloudHeplerProxy", "startServicePullCloudConfig");
        if (com.cmplay.base.util.q.a() && !TextUtils.isEmpty(IpcSpHelper.getInstance().sp_getStringValue("cloud_current_language", ""))) {
            a();
        }
    }

    public static void a() {
        com.cmplay.base.util.g.a("zzb_CloudHeplerProxy", "pullCloudData----");
        IpcCloudHelper.getInstance().innpush_pullCloud();
    }

    public static int a(Integer num, String str, String str2, int i) {
        return com.ijinshan.cloudconfig.a.a(num, str, str2, i);
    }

    public static void a(BroadcastReceiver broadcastReceiver) {
        com.ijinshan.cloudconfig.a.a(broadcastReceiver);
    }

    public static boolean a(String str, String str2) {
        String sp_getStringValue = IpcSpHelper.getInstance().sp_getStringValue("cloud_current_language", "");
        if (!TextUtils.isEmpty(str)) {
            IpcSpHelper.getInstance().sp_setStringValue("cloud_current_language", str);
            com.cmplay.base.util.g.a("zzb_CloudHeplerProxy", "保存语言-----currentLanguage:" + str + "   保存后的语言为:" + IpcSpHelper.getInstance().sp_getStringValue("cloud_current_language", ""));
            str2 = str;
        } else {
            com.cmplay.base.util.g.a("zzb_CloudHeplerProxy", "获取游戏语言为空-----------那就默认");
            IpcSpHelper.getInstance().sp_setStringValue("cloud_current_language", str2);
        }
        IpcCloudHelper.getInstance().innpush_setCloudLanguage(str2);
        com.cmplay.base.util.g.a("zzb_CloudHeplerProxy", "currentLanguage：" + str + ", oldLan =" + sp_getStringValue);
        if (TextUtils.isEmpty(sp_getStringValue)) {
            com.cmplay.base.util.g.a("zzb_CloudHeplerProxy", "没有设置过语言，即第一次拉取");
            a();
            return true;
        }
        if (!TextUtils.equals(sp_getStringValue, str)) {
            com.cmplay.base.util.g.a("zzb_CloudHeplerProxy", "语言有切换");
            b();
            return true;
        }
        return false;
    }

    public static void b() {
        String innpush_getCloudVersion = IpcCloudHelper.getInstance().innpush_getCloudVersion("");
        if (TextUtils.isEmpty(innpush_getCloudVersion)) {
            com.cmplay.base.util.g.a("zzb_CloudHeplerProxy", "切语言，版本为空，强制拉取魔方");
            IpcCloudHelper.getInstance().innpush_pullCloudData(2, "");
        } else {
            com.cmplay.base.util.g.a("zzb_CloudHeplerProxy", com.cmplay.base.util.q.b(f1470a) + " 主动拉取 getConfig(cloudVersion)");
            IpcCloudHelper.getInstance().innpush_pullCloudData(3, innpush_getCloudVersion);
        }
    }

    public static boolean b(Context context) {
        return !TextUtils.equals(com.cmplay.base.util.h.a(context), IpcSpHelper.getInstance().sp_getStringValue("local_app_version", ""));
    }

    public static void c(Context context) {
        String a2 = com.cmplay.base.util.h.a(context);
        if (!TextUtils.isEmpty(a2)) {
            IpcSpHelper.getInstance().sp_setStringValue("local_app_version", a2);
        }
    }
}
