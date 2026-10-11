package com.google.android.gms.internal;

import java.io.IOException;
import java.util.ArrayList;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzaof extends zzanh<Object> {
    public static final zzani bfu = new zzani() { // from class: com.google.android.gms.internal.zzaof.1
        @Override // com.google.android.gms.internal.zzani
        public <T> zzanh<T> zza(zzamp zzampVar, zzaol<T> zzaolVar) {
            if (zzaolVar.m() == Object.class) {
                return new zzaof(zzampVar);
            }
            return null;
        }
    };
    private final zzamp beq;

    private zzaof(zzamp zzampVar) {
        this.beq = zzampVar;
    }

    @Override // com.google.android.gms.internal.zzanh
    public void zza(zzaoo zzaooVar, Object obj) throws IOException {
        if (obj == null) {
            zzaooVar.l();
            return;
        }
        zzanh zzk = this.beq.zzk(obj.getClass());
        if (!(zzk instanceof zzaof)) {
            zzk.zza(zzaooVar, obj);
        } else {
            zzaooVar.j();
            zzaooVar.k();
        }
    }

    @Override // com.google.android.gms.internal.zzanh
    public Object zzb(zzaom zzaomVar) throws IOException {
        switch (zzaomVar.b()) {
            case BEGIN_ARRAY:
                ArrayList arrayList = new ArrayList();
                zzaomVar.beginArray();
                while (zzaomVar.hasNext()) {
                    arrayList.add(zzb(zzaomVar));
                }
                zzaomVar.endArray();
                return arrayList;
            case BEGIN_OBJECT:
                zzant zzantVar = new zzant();
                zzaomVar.beginObject();
                while (zzaomVar.hasNext()) {
                    zzantVar.put(zzaomVar.nextName(), zzb(zzaomVar));
                }
                zzaomVar.endObject();
                return zzantVar;
            case STRING:
                return zzaomVar.nextString();
            case NUMBER:
                return Double.valueOf(zzaomVar.nextDouble());
            case BOOLEAN:
                return Boolean.valueOf(zzaomVar.nextBoolean());
            case NULL:
                zzaomVar.nextNull();
                return null;
            default:
                throw new IllegalStateException();
        }
    }
}
