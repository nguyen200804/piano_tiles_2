package com.jirbo.adcolony;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ar {

    /* renamed from: a, reason: collision with root package name */
    char[] f3797a;

    /* renamed from: b, reason: collision with root package name */
    int f3798b;
    int c;

    ar(String str) {
        this.c = str.length();
        StringBuilder sb = new StringBuilder(this.c);
        int i = 0;
        while (i < this.c) {
            char charAt = str.charAt(i);
            if ((charAt >= ' ' && charAt <= '~') || charAt == '\n') {
                sb.append(charAt);
            } else if ((charAt & 128) != 0) {
                if ((charAt & 224) == 192 && i + 1 < this.c) {
                    sb.append((char) (((charAt & 31) << 6) | (str.charAt(i + 1) & '?')));
                    i++;
                } else if (i + 2 < this.c) {
                    sb.append((char) (((charAt & 15) << 12) | ((str.charAt(i + 1) & '?') << 6) | (str.charAt(i + 2) & '?')));
                    i += 2;
                } else {
                    sb.append('?');
                }
            } else {
                sb.append(' ');
            }
            i++;
        }
        this.c = sb.length();
        this.f3797a = new char[this.c];
        sb.getChars(0, this.c, this.f3797a, 0);
    }

    ar(InputStream inputStream) throws IOException {
        StringBuilder sb = new StringBuilder(inputStream.available());
        int read = inputStream.read();
        while (read != -1) {
            if ((read >= 32 && read <= 126) || read == 10) {
                sb.append((char) read);
            } else if ((read & 128) != 0) {
                if ((read & 224) == 192) {
                    sb.append((char) (((read & 31) << 6) | (inputStream.read() & 63)));
                } else {
                    sb.append((char) (((read & 15) << 12) | ((inputStream.read() & 63) << 6) | (inputStream.read() & 63)));
                }
            } else {
                sb.append(' ');
            }
            read = inputStream.read();
        }
        inputStream.close();
        this.c = sb.length();
        this.f3797a = new char[this.c];
        sb.getChars(0, this.c, this.f3797a, 0);
    }

    boolean a() {
        return this.f3798b < this.c;
    }

    char b() {
        if (this.f3798b == this.c) {
            return (char) 0;
        }
        return this.f3797a[this.f3798b];
    }

    char c() {
        char[] cArr = this.f3797a;
        int i = this.f3798b;
        this.f3798b = i + 1;
        return cArr[i];
    }

    boolean a(char c) {
        if (this.f3798b == this.c || this.f3797a[this.f3798b] != c) {
            return false;
        }
        this.f3798b++;
        return true;
    }
}
