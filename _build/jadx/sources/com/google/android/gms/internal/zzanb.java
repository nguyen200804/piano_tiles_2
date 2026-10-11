package com.google.android.gms.internal;

import java.math.BigInteger;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzanb extends zzamv {
    private static final Class<?>[] bek = {Integer.TYPE, Long.TYPE, Short.TYPE, Float.TYPE, Double.TYPE, Byte.TYPE, Boolean.TYPE, Character.TYPE, Integer.class, Long.class, Short.class, Float.class, Double.class, Byte.class, Boolean.class, Character.class};
    private Object value;

    public zzanb(Boolean bool) {
        setValue(bool);
    }

    public zzanb(Number number) {
        setValue(number);
    }

    public zzanb(String str) {
        setValue(str);
    }

    private static boolean zza(zzanb zzanbVar) {
        if (!(zzanbVar.value instanceof Number)) {
            return false;
        }
        Number number = (Number) zzanbVar.value;
        return (number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte);
    }

    private static boolean zzci(Object obj) {
        if (obj instanceof String) {
            return true;
        }
        Class<?> cls = obj.getClass();
        for (Class<?> cls2 : bek) {
            if (cls2.isAssignableFrom(cls)) {
                return true;
            }
        }
        return false;
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzanb zzanbVar = (zzanb) obj;
        if (this.value == null) {
            return zzanbVar.value == null;
        }
        if (zza(this) && zza(zzanbVar)) {
            return zzcze().longValue() == zzanbVar.zzcze().longValue();
        }
        if (!(this.value instanceof Number) || !(zzanbVar.value instanceof Number)) {
            return this.value.equals(zzanbVar.value);
        }
        double doubleValue = zzcze().doubleValue();
        double doubleValue2 = zzanbVar.zzcze().doubleValue();
        if (doubleValue == doubleValue2 || (Double.isNaN(doubleValue) && Double.isNaN(doubleValue2))) {
            z = true;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.zzamv
    public boolean getAsBoolean() {
        return zzczo() ? zzczn().booleanValue() : Boolean.parseBoolean(zzczf());
    }

    @Override // com.google.android.gms.internal.zzamv
    public double getAsDouble() {
        return zzczp() ? zzcze().doubleValue() : Double.parseDouble(zzczf());
    }

    @Override // com.google.android.gms.internal.zzamv
    public int getAsInt() {
        return zzczp() ? zzcze().intValue() : Integer.parseInt(zzczf());
    }

    @Override // com.google.android.gms.internal.zzamv
    public long getAsLong() {
        return zzczp() ? zzcze().longValue() : Long.parseLong(zzczf());
    }

    public int hashCode() {
        if (this.value == null) {
            return 31;
        }
        if (zza(this)) {
            long longValue = zzcze().longValue();
            return (int) (longValue ^ (longValue >>> 32));
        }
        if (!(this.value instanceof Number)) {
            return this.value.hashCode();
        }
        long doubleToLongBits = Double.doubleToLongBits(zzcze().doubleValue());
        return (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
    }

    void setValue(Object obj) {
        if (obj instanceof Character) {
            this.value = String.valueOf(((Character) obj).charValue());
        } else {
            zzann.zzbo((obj instanceof Number) || zzci(obj));
            this.value = obj;
        }
    }

    @Override // com.google.android.gms.internal.zzamv
    public Number zzcze() {
        return this.value instanceof String ? new zzans((String) this.value) : (Number) this.value;
    }

    @Override // com.google.android.gms.internal.zzamv
    public String zzczf() {
        return zzczp() ? zzcze().toString() : zzczo() ? zzczn().toString() : (String) this.value;
    }

    @Override // com.google.android.gms.internal.zzamv
    Boolean zzczn() {
        return (Boolean) this.value;
    }

    public boolean zzczo() {
        return this.value instanceof Boolean;
    }

    public boolean zzczp() {
        return this.value instanceof Number;
    }

    public boolean zzczq() {
        return this.value instanceof String;
    }
}
