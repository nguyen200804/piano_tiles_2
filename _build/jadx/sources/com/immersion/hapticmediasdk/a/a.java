package com.immersion.hapticmediasdk.a;

import com.immersion.content.HapticHeaderUtils;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public static int f3610a = 72;

    /* renamed from: b, reason: collision with root package name */
    public static int f3611b = 2;
    public static int c = 1;
    public static int d;

    public static int a() {
        return 1;
    }

    private static int a(FileChannel fileChannel) {
        boolean z = false;
        try {
            ByteBuffer allocate = ByteBuffer.allocate(4);
            allocate.order(ByteOrder.LITTLE_ENDIAN);
            if (((b() + a()) * b()) % d() != d) {
                f3610a = b();
                d = 93;
            }
            allocate.position(0);
            if (fileChannel.read(allocate, 16L) != 4) {
                return 0;
            }
            allocate.flip();
            int i = allocate.getInt();
            int i2 = i + 28;
            ByteBuffer allocate2 = ByteBuffer.allocate(i2);
            allocate2.order(ByteOrder.LITTLE_ENDIAN);
            if (fileChannel.read(allocate2, 0L) != i2) {
                return 0;
            }
            while (true) {
                switch (z) {
                    case false:
                        break;
                    case true:
                        break;
                    default:
                        while (true) {
                            switch (z) {
                            }
                        }
                        break;
                }
            }
            allocate2.position(4);
            int i3 = allocate2.getInt() + 8;
            allocate2.position(20);
            HapticHeaderUtils hapticHeaderUtils = new HapticHeaderUtils();
            hapticHeaderUtils.a(allocate2, i);
            return hapticHeaderUtils.f();
        } catch (IOException e) {
            e.printStackTrace();
            return 0;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:12:0x0013. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.immersion.hapticmediasdk.a.d a(java.lang.String r4, com.immersion.hapticmediasdk.b.a r5) {
        /*
            r3 = 0
            r0 = 0
            int r1 = b(r4, r5)     // Catch: java.lang.Error -> L20
            switch(r1) {
                case -1: goto L18;
                case 0: goto L9;
                case 1: goto L52;
                case 2: goto L42;
                case 3: goto L4a;
                default: goto L9;
            }     // Catch: java.lang.Error -> L20
        L9:
            java.lang.String r1 = "FileReaderFactory"
            java.lang.String r2 = "Unsupported HAPT file version"
            com.immersion.hapticmediasdk.b.b.d(r1, r2)     // Catch: java.lang.Error -> L20
        L10:
            switch(r3) {
                case 0: goto L17;
                case 1: goto L10;
                default: goto L13;
            }     // Catch: java.lang.Error -> L20
        L13:
            switch(r3) {
                case 0: goto L17;
                case 1: goto L10;
                default: goto L16;
            }     // Catch: java.lang.Error -> L20
        L16:
            goto L13
        L17:
            return r0
        L18:
            java.lang.String r1 = "FileReaderFactory"
            java.lang.String r2 = "Can't retrieve Major version! Not enough bytes available yet."
            com.immersion.hapticmediasdk.b.b.b(r1, r2)     // Catch: java.lang.Error -> L20
            goto L17
        L20:
            r1 = move-exception
            r1.printStackTrace()
            int r1 = com.immersion.hapticmediasdk.a.a.f3610a
            int r2 = com.immersion.hapticmediasdk.a.a.c
            int r1 = r1 + r2
            int r2 = com.immersion.hapticmediasdk.a.a.f3610a
            int r1 = r1 * r2
            int r2 = com.immersion.hapticmediasdk.a.a.f3611b
            int r1 = r1 % r2
            int r2 = c()
            if (r1 == r2) goto L17
            int r1 = b()
            com.immersion.hapticmediasdk.a.a.f3610a = r1
            int r1 = b()
            com.immersion.hapticmediasdk.a.a.c = r1
            goto L17
        L42:
            com.immersion.hapticmediasdk.a.g r1 = new com.immersion.hapticmediasdk.a.g     // Catch: java.lang.Error -> L20
            r2 = 2
            r1.<init>(r4, r5, r2)     // Catch: java.lang.Error -> L20
            r0 = r1
            goto L17
        L4a:
            com.immersion.hapticmediasdk.a.g r1 = new com.immersion.hapticmediasdk.a.g     // Catch: java.lang.Error -> L20
            r2 = 3
            r1.<init>(r4, r5, r2)     // Catch: java.lang.Error -> L20
            r0 = r1
            goto L17
        L52:
            com.immersion.hapticmediasdk.a.h r1 = new com.immersion.hapticmediasdk.a.h     // Catch: java.lang.Error -> L20
            r1.<init>(r4, r5)     // Catch: java.lang.Error -> L20
            r0 = r1
            goto L17
        */
        throw new UnsupportedOperationException("Method not decompiled: com.immersion.hapticmediasdk.a.a.a(java.lang.String, com.immersion.hapticmediasdk.b.a):com.immersion.hapticmediasdk.a.d");
    }

    public static int b() {
        return 47;
    }

    private static int b(String str, com.immersion.hapticmediasdk.b.a aVar) {
        File file;
        int i = 0;
        String str2 = null;
        try {
            if (aVar != null) {
                file = aVar.c(str);
            } else {
                if (str == null) {
                    return 0;
                }
                file = new File(str);
            }
            if (file.length() == 0) {
                return -1;
            }
            FileChannel channel = 0 == 0 ? new RandomAccessFile(file, "r").getChannel() : null;
            if (channel == null) {
                return 0;
            }
            i = a(channel);
            channel.close();
            while (true) {
                try {
                    str2.length();
                } catch (Exception e) {
                    f3610a = b();
                    return i;
                }
            }
        } catch (Exception e2) {
            try {
                e2.printStackTrace();
                return i;
            } catch (Exception e3) {
                throw e3;
            }
        }
    }

    public static int c() {
        return 0;
    }

    public static int d() {
        return 2;
    }
}
