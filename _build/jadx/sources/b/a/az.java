package b.a;

import java.nio.ByteBuffer;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;

/* compiled from: TBaseHelper.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class az {

    /* renamed from: a, reason: collision with root package name */
    private static final Comparator f77a = new a();

    public static int a(byte b2, byte b3) {
        if (b2 < b3) {
            return -1;
        }
        if (b3 < b2) {
            return 1;
        }
        return 0;
    }

    public static int a(int i, int i2) {
        if (i < i2) {
            return -1;
        }
        if (i2 < i) {
            return 1;
        }
        return 0;
    }

    public static int a(byte[] bArr, byte[] bArr2) {
        int a2 = a(bArr.length, bArr2.length);
        if (a2 != 0) {
            return a2;
        }
        for (int i = 0; i < bArr.length; i++) {
            int a3 = a(bArr[i], bArr2[i]);
            if (a3 != 0) {
                return a3;
            }
        }
        return 0;
    }

    public static int a(Comparable comparable, Comparable comparable2) {
        return comparable.compareTo(comparable2);
    }

    public static int a(List list, List list2) {
        int a2 = a(list.size(), list2.size());
        if (a2 != 0) {
            return a2;
        }
        for (int i = 0; i < list.size(); i++) {
            int compare = f77a.compare(list.get(i), list2.get(i));
            if (compare != 0) {
                return compare;
            }
        }
        return 0;
    }

    public static int a(Set set, Set set2) {
        int a2 = a(set.size(), set2.size());
        if (a2 == 0) {
            TreeSet treeSet = new TreeSet(f77a);
            treeSet.addAll(set);
            TreeSet treeSet2 = new TreeSet(f77a);
            treeSet2.addAll(set2);
            Iterator it = treeSet.iterator();
            Iterator it2 = treeSet2.iterator();
            while (it.hasNext() && it2.hasNext()) {
                int compare = f77a.compare(it.next(), it2.next());
                if (compare != 0) {
                    return compare;
                }
            }
            return 0;
        }
        return a2;
    }

    public static int a(Map map, Map map2) {
        int a2 = a(map.size(), map2.size());
        if (a2 == 0) {
            TreeMap treeMap = new TreeMap(f77a);
            treeMap.putAll(map);
            Iterator it = treeMap.entrySet().iterator();
            TreeMap treeMap2 = new TreeMap(f77a);
            treeMap2.putAll(map2);
            Iterator it2 = treeMap2.entrySet().iterator();
            while (it.hasNext() && it2.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                Map.Entry entry2 = (Map.Entry) it2.next();
                int compare = f77a.compare(entry.getKey(), entry2.getKey());
                if (compare != 0) {
                    return compare;
                }
                int compare2 = f77a.compare(entry.getValue(), entry2.getValue());
                if (compare2 != 0) {
                    return compare2;
                }
            }
            return 0;
        }
        return a2;
    }

    /* compiled from: TBaseHelper.java */
    private static class a implements Comparator {
        private a() {
        }

        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            if (obj == null && obj2 == null) {
                return 0;
            }
            if (obj == null) {
                return -1;
            }
            if (obj2 == null) {
                return 1;
            }
            if (obj instanceof List) {
                return az.a((List) obj, (List) obj2);
            }
            if (obj instanceof Set) {
                return az.a((Set) obj, (Set) obj2);
            }
            if (obj instanceof Map) {
                return az.a((Map) obj, (Map) obj2);
            }
            if (obj instanceof byte[]) {
                return az.a((byte[]) obj, (byte[]) obj2);
            }
            return az.a((Comparable) obj, (Comparable) obj2);
        }
    }

    public static void a(ByteBuffer byteBuffer, StringBuilder sb) {
        byte[] array = byteBuffer.array();
        int arrayOffset = byteBuffer.arrayOffset();
        int position = arrayOffset + byteBuffer.position();
        int limit = byteBuffer.limit() + arrayOffset;
        int i = limit - position > 128 ? position + 128 : limit;
        for (int i2 = position; i2 < i; i2++) {
            if (i2 > position) {
                sb.append(" ");
            }
            sb.append(a(array[i2]));
        }
        if (limit != i) {
            sb.append("...");
        }
    }

    public static String a(byte b2) {
        return Integer.toHexString((b2 | 256) & 511).toUpperCase().substring(1);
    }
}
