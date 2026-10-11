package com.google.android.gms.internal;

import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzamq {
    private zzanq bea = zzanq.beK;
    private zzanf beb = zzanf.DEFAULT;
    private zzamo bec = zzamn.IDENTITY;
    private final Map<Type, zzamr<?>> bed = new HashMap();
    private final List<zzani> bdQ = new ArrayList();
    private final List<zzani> bee = new ArrayList();
    private int bef = 2;
    private int beg = 2;
    private boolean beh = true;

    private void zza(String str, int i, int i2, List<zzani> list) {
        zzamk zzamkVar;
        if (str != null && !"".equals(str.trim())) {
            zzamkVar = new zzamk(str);
        } else if (i == 2 || i2 == 2) {
            return;
        } else {
            zzamkVar = new zzamk(i, i2);
        }
        list.add(zzang.zza((zzaol<?>) zzaol.zzr(Date.class), zzamkVar));
        list.add(zzang.zza((zzaol<?>) zzaol.zzr(Timestamp.class), zzamkVar));
        list.add(zzang.zza((zzaol<?>) zzaol.zzr(java.sql.Date.class), zzamkVar));
    }

    public zzamq zza(Type type, Object obj) {
        zzann.zzbo((obj instanceof zzand) || (obj instanceof zzamu) || (obj instanceof zzamr) || (obj instanceof zzanh));
        if (obj instanceof zzamr) {
            this.bed.put(type, (zzamr) obj);
        }
        if ((obj instanceof zzand) || (obj instanceof zzamu)) {
            this.bdQ.add(zzang.zzb(zzaol.zzl(type), obj));
        }
        if (obj instanceof zzanh) {
            this.bdQ.add(zzaok.zza(zzaol.zzl(type), (zzanh) obj));
        }
        return this;
    }

    public zzamq zza(zzaml... zzamlVarArr) {
        for (zzaml zzamlVar : zzamlVarArr) {
            this.bea = this.bea.zza(zzamlVar, true, true);
        }
        return this;
    }

    public zzamq zzczc() {
        this.beh = false;
        return this;
    }

    public zzamp zzczd() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.bdQ);
        Collections.reverse(arrayList);
        arrayList.addAll(this.bee);
        zza(null, this.bef, this.beg, arrayList);
        return new zzamp(this.bea, this.bec, this.bed, false, false, false, this.beh, false, false, this.beb, arrayList);
    }

    public zzamq zzf(int... iArr) {
        this.bea = this.bea.zzg(iArr);
        return this;
    }
}
