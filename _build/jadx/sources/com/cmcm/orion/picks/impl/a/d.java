package com.cmcm.orion.picks.impl.a;

import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;

/* compiled from: DiskLruCacheUtil.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    static final Charset f942a = Charset.forName("US-ASCII");

    /* renamed from: b, reason: collision with root package name */
    static final Charset f943b = Charset.forName("UTF-8");

    static void a(File file) throws IOException {
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            throw new IOException("not a readable directory: " + file);
        }
        for (File file2 : listFiles) {
            if (file2.isDirectory()) {
                a(file2);
            }
            if (!file2.delete()) {
                throw new IOException("failed to delete file: " + file2);
            }
        }
    }

    static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
            }
        }
    }
}
