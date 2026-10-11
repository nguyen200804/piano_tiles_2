package com.cmplay.util;

import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;

/* compiled from: FileUtils.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class g {
    public static void a(File file, File file2) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        FileOutputStream fileOutputStream = new FileOutputStream(file2);
        FileChannel channel = fileInputStream.getChannel();
        FileChannel channel2 = fileOutputStream.getChannel();
        try {
            channel.transferTo(0L, channel.size(), channel2);
        } finally {
            if (channel != null) {
                channel.close();
            }
            if (channel2 != null) {
                channel2.close();
            }
            a(fileInputStream);
            a(fileOutputStream);
        }
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
