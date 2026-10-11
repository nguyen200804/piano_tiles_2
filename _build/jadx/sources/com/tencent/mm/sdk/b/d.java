package com.tencent.mm.sdk.b;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class d {
    private final com.tencent.mm.a.a E;
    private c<String, String> F;

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0083 -> B:8:0x0019). Please report as a decompilation issue!!! */
    public final String i(String str) {
        String str2;
        try {
        } catch (Exception e) {
            e = e;
        }
        if (str.startsWith("!")) {
            if (this.F.a(str)) {
                str2 = this.F.get(str);
            } else {
                String substring = str.substring(1);
                try {
                    String[] split = substring.split("@");
                    if (split.length > 1) {
                        String str3 = split[0];
                        int intValue = Integer.valueOf(split[0]).intValue();
                        String str4 = this.E.h(substring.substring(str3.length() + 1, str3.length() + 1 + intValue)) + substring.substring(intValue + str3.length() + 1);
                        this.F.put(str, str4);
                        str2 = str4;
                    } else {
                        str = substring;
                    }
                } catch (Exception e2) {
                    str = substring;
                    e = e2;
                    e.printStackTrace();
                    str = "[td]" + str;
                    str2 = str;
                    return str2;
                }
            }
            return str2;
        }
        str2 = str;
        return str2;
    }
}
