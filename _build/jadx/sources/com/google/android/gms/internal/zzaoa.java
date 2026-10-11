package com.google.android.gms.internal;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzaoa extends zzanh<Date> {
    public static final zzani bfu = new zzani() { // from class: com.google.android.gms.internal.zzaoa.1
        @Override // com.google.android.gms.internal.zzani
        public <T> zzanh<T> zza(zzamp zzampVar, zzaol<T> zzaolVar) {
            if (zzaolVar.m() == Date.class) {
                return new zzaoa();
            }
            return null;
        }
    };
    private final DateFormat bdE = DateFormat.getDateTimeInstance(2, 2, Locale.US);
    private final DateFormat bdF = DateFormat.getDateTimeInstance(2, 2);
    private final DateFormat bdG = a();

    private static DateFormat a() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        return simpleDateFormat;
    }

    private synchronized Date zztq(String str) {
        Date parse;
        try {
            parse = this.bdF.parse(str);
        } catch (ParseException e) {
            try {
                parse = this.bdE.parse(str);
            } catch (ParseException e2) {
                try {
                    parse = this.bdG.parse(str);
                } catch (ParseException e3) {
                    throw new zzane(str, e3);
                }
            }
        }
        return parse;
    }

    @Override // com.google.android.gms.internal.zzanh
    public synchronized void zza(zzaoo zzaooVar, Date date) throws IOException {
        if (date == null) {
            zzaooVar.l();
        } else {
            zzaooVar.zzts(this.bdE.format(date));
        }
    }

    @Override // com.google.android.gms.internal.zzanh
    /* renamed from: zzk, reason: merged with bridge method [inline-methods] */
    public Date zzb(zzaom zzaomVar) throws IOException {
        if (zzaomVar.b() != zzaon.NULL) {
            return zztq(zzaomVar.nextString());
        }
        zzaomVar.nextNull();
        return null;
    }
}
