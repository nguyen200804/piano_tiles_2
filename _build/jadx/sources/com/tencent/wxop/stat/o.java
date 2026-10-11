package com.tencent.wxop.stat;

import android.content.Context;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class o implements Runnable {
    private f bM;
    private Map<String, Integer> bO = null;
    private Context e;

    public o(Context context) {
        this.e = null;
        this.bM = null;
        this.e = context;
        this.bM = null;
    }

    private static b a(String str, int i) {
        com.tencent.wxop.stat.b.b bVar;
        com.tencent.wxop.stat.b.b bVar2;
        com.tencent.wxop.stat.b.b bVar3;
        b bVar4 = new b();
        Socket socket = new Socket();
        int i2 = 0;
        try {
            try {
                bVar4.setDomain(str);
                bVar4.setPort(i);
                long currentTimeMillis = System.currentTimeMillis();
                InetSocketAddress inetSocketAddress = new InetSocketAddress(str, i);
                socket.connect(inetSocketAddress, 30000);
                bVar4.a(System.currentTimeMillis() - currentTimeMillis);
                bVar4.k(inetSocketAddress.getAddress().getHostAddress());
                socket.close();
            } catch (IOException e) {
                i2 = -1;
                bVar2 = e.aV;
                bVar2.b((Throwable) e);
                try {
                    socket.close();
                } catch (Throwable th) {
                    bVar3 = e.aV;
                    bVar3.b(th);
                }
            }
            bVar4.setStatusCode(i2);
            return bVar4;
        } finally {
            try {
                socket.close();
            } catch (Throwable th2) {
                bVar = e.aV;
                bVar.b(th2);
            }
        }
    }

    private static Map<String, Integer> ag() {
        String str;
        com.tencent.wxop.stat.b.b bVar;
        HashMap hashMap = new HashMap();
        String l = c.l("__MTA_TEST_SPEED__");
        if (l != null && l.trim().length() != 0) {
            for (String str2 : l.split(";")) {
                String[] split = str2.split(",");
                if (split != null && split.length == 2 && (str = split[0]) != null && str.trim().length() != 0) {
                    try {
                        hashMap.put(str, Integer.valueOf(Integer.valueOf(split[1]).intValue()));
                    } catch (NumberFormatException e) {
                        bVar = e.aV;
                        bVar.b((Throwable) e);
                    }
                }
            }
        }
        return hashMap;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.tencent.wxop.stat.b.b bVar;
        com.tencent.wxop.stat.b.b bVar2;
        com.tencent.wxop.stat.b.b bVar3;
        com.tencent.wxop.stat.b.b bVar4;
        try {
            if (this.bO == null) {
                this.bO = ag();
            }
            if (this.bO == null || this.bO.size() == 0) {
                bVar2 = e.aV;
                bVar2.b("empty domain list.");
                return;
            }
            JSONArray jSONArray = new JSONArray();
            for (Map.Entry<String, Integer> entry : this.bO.entrySet()) {
                String key = entry.getKey();
                if (key == null || key.length() == 0) {
                    bVar3 = e.aV;
                    bVar3.c("empty domain name.");
                } else if (entry.getValue() == null) {
                    bVar4 = e.aV;
                    bVar4.c("port is null for " + key);
                } else {
                    jSONArray.put(a(entry.getKey(), entry.getValue().intValue()).i());
                }
            }
            if (jSONArray.length() != 0) {
                com.tencent.wxop.stat.a.g gVar = new com.tencent.wxop.stat.a.g(this.e, e.a(this.e, false, this.bM), this.bM);
                gVar.b(jSONArray.toString());
                new p(gVar).ah();
            }
        } catch (Throwable th) {
            bVar = e.aV;
            bVar.b(th);
        }
    }
}
