package com.mnt.impl.e;

import android.os.Parcel;
import android.os.Parcelable;
import com.mnt.Ad;
import java.util.List;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class c extends Ad {
    public static final Parcelable.Creator<c> CREATOR;

    /* renamed from: a, reason: collision with root package name */
    public String f3985a;

    /* renamed from: b, reason: collision with root package name */
    public String f3986b;
    public int c;
    public String d;
    public long e;
    public String f;
    public int g;
    public String h;
    public String i;
    public int j;
    public String k;
    public String l;
    private com.mnt.impl.b.b m;
    private String n;

    static {
        String str = com.mnt.impl.e.li;
        CREATOR = new d();
    }

    @Override // com.mnt.Ad, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f3985a);
        parcel.writeString(this.f3986b);
        parcel.writeInt(this.c);
        parcel.writeString(this.d);
        parcel.writeLong(this.e);
        parcel.writeString(this.f);
        int i2 = -1;
        if (this.m != null) {
            i2 = this.m.c;
        }
        parcel.writeInt(i2);
        parcel.writeInt(this.g);
        parcel.writeString(this.h);
        parcel.writeString(this.i);
        parcel.writeString(this.n);
        parcel.writeInt(this.j);
        parcel.writeString(this.k);
        parcel.writeString(this.l);
    }

    public c(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, float f, float f2, String str9, String str10, int i, String str11, long j, String str12, int i2, Map<String, List<String>> map, com.mnt.impl.b.b bVar, int i3, String str13, String str14, String str15, int i4, String str16, String str17, String str18) {
        super(str, str2, str3, str4, str5, str6, str7, str8, f, f2, map, i2, str18);
        this.f3985a = str9;
        this.f3986b = str10;
        this.c = i;
        this.d = str11;
        this.e = j;
        this.f = str12;
        this.m = bVar;
        this.g = i3;
        this.h = str13;
        this.i = str14;
        this.n = str15;
        this.j = i4;
        this.k = str16;
        this.l = str17;
    }

    public static String a(Object obj) {
        try {
            return ((Ad) obj).getAdCallToAction();
        } catch (Throwable th) {
            th.printStackTrace();
            return com.mnt.impl.e.lj;
        }
    }
}
