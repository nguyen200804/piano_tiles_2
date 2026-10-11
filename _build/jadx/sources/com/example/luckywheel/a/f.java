package com.example.luckywheel.a;

import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class f {
    public static String a(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(str2.getBytes("UTF-8"), "HmacMD5");
            Mac mac = Mac.getInstance("HmacMD5");
            mac.init(secretKeySpec);
            byte[] doFinal = mac.doFinal(str.getBytes("UTF-8"));
            StringBuffer stringBuffer = new StringBuffer();
            for (byte b2 : doFinal) {
                String hexString = Integer.toHexString(b2 & 255);
                if (hexString.length() == 1) {
                    stringBuffer.append('0');
                }
                stringBuffer.append(hexString);
            }
            return stringBuffer.toString();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        } catch (InvalidKeyException e2) {
            e2.printStackTrace();
            return null;
        } catch (NoSuchAlgorithmException e3) {
            e3.printStackTrace();
            return null;
        }
    }
}
