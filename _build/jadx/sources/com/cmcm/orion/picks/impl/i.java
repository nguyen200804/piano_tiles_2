package com.cmcm.orion.picks.impl;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.media.AudioManager;
import android.media.MediaMetadataRetriever;
import android.text.TextUtils;
import android.util.Base64;
import com.cmcm.orion.picks.a.a.n;
import com.mopub.common.Constants;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.text.NumberFormat;
import java.util.Random;

/* compiled from: VastUtils.java */
@TargetApi(14)
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    private static n f991a = new n(n.f849a);

    public static String a(String str) {
        return TextUtils.isEmpty(str) ? "" : new String(Base64.decode(str.getBytes(), 0));
    }

    public static float a(Context context) {
        if (((AudioManager) context.getSystemService("audio")) != null) {
            return r0.getStreamVolume(3);
        }
        return 0.0f;
    }

    public static float b(Context context) {
        if (((AudioManager) context.getSystemService("audio")) != null) {
            return r0.getStreamMaxVolume(3);
        }
        return 0.0f;
    }

    public static void a(String str, long j) {
        f991a.a(str, j);
    }

    public static long b(String str) {
        return f991a.b(str, 0L);
    }

    public static Object a(InputStream inputStream) {
        ObjectInputStream objectInputStream;
        Throwable th;
        Object obj = null;
        try {
            objectInputStream = new ObjectInputStream(inputStream);
        } catch (Exception e) {
            objectInputStream = null;
        } catch (Throwable th2) {
            objectInputStream = null;
            th = th2;
        }
        try {
            obj = objectInputStream.readObject();
            try {
                objectInputStream.close();
                if (inputStream != null) {
                    inputStream.close();
                }
            } catch (IOException e2) {
            }
        } catch (Exception e3) {
            if (objectInputStream != null) {
                try {
                    objectInputStream.close();
                } catch (IOException e4) {
                }
            }
            if (inputStream != null) {
                inputStream.close();
            }
            return obj;
        } catch (Throwable th3) {
            th = th3;
            if (objectInputStream != null) {
                try {
                    objectInputStream.close();
                } catch (IOException e5) {
                    throw th;
                }
            }
            if (inputStream != null) {
                inputStream.close();
            }
            throw th;
        }
        return obj;
    }

    public static boolean c(String str) {
        return (TextUtils.isEmpty(str) || !str.contains("VAST") || str.startsWith(Constants.HTTP)) ? false : true;
    }

    public static Bitmap d(String str) {
        try {
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            FileInputStream fileInputStream = new FileInputStream(str);
            mediaMetadataRetriever.setDataSource(fileInputStream.getFD());
            fileInputStream.close();
            Bitmap frameAtTime = mediaMetadataRetriever.getFrameAtTime(0L);
            if (frameAtTime == null) {
                frameAtTime = mediaMetadataRetriever.getFrameAtTime();
            }
            mediaMetadataRetriever.release();
            return frameAtTime;
        } catch (Exception e) {
            return null;
        }
    }

    public static int e(String str) {
        try {
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            FileInputStream fileInputStream = new FileInputStream(str);
            mediaMetadataRetriever.setDataSource(fileInputStream.getFD());
            fileInputStream.close();
            String extractMetadata = mediaMetadataRetriever.extractMetadata(9);
            mediaMetadataRetriever.release();
            return Math.round(Long.valueOf(extractMetadata).longValue() / 1000);
        } catch (Exception e) {
            return 0;
        }
    }

    public static long f(String str) {
        try {
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            FileInputStream fileInputStream = new FileInputStream(str);
            mediaMetadataRetriever.setDataSource(fileInputStream.getFD());
            fileInputStream.close();
            String extractMetadata = mediaMetadataRetriever.extractMetadata(9);
            mediaMetadataRetriever.release();
            return Long.valueOf(extractMetadata).longValue();
        } catch (Exception e) {
            return 0L;
        }
    }

    public static int g(String str) {
        try {
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            FileInputStream fileInputStream = new FileInputStream(str);
            mediaMetadataRetriever.setDataSource(fileInputStream.getFD());
            fileInputStream.close();
            String extractMetadata = mediaMetadataRetriever.extractMetadata(18);
            mediaMetadataRetriever.release();
            return Integer.valueOf(extractMetadata).intValue();
        } catch (Exception e) {
            return 0;
        }
    }

    public static int h(String str) {
        try {
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            FileInputStream fileInputStream = new FileInputStream(str);
            mediaMetadataRetriever.setDataSource(fileInputStream.getFD());
            fileInputStream.close();
            String extractMetadata = mediaMetadataRetriever.extractMetadata(19);
            mediaMetadataRetriever.release();
            return Integer.valueOf(extractMetadata).intValue();
        } catch (Exception e) {
            return 0;
        }
    }

    public static String a() {
        try {
            return NumberFormat.getInstance().format(new Random().nextInt(99999999) + 10000000).replace(",", "");
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static long a(long j, String str) {
        try {
            if (!TextUtils.isEmpty(str.trim())) {
                if (str.endsWith("%")) {
                    long doubleValue = (long) ((Double.valueOf(str.substring(0, str.indexOf("%"))).doubleValue() / 100.0d) * j);
                    return doubleValue >= j ? j : doubleValue;
                }
                if (str.contains(".")) {
                    str = str.substring(0, str.indexOf("."));
                }
                if (str.split(":").length == 3) {
                    return (Integer.parseInt(r2[2]) + (Integer.parseInt(r2[0]) * 3600) + (Integer.parseInt(r2[1]) * 60)) * 1000;
                }
            }
            return -1L;
        } catch (Exception e) {
            e.printStackTrace();
            return -1L;
        }
    }

    public static boolean c(Context context) {
        Resources resources;
        return ((context == null || (resources = context.getApplicationContext().getResources()) == null) ? 0 : resources.getConfiguration().orientation) == 2;
    }
}
