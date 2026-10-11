package com.facebook.share.internal;

import com.facebook.internal.ab;
import com.facebook.share.model.GameRequestContent;

/* compiled from: GameRequestValidation.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b {
    public static void a(GameRequestContent gameRequestContent) {
        ab.a((Object) gameRequestContent.a(), "message");
        if ((gameRequestContent.f() != null) ^ (gameRequestContent.e() == GameRequestContent.a.ASKFOR || gameRequestContent.e() == GameRequestContent.a.SEND)) {
            throw new IllegalArgumentException("Object id should be provided if and only if action type is send or askfor");
        }
        int i = gameRequestContent.b() != null ? 1 : 0;
        if (gameRequestContent.h() != null) {
            i++;
        }
        if (gameRequestContent.g() != null) {
            i++;
        }
        if (i > 1) {
            throw new IllegalArgumentException("Parameters to, filters and suggestions are mutually exclusive");
        }
    }
}
