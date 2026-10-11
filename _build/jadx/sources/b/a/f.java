package b.a;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: UEKV.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class f extends u implements cs {
    public f(String str, Map<String, Object> map, long j, int i) {
        a(str);
        b(System.currentTimeMillis());
        if (map.size() > 0) {
            a(b(map));
        }
        a(i <= 0 ? 1 : i);
        if (j > 0) {
            a(j);
        }
    }

    private HashMap<String, ag> b(Map<String, Object> map) {
        Iterator<Map.Entry<String, Object>> it = map.entrySet().iterator();
        HashMap<String, ag> hashMap = new HashMap<>();
        int i = 0;
        while (i < 10 && it.hasNext()) {
            Map.Entry<String, Object> next = it.next();
            ag agVar = new ag();
            Object value = next.getValue();
            if (value instanceof String) {
                agVar.a((String) value);
            } else if (value instanceof Long) {
                agVar.a(((Long) value).longValue());
            } else if (value instanceof Integer) {
                agVar.a(((Integer) value).longValue());
            } else if (value instanceof Float) {
                agVar.a(((Float) value).longValue());
            } else if (value instanceof Double) {
                agVar.a(((Double) value).longValue());
            }
            if (agVar.d()) {
                hashMap.put(next.getKey(), agVar);
                i++;
            }
        }
        return hashMap;
    }

    @Override // b.a.cs
    public void a(am amVar, String str) {
        ab abVar;
        if (amVar.b() > 0) {
            Iterator<ab> it = amVar.c().iterator();
            while (it.hasNext()) {
                abVar = it.next();
                if (str.equals(abVar.a())) {
                    break;
                }
            }
        }
        abVar = null;
        if (abVar == null) {
            abVar = new ab();
            abVar.a(str);
            amVar.a(abVar);
        }
        abVar.a(this);
    }
}
