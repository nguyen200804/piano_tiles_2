package com.cmplay.base.util.webview.encode;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class SnsSigCheck {
    private static final String CONTENT_CHARSET = "UTF-8";
    private static final String HMAC_ALGORITHM = "HmacSHA1";
    private static final String TAG = "SnsSigCheck";

    public static String encodeUrl(String input) throws OpensnsException {
        try {
            return URLEncoder.encode(input, CONTENT_CHARSET).replace("+", "%20").replace("*", "%2A");
        } catch (UnsupportedEncodingException e) {
            throw new OpensnsException(ErrorCode.MAKE_SIGNATURE_ERROR, e);
        }
    }

    public static String makeSig(String method, String url_path, HashMap<String, String> params, String secret) throws OpensnsException {
        try {
            Mac mac = Mac.getInstance(HMAC_ALGORITHM);
            mac.init(new SecretKeySpec(secret.getBytes(CONTENT_CHARSET), mac.getAlgorithm()));
            return new String(Base64.encode(mac.doFinal(makeSource(method, url_path, params).getBytes(CONTENT_CHARSET))));
        } catch (UnsupportedEncodingException e) {
            throw new OpensnsException(ErrorCode.MAKE_SIGNATURE_ERROR, e);
        } catch (InvalidKeyException e2) {
            throw new OpensnsException(ErrorCode.MAKE_SIGNATURE_ERROR, e2);
        } catch (NoSuchAlgorithmException e3) {
            throw new OpensnsException(ErrorCode.MAKE_SIGNATURE_ERROR, e3);
        }
    }

    public static String makeSource(String method, String url_path, HashMap<String, String> params) throws OpensnsException {
        Object[] array = params.keySet().toArray();
        Arrays.sort(array);
        StringBuilder sb = new StringBuilder(128);
        sb.append(method.toUpperCase()).append("&").append(encodeUrl(url_path)).append("&");
        StringBuilder sb2 = new StringBuilder();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < array.length) {
                sb2.append(array[i2]).append("=").append(params.get(array[i2]));
                if (i2 != array.length - 1) {
                    sb2.append("&");
                }
                i = i2 + 1;
            } else {
                sb.append(encodeUrl(sb2.toString()));
                return sb.toString();
            }
        }
    }

    public static boolean verifySig(String method, String url_path, HashMap<String, String> params, String secret, String sig) throws OpensnsException {
        params.remove("sig");
        codePayValue(params);
        return makeSig(method, url_path, params, secret).equals(sig);
    }

    public static void codePayValue(Map<String, String> params) {
        for (String str : params.keySet()) {
            params.put(str, encodeValue(params.get(str)));
        }
    }

    public static String encodeValue(String s) {
        StringBuffer stringBuffer = new StringBuffer(s);
        StringBuffer stringBuffer2 = new StringBuffer();
        Pattern compile = Pattern.compile("[0-9a-zA-Z!*\\(\\)]");
        for (int i = 0; i < stringBuffer.length(); i++) {
            String valueOf = String.valueOf(stringBuffer.charAt(i));
            if (!compile.matcher(valueOf).find()) {
                valueOf = hexString(valueOf);
            }
            stringBuffer2.append(valueOf);
        }
        return stringBuffer2.toString();
    }

    private static String hexString(String s) {
        String str = "";
        for (byte b2 : s.getBytes()) {
            String hexString = Integer.toHexString(b2 & 255);
            if (hexString.length() == 1) {
                hexString = '0' + hexString;
            }
            str = "%" + hexString.toUpperCase();
        }
        return str;
    }
}
