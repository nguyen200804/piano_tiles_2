package com.mopub.dg.adapi;

import android.content.Context;
import com.mopub.dg.d.g;
import com.mopub.dg.d.n;
import java.io.Serializable;
import java.util.Locale;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AdData implements Serializable {
    public static final int ICON_SIZE_HDPI_72X72 = 4;
    public static final int ICON_SIZE_LDPI_36X36 = 1;
    public static final int ICON_SIZE_MDPI_48X48 = 2;
    public static final int ICON_SIZE_TVDPI_64X64 = 3;
    public static final int ICON_SIZE_XHDPI_96X96 = 5;
    public static final int ICON_SIZE_XXHDPI_144X144 = 6;
    public static final int ICON_SIZE_XXXHDPI_192X192 = 7;

    /* renamed from: a, reason: collision with root package name */
    private String f4248a;

    /* renamed from: b, reason: collision with root package name */
    private String f4249b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;
    private boolean j;
    private String l;
    private boolean k = false;
    private String m = "";
    private String n = "";

    private String a(String str, int i) {
        try {
            int lastIndexOf = str.toLowerCase(Locale.getDefault()).lastIndexOf("=w");
            if (lastIndexOf == -1) {
                return str;
            }
            StringBuffer stringBuffer = new StringBuffer(str.substring(0, lastIndexOf));
            stringBuffer.append("=w");
            stringBuffer.append(i);
            return stringBuffer.toString();
        } catch (Exception e) {
            n.a(e);
            return str;
        }
    }

    public String getAdID() {
        return this.f4249b;
    }

    public String getClickRecordUrl() {
        return this.d;
    }

    public String getClickTrackUrl() {
        return this.c;
    }

    public String getClick_track_json_urls() {
        return this.m;
    }

    public String getContent() {
        return this.h;
    }

    public String getDownloadUrl() {
        return this.l;
    }

    public String getIconUrl() {
        return this.f;
    }

    public String getIconUrl(int i) {
        int i2 = 0;
        switch (i) {
            case 1:
                i2 = 36;
                break;
            case 2:
                i2 = 48;
                break;
            case 3:
                i2 = 64;
                break;
            case 4:
                i2 = 72;
                break;
            case 5:
                i2 = 96;
                break;
            case 6:
                i2 = 144;
                break;
            case 7:
                i2 = 192;
                break;
        }
        return i2 > 0 ? a(this.f, i2) : this.f;
    }

    public String getImageUrl() {
        return this.i;
    }

    public String getImp_track_json_urls() {
        return this.n;
    }

    public String getMarketUrl() {
        return this.f4248a;
    }

    public String getPackageName() {
        return this.e;
    }

    public String getTitle() {
        return this.g;
    }

    public boolean isIcon() {
        return this.k;
    }

    public boolean isIconCache(Context context) {
        if (this.f == null) {
            return false;
        }
        g.a(context);
        return g.a(this.f).exists();
    }

    public boolean isImageCache(Context context) {
        if (this.i == null) {
            return false;
        }
        g.a(context);
        return g.a(this.i).exists();
    }

    public boolean isPreload() {
        return this.j;
    }

    public void setAdID(String str) {
        this.f4249b = str;
    }

    public void setClickRecordUrl(String str) {
        this.d = str;
    }

    public void setClickTrackUrl(String str) {
        this.c = str;
    }

    public void setClick_track_json_urls(String str) {
        this.m = str;
    }

    public void setContent(String str) {
        this.h = str;
    }

    public void setDownloadUrl(String str) {
        this.l = str;
    }

    public void setIcon(boolean z) {
        this.k = z;
    }

    public void setIconUrl(String str) {
        this.f = str;
    }

    public void setImageUrl(String str) {
        this.i = str;
    }

    public void setImp_track_json_urls(String str) {
        this.n = str;
    }

    public void setMarketUrl(String str) {
        this.f4248a = str;
    }

    public void setPackageName(String str) {
        this.e = str;
    }

    public void setPreload(boolean z) {
        this.j = z;
    }

    public void setTitle(String str) {
        this.g = str;
    }
}
