package com.google.android.gms.common.images;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class Size {
    private final int zzaie;
    private final int zzaif;

    public Size(int i, int i2) {
        this.zzaie = i;
        this.zzaif = i2;
    }

    public static Size parseSize(String str) throws NumberFormatException {
        if (str == null) {
            throw new IllegalArgumentException("string must not be null");
        }
        int indexOf = str.indexOf(42);
        if (indexOf < 0) {
            indexOf = str.indexOf(120);
        }
        if (indexOf < 0) {
            throw zzhh(str);
        }
        try {
            return new Size(Integer.parseInt(str.substring(0, indexOf)), Integer.parseInt(str.substring(indexOf + 1)));
        } catch (NumberFormatException e) {
            throw zzhh(str);
        }
    }

    private static NumberFormatException zzhh(String str) {
        throw new NumberFormatException(new StringBuilder(String.valueOf(str).length() + 16).append("Invalid Size: \"").append(str).append("\"").toString());
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Size)) {
            return false;
        }
        Size size = (Size) obj;
        return this.zzaie == size.zzaie && this.zzaif == size.zzaif;
    }

    public int getHeight() {
        return this.zzaif;
    }

    public int getWidth() {
        return this.zzaie;
    }

    public int hashCode() {
        return this.zzaif ^ ((this.zzaie << 16) | (this.zzaie >>> 16));
    }

    public String toString() {
        int i = this.zzaie;
        return new StringBuilder(23).append(i).append("x").append(this.zzaif).toString();
    }
}
