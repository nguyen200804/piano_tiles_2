package com.cmplay.tile2.export;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class DumpInfoReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (!"com.cmplay.tile2.export.dumpinfo".equals(action)) {
            Log.d("dumpinfo", "receive invalid action " + action);
        } else {
            a(context);
        }
    }

    private void a(Context context) {
        String absolutePath = context.getFilesDir().getParentFile().getAbsolutePath();
        String str = com.cmplay.i.b.a(context) + "/dumpfiles";
        Log.d("dumpinfo", "dumpping " + absolutePath + " to " + str);
        File file = new File(str);
        a(file);
        a(new File(absolutePath), file);
        try {
            Process exec = Runtime.getRuntime().exec("logcat -v threadtime -d -f " + str + "/logcat.txt");
            try {
                Log.d("dumpinfo", "get adb log finished at " + exec.waitFor());
            } finally {
                exec.destroy();
            }
        } catch (Exception e) {
        }
    }

    public static boolean a(File file) {
        File[] listFiles = file.listFiles();
        boolean z = true;
        if (listFiles != null) {
            for (File file2 : listFiles) {
                if (file2.isDirectory()) {
                    z &= a(file2);
                }
                if (!file2.delete()) {
                    Log.d("dumpinfo", "Failed to delete " + file2);
                    z = false;
                }
            }
        }
        return z;
    }

    private boolean a(String str) {
        return !str.equalsIgnoreCase("lib");
    }

    public void a(File file, File file2) {
        FileInputStream fileInputStream;
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        fileOutputStream2 = null;
        FileInputStream fileInputStream2 = null;
        if (file.isDirectory()) {
            if (!file2.exists()) {
                file2.mkdir();
            }
            String[] list = file.list();
            for (int i = 0; i < list.length; i++) {
                if (a(list[i])) {
                    a(new File(file, list[i]), new File(file2, list[i]));
                }
            }
            return;
        }
        try {
            fileInputStream = new FileInputStream(file);
            try {
                fileOutputStream = new FileOutputStream(file2);
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int read = fileInputStream.read(bArr);
                        if (read <= 0) {
                            break;
                        } else {
                            fileOutputStream.write(bArr, 0, read);
                        }
                    }
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (Exception e) {
                        }
                    }
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Exception e2) {
                        }
                    }
                } catch (Exception e3) {
                    fileInputStream2 = fileInputStream;
                    if (fileInputStream2 != null) {
                        try {
                            fileInputStream2.close();
                        } catch (Exception e4) {
                        }
                    }
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Exception e5) {
                        }
                    }
                } catch (Throwable th) {
                    fileOutputStream2 = fileOutputStream;
                    th = th;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (Exception e6) {
                        }
                    }
                    if (fileOutputStream2 == null) {
                        throw th;
                    }
                    try {
                        fileOutputStream2.close();
                        throw th;
                    } catch (Exception e7) {
                        throw th;
                    }
                }
            } catch (Exception e8) {
                fileOutputStream = null;
                fileInputStream2 = fileInputStream;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e9) {
            fileOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
        }
    }
}
