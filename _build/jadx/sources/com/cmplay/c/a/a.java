package com.cmplay.c.a;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.util.Log;
import com.cmplay.i.b;
import com.cmplay.kinfoc.report.c;
import com.cmplay.tile2.GameApp;
import com.cmplay.util.NativeUtil;
import com.cmplay.util.aa;
import com.cmplay.util.t;
import com.facebook.ads.AudienceNetworkActivity;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.zip.ZipOutputStream;

/* compiled from: CCrashUpdater.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {
    private static a i;

    /* renamed from: a, reason: collision with root package name */
    SimpleDateFormat f1261a = new SimpleDateFormat("yyyyMMddHHmmss");

    /* renamed from: b, reason: collision with root package name */
    private Context f1262b;
    private String c;
    private String d;
    private String e;
    private AlarmManager f;
    private C0036a g;
    private PendingIntent h;

    public static a a(Context context) {
        if (i == null) {
            synchronized (a.class) {
                if (i == null) {
                    i = new a(context);
                }
            }
        }
        return i;
    }

    private a(Context context) {
        this.f1262b = context;
        this.d = b.a(context) + File.separator + "ccrash";
        this.c = this.d + File.separator + NativeUtil.getVersionCode();
        this.e = b.a(context) + File.separator;
        c();
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        Intent intent = new Intent();
        intent.setAction("tiles2_ccrash_delay_task_action");
        intent.setPackage(this.f1262b.getPackageName());
        this.h = PendingIntent.getBroadcast(this.f1262b, 0, intent, 134217728);
        if (Build.VERSION.SDK_INT >= 23) {
            this.f.setExactAndAllowWhileIdle(0, System.currentTimeMillis() + 1800000, this.h);
        } else if (Build.VERSION.SDK_INT >= 19) {
            this.f.setExact(0, System.currentTimeMillis() + 1800000, this.h);
        } else {
            this.f.set(0, System.currentTimeMillis() + 1800000, this.h);
        }
    }

    public void a() {
        d();
        b();
    }

    private void c() {
        if (this.g == null) {
            this.g = new C0036a();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("tiles2_ccrash_delay_task_action");
            this.f1262b.registerReceiver(this.g, intentFilter);
        }
        if (this.f == null) {
            this.f = (AlarmManager) this.f1262b.getSystemService("alarm");
        }
    }

    /* compiled from: CCrashUpdater.java */
    /* renamed from: com.cmplay.c.a.a$a, reason: collision with other inner class name */
    class C0036a extends BroadcastReceiver {
        C0036a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent != null && "tiles2_ccrash_delay_task_action".equals(intent.getAction())) {
                a.this.d();
                a.this.b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (t.b(this.f1262b)) {
            com.cmplay.util.a.a.a(new Runnable() { // from class: com.cmplay.c.a.a.1
                @Override // java.lang.Runnable
                public void run() {
                    a.this.e();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        String versionCode = NativeUtil.getVersionCode();
        b(new File(this.d), versionCode);
        File file = new File(this.c);
        b(file);
        File[] listFiles = file.listFiles();
        String model = NativeUtil.getModel();
        String replaceAll = NativeUtil.getDevice().replaceAll("-", "");
        String replaceAll2 = NativeUtil.getBrand().replaceAll("-", "");
        int i2 = Build.VERSION.SDK_INT;
        String androidId = NativeUtil.getAndroidId();
        if (androidId == null) {
            androidId = "";
        }
        try {
            String encode = URLEncoder.encode((versionCode + "-" + model + "-" + i2 + "-" + aa.b("key_language_selected", "en") + "-" + androidId + "-" + replaceAll + "-" + replaceAll2 + "-").replaceAll(" ", ""), AudienceNetworkActivity.WEBVIEW_ENCODING);
            if (listFiles != null) {
                for (File file2 : listFiles) {
                    if (file2.isDirectory()) {
                        File[] listFiles2 = file2.listFiles();
                        if (listFiles2 != null && listFiles2.length > 0) {
                            for (File file3 : listFiles2) {
                                String str = encode + "@" + file2.getName() + "-";
                                if (a(file3)) {
                                    a(file3, str);
                                }
                            }
                        }
                    } else if (a(file2)) {
                        a(file2, encode);
                    }
                }
            }
        } catch (Exception e) {
        }
    }

    private boolean a(File file) {
        String[] split = file.getName().split("\\.");
        return split != null && split.length == 2 && split[1].equals("dmp");
    }

    private void a(File file, String str) {
        File file2 = new File(file.getParentFile().getAbsolutePath(), str + this.f1261a.format(new Date(file.lastModified())) + "-" + System.currentTimeMillis() + ".zip");
        Log.d("crash", "src zip file name = " + str);
        Log.d("crash", "zip file name = " + file2.getName());
        File file3 = new File(file.getAbsolutePath() + ".dog");
        if (a(file, file3, file2)) {
            long c = c(file2, "http://dump.p2.cmcm.com/dump?f=");
            Log.d("crash", "upload zip file " + file2.getName());
            if (c > 0) {
                file.delete();
                file3.delete();
            } else {
                Log.d("crash", "uploading " + str + " failed");
                return;
            }
        } else {
            Log.d("crash", "CCrashUpdater::pack zip file failed");
        }
        if (file2.exists()) {
            file2.delete();
        }
    }

    private void b(File file, String str) {
        File[] listFiles;
        if (file != null && file.isDirectory() && (listFiles = file.listFiles()) != null) {
            for (File file2 : listFiles) {
                String name = file2.getName();
                if (file2 != null && !name.equals(str)) {
                    if (file2.isDirectory()) {
                        b(file2, "");
                    }
                    file2.delete();
                }
            }
        }
    }

    private void b(File file) {
        File[] listFiles;
        String[] split;
        if (file != null && file.isDirectory() && (listFiles = file.listFiles()) != null) {
            for (File file2 : listFiles) {
                if (file2 != null && (split = file2.getName().split("\\.")) != null && split.length > 1 && split[1].equals("zip")) {
                    file2.delete();
                }
            }
        }
    }

    public static void a(Context context, final String str, final String str2, final String str3) {
        final String str4 = b.a(context) + File.separator;
        String absolutePath = context.getFilesDir().getAbsolutePath();
        final String[] strArr = {absolutePath + File.separator + "logInfoFile.txt", absolutePath + File.separator + "diamondlog.txt", absolutePath + File.separator + "diamondlog.txt.bak", absolutePath + File.separator + "oplog.txt", absolutePath + File.separator + "oplog.txt.bak"};
        new Thread(new Runnable() { // from class: com.cmplay.c.a.a.2
            @Override // java.lang.Runnable
            public void run() {
                a.b(str4, strArr, str, str2, str3);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(String str, String[] strArr, String str2, String str3, String str4) {
        String versionCode = NativeUtil.getVersionCode();
        String model = NativeUtil.getModel();
        NativeUtil.getDevice().replaceAll("-", "");
        String replaceAll = NativeUtil.getBrand().replaceAll("-", "");
        if (str3.length() == 0) {
            str3 = "unknownuser";
        }
        if (str4.length() == 0) {
            str4 = "unknownsocal";
        }
        if (str2.length() == 0) {
            str2 = "debugtype";
        }
        int i2 = Build.VERSION.SDK_INT;
        String androidId = NativeUtil.getAndroidId();
        if (androidId == null) {
            androidId = "";
        }
        try {
            File file = new File(str, URLEncoder.encode((versionCode + "-" + str2 + "-" + str3 + "-" + androidId + "-" + str4 + "-" + i2 + "-" + model + "-" + replaceAll + "-" + aa.b("key_language_selected", "en") + "-" + System.currentTimeMillis() + ".zip").replaceAll(" ", ""), AudienceNetworkActivity.WEBVIEW_ENCODING));
            if (!a(strArr, file)) {
                NativeUtil.onDebugInfoUploadRes(0);
            } else if (c(file, "http://54.173.50.222/api/crash/upload?f=") > 0) {
                NativeUtil.onDebugInfoUploadRes(1);
            } else {
                NativeUtil.onDebugInfoUploadRes(0);
            }
            if (file.exists()) {
                file.delete();
            }
        } catch (Exception e) {
        }
    }

    private static boolean a(String[] strArr, File file) {
        ZipOutputStream zipOutputStream;
        Throwable th;
        if (strArr == null || strArr.length <= 0 || file == null) {
            return false;
        }
        ZipOutputStream zipOutputStream2 = null;
        try {
            file.createNewFile();
            zipOutputStream = new ZipOutputStream(new FileOutputStream(file));
            try {
                boolean z = false;
                for (String str : strArr) {
                    File file2 = new File(str);
                    if (file2.exists() && a(file2, zipOutputStream)) {
                        z = true;
                    }
                }
                if (zipOutputStream != null) {
                    try {
                        zipOutputStream.close();
                        return z;
                    } catch (Exception e) {
                        return z;
                    }
                }
                return z;
            } catch (Exception e2) {
                zipOutputStream2 = zipOutputStream;
                if (zipOutputStream2 != null) {
                    try {
                        zipOutputStream2.close();
                    } catch (Exception e3) {
                    }
                }
                return false;
            } catch (Throwable th2) {
                th = th2;
                if (zipOutputStream != null) {
                    try {
                        zipOutputStream.close();
                    } catch (Exception e4) {
                    }
                }
                throw th;
            }
        } catch (Exception e5) {
        } catch (Throwable th3) {
            zipOutputStream = null;
            th = th3;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x0080 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x007b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean a(java.io.File r7, java.util.zip.ZipOutputStream r8) {
        /*
            r0 = 1
            r1 = 0
            r2 = 0
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> La4
            r3.<init>(r7)     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> La4
            java.util.zip.ZipEntry r2 = new java.util.zip.ZipEntry     // Catch: java.lang.Throwable -> L9a java.lang.Exception -> La8
            java.lang.String r4 = r7.getName()     // Catch: java.lang.Throwable -> L9a java.lang.Exception -> La8
            r2.<init>(r4)     // Catch: java.lang.Throwable -> L9a java.lang.Exception -> La8
            r8.putNextEntry(r2)     // Catch: java.lang.Throwable -> L9a java.lang.Exception -> La8
            r2 = 4096(0x1000, float:5.74E-42)
            byte[] r2 = new byte[r2]     // Catch: java.lang.Exception -> L26 java.lang.Throwable -> L9c
        L18:
            r4 = 0
            int r5 = r2.length     // Catch: java.lang.Exception -> L26 java.lang.Throwable -> L9c
            int r4 = r3.read(r2, r4, r5)     // Catch: java.lang.Exception -> L26 java.lang.Throwable -> L9c
            r5 = -1
            if (r4 == r5) goto L3f
            r5 = 0
            r8.write(r2, r5, r4)     // Catch: java.lang.Exception -> L26 java.lang.Throwable -> L9c
            goto L18
        L26:
            r2 = move-exception
            r6 = r2
            r2 = r0
            r0 = r6
        L2a:
            java.lang.String r4 = "crash"
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> La1
            android.util.Log.d(r4, r0)     // Catch: java.lang.Throwable -> La1
            if (r3 == 0) goto L38
            r3.close()     // Catch: java.lang.Exception -> L61
        L38:
            if (r2 == 0) goto L3d
            r8.closeEntry()     // Catch: java.lang.Exception -> L6c
        L3d:
            r0 = r1
        L3e:
            return r0
        L3f:
            r8.flush()     // Catch: java.lang.Exception -> L26 java.lang.Throwable -> L9c
            if (r3 == 0) goto L47
            r3.close()     // Catch: java.lang.Exception -> L56
        L47:
            r8.closeEntry()     // Catch: java.lang.Exception -> L4b
            goto L3e
        L4b:
            r1 = move-exception
            java.lang.String r2 = "crash"
            java.lang.String r1 = r1.toString()
            android.util.Log.d(r2, r1)
            goto L3e
        L56:
            r1 = move-exception
            java.lang.String r2 = "crash"
            java.lang.String r1 = r1.toString()
            android.util.Log.d(r2, r1)
            goto L47
        L61:
            r0 = move-exception
            java.lang.String r3 = "crash"
            java.lang.String r0 = r0.toString()
            android.util.Log.d(r3, r0)
            goto L38
        L6c:
            r0 = move-exception
            java.lang.String r2 = "crash"
            java.lang.String r0 = r0.toString()
            android.util.Log.d(r2, r0)
            goto L3d
        L77:
            r0 = move-exception
            r3 = r2
        L79:
            if (r3 == 0) goto L7e
            r3.close()     // Catch: java.lang.Exception -> L84
        L7e:
            if (r1 == 0) goto L83
            r8.closeEntry()     // Catch: java.lang.Exception -> L8f
        L83:
            throw r0
        L84:
            r2 = move-exception
            java.lang.String r3 = "crash"
            java.lang.String r2 = r2.toString()
            android.util.Log.d(r3, r2)
            goto L7e
        L8f:
            r1 = move-exception
            java.lang.String r2 = "crash"
            java.lang.String r1 = r1.toString()
            android.util.Log.d(r2, r1)
            goto L83
        L9a:
            r0 = move-exception
            goto L79
        L9c:
            r1 = move-exception
            r6 = r1
            r1 = r0
            r0 = r6
            goto L79
        La1:
            r0 = move-exception
            r1 = r2
            goto L79
        La4:
            r0 = move-exception
            r3 = r2
            r2 = r1
            goto L2a
        La8:
            r0 = move-exception
            r2 = r1
            goto L2a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmplay.c.a.a.a(java.io.File, java.util.zip.ZipOutputStream):boolean");
    }

    private boolean a(File file, File file2, File file3) {
        ZipOutputStream zipOutputStream;
        if (file != null && file3 != null) {
            ZipOutputStream zipOutputStream2 = null;
            try {
                file3.createNewFile();
                zipOutputStream = new ZipOutputStream(new FileOutputStream(file3));
            } catch (Exception e) {
                zipOutputStream = null;
            } catch (Throwable th) {
                th = th;
            }
            try {
                if (!a(file, zipOutputStream)) {
                    if (zipOutputStream == null) {
                        return false;
                    }
                    try {
                        zipOutputStream.close();
                        return false;
                    } catch (Exception e2) {
                        return false;
                    }
                }
                if (file2.exists()) {
                    a(file2, zipOutputStream);
                }
                if (zipOutputStream != null) {
                    try {
                        zipOutputStream.close();
                    } catch (Exception e3) {
                    }
                }
            } catch (Exception e4) {
                if (zipOutputStream == null) {
                    return false;
                }
                try {
                    zipOutputStream.close();
                    return false;
                } catch (Exception e5) {
                    return false;
                }
            } catch (Throwable th2) {
                th = th2;
                zipOutputStream2 = zipOutputStream;
                if (zipOutputStream2 != null) {
                    try {
                        zipOutputStream2.close();
                    } catch (Exception e6) {
                    }
                }
                throw th;
            }
        }
        return true;
    }

    private static long c(File file, String str) {
        FileInputStream fileInputStream;
        BufferedReader bufferedReader;
        OutputStream outputStream;
        FileInputStream fileInputStream2;
        BufferedReader bufferedReader2;
        OutputStream outputStream2;
        HttpURLConnection httpURLConnection = null;
        if (file == null) {
            return -1L;
        }
        long j = 0;
        try {
            HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(str + file.getName()).openConnection();
            try {
                a(httpURLConnection2, "POST");
                fileInputStream = new FileInputStream(file);
                try {
                    outputStream = httpURLConnection2.getOutputStream();
                    try {
                        byte[] bArr = new byte[8192];
                        while (true) {
                            int read = fileInputStream.read(bArr, 0, bArr.length);
                            if (read == -1) {
                                break;
                            }
                            outputStream.write(bArr, 0, read);
                            j += read;
                        }
                        outputStream.flush();
                        bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection2.getInputStream()));
                        String str2 = "";
                        while (true) {
                            try {
                                String readLine = bufferedReader.readLine();
                                if (readLine == null) {
                                    break;
                                }
                                str2 = str2 + readLine;
                            } catch (Exception e) {
                                httpURLConnection = httpURLConnection2;
                                outputStream2 = outputStream;
                                fileInputStream2 = fileInputStream;
                                bufferedReader2 = bufferedReader;
                                if (outputStream2 != null) {
                                    try {
                                        outputStream2.close();
                                    } catch (IOException e2) {
                                    }
                                }
                                if (bufferedReader2 != null) {
                                    try {
                                        bufferedReader2.close();
                                    } catch (IOException e3) {
                                    }
                                }
                                if (fileInputStream2 != null) {
                                    try {
                                        fileInputStream2.close();
                                    } catch (IOException e4) {
                                    }
                                }
                                if (httpURLConnection != null) {
                                    httpURLConnection.disconnect();
                                }
                                return -1L;
                            } catch (Throwable th) {
                                httpURLConnection = httpURLConnection2;
                                th = th;
                                if (outputStream != null) {
                                    try {
                                        outputStream.close();
                                    } catch (IOException e5) {
                                    }
                                }
                                if (bufferedReader != null) {
                                    try {
                                        bufferedReader.close();
                                    } catch (IOException e6) {
                                    }
                                }
                                if (fileInputStream != null) {
                                    try {
                                        fileInputStream.close();
                                    } catch (IOException e7) {
                                    }
                                }
                                if (httpURLConnection == null) {
                                    throw th;
                                }
                                httpURLConnection.disconnect();
                                throw th;
                            }
                        }
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (IOException e8) {
                            }
                        }
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e9) {
                            }
                        }
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e10) {
                            }
                        }
                        if (httpURLConnection2 != null) {
                            httpURLConnection2.disconnect();
                        }
                        return j;
                    } catch (Exception e11) {
                        outputStream2 = outputStream;
                        fileInputStream2 = fileInputStream;
                        bufferedReader2 = null;
                        httpURLConnection = httpURLConnection2;
                    } catch (Throwable th2) {
                        bufferedReader = null;
                        httpURLConnection = httpURLConnection2;
                        th = th2;
                    }
                } catch (Exception e12) {
                    outputStream2 = null;
                    fileInputStream2 = fileInputStream;
                    bufferedReader2 = null;
                    httpURLConnection = httpURLConnection2;
                } catch (Throwable th3) {
                    bufferedReader = null;
                    outputStream = null;
                    httpURLConnection = httpURLConnection2;
                    th = th3;
                }
            } catch (Exception e13) {
                bufferedReader2 = null;
                outputStream2 = null;
                httpURLConnection = httpURLConnection2;
                fileInputStream2 = null;
            } catch (Throwable th4) {
                bufferedReader = null;
                outputStream = null;
                th = th4;
                fileInputStream = null;
                httpURLConnection = httpURLConnection2;
            }
        } catch (Exception e14) {
            fileInputStream2 = null;
            bufferedReader2 = null;
            outputStream2 = null;
        } catch (Throwable th5) {
            th = th5;
            fileInputStream = null;
            bufferedReader = null;
            outputStream = null;
        }
    }

    private static void a(HttpURLConnection httpURLConnection, String str) throws ProtocolException {
        httpURLConnection.setConnectTimeout(20000);
        httpURLConnection.setReadTimeout(20000);
        httpURLConnection.setDoInput(true);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setRequestMethod(str);
        httpURLConnection.setRequestProperty("accept", "*/*");
        httpURLConnection.setRequestProperty("Connection", "Keep-Alive");
        httpURLConnection.setRequestProperty("Content-Type", "binary/octet-stream");
        httpURLConnection.setRequestProperty("Accept-Encoding", "gzip, deflate");
        httpURLConnection.setRequestProperty("User-Agent", f());
        Locale locale = Locale.getDefault();
        String country = locale.getCountry();
        String language = locale.getLanguage();
        httpURLConnection.setRequestProperty("Accept-Language", String.format("%s-%s,%s;q=0.8", language, country, language));
    }

    private static String f() {
        com.cmplay.kinfoc.report.a g = c.g(GameApp.f1598a);
        return String.format("mt=%s;os=%s;cv=%s", g.t, String.valueOf(g.D), g.f1563b);
    }
}
