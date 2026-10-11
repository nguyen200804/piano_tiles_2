package com.google.android.gms.internal;

import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzamp {
    private final ThreadLocal<Map<zzaol<?>, zza<?>>> bdO;
    private final Map<zzaol<?>, zzanh<?>> bdP;
    private final List<zzani> bdQ;
    private final zzanp bdR;
    private final boolean bdS;
    private final boolean bdT;
    private final boolean bdU;
    private final boolean bdV;
    final zzamt bdW;
    final zzanc bdX;

    static class zza<T> extends zzanh<T> {
        private zzanh<T> bdZ;

        zza() {
        }

        public void zza(zzanh<T> zzanhVar) {
            if (this.bdZ != null) {
                throw new AssertionError();
            }
            this.bdZ = zzanhVar;
        }

        @Override // com.google.android.gms.internal.zzanh
        public void zza(zzaoo zzaooVar, T t) throws IOException {
            if (this.bdZ == null) {
                throw new IllegalStateException();
            }
            this.bdZ.zza(zzaooVar, t);
        }

        @Override // com.google.android.gms.internal.zzanh
        public T zzb(zzaom zzaomVar) throws IOException {
            if (this.bdZ == null) {
                throw new IllegalStateException();
            }
            return this.bdZ.zzb(zzaomVar);
        }
    }

    public zzamp() {
        this(zzanq.beK, zzamn.IDENTITY, Collections.emptyMap(), false, false, false, true, false, false, zzanf.DEFAULT, Collections.emptyList());
    }

    zzamp(zzanq zzanqVar, zzamo zzamoVar, Map<Type, zzamr<?>> map, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, zzanf zzanfVar, List<zzani> list) {
        this.bdO = new ThreadLocal<>();
        this.bdP = Collections.synchronizedMap(new HashMap());
        this.bdW = new zzamt() { // from class: com.google.android.gms.internal.zzamp.1
        };
        this.bdX = new zzanc() { // from class: com.google.android.gms.internal.zzamp.2
        };
        this.bdR = new zzanp(map);
        this.bdS = z;
        this.bdU = z3;
        this.bdT = z4;
        this.bdV = z5;
        ArrayList arrayList = new ArrayList();
        arrayList.add(zzaok.bgN);
        arrayList.add(zzaof.bfu);
        arrayList.add(zzanqVar);
        arrayList.addAll(list);
        arrayList.add(zzaok.bgu);
        arrayList.add(zzaok.bgj);
        arrayList.add(zzaok.bgd);
        arrayList.add(zzaok.bgf);
        arrayList.add(zzaok.bgh);
        arrayList.add(zzaok.zza(Long.TYPE, Long.class, zza(zzanfVar)));
        arrayList.add(zzaok.zza(Double.TYPE, Double.class, zzcy(z6)));
        arrayList.add(zzaok.zza(Float.TYPE, Float.class, zzcz(z6)));
        arrayList.add(zzaok.bgo);
        arrayList.add(zzaok.bgq);
        arrayList.add(zzaok.bgw);
        arrayList.add(zzaok.bgy);
        arrayList.add(zzaok.zza(BigDecimal.class, zzaok.bgs));
        arrayList.add(zzaok.zza(BigInteger.class, zzaok.bgt));
        arrayList.add(zzaok.bgA);
        arrayList.add(zzaok.bgC);
        arrayList.add(zzaok.bgG);
        arrayList.add(zzaok.bgL);
        arrayList.add(zzaok.bgE);
        arrayList.add(zzaok.bga);
        arrayList.add(zzaoa.bfu);
        arrayList.add(zzaok.bgJ);
        arrayList.add(zzaoi.bfu);
        arrayList.add(zzaoh.bfu);
        arrayList.add(zzaok.bgH);
        arrayList.add(zzany.bfu);
        arrayList.add(zzaok.bfY);
        arrayList.add(new zzanz(this.bdR));
        arrayList.add(new zzaoe(this.bdR, z2));
        arrayList.add(new zzaob(this.bdR));
        arrayList.add(zzaok.bgO);
        arrayList.add(new zzaog(this.bdR, zzamoVar, zzanqVar));
        this.bdQ = Collections.unmodifiableList(arrayList);
    }

    private zzanh<Number> zza(zzanf zzanfVar) {
        return zzanfVar == zzanf.DEFAULT ? zzaok.bgk : new zzanh<Number>() { // from class: com.google.android.gms.internal.zzamp.5
            @Override // com.google.android.gms.internal.zzanh
            public void zza(zzaoo zzaooVar, Number number) throws IOException {
                if (number == null) {
                    zzaooVar.l();
                } else {
                    zzaooVar.zzts(number.toString());
                }
            }

            @Override // com.google.android.gms.internal.zzanh
            /* renamed from: zzg, reason: merged with bridge method [inline-methods] */
            public Number zzb(zzaom zzaomVar) throws IOException {
                if (zzaomVar.b() != zzaon.NULL) {
                    return Long.valueOf(zzaomVar.nextLong());
                }
                zzaomVar.nextNull();
                return null;
            }
        };
    }

    private static void zza(Object obj, zzaom zzaomVar) {
        if (obj != null) {
            try {
                if (zzaomVar.b() != zzaon.END_DOCUMENT) {
                    throw new zzamw("JSON document was not fully consumed.");
                }
            } catch (zzaop e) {
                throw new zzane(e);
            } catch (IOException e2) {
                throw new zzamw(e2);
            }
        }
    }

    private zzanh<Number> zzcy(boolean z) {
        return z ? zzaok.bgm : new zzanh<Number>() { // from class: com.google.android.gms.internal.zzamp.3
            @Override // com.google.android.gms.internal.zzanh
            public void zza(zzaoo zzaooVar, Number number) throws IOException {
                if (number == null) {
                    zzaooVar.l();
                    return;
                }
                zzamp.this.zzn(number.doubleValue());
                zzaooVar.zza(number);
            }

            @Override // com.google.android.gms.internal.zzanh
            /* renamed from: zze, reason: merged with bridge method [inline-methods] */
            public Double zzb(zzaom zzaomVar) throws IOException {
                if (zzaomVar.b() != zzaon.NULL) {
                    return Double.valueOf(zzaomVar.nextDouble());
                }
                zzaomVar.nextNull();
                return null;
            }
        };
    }

    private zzanh<Number> zzcz(boolean z) {
        return z ? zzaok.bgl : new zzanh<Number>() { // from class: com.google.android.gms.internal.zzamp.4
            @Override // com.google.android.gms.internal.zzanh
            public void zza(zzaoo zzaooVar, Number number) throws IOException {
                if (number == null) {
                    zzaooVar.l();
                    return;
                }
                zzamp.this.zzn(number.floatValue());
                zzaooVar.zza(number);
            }

            @Override // com.google.android.gms.internal.zzanh
            /* renamed from: zzf, reason: merged with bridge method [inline-methods] */
            public Float zzb(zzaom zzaomVar) throws IOException {
                if (zzaomVar.b() != zzaon.NULL) {
                    return Float.valueOf((float) zzaomVar.nextDouble());
                }
                zzaomVar.nextNull();
                return null;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzn(double d) {
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            throw new IllegalArgumentException(new StringBuilder(168).append(d).append(" is not a valid double value as per JSON specification. To override this").append(" behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.").toString());
        }
    }

    public String toString() {
        return "{serializeNulls:" + this.bdS + "factories:" + this.bdQ + ",instanceCreators:" + this.bdR + "}";
    }

    public <T> zzanh<T> zza(zzani zzaniVar, zzaol<T> zzaolVar) {
        boolean z = this.bdQ.contains(zzaniVar) ? false : true;
        boolean z2 = z;
        for (zzani zzaniVar2 : this.bdQ) {
            if (z2) {
                zzanh<T> zza2 = zzaniVar2.zza(this, zzaolVar);
                if (zza2 != null) {
                    return zza2;
                }
            } else if (zzaniVar2 == zzaniVar) {
                z2 = true;
            }
        }
        String valueOf = String.valueOf(zzaolVar);
        throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 22).append("GSON cannot serialize ").append(valueOf).toString());
    }

    public <T> zzanh<T> zza(zzaol<T> zzaolVar) {
        Map map;
        zzanh<T> zzanhVar = (zzanh) this.bdP.get(zzaolVar);
        if (zzanhVar == null) {
            Map<zzaol<?>, zza<?>> map2 = this.bdO.get();
            boolean z = false;
            if (map2 == null) {
                HashMap hashMap = new HashMap();
                this.bdO.set(hashMap);
                map = hashMap;
                z = true;
            } else {
                map = map2;
            }
            zzanhVar = (zza) map.get(zzaolVar);
            if (zzanhVar == null) {
                try {
                    zza zzaVar = new zza();
                    map.put(zzaolVar, zzaVar);
                    Iterator<zzani> it = this.bdQ.iterator();
                    while (it.hasNext()) {
                        zzanhVar = it.next().zza(this, zzaolVar);
                        if (zzanhVar != null) {
                            zzaVar.zza(zzanhVar);
                            this.bdP.put(zzaolVar, zzanhVar);
                            map.remove(zzaolVar);
                            if (z) {
                                this.bdO.remove();
                            }
                        }
                    }
                    String valueOf = String.valueOf(zzaolVar);
                    throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 19).append("GSON cannot handle ").append(valueOf).toString());
                } catch (Throwable th) {
                    map.remove(zzaolVar);
                    if (z) {
                        this.bdO.remove();
                    }
                    throw th;
                }
            }
        }
        return zzanhVar;
    }

    public zzaoo zza(Writer writer) throws IOException {
        if (this.bdU) {
            writer.write(")]}'\n");
        }
        zzaoo zzaooVar = new zzaoo(writer);
        if (this.bdV) {
            zzaooVar.setIndent("  ");
        }
        zzaooVar.zzdd(this.bdS);
        return zzaooVar;
    }

    public <T> T zza(zzamv zzamvVar, Class<T> cls) throws zzane {
        return (T) zzanv.zzp(cls).cast(zza(zzamvVar, (Type) cls));
    }

    public <T> T zza(zzamv zzamvVar, Type type) throws zzane {
        if (zzamvVar == null) {
            return null;
        }
        return (T) zza(new zzaoc(zzamvVar), type);
    }

    public <T> T zza(zzaom zzaomVar, Type type) throws zzamw, zzane {
        boolean z = true;
        boolean isLenient = zzaomVar.isLenient();
        zzaomVar.setLenient(true);
        try {
            try {
                zzaomVar.b();
                z = false;
                return zza(zzaol.zzl(type)).zzb(zzaomVar);
            } catch (EOFException e) {
                if (!z) {
                    throw new zzane(e);
                }
                zzaomVar.setLenient(isLenient);
                return null;
            } catch (IOException e2) {
                throw new zzane(e2);
            } catch (IllegalStateException e3) {
                throw new zzane(e3);
            }
        } finally {
            zzaomVar.setLenient(isLenient);
        }
    }

    public <T> T zza(Reader reader, Type type) throws zzamw, zzane {
        zzaom zzaomVar = new zzaom(reader);
        T t = (T) zza(zzaomVar, type);
        zza(t, zzaomVar);
        return t;
    }

    public <T> T zza(String str, Type type) throws zzane {
        if (str == null) {
            return null;
        }
        return (T) zza(new StringReader(str), type);
    }

    public void zza(zzamv zzamvVar, zzaoo zzaooVar) throws zzamw {
        boolean isLenient = zzaooVar.isLenient();
        zzaooVar.setLenient(true);
        boolean x = zzaooVar.x();
        zzaooVar.zzdc(this.bdT);
        boolean y = zzaooVar.y();
        zzaooVar.zzdd(this.bdS);
        try {
            try {
                zzanw.zzb(zzamvVar, zzaooVar);
            } catch (IOException e) {
                throw new zzamw(e);
            }
        } finally {
            zzaooVar.setLenient(isLenient);
            zzaooVar.zzdc(x);
            zzaooVar.zzdd(y);
        }
    }

    public void zza(zzamv zzamvVar, Appendable appendable) throws zzamw {
        try {
            zza(zzamvVar, zza(zzanw.zza(appendable)));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public void zza(Object obj, Type type, zzaoo zzaooVar) throws zzamw {
        zzanh zza2 = zza(zzaol.zzl(type));
        boolean isLenient = zzaooVar.isLenient();
        zzaooVar.setLenient(true);
        boolean x = zzaooVar.x();
        zzaooVar.zzdc(this.bdT);
        boolean y = zzaooVar.y();
        zzaooVar.zzdd(this.bdS);
        try {
            try {
                zza2.zza(zzaooVar, obj);
            } catch (IOException e) {
                throw new zzamw(e);
            }
        } finally {
            zzaooVar.setLenient(isLenient);
            zzaooVar.zzdc(x);
            zzaooVar.zzdd(y);
        }
    }

    public void zza(Object obj, Type type, Appendable appendable) throws zzamw {
        try {
            zza(obj, type, zza(zzanw.zza(appendable)));
        } catch (IOException e) {
            throw new zzamw(e);
        }
    }

    public String zzb(zzamv zzamvVar) {
        StringWriter stringWriter = new StringWriter();
        zza(zzamvVar, stringWriter);
        return stringWriter.toString();
    }

    public String zzc(Object obj, Type type) {
        StringWriter stringWriter = new StringWriter();
        zza(obj, type, stringWriter);
        return stringWriter.toString();
    }

    public String zzch(Object obj) {
        return obj == null ? zzb(zzamx.bei) : zzc(obj, obj.getClass());
    }

    public <T> T zzf(String str, Class<T> cls) throws zzane {
        return (T) zzanv.zzp(cls).cast(zza(str, cls));
    }

    public <T> zzanh<T> zzk(Class<T> cls) {
        return zza(zzaol.zzr(cls));
    }
}
