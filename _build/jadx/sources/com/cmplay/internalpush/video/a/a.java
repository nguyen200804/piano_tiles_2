package com.cmplay.internalpush.video.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.text.TextUtils;
import com.cmplay.base.util.g;
import com.cmplay.base.util.m;
import com.cmplay.base.util.q;
import com.cmplay.internalpush.a.e;
import com.cmplay.internalpush.data.ParseCloudDataVideo;
import com.cmplay.internalpush.o;
import com.cmplay.internalpush.video.a.b;
import java.io.File;
import java.io.FilenameFilter;
import java.lang.ref.WeakReference;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.Iterator;
import java.util.Set;

/* compiled from: VideoDownloadTaskManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {
    private static a j;

    /* renamed from: b, reason: collision with root package name */
    private Context f1533b;
    private File d;

    /* renamed from: a, reason: collision with root package name */
    private final String f1532a = "InnerPushVideoCache";
    private final Deque<WeakReference<b>> c = new ArrayDeque();
    private boolean e = false;
    private boolean f = false;
    private boolean g = false;
    private C0048a h = null;
    private ArrayList<String> i = new ArrayList<>();
    private b.a k = null;

    private a() {
    }

    public static a a() {
        if (j == null) {
            j = new a();
        }
        return j;
    }

    public void a(Context context) {
        File externalCacheDir;
        if (context != null) {
            this.f = true;
            this.f1533b = context.getApplicationContext();
            this.e = false;
            if (this.f1533b.getFilesDir() != null) {
                this.d = new File(this.f1533b.getFilesDir().getPath());
            }
            if (Build.VERSION.SDK_INT > 18 && (externalCacheDir = this.f1533b.getExternalCacheDir()) != null) {
                this.d = new File(externalCacheDir.getAbsolutePath(), "InnerPushVideoCache");
                this.e = true;
                if (this.d.mkdirs()) {
                    g.a("InnerPushVideoCache dirs create ok");
                }
            }
        }
    }

    public void a(ArrayList<String> arrayList) {
        File[] listFiles;
        long b2 = g.b();
        if (this.d != null && arrayList != null && arrayList.size() != 0) {
            if (!this.d.isDirectory()) {
                g.a("not directory 不是目录");
            } else {
                try {
                    if (this.d.getAbsolutePath().endsWith("InnerPushVideoCache")) {
                        listFiles = this.d.listFiles();
                    } else {
                        listFiles = this.d.listFiles(new FilenameFilter() { // from class: com.cmplay.internalpush.video.a.a.1
                            @Override // java.io.FilenameFilter
                            public boolean accept(File dir, String filename) {
                                return filename.startsWith("innerpush_");
                            }
                        });
                    }
                    ArrayList arrayList2 = new ArrayList();
                    for (File file : listFiles) {
                        String name = file.getName();
                        if (!arrayList.contains(name)) {
                            boolean delete = file.delete();
                            e.a(name);
                            g.a("新数据不包含，干掉：" + name);
                            if (!delete) {
                                g.a("没干掉------：" + name);
                            }
                        } else {
                            arrayList2.add(name);
                        }
                    }
                    Set<String> a2 = e.a();
                    ArrayList arrayList3 = new ArrayList();
                    if (a2 != null) {
                        for (String str : a2) {
                            if (str.startsWith("innerpush_")) {
                                arrayList3.add(str);
                            }
                        }
                    }
                    Iterator it = arrayList3.iterator();
                    while (it.hasNext()) {
                        String str2 = (String) it.next();
                        if (!arrayList2.contains(str2)) {
                            g.a("清理掉的：" + str2);
                            e.a(str2);
                        }
                    }
                } catch (Exception e) {
                    g.a("文件删除error " + e.getMessage());
                }
            }
            g.a(b2, "cleanCacheVideoFile()");
        }
    }

    public String b() {
        if (this.d != null) {
            return this.d.getAbsolutePath();
        }
        return null;
    }

    public String a(String str) {
        return b() + "/" + str;
    }

    /* compiled from: VideoDownloadTaskManager.java */
    /* renamed from: com.cmplay.internalpush.video.a.a$a, reason: collision with other inner class name */
    class C0048a extends BroadcastReceiver {
        C0048a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent != null) {
                if (intent.getAction().equals("com.innerpushvideo.down_notify") && q.b() && a.this.k != null) {
                    int intExtra = intent.getIntExtra("errorCode", -1);
                    String stringExtra = intent.getStringExtra("msg");
                    String stringExtra2 = intent.getStringExtra("videoUrl");
                    if (!TextUtils.isEmpty(stringExtra2)) {
                        g.a("DownTaskReceiver -----移除url");
                        a.this.i.remove(stringExtra2);
                    }
                    g.a("DownTaskReceiver -----接收：" + intExtra + ", msg=" + stringExtra);
                    a.this.k.a(intExtra, stringExtra);
                }
                if (intent.getAction().equals("video_size_save")) {
                    String stringExtra3 = intent.getStringExtra("videoFileName");
                    long longExtra = intent.getLongExtra("contentLength", 0L);
                    g.a("zzb_video", stringExtra3 + ", 保存长度 =" + longExtra);
                    e.b(stringExtra3, longExtra);
                }
            }
        }
    }

    public synchronized void a(final String str, String str2) {
        g.a("serviceDownVideo -----");
        if (this.f1533b != null) {
            if (!this.f) {
                a(this.f1533b);
            }
            g.a(q.a() ? "是service进程下载" : "不是service进程下载");
            a(3, str, str2, new b.a() { // from class: com.cmplay.internalpush.video.a.a.2
                @Override // com.cmplay.internalpush.video.a.b.a
                public void a(int i, String str3) {
                    g.a("serviceDownVideo -----下载完成：" + i);
                    String packageName = a.this.f1533b.getPackageName();
                    Intent intent = new Intent();
                    intent.setPackage(packageName);
                    intent.setAction("com.innerpushvideo.down_notify");
                    intent.putExtra("errorCode", i);
                    intent.putExtra("msg", str3);
                    intent.putExtra("videoUrl", str);
                    a.this.f1533b.sendBroadcast(intent);
                }
            });
        }
    }

    public synchronized void a(long j2, String str, String str2, String str3, String str4, String str5, long j3, com.cmplay.internalpush.video.b.a aVar, b.a aVar2) {
        if (str2 == null) {
            g.a("video url is null");
            aVar2.a(1, "video url is null");
        } else if (this.i.contains(str2)) {
            g.a("video url is contains");
        } else {
            this.i.add(str2);
            String a2 = a(str3);
            File file = new File(a2);
            if (file.exists()) {
                long a3 = e.a(str3, 0L);
                g.a("requestedSize ----------= " + a3);
                if (file.length() < 1 || file.length() < a3) {
                    g.a("清理掉，本地大小：" + file.length() + ", 线上大小: " + a3);
                    if (!file.delete()) {
                    }
                } else {
                    if (!TextUtils.isEmpty(str2) && this.i.contains(str2)) {
                        this.i.remove(str2);
                        g.a("remove :" + str2);
                    }
                    g.a("file exists");
                    aVar2.a(1000, a2);
                }
            }
            if (!m.c(this.f1533b)) {
                if (!TextUtils.isEmpty(str2) && this.i.contains(str2)) {
                    this.i.remove(str2);
                    g.a("没网 remove :" + str2);
                }
                aVar2.a(8, a2);
            } else {
                o.a().a(4, 6, str, j2, "", 0, ParseCloudDataVideo.a(this.f1533b).p(), (int) j3);
                if (com.cmplay.internalpush.video.e.d) {
                    this.k = aVar2;
                    if (!this.g) {
                        IntentFilter intentFilter = new IntentFilter();
                        this.h = new C0048a();
                        intentFilter.addAction("com.innerpushvideo.down_notify");
                        intentFilter.addAction("video_size_save");
                        this.f1533b.registerReceiver(this.h, intentFilter);
                        this.g = true;
                    }
                    com.cmplay.internalpush.video.e.b(str2, str3, str4, str5);
                } else {
                    a(3, str2, str3, aVar2);
                }
            }
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0076 -> B:6:0x0038). Please report as a decompilation issue!!! */
    public void a(final int i, final String str, final String str2, final b.a aVar) {
        long j2;
        b bVar = new b(this.i, this.c, new b.a() { // from class: com.cmplay.internalpush.video.a.a.3
            @Override // com.cmplay.internalpush.video.a.b.a
            public void a(int i2, String str3) {
                if (i - 1 > 0 && (i2 == 4 || i2 == 2 || i2 == -1)) {
                    a.this.a(i - 1, str, str2, aVar);
                    g.a("重试 " + (i - 1) + ", mVideoUrl =" + str + ", mFilePath=" + str2);
                } else {
                    aVar.a(i2, str3);
                }
            }
        });
        try {
            if (this.e) {
                j2 = com.cmplay.internalpush.a.b.a();
                g.a("sd 卡 memSize =" + ((j2 / 1024) / 1024));
            } else {
                j2 = com.cmplay.internalpush.a.b.a(this.f1533b);
                g.a("内存 memSize =" + ((j2 / 1024) / 1024));
            }
        } catch (Exception e) {
            j2 = -1;
        }
        try {
            bVar.a(j2, this.f1533b);
            com.cmplay.internalpush.a.a.a(bVar, str, a(str2), str2);
        } catch (Exception e2) {
            aVar.a(-1, "AsyncTasks Execute excption");
        }
    }
}
