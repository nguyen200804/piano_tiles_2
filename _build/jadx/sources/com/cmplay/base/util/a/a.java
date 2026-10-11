package com.cmplay.base.util.a;

import android.app.DownloadManager;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import android.widget.Toast;
import com.cmplay.base.util.g;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: ApkDownloadManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static a f1205a = null;

    /* renamed from: b, reason: collision with root package name */
    private Context f1206b;
    private DownloadManager d;
    private String f;
    private boolean c = false;
    private ArrayList<C0032a> e = new ArrayList<>();
    private BroadcastReceiver g = new BroadcastReceiver() { // from class: com.cmplay.base.util.a.a.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.intent.action.DOWNLOAD_COMPLETE")) {
                long longExtra = intent.getLongExtra("extra_download_id", 0L);
                Iterator it = a.this.e.iterator();
                while (it.hasNext()) {
                    C0032a c0032a = (C0032a) it.next();
                    if (c0032a != null && c0032a.f1210b == longExtra) {
                        g.a("APK_DOWNLOAD", "download complete   downloadId:" + longExtra);
                        Toast.makeText(a.this.f1206b, a.this.f + "已下载完成", 0).show();
                        a.this.a(longExtra);
                    }
                }
            }
        }
    };

    private a(Context context) {
        b(context);
    }

    public static a a(Context context) {
        if (f1205a == null) {
            f1205a = new a(context);
        }
        return f1205a;
    }

    public void b(Context context) {
        this.f1206b = context;
        if (!this.c) {
            g.a("APK_DOWNLOAD", "ApkDownloadManager.init");
            b.a(this.f1206b);
            this.d = (DownloadManager) this.f1206b.getSystemService("download");
            this.f1206b.registerReceiver(this.g, new IntentFilter("android.intent.action.DOWNLOAD_COMPLETE"));
            this.e.addAll(a());
        }
        this.c = true;
    }

    public void a(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !a(str.hashCode())) {
            this.f = str2;
            String str3 = "";
            int lastIndexOf = str.lastIndexOf("/");
            if (lastIndexOf >= 0) {
                str3 = str.substring(lastIndexOf + 1, str.length());
            }
            DownloadManager.Request request = new DownloadManager.Request(Uri.parse(str));
            request.setAllowedNetworkTypes(3);
            request.setNotificationVisibility(1);
            request.setVisibleInDownloadsUi(true);
            request.setDestinationInExternalFilesDir(this.f1206b, Environment.DIRECTORY_DOWNLOADS, str3);
            request.setMimeType("application/vnd.android.package-archive");
            request.setTitle(str3);
            long enqueue = this.d.enqueue(request);
            this.e.add(new C0032a(str.hashCode(), enqueue));
            a(this.e);
            Toast.makeText(this.f1206b, "开始下载" + str2, 1).show();
            g.a("APK_DOWNLOAD", "download start   downloadId:" + enqueue + "  apkUrl:" + str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setDataAndType(this.d.getUriForDownloadedFile(j), "application/vnd.android.package-archive");
        intent.setFlags(268435456);
        try {
            this.f1206b.startActivity(intent);
        } catch (ActivityNotFoundException e) {
        }
    }

    private int[] b(long j) {
        int[] iArr = {-1, -1, 0};
        Cursor cursor = null;
        try {
            cursor = this.d.query(new DownloadManager.Query().setFilterById(j));
            if (cursor != null && cursor.moveToFirst()) {
                iArr[0] = cursor.getInt(cursor.getColumnIndexOrThrow("bytes_so_far"));
                iArr[1] = cursor.getInt(cursor.getColumnIndexOrThrow("total_size"));
                iArr[2] = cursor.getInt(cursor.getColumnIndex("status"));
            }
            return iArr;
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    private boolean a(int i) {
        boolean z;
        Iterator<C0032a> it = this.e.iterator();
        boolean z2 = false;
        while (it.hasNext()) {
            C0032a next = it.next();
            if (next != null && next.f1209a == i) {
                long j = next.f1210b;
                int[] b2 = b(j);
                g.a("APK_DOWNLOAD", "downloadApk  已经存在于下载列表   downloadId:" + j + "  bytesAndStatus[0]:" + b2[0] + "  bytesAndStatus[1]:" + b2[1] + "  bytesAndStatus[2]:" + b2[2]);
                if (b2[0] > 0 && b2[1] > 0) {
                    if (b2[0] == b2[1]) {
                        g.a("APK_DOWNLOAD", "downloadApk 已经下载完成，直接安装");
                        a(j);
                    } else {
                        g.a("APK_DOWNLOAD", "downloadApk 正在下载当中");
                        Toast.makeText(this.f1206b, "应用正在下载中，请稍候", 1).show();
                    }
                    z = true;
                    z2 = z;
                }
            }
            z = z2;
            z2 = z;
        }
        return z2;
    }

    /* compiled from: ApkDownloadManager.java */
    /* renamed from: com.cmplay.base.util.a.a$a, reason: collision with other inner class name */
    private class C0032a {

        /* renamed from: a, reason: collision with root package name */
        public int f1209a;

        /* renamed from: b, reason: collision with root package name */
        public long f1210b;

        public C0032a() {
        }

        public C0032a(int i, long j) {
            this.f1209a = i;
            this.f1210b = j;
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x004b -> B:16:0x0043). Please report as a decompilation issue!!! */
    public void a(ArrayList<C0032a> arrayList) {
        if (arrayList != null && !arrayList.isEmpty()) {
            ArrayList arrayList2 = new ArrayList(arrayList);
            int size = arrayList2.size();
            StringBuilder sb = new StringBuilder();
            int i = 0;
            while (i < size) {
                C0032a c0032a = (C0032a) arrayList2.get(i);
                if (c0032a != null) {
                    try {
                        sb.append(String.format(i == 0 ? "%d|%d" : ";%d|%d", Integer.valueOf(c0032a.f1209a), Long.valueOf(c0032a.f1210b)));
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                i++;
            }
            g.a("APK_DOWNLOAD", "saveDownloadStatus:" + sb.toString());
            b.b("download_status", sb.toString());
        }
    }

    public ArrayList<C0032a> a() {
        ArrayList<C0032a> arrayList = new ArrayList<>();
        String a2 = b.a("download_status", "");
        if (!TextUtils.isEmpty(a2)) {
            g.a("APK_DOWNLOAD", "parseDownloadStatus strStatus=" + a2);
            String[] split = a2.split(";");
            for (String str : split) {
                String[] split2 = str.split("\\|");
                C0032a c0032a = new C0032a();
                for (int i = 0; i < split2.length; i++) {
                    if (i == 0) {
                        try {
                            c0032a.f1209a = Integer.parseInt(split2[i]);
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                    if (1 == i) {
                        c0032a.f1210b = Integer.parseInt(split2[i]);
                    }
                }
                arrayList.add(c0032a);
                g.a("APK_DOWNLOAD", "\nurlHashCode:" + c0032a.f1209a + "  downloadId:" + c0032a.f1210b);
            }
        }
        return arrayList;
    }
}
