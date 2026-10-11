package com.appsflyer.a;

import java.util.Scanner;

/* compiled from: RequestCacheData.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private String f586a;

    /* renamed from: b, reason: collision with root package name */
    private String f587b;
    private String c;
    private String d;

    public b(String str, String str2, String str3) {
        this.c = str;
        this.f587b = str2;
        this.f586a = str3;
    }

    public b(char[] cArr) {
        Scanner scanner = new Scanner(new String(cArr));
        while (scanner.hasNextLine()) {
            String nextLine = scanner.nextLine();
            if (nextLine.startsWith("url=")) {
                this.c = nextLine.substring("url=".length()).trim();
            } else if (nextLine.startsWith("version=")) {
                this.f586a = nextLine.substring("version=".length()).trim();
            } else if (nextLine.startsWith("data=")) {
                this.f587b = nextLine.substring("data=".length()).trim();
            }
        }
        scanner.close();
    }

    public String a() {
        return this.f586a;
    }

    public String b() {
        return this.f587b;
    }

    public String c() {
        return this.c;
    }

    public void a(String str) {
        this.d = str;
    }

    public String d() {
        return this.d;
    }
}
