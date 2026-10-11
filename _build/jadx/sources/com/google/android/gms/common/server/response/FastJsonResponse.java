package com.google.android.gms.common.server.response;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.common.server.converter.ConverterWrapper;
import com.google.android.gms.common.util.zzp;
import com.google.android.gms.common.util.zzq;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class FastJsonResponse {

    public static class Field<I, O> extends AbstractSafeParcelable {
        public static final com.google.android.gms.common.server.response.zza CREATOR = new com.google.android.gms.common.server.response.zza();
        private final int mVersionCode;
        protected final int zF;
        protected final boolean zG;
        protected final int zH;
        protected final boolean zI;
        protected final String zJ;
        protected final int zK;
        protected final Class<? extends FastJsonResponse> zL;
        protected final String zM;
        private FieldMappingDictionary zN;
        private zza<I, O> zO;

        Field(int i, int i2, boolean z, int i3, boolean z2, String str, int i4, String str2, ConverterWrapper converterWrapper) {
            this.mVersionCode = i;
            this.zF = i2;
            this.zG = z;
            this.zH = i3;
            this.zI = z2;
            this.zJ = str;
            this.zK = i4;
            if (str2 == null) {
                this.zL = null;
                this.zM = null;
            } else {
                this.zL = SafeParcelResponse.class;
                this.zM = str2;
            }
            if (converterWrapper == null) {
                this.zO = null;
            } else {
                this.zO = (zza<I, O>) converterWrapper.zzatr();
            }
        }

        protected Field(int i, boolean z, int i2, boolean z2, String str, int i3, Class<? extends FastJsonResponse> cls, zza<I, O> zzaVar) {
            this.mVersionCode = 1;
            this.zF = i;
            this.zG = z;
            this.zH = i2;
            this.zI = z2;
            this.zJ = str;
            this.zK = i3;
            this.zL = cls;
            if (cls == null) {
                this.zM = null;
            } else {
                this.zM = cls.getCanonicalName();
            }
            this.zO = zzaVar;
        }

        public static Field zza(String str, int i, zza<?, ?> zzaVar, boolean z) {
            return new Field(zzaVar.zzatt(), z, zzaVar.zzatu(), false, str, i, null, zzaVar);
        }

        public static <T extends FastJsonResponse> Field<T, T> zza(String str, int i, Class<T> cls) {
            return new Field<>(11, false, 11, false, str, i, cls, null);
        }

        public static <T extends FastJsonResponse> Field<ArrayList<T>, ArrayList<T>> zzb(String str, int i, Class<T> cls) {
            return new Field<>(11, true, 11, true, str, i, cls, null);
        }

        public static Field<Integer, Integer> zzj(String str, int i) {
            return new Field<>(0, false, 0, false, str, i, null, null);
        }

        public static Field<Boolean, Boolean> zzk(String str, int i) {
            return new Field<>(6, false, 6, false, str, i, null, null);
        }

        public static Field<String, String> zzl(String str, int i) {
            return new Field<>(7, false, 7, false, str, i, null, null);
        }

        public I convertBack(O o) {
            return this.zO.convertBack(o);
        }

        public int getVersionCode() {
            return this.mVersionCode;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("Field\n");
            sb.append("            versionCode=").append(this.mVersionCode).append('\n');
            sb.append("                 typeIn=").append(this.zF).append('\n');
            sb.append("            typeInArray=").append(this.zG).append('\n');
            sb.append("                typeOut=").append(this.zH).append('\n');
            sb.append("           typeOutArray=").append(this.zI).append('\n');
            sb.append("        outputFieldName=").append(this.zJ).append('\n');
            sb.append("      safeParcelFieldId=").append(this.zK).append('\n');
            sb.append("       concreteTypeName=").append(zzaud()).append('\n');
            if (zzauc() != null) {
                sb.append("     concreteType.class=").append(zzauc().getCanonicalName()).append('\n');
            }
            sb.append("          converterName=").append(this.zO == null ? "null" : this.zO.getClass().getCanonicalName()).append('\n');
            return sb.toString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            com.google.android.gms.common.server.response.zza zzaVar = CREATOR;
            com.google.android.gms.common.server.response.zza.zza(this, parcel, i);
        }

        public void zza(FieldMappingDictionary fieldMappingDictionary) {
            this.zN = fieldMappingDictionary;
        }

        public int zzatt() {
            return this.zF;
        }

        public int zzatu() {
            return this.zH;
        }

        public boolean zzaty() {
            return this.zG;
        }

        public boolean zzatz() {
            return this.zI;
        }

        public String zzaua() {
            return this.zJ;
        }

        public int zzaub() {
            return this.zK;
        }

        public Class<? extends FastJsonResponse> zzauc() {
            return this.zL;
        }

        String zzaud() {
            if (this.zM == null) {
                return null;
            }
            return this.zM;
        }

        public boolean zzaue() {
            return this.zO != null;
        }

        ConverterWrapper zzauf() {
            if (this.zO == null) {
                return null;
            }
            return ConverterWrapper.zza(this.zO);
        }

        public Map<String, Field<?, ?>> zzaug() {
            zzab.zzy(this.zM);
            zzab.zzy(this.zN);
            return this.zN.zzhw(this.zM);
        }
    }

    public interface zza<I, O> {
        I convertBack(O o);

        int zzatt();

        int zzatu();
    }

    private void zza(StringBuilder sb, Field field, Object obj) {
        if (field.zzatt() == 11) {
            sb.append(field.zzauc().cast(obj).toString());
        } else {
            if (field.zzatt() != 7) {
                sb.append(obj);
                return;
            }
            sb.append("\"");
            sb.append(zzp.zzia((String) obj));
            sb.append("\"");
        }
    }

    private void zza(StringBuilder sb, Field field, ArrayList<Object> arrayList) {
        sb.append("[");
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                sb.append(",");
            }
            Object obj = arrayList.get(i);
            if (obj != null) {
                zza(sb, field, obj);
            }
        }
        sb.append("]");
    }

    public String toString() {
        Map<String, Field<?, ?>> zzatv = zzatv();
        StringBuilder sb = new StringBuilder(100);
        for (String str : zzatv.keySet()) {
            Field<?, ?> field = zzatv.get(str);
            if (zza(field)) {
                Object zza2 = zza(field, zzb(field));
                if (sb.length() == 0) {
                    sb.append("{");
                } else {
                    sb.append(",");
                }
                sb.append("\"").append(str).append("\":");
                if (zza2 != null) {
                    switch (field.zzatu()) {
                        case 8:
                            sb.append("\"").append(com.google.android.gms.common.util.zzc.zzp((byte[]) zza2)).append("\"");
                            break;
                        case 9:
                            sb.append("\"").append(com.google.android.gms.common.util.zzc.zzq((byte[]) zza2)).append("\"");
                            break;
                        case 10:
                            zzq.zza(sb, (HashMap) zza2);
                            break;
                        default:
                            if (field.zzaty()) {
                                zza(sb, (Field) field, (ArrayList<Object>) zza2);
                                break;
                            } else {
                                zza(sb, field, zza2);
                                break;
                            }
                    }
                } else {
                    sb.append("null");
                }
            }
        }
        if (sb.length() > 0) {
            sb.append("}");
        } else {
            sb.append("{}");
        }
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected <O, I> I zza(Field<I, O> field, Object obj) {
        return ((Field) field).zO != null ? field.convertBack(obj) : obj;
    }

    protected boolean zza(Field field) {
        return field.zzatu() == 11 ? field.zzatz() ? zzhv(field.zzaua()) : zzhu(field.zzaua()) : zzht(field.zzaua());
    }

    public abstract Map<String, Field<?, ?>> zzatv();

    public HashMap<String, Object> zzatw() {
        return null;
    }

    public HashMap<String, Object> zzatx() {
        return null;
    }

    protected Object zzb(Field field) {
        String zzaua = field.zzaua();
        if (field.zzauc() == null) {
            return zzhs(field.zzaua());
        }
        zzab.zza(zzhs(field.zzaua()) == null, "Concrete field shouldn't be value object: %s", field.zzaua());
        HashMap<String, Object> zzatx = field.zzatz() ? zzatx() : zzatw();
        if (zzatx != null) {
            return zzatx.get(zzaua);
        }
        try {
            char upperCase = Character.toUpperCase(zzaua.charAt(0));
            String valueOf = String.valueOf(zzaua.substring(1));
            return getClass().getMethod(new StringBuilder(String.valueOf(valueOf).length() + 4).append("get").append(upperCase).append(valueOf).toString(), new Class[0]).invoke(this, new Object[0]);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    protected abstract Object zzhs(String str);

    protected abstract boolean zzht(String str);

    protected boolean zzhu(String str) {
        throw new UnsupportedOperationException("Concrete types not supported");
    }

    protected boolean zzhv(String str) {
        throw new UnsupportedOperationException("Concrete type arrays not supported");
    }
}
