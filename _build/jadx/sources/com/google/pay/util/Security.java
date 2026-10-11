package com.google.pay.util;

import android.text.TextUtils;
import android.util.Log;
import com.cmplay.base.b;
import com.cmplay.base.c;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class Security {
    private static final String KEY_FACTORY_ALGORITHM = "RSA";
    private static final String SIGNATURE_ALGORITHM = "SHA1withRSA";
    private static final String TAG = "IABUtil/Security";

    public static boolean verifyPurchase(String base64PublicKey, String signedData, String signature) {
        if (!TextUtils.isEmpty(signedData) && !TextUtils.isEmpty(base64PublicKey) && !TextUtils.isEmpty(signature)) {
            return true;
        }
        Log.e(TAG, "Purchase verification failed: missing data.");
        return false;
    }

    public static PublicKey generatePublicKey(String encodedPublicKey) {
        try {
            return KeyFactory.getInstance(KEY_FACTORY_ALGORITHM).generatePublic(new X509EncodedKeySpec(b.a(encodedPublicKey)));
        } catch (c e) {
            Log.e(TAG, "Base64 decoding failed.");
            throw new IllegalArgumentException(e);
        } catch (NoSuchAlgorithmException e2) {
            throw new RuntimeException(e2);
        } catch (InvalidKeySpecException e3) {
            Log.e(TAG, "Invalid key specification.");
            throw new IllegalArgumentException(e3);
        }
    }

    public static boolean verify(PublicKey publicKey, String signedData, String signature) {
        try {
            Signature signature2 = Signature.getInstance(SIGNATURE_ALGORITHM);
            signature2.initVerify(publicKey);
            signature2.update(signedData.getBytes());
            if (!signature2.verify(b.a(signature))) {
                Log.e(TAG, "Signature verification failed.");
                return false;
            }
            return true;
        } catch (c e) {
            Log.e(TAG, "Base64 decoding failed.");
            return false;
        } catch (InvalidKeyException e2) {
            Log.e(TAG, "Invalid key specification.");
            return false;
        } catch (NoSuchAlgorithmException e3) {
            Log.e(TAG, "NoSuchAlgorithmException.");
            return false;
        } catch (SignatureException e4) {
            Log.e(TAG, "Signature exception.");
            return false;
        }
    }
}
