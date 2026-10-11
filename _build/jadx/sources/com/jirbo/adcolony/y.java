package com.jirbo.adcolony;

import org.apache.commons.io.FilenameUtils;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
abstract class y {

    /* renamed from: a, reason: collision with root package name */
    boolean f3878a = true;

    /* renamed from: b, reason: collision with root package name */
    int f3879b = 0;

    abstract void a(char c);

    y() {
    }

    void a() {
        if (this.f3878a) {
            this.f3878a = false;
            int i = this.f3879b;
            while (true) {
                i--;
                if (i < 0) {
                    return;
                } else {
                    a(' ');
                }
            }
        }
    }

    void b(char c) {
        if (this.f3878a) {
            a();
        }
        a(c);
        if (c == '\n') {
            this.f3878a = true;
        }
    }

    void a(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            b(str.charAt(i));
        }
    }

    void a(double d) {
        if (this.f3878a) {
            a();
        }
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            a("0.0");
            return;
        }
        if (d < 0.0d) {
            d = -d;
            a('-');
        }
        long pow = (long) Math.pow(10.0d, 4);
        long round = Math.round(pow * d);
        a(round / pow);
        a(FilenameUtils.EXTENSION_SEPARATOR);
        long j = round % pow;
        if (j == 0) {
            for (int i = 0; i < 4; i++) {
                a('0');
            }
            return;
        }
        for (long j2 = j * 10; j2 < pow; j2 *= 10) {
            a('0');
        }
        a(j);
    }

    void a(long j) {
        if (this.f3878a) {
            a();
        }
        if (j == 0) {
            a('0');
            return;
        }
        if (j == (-j)) {
            a("-9223372036854775808");
        } else if (j < 0) {
            a('-');
            a(-j);
        } else {
            b(j);
        }
    }

    void b(long j) {
        if (j != 0) {
            b(j / 10);
            a((char) (48 + (j % 10)));
        }
    }

    void c(char c) {
        b(c);
        b('\n');
    }

    void b(String str) {
        a(str);
        b('\n');
    }

    void b() {
        b('\n');
    }
}
