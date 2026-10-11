package com.google.android.gms.common.data;

import android.content.ContentValues;
import android.database.CharArrayBuffer;
import android.database.CursorIndexOutOfBoundsException;
import android.database.CursorWindow;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzab;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

@KeepName
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class DataHolder extends AbstractSafeParcelable implements Closeable {
    public static final Parcelable.Creator<DataHolder> CREATOR = new zze();
    private static final zza wi = new zza(new String[0], null) { // from class: com.google.android.gms.common.data.DataHolder.1
        @Override // com.google.android.gms.common.data.DataHolder.zza
        public zza zza(ContentValues contentValues) {
            throw new UnsupportedOperationException("Cannot add data to empty builder");
        }

        @Override // com.google.android.gms.common.data.DataHolder.zza
        public zza zza(HashMap<String, Object> hashMap) {
            throw new UnsupportedOperationException("Cannot add data to empty builder");
        }
    };
    boolean mClosed;
    private final int mVersionCode;
    private final int ok;
    private final String[] wb;
    Bundle wc;
    private final CursorWindow[] wd;
    private final Bundle we;
    int[] wf;
    int wg;
    private boolean wh;

    public static class zza {
        private final String[] wb;
        private final ArrayList<HashMap<String, Object>> wj;
        private final String wk;
        private final HashMap<Object, Integer> wl;
        private boolean wm;
        private String wn;

        private zza(String[] strArr, String str) {
            this.wb = (String[]) zzab.zzy(strArr);
            this.wj = new ArrayList<>();
            this.wk = str;
            this.wl = new HashMap<>();
            this.wm = false;
            this.wn = null;
        }

        private int zzb(HashMap<String, Object> hashMap) {
            Object obj;
            if (this.wk != null && (obj = hashMap.get(this.wk)) != null) {
                Integer num = this.wl.get(obj);
                if (num != null) {
                    return num.intValue();
                }
                this.wl.put(obj, Integer.valueOf(this.wj.size()));
                return -1;
            }
            return -1;
        }

        public zza zza(ContentValues contentValues) {
            com.google.android.gms.common.internal.zzb.zzu(contentValues);
            HashMap<String, Object> hashMap = new HashMap<>(contentValues.size());
            for (Map.Entry<String, Object> entry : contentValues.valueSet()) {
                hashMap.put(entry.getKey(), entry.getValue());
            }
            return zza(hashMap);
        }

        public zza zza(HashMap<String, Object> hashMap) {
            com.google.android.gms.common.internal.zzb.zzu(hashMap);
            int zzb = zzb(hashMap);
            if (zzb == -1) {
                this.wj.add(hashMap);
            } else {
                this.wj.remove(zzb);
                this.wj.add(zzb, hashMap);
            }
            this.wm = false;
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public DataHolder zzfu(int i) {
            return new DataHolder(this, i, (Bundle) null);
        }
    }

    public static class zzb extends RuntimeException {
        public zzb(String str) {
            super(str);
        }
    }

    DataHolder(int i, String[] strArr, CursorWindow[] cursorWindowArr, int i2, Bundle bundle) {
        this.mClosed = false;
        this.wh = true;
        this.mVersionCode = i;
        this.wb = strArr;
        this.wd = cursorWindowArr;
        this.ok = i2;
        this.we = bundle;
    }

    private DataHolder(zza zzaVar, int i, Bundle bundle) {
        this(zzaVar.wb, zza(zzaVar, -1), i, bundle);
    }

    public DataHolder(String[] strArr, CursorWindow[] cursorWindowArr, int i, Bundle bundle) {
        this.mClosed = false;
        this.wh = true;
        this.mVersionCode = 1;
        this.wb = (String[]) zzab.zzy(strArr);
        this.wd = (CursorWindow[]) zzab.zzy(cursorWindowArr);
        this.ok = i;
        this.we = bundle;
        zzarh();
    }

    public static DataHolder zza(int i, Bundle bundle) {
        return new DataHolder(wi, i, bundle);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v38, types: [java.util.List] */
    private static CursorWindow[] zza(zza zzaVar, int i) {
        int i2;
        boolean z;
        CursorWindow cursorWindow;
        if (zzaVar.wb.length == 0) {
            return new CursorWindow[0];
        }
        ArrayList subList = (i < 0 || i >= zzaVar.wj.size()) ? zzaVar.wj : zzaVar.wj.subList(0, i);
        int size = subList.size();
        CursorWindow cursorWindow2 = new CursorWindow(false);
        ArrayList arrayList = new ArrayList();
        arrayList.add(cursorWindow2);
        cursorWindow2.setNumColumns(zzaVar.wb.length);
        int i3 = 0;
        boolean z2 = false;
        while (i3 < size) {
            try {
                if (!cursorWindow2.allocRow()) {
                    Log.d("DataHolder", new StringBuilder(72).append("Allocating additional cursor window for large data set (row ").append(i3).append(")").toString());
                    cursorWindow2 = new CursorWindow(false);
                    cursorWindow2.setStartPosition(i3);
                    cursorWindow2.setNumColumns(zzaVar.wb.length);
                    arrayList.add(cursorWindow2);
                    if (!cursorWindow2.allocRow()) {
                        Log.e("DataHolder", "Unable to allocate row to hold data.");
                        arrayList.remove(cursorWindow2);
                        return (CursorWindow[]) arrayList.toArray(new CursorWindow[arrayList.size()]);
                    }
                }
                Map map = (Map) subList.get(i3);
                boolean z3 = true;
                for (int i4 = 0; i4 < zzaVar.wb.length && z3; i4++) {
                    String str = zzaVar.wb[i4];
                    Object obj = map.get(str);
                    if (obj == null) {
                        z3 = cursorWindow2.putNull(i3, i4);
                    } else if (obj instanceof String) {
                        z3 = cursorWindow2.putString((String) obj, i3, i4);
                    } else if (obj instanceof Long) {
                        z3 = cursorWindow2.putLong(((Long) obj).longValue(), i3, i4);
                    } else if (obj instanceof Integer) {
                        z3 = cursorWindow2.putLong(((Integer) obj).intValue(), i3, i4);
                    } else if (obj instanceof Boolean) {
                        z3 = cursorWindow2.putLong(((Boolean) obj).booleanValue() ? 1L : 0L, i3, i4);
                    } else if (obj instanceof byte[]) {
                        z3 = cursorWindow2.putBlob((byte[]) obj, i3, i4);
                    } else if (obj instanceof Double) {
                        z3 = cursorWindow2.putDouble(((Double) obj).doubleValue(), i3, i4);
                    } else {
                        if (!(obj instanceof Float)) {
                            String valueOf = String.valueOf(obj);
                            throw new IllegalArgumentException(new StringBuilder(String.valueOf(str).length() + 32 + String.valueOf(valueOf).length()).append("Unsupported object for column ").append(str).append(": ").append(valueOf).toString());
                        }
                        z3 = cursorWindow2.putDouble(((Float) obj).floatValue(), i3, i4);
                    }
                }
                if (z3) {
                    i2 = i3;
                    z = false;
                    cursorWindow = cursorWindow2;
                } else {
                    if (z2) {
                        throw new zzb("Could not add the value to a new CursorWindow. The size of value may be larger than what a CursorWindow can handle.");
                    }
                    Log.d("DataHolder", new StringBuilder(74).append("Couldn't populate window data for row ").append(i3).append(" - allocating new window.").toString());
                    cursorWindow2.freeLastRow();
                    CursorWindow cursorWindow3 = new CursorWindow(false);
                    cursorWindow3.setStartPosition(i3);
                    cursorWindow3.setNumColumns(zzaVar.wb.length);
                    arrayList.add(cursorWindow3);
                    i2 = i3 - 1;
                    cursorWindow = cursorWindow3;
                    z = true;
                }
                z2 = z;
                cursorWindow2 = cursorWindow;
                i3 = i2 + 1;
            } catch (RuntimeException e) {
                int size2 = arrayList.size();
                for (int i5 = 0; i5 < size2; i5++) {
                    ((CursorWindow) arrayList.get(i5)).close();
                }
                throw e;
            }
        }
        return (CursorWindow[]) arrayList.toArray(new CursorWindow[arrayList.size()]);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static zza zzb(String[] strArr) {
        return new zza(strArr, null);
    }

    public static DataHolder zzft(int i) {
        return zza(i, (Bundle) null);
    }

    private void zzh(String str, int i) {
        if (this.wc == null || !this.wc.containsKey(str)) {
            String valueOf = String.valueOf(str);
            throw new IllegalArgumentException(valueOf.length() != 0 ? "No such column: ".concat(valueOf) : new String("No such column: "));
        }
        if (isClosed()) {
            throw new IllegalArgumentException("Buffer is closed.");
        }
        if (i < 0 || i >= this.wg) {
            throw new CursorIndexOutOfBoundsException(i, this.wg);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            if (!this.mClosed) {
                this.mClosed = true;
                for (int i = 0; i < this.wd.length; i++) {
                    this.wd[i].close();
                }
            }
        }
    }

    protected void finalize() throws Throwable {
        try {
            if (this.wh && this.wd.length > 0 && !isClosed()) {
                close();
                String valueOf = String.valueOf(toString());
                Log.e("DataBuffer", new StringBuilder(String.valueOf(valueOf).length() + 178).append("Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (internal object: ").append(valueOf).append(")").toString());
            }
        } finally {
            super.finalize();
        }
    }

    public int getCount() {
        return this.wg;
    }

    public int getStatusCode() {
        return this.ok;
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    public boolean isClosed() {
        boolean z;
        synchronized (this) {
            z = this.mClosed;
        }
        return z;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zze.zza(this, parcel, i);
    }

    public void zza(String str, int i, int i2, CharArrayBuffer charArrayBuffer) {
        zzh(str, i);
        this.wd[i2].copyStringToBuffer(i, this.wc.getInt(str), charArrayBuffer);
    }

    public Bundle zzarc() {
        return this.we;
    }

    public void zzarh() {
        this.wc = new Bundle();
        for (int i = 0; i < this.wb.length; i++) {
            this.wc.putInt(this.wb[i], i);
        }
        this.wf = new int[this.wd.length];
        int i2 = 0;
        for (int i3 = 0; i3 < this.wd.length; i3++) {
            this.wf[i3] = i2;
            i2 += this.wd[i3].getNumRows() - (i2 - this.wd[i3].getStartPosition());
        }
        this.wg = i2;
    }

    String[] zzari() {
        return this.wb;
    }

    CursorWindow[] zzarj() {
        return this.wd;
    }

    public long zzb(String str, int i, int i2) {
        zzh(str, i);
        return this.wd[i2].getLong(i, this.wc.getInt(str));
    }

    public int zzc(String str, int i, int i2) {
        zzh(str, i);
        return this.wd[i2].getInt(i, this.wc.getInt(str));
    }

    public String zzd(String str, int i, int i2) {
        zzh(str, i);
        return this.wd[i2].getString(i, this.wc.getInt(str));
    }

    public boolean zze(String str, int i, int i2) {
        zzh(str, i);
        return Long.valueOf(this.wd[i2].getLong(i, this.wc.getInt(str))).longValue() == 1;
    }

    public float zzf(String str, int i, int i2) {
        zzh(str, i);
        return this.wd[i2].getFloat(i, this.wc.getInt(str));
    }

    public int zzfs(int i) {
        int i2 = 0;
        zzab.zzbn(i >= 0 && i < this.wg);
        while (true) {
            if (i2 >= this.wf.length) {
                break;
            }
            if (i < this.wf[i2]) {
                i2--;
                break;
            }
            i2++;
        }
        return i2 == this.wf.length ? i2 - 1 : i2;
    }

    public byte[] zzg(String str, int i, int i2) {
        zzh(str, i);
        return this.wd[i2].getBlob(i, this.wc.getInt(str));
    }

    public Uri zzh(String str, int i, int i2) {
        String zzd = zzd(str, i, i2);
        if (zzd == null) {
            return null;
        }
        return Uri.parse(zzd);
    }

    public boolean zzhe(String str) {
        return this.wc.containsKey(str);
    }

    public boolean zzi(String str, int i, int i2) {
        zzh(str, i);
        return this.wd[i2].isNull(i, this.wc.getInt(str));
    }
}
