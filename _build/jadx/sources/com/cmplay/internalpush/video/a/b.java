package com.cmplay.internalpush.video.a;

import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.cmplay.base.util.g;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Deque;

/* compiled from: VideoDownloaderTask.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b extends AsyncTask<String, Void, Integer> {

    /* renamed from: a, reason: collision with root package name */
    private Deque<WeakReference<b>> f1540a;

    /* renamed from: b, reason: collision with root package name */
    private a f1541b;
    private String d;
    private ArrayList<String> e;
    private String f;
    private Context i;
    private long g = 0;
    private long h = -1;
    private WeakReference<b> c = new WeakReference<>(this);

    /* compiled from: VideoDownloaderTask.java */
    public interface a {
        void a(int i, String str);
    }

    public void a(long j, Context context) {
        this.h = j;
        this.i = context;
    }

    public b(ArrayList<String> arrayList, Deque<WeakReference<b>> deque, a aVar) {
        this.e = arrayList;
        this.f1541b = aVar;
        this.f1540a = deque;
        this.f1540a.add(this.c);
    }

    public void a(File file) {
        if (!file.exists() || !file.delete()) {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Integer doInBackground(String... strArr) {
        this.g = g.b();
        if (strArr == null || strArr.length < 2 || strArr[0] == null || TextUtils.isEmpty(strArr[1])) {
            return 1;
        }
        String str = strArr[0];
        String str2 = strArr[1];
        String str3 = strArr.length > 2 ? strArr[2] : "";
        this.f = str;
        g.a("开始下载----" + str2);
        try {
            File file = new File(str2);
            this.d = str2;
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
            HttpURLConnection a2 = c.a(str);
            BufferedInputStream bufferedInputStream = new BufferedInputStream(a2.getInputStream());
            try {
                int responseCode = a2.getResponseCode();
                if (responseCode < 200 || responseCode >= 300) {
                    return 2;
                }
                long contentLength = a2.getContentLength();
                if (contentLength > 20971520) {
                    return 3;
                }
                if (!TextUtils.isEmpty(str3)) {
                    String packageName = this.i.getPackageName();
                    Intent intent = new Intent();
                    intent.setPackage(packageName);
                    intent.setAction("video_size_save");
                    intent.putExtra("videoFileName", str3);
                    intent.putExtra("contentLength", contentLength);
                    if (this.i != null) {
                        this.i.sendBroadcast(intent);
                        g.a("zzb_video", "发送 长度 =" + contentLength);
                    }
                }
                if (this.h != -1 && contentLength >= this.h) {
                    return 7;
                }
                byte[] bArr = new byte[4096];
                long j = 0;
                while (true) {
                    int read = bufferedInputStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    j += read;
                    bufferedOutputStream.write(bArr, 0, read);
                }
                bufferedOutputStream.flush();
                if (contentLength == 0 || j < contentLength) {
                    return 6;
                }
                g.a("请求逻辑走完 ---");
                return 0;
            } finally {
                g.a("close资源----");
                bufferedOutputStream.close();
                bufferedInputStream.close();
                a2.disconnect();
            }
        } catch (Exception e) {
            e.printStackTrace();
            g.a("网络异常----4");
            return 4;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(Integer num) {
        g.a(this.g, this.f + " 下载");
        g.a("下载返回0为成功，实际=" + num);
        if (isCancelled()) {
            num = 5;
        }
        this.f1540a.remove(this.c);
        if (num.intValue() == 0) {
            this.f1541b.a(num.intValue(), this.d);
            return;
        }
        try {
            if (!TextUtils.isEmpty(this.d)) {
                a(new File(this.d));
            }
        } catch (Exception e) {
            g.a("删除文件异常: " + this.d);
        }
        this.f1541b.a(num.intValue(), "文件未下载成功! errorCode=" + num);
    }
}
