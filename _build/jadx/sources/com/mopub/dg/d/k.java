package com.mopub.dg.d;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class k {
    public static String a(ArrayList arrayList) {
        if (arrayList == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            sb.append((String) it.next());
        }
        return sb.toString();
    }

    public static void a(String str, m mVar) {
        new l(mVar, str).start();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0077 A[Catch: Exception -> 0x007b, TRY_LEAVE, TryCatch #5 {Exception -> 0x007b, blocks: (B:61:0x0072, B:55:0x0077), top: B:60:0x0072 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0072 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v18, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.net.HttpURLConnection] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static java.util.ArrayList b(java.lang.String r7, com.mopub.dg.d.m r8) {
        /*
            r1 = 0
            java.net.URL r0 = new java.net.URL     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L8d
            r0.<init>(r7)     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L8d
            java.net.URLConnection r0 = r0.openConnection()     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L8d
            java.net.HttpURLConnection r0 = (java.net.HttpURLConnection) r0     // Catch: java.lang.Throwable -> L6e java.lang.Exception -> L8d
            int r2 = r0.getResponseCode()     // Catch: java.lang.Throwable -> L80 java.lang.Exception -> L91
            r3 = 404(0x194, float:5.66E-43)
            if (r2 != r3) goto L23
            r8.a()     // Catch: java.lang.Throwable -> L80 java.lang.Exception -> L91
            if (r0 == 0) goto L1c
            r0.disconnect()     // Catch: java.lang.Exception -> L1e
        L1c:
            r0 = r1
        L1d:
            return r0
        L1e:
            r0 = move-exception
            r0.printStackTrace()
            goto L1c
        L23:
            java.io.InputStreamReader r3 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L80 java.lang.Exception -> L91
            java.io.InputStream r2 = r0.getInputStream()     // Catch: java.lang.Throwable -> L80 java.lang.Exception -> L91
            r3.<init>(r2)     // Catch: java.lang.Throwable -> L80 java.lang.Exception -> L91
            java.io.BufferedReader r4 = new java.io.BufferedReader     // Catch: java.lang.Exception -> L40 java.lang.Throwable -> L84
            r4.<init>(r3)     // Catch: java.lang.Exception -> L40 java.lang.Throwable -> L84
            java.util.ArrayList r2 = new java.util.ArrayList     // Catch: java.lang.Exception -> L40 java.lang.Throwable -> L84
            r2.<init>()     // Catch: java.lang.Exception -> L40 java.lang.Throwable -> L84
        L36:
            java.lang.String r5 = r4.readLine()     // Catch: java.lang.Exception -> L40 java.lang.Throwable -> L84
            if (r5 == 0) goto L57
            r2.add(r5)     // Catch: java.lang.Exception -> L40 java.lang.Throwable -> L84
            goto L36
        L40:
            r2 = move-exception
            r6 = r2
            r2 = r3
            r3 = r0
            r0 = r6
        L45:
            r0.getMessage()     // Catch: java.lang.Throwable -> L8a
            r8.a()     // Catch: java.lang.Throwable -> L8a
            if (r2 == 0) goto L50
            r2.close()     // Catch: java.lang.Exception -> L69
        L50:
            if (r3 == 0) goto L55
            r3.disconnect()     // Catch: java.lang.Exception -> L69
        L55:
            r0 = r1
            goto L1d
        L57:
            r8.a(r2)     // Catch: java.lang.Exception -> L40 java.lang.Throwable -> L84
            r3.close()     // Catch: java.lang.Exception -> L64
            if (r0 == 0) goto L62
            r0.disconnect()     // Catch: java.lang.Exception -> L64
        L62:
            r0 = r2
            goto L1d
        L64:
            r0 = move-exception
            r0.printStackTrace()
            goto L62
        L69:
            r0 = move-exception
            r0.printStackTrace()
            goto L55
        L6e:
            r0 = move-exception
            r3 = r1
        L70:
            if (r1 == 0) goto L75
            r1.close()     // Catch: java.lang.Exception -> L7b
        L75:
            if (r3 == 0) goto L7a
            r3.disconnect()     // Catch: java.lang.Exception -> L7b
        L7a:
            throw r0
        L7b:
            r1 = move-exception
            r1.printStackTrace()
            goto L7a
        L80:
            r2 = move-exception
            r3 = r0
            r0 = r2
            goto L70
        L84:
            r1 = move-exception
            r6 = r1
            r1 = r3
            r3 = r0
            r0 = r6
            goto L70
        L8a:
            r0 = move-exception
            r1 = r2
            goto L70
        L8d:
            r0 = move-exception
            r2 = r1
            r3 = r1
            goto L45
        L91:
            r2 = move-exception
            r3 = r0
            r0 = r2
            r2 = r1
            goto L45
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.dg.d.k.b(java.lang.String, com.mopub.dg.d.m):java.util.ArrayList");
    }
}
