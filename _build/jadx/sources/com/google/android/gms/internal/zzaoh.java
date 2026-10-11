package com.google.android.gms.internal;

import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzaoh extends zzanh<Date> {
    public static final zzani bfu = new zzani() { // from class: com.google.android.gms.internal.zzaoh.1
        @Override // com.google.android.gms.internal.zzani
        public <T> zzanh<T> zza(zzamp zzampVar, zzaol<T> zzaolVar) {
            if (zzaolVar.m() == Date.class) {
                return new zzaoh();
            }
            return null;
        }
    };
    private final DateFormat bfU = new SimpleDateFormat("MMM d, yyyy");

    @Override // com.google.android.gms.internal.zzanh
    public synchronized void zza(zzaoo zzaooVar, Date date) throws IOException {
        zzaooVar.zzts(date == null ? null : this.bfU.format((java.util.Date) date));
    }

    @Override // com.google.android.gms.internal.zzanh
    /* renamed from: zzm, reason: merged with bridge method [inline-methods] */
    public synchronized Date zzb(zzaom zzaomVar) throws IOException {
        Date date;
        if (zzaomVar.b() == zzaon.NULL) {
            zzaomVar.nextNull();
            date = null;
        } else {
            try {
                date = new Date(this.bfU.parse(zzaomVar.nextString()).getTime());
            } catch (ParseException e) {
                throw new zzane(e);
            }
        }
        return date;
    }
}
