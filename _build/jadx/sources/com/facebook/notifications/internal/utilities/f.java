package com.facebook.notifications.internal.utilities;

import android.support.annotation.Nullable;
import java.util.NoSuchElementException;
import java.util.Scanner;

/* compiled from: Version.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class f implements Comparable<f> {

    /* renamed from: a, reason: collision with root package name */
    private final int f3428a;

    /* renamed from: b, reason: collision with root package name */
    private final int f3429b;
    private final int c;

    public f(int i, int i2, int i3) {
        this.f3428a = i;
        this.f3429b = i2;
        this.c = i3;
    }

    @Nullable
    public static f a(String str) {
        int i;
        int i2;
        int i3;
        Scanner scanner = new Scanner(str);
        scanner.useDelimiter("\\.");
        try {
            i2 = scanner.nextInt();
            try {
                i = scanner.nextInt();
                try {
                    i3 = scanner.nextInt();
                } catch (NoSuchElementException e) {
                    if (i2 == Integer.MIN_VALUE && i == Integer.MIN_VALUE) {
                        return null;
                    }
                    i3 = 0;
                    return new f(i2, i, i3);
                }
            } catch (NoSuchElementException e2) {
                i = Integer.MIN_VALUE;
            }
        } catch (NoSuchElementException e3) {
            i = Integer.MIN_VALUE;
            i2 = Integer.MIN_VALUE;
        }
        return new f(i2, i, i3);
    }

    public String toString() {
        return "Version{" + this.f3428a + "." + this.f3429b + "." + this.c + '}';
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        f fVar = (f) o;
        if (this.f3428a == fVar.f3428a && this.f3429b == fVar.f3429b) {
            return this.c == fVar.c;
        }
        return false;
    }

    public int hashCode() {
        return (((this.f3428a * 31) + this.f3429b) * 31) + this.c;
    }

    @Override // java.lang.Comparable
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(f fVar) {
        int i = this.f3428a - fVar.f3428a;
        int i2 = this.f3429b - fVar.f3429b;
        return i != 0 ? i : i2 != 0 ? i2 : this.c - fVar.c;
    }
}
