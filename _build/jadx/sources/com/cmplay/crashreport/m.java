package com.cmplay.crashreport;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.os.Debug;
import android.os.Environment;
import android.os.StatFs;
import android.os.SystemProperties;
import android.support.v4.os.EnvironmentCompat;
import android.text.TextUtils;
import android.util.Log;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.Thread;
import java.lang.reflect.Field;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.zip.CRC32;
import org.apache.commons.io.IOUtils;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class m implements Thread.UncaughtExceptionHandler {

    /* renamed from: a, reason: collision with root package name */
    private static Thread.UncaughtExceptionHandler f1306a;
    private static m c;
    private static String e;
    private static String f;
    private boolean p = true;

    /* renamed from: b, reason: collision with root package name */
    private static boolean f1307b = false;
    private static String d = null;
    private static int g = 0;
    private static String h = "0";
    private static boolean i = false;
    private static String j = null;
    private static String k = null;
    private static Context l = null;
    private static String m = "";
    private static String n = "";
    private static int o = 600000;

    public static synchronized m a() {
        m mVar;
        synchronized (m.class) {
            if (c == null) {
                c = new m();
            }
            mVar = c;
        }
        return mVar;
    }

    public static String a(Context context) {
        return new File(com.cmplay.crashreport.a.d.a(context), "anr").getAbsolutePath();
    }

    private String a(Throwable th, String str) {
        FileWriter fileWriter;
        String str2 = "";
        try {
            a(false, a(a().b(l), "crash_"));
            try {
                h = h.a(th);
            } catch (Exception e2) {
                h = "1000";
            }
            String format = new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date());
            File file = new File(b(l));
            if (file != null && !file.exists()) {
                file.mkdir();
            }
            File file2 = new File(b(l), "crash_" + f + "_" + format + ".txt");
            if (file2 != null && (fileWriter = new FileWriter(file2)) != null) {
                String i2 = i();
                try {
                    String str3 = i2 + "\n\n----exception localized message----\n";
                    String localizedMessage = th.getLocalizedMessage();
                    if (localizedMessage != null) {
                        str3 = str3 + localizedMessage;
                    }
                    i2 = str3 + "\n\n----exception stack trace----\n";
                    if (t.c(th)) {
                        i2 = i2 + j.a(l) + IOUtils.LINE_SEPARATOR_UNIX;
                        if (f() < 31457280) {
                            h = "65535";
                        }
                    }
                    fileWriter.write(i2);
                    PrintWriter printWriter = new PrintWriter(fileWriter);
                    if (printWriter != null) {
                        while (th != null) {
                            th.printStackTrace(printWriter);
                            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                            PrintWriter printWriter2 = new PrintWriter(byteArrayOutputStream);
                            th.printStackTrace(printWriter2);
                            printWriter2.flush();
                            i2 = (i2 + new String(byteArrayOutputStream.toByteArray())) + IOUtils.LINE_SEPARATOR_UNIX;
                            th = th.getCause();
                        }
                        fileWriter.write("-----dumpkey----");
                        fileWriter.write("\ndumpkey=" + h + "\n\n");
                        if (!TextUtils.isEmpty(str)) {
                            String str4 = "\n\n----attachinfo----\n" + str;
                            i2 = i2 + str4;
                            fileWriter.write(str4);
                        }
                        printWriter.close();
                    }
                    str2 = i2;
                    fileWriter.close();
                } catch (Exception e3) {
                    str2 = i2;
                    e = e3;
                    e.printStackTrace();
                    return str2;
                }
            }
        } catch (Exception e4) {
            e = e4;
            e.printStackTrace();
            return str2;
        }
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        FileWriter fileWriter;
        try {
            a(false, a(a(l), "anr_"));
            String format = new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date());
            File file = new File(a(l));
            if (file != null && !file.exists()) {
                file.mkdir();
            }
            File file2 = new File(a(l), "anr_" + f + "_" + format + ".txt");
            if (file2 == null || (fileWriter = new FileWriter(file2)) == null) {
                return;
            }
            fileWriter.write((i() + "\n\n") + str);
            fileWriter.close();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void a(Thread thread, Throwable th) {
        String str;
        if (thread == null || th == null || !this.p) {
            return;
        }
        try {
            try {
                str = h.a(th);
            } catch (Exception e2) {
                str = "1000";
            }
            Log.d("UNEXC", "===== uncaughtException.TraceBegin:" + thread.toString() + " Msg:" + th.getMessage() + " DumpKey:" + str + "=====");
            while (th != null) {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                PrintWriter printWriter = new PrintWriter(byteArrayOutputStream);
                th.printStackTrace(printWriter);
                printWriter.flush();
                Log.d("UNEXC", new String(byteArrayOutputStream.toByteArray()));
                th = th.getCause();
            }
        } catch (Throwable th2) {
        } finally {
            Log.d("UNEXC", "===== uncaughtException.TraceEnd:" + thread.toString() + " =====");
        }
    }

    public static String b() {
        Debug.MemoryInfo memoryInfo = new Debug.MemoryInfo();
        Debug.getMemoryInfo(memoryInfo);
        StringBuffer stringBuffer = new StringBuffer(128);
        try {
            Field declaredField = memoryInfo.getClass().getDeclaredField("otherStats");
            declaredField.setAccessible(true);
            int[] iArr = (int[]) declaredField.get(memoryInfo);
            if (iArr != null && iArr.length > 0) {
                for (int i2 = 0; i2 < iArr.length; i2++) {
                    stringBuffer.append(iArr[i2]);
                    if (i2 < iArr.length - 1) {
                        stringBuffer.append(',');
                    }
                }
            }
        } catch (Exception e2) {
        }
        return memoryInfo.getTotalPss() + "/" + memoryInfo.dalvikPss + "/" + memoryInfo.nativePss + "/" + memoryInfo.otherPss + "/" + Runtime.getRuntime().maxMemory() + "/" + stringBuffer.toString();
    }

    private String b(String str) {
        StringBuilder sb = new StringBuilder();
        ArrayList arrayList = new ArrayList();
        try {
            File file = new File(l.getCacheDir(), "logcat_txt.temp");
            if (file.exists()) {
                file.delete();
            }
            try {
                Process exec = Runtime.getRuntime().exec("logcat " + str + " -f " + file.getAbsolutePath());
                exec.waitFor();
                exec.destroy();
            } catch (IOException e2) {
            }
            BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                if (arrayList.size() > 300) {
                    arrayList.remove(0);
                }
                arrayList.add(readLine);
            }
            bufferedReader.close();
            file.delete();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                sb.append("\t" + ((String) it.next()) + IOUtils.LINE_SEPARATOR_UNIX);
            }
        } catch (Throwable th) {
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Context context) {
        try {
            if (d == null) {
                d = com.cmplay.crashreport.a.h.a(context);
            }
        } catch (Exception e2) {
            d = "";
        }
    }

    private long f() {
        File dataDirectory = Environment.getDataDirectory();
        if (dataDirectory != null && dataDirectory.exists()) {
            try {
                StatFs statFs = new StatFs(dataDirectory.getPath());
                return statFs.getBlockSize() * statFs.getAvailableBlocks();
            } catch (Exception e2) {
            }
        }
        return 0L;
    }

    private static int g() {
        try {
            File file = new File("/proc/self/fd");
            if (!file.exists()) {
                return 0;
            }
            if (file.isDirectory()) {
                return file.listFiles().length;
            }
            return -2;
        } catch (Exception e2) {
            return -1;
        }
    }

    private void h() {
        if (k == null) {
            try {
                k = "5";
            } catch (Throwable th) {
                k = "-1";
            }
        }
    }

    private String i() {
        com.cmplay.crashreport.a.f a2 = com.cmplay.crashreport.a.g.a();
        String str = a2 != null ? a2.f1292b + "/" + a2.f1291a : "";
        c(l);
        h();
        StringBuilder sb = new StringBuilder("-----infromation----\n");
        sb.append("pkg=").append(l.getPackageName()).append("\nchannel=").append(n).append("\nme=").append(f).append("\ncodeme=").append(e).append("\nappflags=").append(String.valueOf(g)).append("\ndebug=").append(String.valueOf((g & 2) != 0)).append("\nimei=").append(d).append("\naid=").append(d).append("\nboard=").append(SystemProperties.get("ro.product.board", EnvironmentCompat.MEDIA_UNKNOWN)).append("\nbootloader=").append(SystemProperties.get("ro.bootloader", EnvironmentCompat.MEDIA_UNKNOWN)).append("\nbrand=").append(SystemProperties.get("ro.product.brand", EnvironmentCompat.MEDIA_UNKNOWN)).append("\ncpu_abi=").append(SystemProperties.get("ro.product.cpu.abi", EnvironmentCompat.MEDIA_UNKNOWN)).append("\ncpu_abi2=").append(SystemProperties.get("ro.product.cpu.abi2", EnvironmentCompat.MEDIA_UNKNOWN)).append("\ndevice=").append(SystemProperties.get("ro.product.device", EnvironmentCompat.MEDIA_UNKNOWN)).append("\ndisplay=").append(SystemProperties.get("ro.build.display.id", EnvironmentCompat.MEDIA_UNKNOWN)).append("\nfingerprint=").append(SystemProperties.get("ro.build.fingerprint", EnvironmentCompat.MEDIA_UNKNOWN)).append("\nhardware=").append(SystemProperties.get("ro.hardware", EnvironmentCompat.MEDIA_UNKNOWN)).append("\nhost=").append(SystemProperties.get("ro.build.host", EnvironmentCompat.MEDIA_UNKNOWN)).append("\nid=").append(SystemProperties.get("ro.build.id", EnvironmentCompat.MEDIA_UNKNOWN)).append("\nmanufacturer=").append(SystemProperties.get("ro.product.manufacturer", EnvironmentCompat.MEDIA_UNKNOWN)).append("\nmodel=").append(SystemProperties.get("ro.product.model", EnvironmentCompat.MEDIA_UNKNOWN)).append("\nproduct=").append(SystemProperties.get("ro.product.name", EnvironmentCompat.MEDIA_UNKNOWN)).append("\nradio=").append(SystemProperties.get("gsm.version.baseband", EnvironmentCompat.MEDIA_UNKNOWN)).append("\ntags=").append(SystemProperties.get("ro.build.tags", EnvironmentCompat.MEDIA_UNKNOWN)).append("\ntype=").append(SystemProperties.get("ro.build.type", EnvironmentCompat.MEDIA_UNKNOWN)).append("\nuser=").append(SystemProperties.get("ro.build.user", EnvironmentCompat.MEDIA_UNKNOWN)).append("\ncodename=").append(SystemProperties.get("ro.build.version.codename", EnvironmentCompat.MEDIA_UNKNOWN)).append("\nincremental=").append(SystemProperties.get("ro.build.version.incremental", EnvironmentCompat.MEDIA_UNKNOWN)).append("\nrelease=").append(SystemProperties.get("ro.build.version.release", EnvironmentCompat.MEDIA_UNKNOWN)).append("\nsdk=").append(SystemProperties.get("ro.build.version.sdk", EnvironmentCompat.MEDIA_UNKNOWN)).append("\nlanguage=").append(Locale.getDefault().getLanguage()).append("\nactnumber=").append(0).append("\nforegact=").append("").append("\nmeminfo=").append(b()).append("\nnativefd=").append(g()).append("\nruntime=").append(0).append("\nLauncher=").append("").append("\nRoot=").append(Integer.toString(0)).append("\nstorage=").append(str).append("\nprocname=").append(m).append("\nmsver=").append(String.valueOf(com.cmplay.crashreport.a.c.a(l))).append("\nsqlite_ver=").append(k).append("\nprodid=").append(0);
        return sb.toString();
    }

    private String j() {
        return "****** MAIN LOG ******\n" + b("-d -v threadtime -b main -t 600") + "\n\n****** SYSTEM LOG ******" + b("-d -v threadtime -b system -t 600");
    }

    private void k() {
    }

    public void a(Context context, a aVar) {
        l = context.getApplicationContext();
        if (f1307b) {
            return;
        }
        f1307b = true;
        e = "";
        f = "";
        g = 0;
        n = aVar.b();
        m = aVar.a();
        try {
            com.cmplay.crashreport.a.a.a().post(new n(this));
            f1306a = Thread.getDefaultUncaughtExceptionHandler();
            Thread.setDefaultUncaughtExceptionHandler(this);
            f = com.cmplay.crashreport.a.c.b(context);
            ApplicationInfo applicationInfo = context.getApplicationInfo();
            if (applicationInfo != null) {
                g = applicationInfo.flags;
            }
        } catch (Exception e2) {
            e = "";
            f = "";
        }
        System.currentTimeMillis();
        c.a().a(new o(this));
    }

    public void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("?ver=1.6&upflag=0&dumpkey=");
        sb.append(str2);
        sb.append("&prod_id=");
        sb.append(str3);
        sb.append("&mdl_file_name=");
        sb.append(str4);
        sb.append("&mdl_ver=");
        sb.append(str5);
        sb.append("&proc_name=");
        sb.append(str6);
        sb.append("&proc_ver=");
        sb.append(str7);
        sb.append("&uuid=");
        sb.append(str8);
        sb.append("&product_ver=");
        sb.append(str9);
        String str10 = sb.toString() + "&calc=kingsoft";
        CRC32 crc32 = new CRC32();
        crc32.update(str10.getBytes());
        String l2 = Long.toString(crc32.getValue());
        sb.append("&calc=");
        sb.append(l2);
        CrashReportService.a(l, sb.toString());
    }

    public void a(boolean z, File[] fileArr) {
        int i2 = 0;
        if (fileArr != null) {
            if (z) {
                while (i2 < fileArr.length) {
                    fileArr[i2].delete();
                    i2++;
                }
            } else if (fileArr.length > 3) {
                Arrays.sort(fileArr, new p(this));
                int length = fileArr.length - 3;
                while (i2 < length) {
                    fileArr[i2].delete();
                    i2++;
                }
            }
        }
    }

    public File[] a(String str, String str2) {
        String[] list;
        File file = new File(str);
        if (file == null || !file.exists() || (list = file.list(new q(this, str2))) == null || list.length == 0) {
            return null;
        }
        Arrays.sort(list, new s(this));
        File[] fileArr = new File[list.length];
        for (int i2 = 0; i2 < list.length; i2++) {
            fileArr[i2] = new File(com.cmplay.crashreport.a.d.a(str) + list[i2]);
        }
        return fileArr;
    }

    public String b(Context context) {
        if (!i) {
            j = new File(com.cmplay.crashreport.a.d.a(context), "dump").getAbsolutePath();
            i = true;
        }
        return j;
    }

    public boolean c() {
        return (g & 2) != 0;
    }

    public void d() {
        c(l);
        try {
            a(b.d() ? "http://st.dp.ksmobile.com/Api/index" : "http://us.st.dp.ksmobile.com/Api/index", h, b.c(), com.cmplay.crashreport.a.c.c(l), String.valueOf(Build.VERSION.SDK_INT), "", f, d, n);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21, types: [int] */
    /* JADX WARN: Type inference failed for: r2v22, types: [int] */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v27 */
    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        String str;
        Log.d("PWMM", "uncaughtException=" + thread + "----ex=" + th);
        a(thread, th);
        String str2 = null;
        r2 = 0;
        ?? r2 = 0;
        str2 = null;
        str2 = null;
        str2 = null;
        try {
            if (t.b(th)) {
                Map<Thread, StackTraceElement[]> allStackTraces = Thread.getAllStackTraces();
                String str3 = ((String) null) + IOUtils.LINE_SEPARATOR_UNIX;
                try {
                    for (Map.Entry<Thread, StackTraceElement[]> entry : allStackTraces.entrySet()) {
                        str3 = str3 + entry.getKey().toString() + IOUtils.LINE_SEPARATOR_UNIX;
                        StackTraceElement[] value = entry.getValue();
                        int length = value.length;
                        r2 = 0;
                        while (r2 < length) {
                            str3 = str3 + "\t" + value[r2].toString() + IOUtils.LINE_SEPARATOR_UNIX;
                            r2++;
                        }
                    }
                    str = str3;
                    str2 = r2;
                } catch (Throwable th2) {
                    str = str3;
                    str2 = r2;
                }
            } else {
                str = t.a(th) ? j() : th instanceof g ? ((g) th).a() : null;
            }
        } catch (Throwable th3) {
            str = str2;
        }
        a(th, str);
        if (this.p) {
            k();
        }
        if (!c()) {
            if (this.p) {
                d();
            }
            CrashReportService.a(l);
        }
        boolean z = this.p && !TextUtils.isEmpty(h) && "3992010516".equals(h);
        if (!this.p || z || f1306a == null || thread == null) {
            return;
        }
        f1306a.uncaughtException(thread, th);
    }
}
