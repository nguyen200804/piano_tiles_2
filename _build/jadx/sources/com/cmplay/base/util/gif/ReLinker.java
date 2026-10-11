package com.cmplay.base.util.gif;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import java.io.Closeable;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ReLinker {
    private static final int COPY_BUFFER_SIZE = 8192;
    private static final String LIB_DIR = "lib";
    private static final String MAPPED_BASE_LIB_NAME = System.mapLibraryName("com_cmplay_base_util_gif");
    private static final int MAX_TRIES = 5;

    private ReLinker() {
    }

    @SuppressLint({"UnsafeDynamicallyLoadedCode"})
    static void loadLibrary(Context context) {
        synchronized (ReLinker.class) {
            System.load(unpackLibrary(context).getAbsolutePath());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0090, code lost:
    
        if (r5 == null) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0092, code lost:
    
        r5.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:?, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:?, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:?, code lost:
    
        return r0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12, types: [java.io.Closeable, java.io.FileOutputStream, java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8, types: [java.io.Closeable] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.io.File unpackLibrary(android.content.Context r8) {
        /*
            r2 = 0
            r3 = 0
            java.lang.String r4 = com.cmplay.base.util.gif.ReLinker.MAPPED_BASE_LIB_NAME
            java.io.File r0 = new java.io.File
            java.lang.String r1 = "lib"
            java.io.File r1 = r8.getDir(r1, r2)
            r0.<init>(r1, r4)
            boolean r1 = r0.isFile()
            if (r1 == 0) goto L16
        L15:
            return r0
        L16:
            java.io.File r1 = new java.io.File
            java.io.File r5 = r8.getCacheDir()
            r1.<init>(r5, r4)
            boolean r4 = r1.isFile()
            if (r4 == 0) goto L27
            r0 = r1
            goto L15
        L27:
            java.lang.String r4 = "com_cmplay_base_util_gif_surface"
            java.lang.String r4 = java.lang.System.mapLibraryName(r4)
            com.cmplay.base.util.gif.ReLinker$1 r5 = new com.cmplay.base.util.gif.ReLinker$1
            r5.<init>()
            clearOldLibraryFiles(r0, r5)
            clearOldLibraryFiles(r1, r5)
            android.content.pm.ApplicationInfo r4 = r8.getApplicationInfo()
            java.io.File r5 = new java.io.File
            java.lang.String r4 = r4.sourceDir
            r5.<init>(r4)
            java.util.zip.ZipFile r5 = openZipFile(r5)     // Catch: java.lang.Throwable -> Lb3
        L47:
            int r6 = r2 + 1
            r4 = 5
            if (r2 >= r4) goto L90
            java.util.zip.ZipEntry r2 = findLibraryEntry(r5)     // Catch: java.lang.Throwable -> L73
            if (r2 != 0) goto L7b
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L73
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L73
            r1.<init>()     // Catch: java.lang.Throwable -> L73
            java.lang.String r2 = "Library "
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: java.lang.Throwable -> L73
            java.lang.String r2 = com.cmplay.base.util.gif.ReLinker.MAPPED_BASE_LIB_NAME     // Catch: java.lang.Throwable -> L73
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: java.lang.Throwable -> L73
            java.lang.String r2 = " for supported ABIs not found in APK file"
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: java.lang.Throwable -> L73
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L73
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L73
            throw r0     // Catch: java.lang.Throwable -> L73
        L73:
            r0 = move-exception
            r3 = r5
        L75:
            if (r3 == 0) goto L7a
            r3.close()     // Catch: java.io.IOException -> Lb1
        L7a:
            throw r0
        L7b:
            java.io.InputStream r4 = r5.getInputStream(r2)     // Catch: java.io.IOException -> L99 java.lang.Throwable -> La8
            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> Lb5 java.io.IOException -> Lba
            r2.<init>(r0)     // Catch: java.lang.Throwable -> Lb5 java.io.IOException -> Lba
            copy(r4, r2)     // Catch: java.lang.Throwable -> Lb7 java.io.IOException -> Lbd
            closeSilently(r4)     // Catch: java.lang.Throwable -> L73
            closeSilently(r2)     // Catch: java.lang.Throwable -> L73
            setFilePermissions(r0)     // Catch: java.lang.Throwable -> L73
        L90:
            if (r5 == 0) goto L15
            r5.close()     // Catch: java.io.IOException -> L96
            goto L15
        L96:
            r1 = move-exception
            goto L15
        L99:
            r2 = move-exception
            r2 = r3
            r4 = r3
        L9c:
            r7 = 2
            if (r6 <= r7) goto La0
            r0 = r1
        La0:
            closeSilently(r4)     // Catch: java.lang.Throwable -> L73
            closeSilently(r2)     // Catch: java.lang.Throwable -> L73
            r2 = r6
            goto L47
        La8:
            r0 = move-exception
            r4 = r3
        Laa:
            closeSilently(r4)     // Catch: java.lang.Throwable -> L73
            closeSilently(r3)     // Catch: java.lang.Throwable -> L73
            throw r0     // Catch: java.lang.Throwable -> L73
        Lb1:
            r1 = move-exception
            goto L7a
        Lb3:
            r0 = move-exception
            goto L75
        Lb5:
            r0 = move-exception
            goto Laa
        Lb7:
            r0 = move-exception
            r3 = r2
            goto Laa
        Lba:
            r2 = move-exception
            r2 = r3
            goto L9c
        Lbd:
            r7 = move-exception
            goto L9c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmplay.base.util.gif.ReLinker.unpackLibrary(android.content.Context):java.io.File");
    }

    private static ZipEntry findLibraryEntry(ZipFile zipFile) {
        for (String str : getSupportedABIs()) {
            ZipEntry entry = getEntry(zipFile, str);
            if (entry != null) {
                return entry;
            }
        }
        return null;
    }

    private static String[] getSupportedABIs() {
        return Build.VERSION.SDK_INT >= 21 ? Build.SUPPORTED_ABIS : new String[]{Build.CPU_ABI, Build.CPU_ABI2};
    }

    private static ZipEntry getEntry(ZipFile zipFile, String abi) {
        return zipFile.getEntry("lib/" + abi + "/" + MAPPED_BASE_LIB_NAME);
    }

    private static ZipFile openZipFile(File apkFile) {
        ZipFile zipFile;
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (i >= 5) {
                zipFile = null;
                break;
            }
            try {
                zipFile = new ZipFile(apkFile, 1);
                break;
            } catch (IOException e) {
                i = i2;
            }
        }
        if (zipFile == null) {
            throw new IllegalStateException("Could not open APK file: " + apkFile.getAbsolutePath());
        }
        return zipFile;
    }

    private static void clearOldLibraryFiles(File outputFile, FilenameFilter filter) {
        File[] listFiles = outputFile.getParentFile().listFiles(filter);
        if (listFiles != null) {
            for (File file : listFiles) {
                file.delete();
            }
        }
    }

    @SuppressLint({"SetWorldReadable"})
    private static void setFilePermissions(File outputFile) {
        outputFile.setReadable(true, false);
        outputFile.setExecutable(true, false);
        outputFile.setWritable(true);
    }

    private static void copy(InputStream in, OutputStream out) throws IOException {
        byte[] bArr = new byte[8192];
        while (true) {
            int read = in.read(bArr);
            if (read != -1) {
                out.write(bArr, 0, read);
            } else {
                return;
            }
        }
    }

    private static void closeSilently(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }
}
