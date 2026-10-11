package com.google.android.gms.internal;

import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class zzamk implements zzamu<Date>, zzand<Date> {
    private final DateFormat bdE;
    private final DateFormat bdF;
    private final DateFormat bdG;

    zzamk() {
        this(DateFormat.getDateTimeInstance(2, 2, Locale.US), DateFormat.getDateTimeInstance(2, 2));
    }

    public zzamk(int i, int i2) {
        this(DateFormat.getDateTimeInstance(i, i2, Locale.US), DateFormat.getDateTimeInstance(i, i2));
    }

    zzamk(String str) {
        this(new SimpleDateFormat(str, Locale.US), new SimpleDateFormat(str));
    }

    zzamk(DateFormat dateFormat, DateFormat dateFormat2) {
        this.bdE = dateFormat;
        this.bdF = dateFormat2;
        this.bdG = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
        this.bdG.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    private Date zza(zzamv zzamvVar) {
        Date parse;
        synchronized (this.bdF) {
            try {
                parse = this.bdF.parse(zzamvVar.zzczf());
            } catch (ParseException e) {
                try {
                    parse = this.bdE.parse(zzamvVar.zzczf());
                } catch (ParseException e2) {
                    try {
                        parse = this.bdG.parse(zzamvVar.zzczf());
                    } catch (ParseException e3) {
                        throw new zzane(zzamvVar.zzczf(), e3);
                    }
                }
            }
        }
        return parse;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(zzamk.class.getSimpleName());
        sb.append('(').append(this.bdF.getClass().getSimpleName()).append(')');
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.zzand
    public zzamv zza(Date date, Type type, zzanc zzancVar) {
        zzanb zzanbVar;
        synchronized (this.bdF) {
            zzanbVar = new zzanb(this.bdE.format(date));
        }
        return zzanbVar;
    }

    @Override // com.google.android.gms.internal.zzamu
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public Date zzb(zzamv zzamvVar, Type type, zzamt zzamtVar) throws zzamz {
        if (!(zzamvVar instanceof zzanb)) {
            throw new zzamz("The date should be a string value");
        }
        Date zza = zza(zzamvVar);
        if (type == Date.class) {
            return zza;
        }
        if (type == Timestamp.class) {
            return new Timestamp(zza.getTime());
        }
        if (type == java.sql.Date.class) {
            return new java.sql.Date(zza.getTime());
        }
        String valueOf = String.valueOf(getClass());
        String valueOf2 = String.valueOf(type);
        throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 23 + String.valueOf(valueOf2).length()).append(valueOf).append(" cannot deserialize to ").append(valueOf2).toString());
    }
}
