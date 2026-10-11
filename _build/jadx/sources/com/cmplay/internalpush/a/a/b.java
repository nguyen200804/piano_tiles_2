package com.cmplay.internalpush.a.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import com.cmplay.base.util.c.d;
import com.cmplay.base.util.c.e;
import com.cmplay.base.util.g;
import com.cmplay.internalpush.ipc.IpcSpHelper;
import com.cmplay.internalpush.k;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* compiled from: ImagePathUtil.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b {

    /* renamed from: b, reason: collision with root package name */
    private static b f1405b = null;

    /* renamed from: a, reason: collision with root package name */
    public Context f1406a;
    private HandlerThread c;
    private Handler d;
    private com.cmplay.base.util.c.b f;
    private boolean e = false;
    private ArrayList<com.cmplay.internalpush.a.a.a> g = new ArrayList<>();
    private HashMap<String, ArrayList<String>> h = new HashMap<>();
    private HashMap<String, Long> i = new HashMap<>();

    /* compiled from: ImagePathUtil.java */
    public interface a {
        void a(String str, String str2);
    }

    private b() {
    }

    public static b a() {
        if (f1405b == null) {
            f1405b = new b();
        }
        return f1405b;
    }

    public void a(Context context) {
        this.f1406a = context;
        if (!this.e) {
            this.c = new HandlerThread("cloud_imgdown_thread");
            this.c.start();
            this.d = new Handler(this.c.getLooper());
        }
        this.e = true;
    }

    public void a(com.cmplay.internalpush.a.a.a aVar) {
        if (!this.g.contains(aVar)) {
            this.g.add(aVar);
        }
    }

    public void a(com.cmplay.base.util.c.b bVar) {
        this.f = bVar;
    }

    public void b() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.g.size()) {
                final com.cmplay.internalpush.a.a.a aVar = this.g.get(i2);
                this.d.post(new Runnable() { // from class: com.cmplay.internalpush.a.a.b.1
                    @Override // java.lang.Runnable
                    public void run() {
                        aVar.d();
                    }
                });
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    public synchronized String a(int i, String str) {
        String str2;
        String b2 = com.ijinshan.cloudconfig.a.b(i, str);
        if (TextUtils.isEmpty(b2)) {
            com.ijinshan.cloudconfig.d.a.a("zzb_cloud", "CloudHelper.getData数据为空时 reloadData()");
            com.ijinshan.cloudconfig.a.d();
            str2 = com.ijinshan.cloudconfig.a.b(i, str);
        } else {
            str2 = b2;
        }
        IpcSpHelper.getInstance().sp_setBooleanValue(str, !TextUtils.isEmpty(str2));
        return str2;
    }

    public void a(final String str, ArrayList<String> arrayList, final a aVar) {
        final String str2 = str + "_";
        IpcSpHelper.getInstance().sp_removeSomeKey(str2, "");
        if (arrayList == null || arrayList.size() == 0) {
            int i = 0;
            if (TextUtils.equals(str, "open_screen_scene")) {
                i = 1;
            } else if (TextUtils.equals(str, "section_result_card")) {
                i = 2;
            } else if (TextUtils.equals(str, "section_setting_card")) {
                i = 3;
            } else if (TextUtils.equals(str, "section_family_popup")) {
                i = 5;
            }
            if (k.a() != null) {
                this.i.put(str, Long.valueOf(System.currentTimeMillis()));
                k.a().a(i);
                return;
            }
            return;
        }
        this.h.put(str, new ArrayList<>(new HashSet(arrayList)));
        d.a(this.f1406a).a(arrayList, new com.cmplay.base.util.c.b() { // from class: com.cmplay.internalpush.a.a.b.2
            @Override // com.cmplay.base.util.c.b
            public void a(String str3, String str4) {
                if (b.this.f != null) {
                    b.this.f.a(str3, str4);
                }
                g.a("图片下载失败：" + str3);
            }

            @Override // com.cmplay.base.util.c.b
            public void a(Bitmap bitmap, String str3, String str4) {
                g.a("图片下载成功：" + str4);
                IpcSpHelper.getInstance().sp_setStringValue(str2 + str3, str4);
                if (aVar != null) {
                    aVar.a(str3, str4);
                }
                b.this.a(str, str3);
            }
        });
    }

    public synchronized void a(String str, String str2) {
        int i;
        ArrayList<String> arrayList = this.h.get(str);
        if (arrayList != null && this.f1406a != null) {
            String str3 = "";
            if (this.f1406a.getCacheDir() != null) {
                str3 = this.f1406a.getCacheDir().getAbsolutePath();
            }
            try {
                Iterator<String> it = arrayList.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (!new File(str3 + "/" + e.b(it.next())).exists()) {
                            break;
                        }
                    } else {
                        if (TextUtils.equals(str, "open_screen_scene")) {
                            i = 1;
                        } else if (TextUtils.equals(str, "section_result_card")) {
                            i = 2;
                        } else if (TextUtils.equals(str, "section_setting_card")) {
                            i = 3;
                        } else if (!TextUtils.equals(str, "section_family_popup")) {
                            i = 0;
                        } else {
                            i = 5;
                        }
                        if (!this.i.containsKey(str) || System.currentTimeMillis() - this.i.get(str).longValue() >= 1000) {
                            g.a("zzb_img", "通知 ：" + i);
                            if (i != 0 && k.a() != null) {
                                this.i.put(str, Long.valueOf(System.currentTimeMillis()));
                                k.a().a(i);
                            }
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static String a(Context context, String str, String str2) {
        return IpcSpHelper.getInstance().sp_getStringValue(str + "_" + str2, "");
    }
}
