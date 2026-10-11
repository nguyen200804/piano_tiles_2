package com.cmplay.webview.b;

import com.applovin.sdk.AppLovinTargetingData;
import org.apache.commons.io.IOUtils;

/* compiled from: Base64.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static char[] f1922a = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', AppLovinTargetingData.GENDER_FEMALE, 'g', 'h', 'i', 'j', 'k', 'l', AppLovinTargetingData.GENDER_MALE, 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', IOUtils.DIR_SEPARATOR_UNIX};

    /* renamed from: b, reason: collision with root package name */
    private static byte[] f1923b = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1};

    public static String a(byte[] bArr) {
        int length = bArr.length;
        StringBuffer stringBuffer = new StringBuffer();
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            int i2 = i + 1;
            int i3 = bArr[i] & 255;
            if (i2 == length) {
                stringBuffer.append(f1922a[i3 >>> 2]);
                stringBuffer.append(f1922a[(i3 & 3) << 4]);
                stringBuffer.append("==");
                break;
            }
            int i4 = i2 + 1;
            int i5 = bArr[i2] & 255;
            if (i4 == length) {
                stringBuffer.append(f1922a[i3 >>> 2]);
                stringBuffer.append(f1922a[((i3 & 3) << 4) | ((i5 & 240) >>> 4)]);
                stringBuffer.append(f1922a[(i5 & 15) << 2]);
                stringBuffer.append("=");
                break;
            }
            i = i4 + 1;
            int i6 = bArr[i4] & 255;
            stringBuffer.append(f1922a[i3 >>> 2]);
            stringBuffer.append(f1922a[((i3 & 3) << 4) | ((i5 & 240) >>> 4)]);
            stringBuffer.append(f1922a[((i5 & 15) << 2) | ((i6 & 192) >>> 6)]);
            stringBuffer.append(f1922a[i6 & 63]);
        }
        return stringBuffer.toString();
    }
}
