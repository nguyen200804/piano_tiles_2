package com.mopub.common.util;

import android.support.annotation.Nullable;
import android.text.TextUtils;
import java.io.IOException;
import java.io.InputStream;
import java.util.regex.Pattern;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class Strings {

    /* renamed from: a, reason: collision with root package name */
    private static Pattern f4240a = Pattern.compile("((\\d{1,2})|(100))%");

    /* renamed from: b, reason: collision with root package name */
    private static Pattern f4241b = Pattern.compile("\\d{2}:\\d{2}:\\d{2}(.\\d{3})?");

    public static String fromStream(InputStream inputStream) throws IOException {
        StringBuilder sb = new StringBuilder();
        byte[] bArr = new byte[4096];
        int i = 0;
        while (i != -1) {
            sb.append(new String(bArr, 0, i));
            i = inputStream.read(bArr);
        }
        inputStream.close();
        return sb.toString();
    }

    public static boolean isPercentageTracker(String progressValue) {
        return !TextUtils.isEmpty(progressValue) && f4240a.matcher(progressValue).matches();
    }

    public static boolean isAbsoluteTracker(String progressValue) {
        return !TextUtils.isEmpty(progressValue) && f4241b.matcher(progressValue).matches();
    }

    @Nullable
    public static Integer parseAbsoluteOffset(@Nullable String progressValue) {
        if (progressValue == null) {
            return null;
        }
        String[] split = progressValue.split(":");
        if (split.length == 3) {
            return Integer.valueOf((Integer.parseInt(split[0]) * 60 * 60 * 1000) + (Integer.parseInt(split[1]) * 60 * 1000) + ((int) (Float.parseFloat(split[2]) * 1000.0f)));
        }
        return null;
    }
}
