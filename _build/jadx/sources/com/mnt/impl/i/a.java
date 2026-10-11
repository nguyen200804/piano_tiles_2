package com.mnt.impl.i;

import android.content.Context;
import com.mnt.impl.b.k;
import com.mnt.impl.e;
import java.net.URLEncoder;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private static String f4054a;

    static {
        String str = e.aR;
        String str2 = e.aS;
        f4054a = e.aT;
    }

    public static void a(Context context, String str, String str2, long j) {
        try {
            StringBuffer stringBuffer = new StringBuffer();
            d.a(stringBuffer, 4);
            d.a(context, stringBuffer);
            stringBuffer.append(str).append(e.aW).append(str2).append(e.aX).append(j);
            String stringBuffer2 = stringBuffer.toString();
            new com.mnt.impl.f.e().a(f4054a, k.a(com.mnt.impl.i.a.b.a(URLEncoder.encode(stringBuffer2, e.aV), e.aU).getBytes()));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
