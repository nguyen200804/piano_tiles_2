package com.google.android.gms.common.internal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class zzf {
    public static final zzf xN = zza("\t\n\u000b\f\r \u0085\u1680\u2028\u2029\u205f\u3000 \u180e ").zza(zza(8192, 8202));
    public static final zzf xO = zza("\t\n\u000b\f\r \u0085\u1680\u2028\u2029\u205f\u3000").zza(zza(8192, 8198)).zza(zza(8200, 8202));
    public static final zzf xP = zza(0, 127);
    public static final zzf xQ;
    public static final zzf xR;
    public static final zzf xS;
    public static final zzf xT;
    public static final zzf xU;
    public static final zzf xV;
    public static final zzf xW;
    public static final zzf xX;
    public static final zzf xY;
    public static final zzf xZ;
    public static final zzf ya;
    public static final zzf yb;

    private static class zza extends zzf {
        List<zzf> yi;

        zza(List<zzf> list) {
            this.yi = list;
        }

        @Override // com.google.android.gms.common.internal.zzf
        public zzf zza(zzf zzfVar) {
            ArrayList arrayList = new ArrayList(this.yi);
            arrayList.add((zzf) zzab.zzy(zzfVar));
            return new zza(arrayList);
        }

        @Override // com.google.android.gms.common.internal.zzf
        public boolean zzd(char c) {
            Iterator<zzf> it = this.yi.iterator();
            while (it.hasNext()) {
                if (it.next().zzd(c)) {
                    return true;
                }
            }
            return false;
        }
    }

    static {
        zzf zza2 = zza('0', '9');
        zzf zzfVar = zza2;
        for (char c : "٠۰߀०০੦૦୦௦౦೦൦๐໐༠၀႐០᠐᥆᧐᭐᮰᱀᱐꘠꣐꤀꩐０".toCharArray()) {
            zzfVar = zzfVar.zza(zza(c, (char) (c + '\t')));
        }
        xQ = zzfVar;
        xR = zza('\t', '\r').zza(zza((char) 28, ' ')).zza(zzc((char) 5760)).zza(zzc((char) 6158)).zza(zza((char) 8192, (char) 8198)).zza(zza((char) 8200, (char) 8203)).zza(zza((char) 8232, (char) 8233)).zza(zzc((char) 8287)).zza(zzc((char) 12288));
        xS = new zzf() { // from class: com.google.android.gms.common.internal.zzf.1
            @Override // com.google.android.gms.common.internal.zzf
            public boolean zzd(char c2) {
                return Character.isDigit(c2);
            }
        };
        xT = new zzf() { // from class: com.google.android.gms.common.internal.zzf.5
            @Override // com.google.android.gms.common.internal.zzf
            public boolean zzd(char c2) {
                return Character.isLetter(c2);
            }
        };
        xU = new zzf() { // from class: com.google.android.gms.common.internal.zzf.6
            @Override // com.google.android.gms.common.internal.zzf
            public boolean zzd(char c2) {
                return Character.isLetterOrDigit(c2);
            }
        };
        xV = new zzf() { // from class: com.google.android.gms.common.internal.zzf.7
            @Override // com.google.android.gms.common.internal.zzf
            public boolean zzd(char c2) {
                return Character.isUpperCase(c2);
            }
        };
        xW = new zzf() { // from class: com.google.android.gms.common.internal.zzf.8
            @Override // com.google.android.gms.common.internal.zzf
            public boolean zzd(char c2) {
                return Character.isLowerCase(c2);
            }
        };
        xX = zza((char) 0, (char) 31).zza(zza((char) 127, (char) 159));
        xY = zza((char) 0, ' ').zza(zza((char) 127, (char) 160)).zza(zzc((char) 173)).zza(zza((char) 1536, (char) 1539)).zza(zza("\u06dd\u070f\u1680឴឵\u180e")).zza(zza((char) 8192, (char) 8207)).zza(zza((char) 8232, (char) 8239)).zza(zza((char) 8287, (char) 8292)).zza(zza((char) 8298, (char) 8303)).zza(zzc((char) 12288)).zza(zza((char) 55296, (char) 63743)).zza(zza("\ufeff\ufff9\ufffa\ufffb"));
        xZ = zza((char) 0, (char) 1273).zza(zzc((char) 1470)).zza(zza((char) 1488, (char) 1514)).zza(zzc((char) 1523)).zza(zzc((char) 1524)).zza(zza((char) 1536, (char) 1791)).zza(zza((char) 1872, (char) 1919)).zza(zza((char) 3584, (char) 3711)).zza(zza((char) 7680, (char) 8367)).zza(zza((char) 8448, (char) 8506)).zza(zza((char) 64336, (char) 65023)).zza(zza((char) 65136, (char) 65279)).zza(zza((char) 65377, (char) 65500));
        ya = new zzf() { // from class: com.google.android.gms.common.internal.zzf.9
            @Override // com.google.android.gms.common.internal.zzf
            public zzf zza(zzf zzfVar2) {
                zzab.zzy(zzfVar2);
                return this;
            }

            @Override // com.google.android.gms.common.internal.zzf
            public boolean zzb(CharSequence charSequence) {
                zzab.zzy(charSequence);
                return true;
            }

            @Override // com.google.android.gms.common.internal.zzf
            public boolean zzd(char c2) {
                return true;
            }
        };
        yb = new zzf() { // from class: com.google.android.gms.common.internal.zzf.10
            @Override // com.google.android.gms.common.internal.zzf
            public zzf zza(zzf zzfVar2) {
                return (zzf) zzab.zzy(zzfVar2);
            }

            @Override // com.google.android.gms.common.internal.zzf
            public boolean zzb(CharSequence charSequence) {
                return charSequence.length() == 0;
            }

            @Override // com.google.android.gms.common.internal.zzf
            public boolean zzd(char c2) {
                return false;
            }
        };
    }

    public static zzf zza(final char c, final char c2) {
        zzab.zzbo(c2 >= c);
        return new zzf() { // from class: com.google.android.gms.common.internal.zzf.4
            @Override // com.google.android.gms.common.internal.zzf
            public boolean zzd(char c3) {
                return c <= c3 && c3 <= c2;
            }
        };
    }

    public static zzf zza(CharSequence charSequence) {
        switch (charSequence.length()) {
            case 0:
                return yb;
            case 1:
                return zzc(charSequence.charAt(0));
            case 2:
                final char charAt = charSequence.charAt(0);
                final char charAt2 = charSequence.charAt(1);
                return new zzf() { // from class: com.google.android.gms.common.internal.zzf.2
                    @Override // com.google.android.gms.common.internal.zzf
                    public boolean zzd(char c) {
                        return c == charAt || c == charAt2;
                    }
                };
            default:
                final char[] charArray = charSequence.toString().toCharArray();
                Arrays.sort(charArray);
                return new zzf() { // from class: com.google.android.gms.common.internal.zzf.3
                    @Override // com.google.android.gms.common.internal.zzf
                    public boolean zzd(char c) {
                        return Arrays.binarySearch(charArray, c) >= 0;
                    }
                };
        }
    }

    public static zzf zzc(final char c) {
        return new zzf() { // from class: com.google.android.gms.common.internal.zzf.11
            @Override // com.google.android.gms.common.internal.zzf
            public zzf zza(zzf zzfVar) {
                return zzfVar.zzd(c) ? zzfVar : super.zza(zzfVar);
            }

            @Override // com.google.android.gms.common.internal.zzf
            public boolean zzd(char c2) {
                return c2 == c;
            }
        };
    }

    public zzf zza(zzf zzfVar) {
        return new zza(Arrays.asList(this, (zzf) zzab.zzy(zzfVar)));
    }

    public boolean zzb(CharSequence charSequence) {
        for (int length = charSequence.length() - 1; length >= 0; length--) {
            if (!zzd(charSequence.charAt(length))) {
                return false;
            }
        }
        return true;
    }

    public abstract boolean zzd(char c);
}
