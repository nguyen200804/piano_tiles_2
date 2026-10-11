package com.google.android.gms.internal;

import java.io.IOException;
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzaoi extends zzanh<Time> {
    public static final zzani bfu = new zzani() { // from class: com.google.android.gms.internal.zzaoi.1
        @Override // com.google.android.gms.internal.zzani
        public <T> zzanh<T> zza(zzamp zzampVar, zzaol<T> zzaolVar) {
            if (zzaolVar.m() == Time.class) {
                return new zzaoi();
            }
            return null;
        }
    };
    private final DateFormat bfU = new SimpleDateFormat("hh:mm:ss a");

    @Override // com.google.android.gms.internal.zzanh
    public synchronized void zza(zzaoo zzaooVar, Time time) throws IOException {
        zzaooVar.zzts(time == null ? null : this.bfU.format((Date) time));
    }

    @Override // com.google.android.gms.internal.zzanh
    /* renamed from: zzn, reason: merged with bridge method [inline-methods] */
    public synchronized Time zzb(zzaom zzaomVar) throws IOException {
        Time time;
        if (zzaomVar.b() == zzaon.NULL) {
            zzaomVar.nextNull();
            time = null;
        } else {
            try {
                time = new Time(this.bfU.parse(zzaomVar.nextString()).getTime());
            } catch (ParseException e) {
                throw new zzane(e);
            }
        }
        return time;
    }
}
