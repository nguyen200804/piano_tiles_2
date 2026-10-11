package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class zzcp {

    @Nullable
    private static MessageDigest zzasz = null;
    protected Object zzail = new Object();

    abstract byte[] zzaa(String str);

    @Nullable
    protected MessageDigest zzie() {
        MessageDigest messageDigest;
        synchronized (this.zzail) {
            if (zzasz != null) {
                messageDigest = zzasz;
            } else {
                for (int i = 0; i < 2; i++) {
                    try {
                        zzasz = MessageDigest.getInstance("MD5");
                    } catch (NoSuchAlgorithmException e) {
                    }
                }
                messageDigest = zzasz;
            }
        }
        return messageDigest;
    }
}
