package com.google.android.gms.internal;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.sql.Timestamp;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.UUID;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzaok {
    public static final zzanh<Class> bfX = new zzanh<Class>() { // from class: com.google.android.gms.internal.zzaok.1
        @Override // com.google.android.gms.internal.zzanh
        public void zza(zzaoo zzaooVar, Class cls) throws IOException {
            if (cls == null) {
                zzaooVar.l();
            } else {
                String valueOf = String.valueOf(cls.getName());
                throw new UnsupportedOperationException(new StringBuilder(String.valueOf(valueOf).length() + 76).append("Attempted to serialize java.lang.Class: ").append(valueOf).append(". Forgot to register a type adapter?").toString());
            }
        }

        @Override // com.google.android.gms.internal.zzanh
        /* renamed from: zzo, reason: merged with bridge method [inline-methods] */
        public Class zzb(zzaom zzaomVar) throws IOException {
            if (zzaomVar.b() != zzaon.NULL) {
                throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
            }
            zzaomVar.nextNull();
            return null;
        }
    };
    public static final zzani bfY = zza(Class.class, bfX);
    public static final zzanh<BitSet> bfZ = new zzanh<BitSet>() { // from class: com.google.android.gms.internal.zzaok.12
        @Override // com.google.android.gms.internal.zzanh
        public void zza(zzaoo zzaooVar, BitSet bitSet) throws IOException {
            if (bitSet == null) {
                zzaooVar.l();
                return;
            }
            zzaooVar.h();
            for (int i = 0; i < bitSet.length(); i++) {
                zzaooVar.zzcr(bitSet.get(i) ? 1 : 0);
            }
            zzaooVar.i();
        }

        @Override // com.google.android.gms.internal.zzanh
        /* renamed from: zzx, reason: merged with bridge method [inline-methods] */
        public BitSet zzb(zzaom zzaomVar) throws IOException {
            boolean z;
            if (zzaomVar.b() == zzaon.NULL) {
                zzaomVar.nextNull();
                return null;
            }
            BitSet bitSet = new BitSet();
            zzaomVar.beginArray();
            zzaon b2 = zzaomVar.b();
            int i = 0;
            while (b2 != zzaon.END_ARRAY) {
                switch (AnonymousClass26.bfK[b2.ordinal()]) {
                    case 1:
                        if (zzaomVar.nextInt() == 0) {
                            z = false;
                            break;
                        } else {
                            z = true;
                            break;
                        }
                    case 2:
                        z = zzaomVar.nextBoolean();
                        break;
                    case 3:
                        String nextString = zzaomVar.nextString();
                        try {
                            if (Integer.parseInt(nextString) == 0) {
                                z = false;
                                break;
                            } else {
                                z = true;
                                break;
                            }
                        } catch (NumberFormatException e) {
                            String valueOf = String.valueOf(nextString);
                            throw new zzane(valueOf.length() != 0 ? "Error: Expecting: bitset number value (1, 0), Found: ".concat(valueOf) : new String("Error: Expecting: bitset number value (1, 0), Found: "));
                        }
                    default:
                        String valueOf2 = String.valueOf(b2);
                        throw new zzane(new StringBuilder(String.valueOf(valueOf2).length() + 27).append("Invalid bitset value type: ").append(valueOf2).toString());
                }
                if (z) {
                    bitSet.set(i);
                }
                i++;
                b2 = zzaomVar.b();
            }
            zzaomVar.endArray();
            return bitSet;
        }
    };
    public static final zzani bga = zza(BitSet.class, bfZ);
    public static final zzanh<Boolean> bgb = new zzanh<Boolean>() { // from class: com.google.android.gms.internal.zzaok.23
        @Override // com.google.android.gms.internal.zzanh
        public void zza(zzaoo zzaooVar, Boolean bool) throws IOException {
            if (bool == null) {
                zzaooVar.l();
            } else {
                zzaooVar.zzda(bool.booleanValue());
            }
        }

        @Override // com.google.android.gms.internal.zzanh
        /* renamed from: zzae, reason: merged with bridge method [inline-methods] */
        public Boolean zzb(zzaom zzaomVar) throws IOException {
            if (zzaomVar.b() != zzaon.NULL) {
                return zzaomVar.b() == zzaon.STRING ? Boolean.valueOf(Boolean.parseBoolean(zzaomVar.nextString())) : Boolean.valueOf(zzaomVar.nextBoolean());
            }
            zzaomVar.nextNull();
            return null;
        }
    };
    public static final zzanh<Boolean> bgc = new zzanh<Boolean>() { // from class: com.google.android.gms.internal.zzaok.27
        @Override // com.google.android.gms.internal.zzanh
        public void zza(zzaoo zzaooVar, Boolean bool) throws IOException {
            zzaooVar.zzts(bool == null ? "null" : bool.toString());
        }

        @Override // com.google.android.gms.internal.zzanh
        /* renamed from: zzae, reason: merged with bridge method [inline-methods] */
        public Boolean zzb(zzaom zzaomVar) throws IOException {
            if (zzaomVar.b() != zzaon.NULL) {
                return Boolean.valueOf(zzaomVar.nextString());
            }
            zzaomVar.nextNull();
            return null;
        }
    };
    public static final zzani bgd = zza(Boolean.TYPE, Boolean.class, bgb);
    public static final zzanh<Number> bge = new zzanh<Number>() { // from class: com.google.android.gms.internal.zzaok.28
        @Override // com.google.android.gms.internal.zzanh
        public void zza(zzaoo zzaooVar, Number number) throws IOException {
            zzaooVar.zza(number);
        }

        @Override // com.google.android.gms.internal.zzanh
        /* renamed from: zzg, reason: merged with bridge method [inline-methods] */
        public Number zzb(zzaom zzaomVar) throws IOException {
            if (zzaomVar.b() == zzaon.NULL) {
                zzaomVar.nextNull();
                return null;
            }
            try {
                return Byte.valueOf((byte) zzaomVar.nextInt());
            } catch (NumberFormatException e) {
                throw new zzane(e);
            }
        }
    };
    public static final zzani bgf = zza(Byte.TYPE, Byte.class, bge);
    public static final zzanh<Number> bgg = new zzanh<Number>() { // from class: com.google.android.gms.internal.zzaok.29
        @Override // com.google.android.gms.internal.zzanh
        public void zza(zzaoo zzaooVar, Number number) throws IOException {
            zzaooVar.zza(number);
        }

        @Override // com.google.android.gms.internal.zzanh
        /* renamed from: zzg, reason: merged with bridge method [inline-methods] */
        public Number zzb(zzaom zzaomVar) throws IOException {
            if (zzaomVar.b() == zzaon.NULL) {
                zzaomVar.nextNull();
                return null;
            }
            try {
                return Short.valueOf((short) zzaomVar.nextInt());
            } catch (NumberFormatException e) {
                throw new zzane(e);
            }
        }
    };
    public static final zzani bgh = zza(Short.TYPE, Short.class, bgg);
    public static final zzanh<Number> bgi = new zzanh<Number>() { // from class: com.google.android.gms.internal.zzaok.30
        @Override // com.google.android.gms.internal.zzanh
        public void zza(zzaoo zzaooVar, Number number) throws IOException {
            zzaooVar.zza(number);
        }

        @Override // com.google.android.gms.internal.zzanh
        /* renamed from: zzg, reason: merged with bridge method [inline-methods] */
        public Number zzb(zzaom zzaomVar) throws IOException {
            if (zzaomVar.b() == zzaon.NULL) {
                zzaomVar.nextNull();
                return null;
            }
            try {
                return Integer.valueOf(zzaomVar.nextInt());
            } catch (NumberFormatException e) {
                throw new zzane(e);
            }
        }
    };
    public static final zzani bgj = zza(Integer.TYPE, Integer.class, bgi);
    public static final zzanh<Number> bgk = new zzanh<Number>() { // from class: com.google.android.gms.internal.zzaok.31
        @Override // com.google.android.gms.internal.zzanh
        public void zza(zzaoo zzaooVar, Number number) throws IOException {
            zzaooVar.zza(number);
        }

        @Override // com.google.android.gms.internal.zzanh
        /* renamed from: zzg, reason: merged with bridge method [inline-methods] */
        public Number zzb(zzaom zzaomVar) throws IOException {
            if (zzaomVar.b() == zzaon.NULL) {
                zzaomVar.nextNull();
                return null;
            }
            try {
                return Long.valueOf(zzaomVar.nextLong());
            } catch (NumberFormatException e) {
                throw new zzane(e);
            }
        }
    };
    public static final zzanh<Number> bgl = new zzanh<Number>() { // from class: com.google.android.gms.internal.zzaok.32
        @Override // com.google.android.gms.internal.zzanh
        public void zza(zzaoo zzaooVar, Number number) throws IOException {
            zzaooVar.zza(number);
        }

        @Override // com.google.android.gms.internal.zzanh
        /* renamed from: zzg, reason: merged with bridge method [inline-methods] */
        public Number zzb(zzaom zzaomVar) throws IOException {
            if (zzaomVar.b() != zzaon.NULL) {
                return Float.valueOf((float) zzaomVar.nextDouble());
            }
            zzaomVar.nextNull();
            return null;
        }
    };
    public static final zzanh<Number> bgm = new zzanh<Number>() { // from class: com.google.android.gms.internal.zzaok.2
        @Override // com.google.android.gms.internal.zzanh
        public void zza(zzaoo zzaooVar, Number number) throws IOException {
            zzaooVar.zza(number);
        }

        @Override // com.google.android.gms.internal.zzanh
        /* renamed from: zzg, reason: merged with bridge method [inline-methods] */
        public Number zzb(zzaom zzaomVar) throws IOException {
            if (zzaomVar.b() != zzaon.NULL) {
                return Double.valueOf(zzaomVar.nextDouble());
            }
            zzaomVar.nextNull();
            return null;
        }
    };
    public static final zzanh<Number> bgn = new zzanh<Number>() { // from class: com.google.android.gms.internal.zzaok.3
        @Override // com.google.android.gms.internal.zzanh
        public void zza(zzaoo zzaooVar, Number number) throws IOException {
            zzaooVar.zza(number);
        }

        @Override // com.google.android.gms.internal.zzanh
        /* renamed from: zzg, reason: merged with bridge method [inline-methods] */
        public Number zzb(zzaom zzaomVar) throws IOException {
            zzaon b2 = zzaomVar.b();
            switch (b2) {
                case NUMBER:
                    return new zzans(zzaomVar.nextString());
                case BOOLEAN:
                case STRING:
                default:
                    String valueOf = String.valueOf(b2);
                    throw new zzane(new StringBuilder(String.valueOf(valueOf).length() + 23).append("Expecting number, got: ").append(valueOf).toString());
                case NULL:
                    zzaomVar.nextNull();
                    return null;
            }
        }
    };
    public static final zzani bgo = zza(Number.class, bgn);
    public static final zzanh<Character> bgp = new zzanh<Character>() { // from class: com.google.android.gms.internal.zzaok.4
        @Override // com.google.android.gms.internal.zzanh
        public void zza(zzaoo zzaooVar, Character ch) throws IOException {
            zzaooVar.zzts(ch == null ? null : String.valueOf(ch));
        }

        @Override // com.google.android.gms.internal.zzanh
        /* renamed from: zzp, reason: merged with bridge method [inline-methods] */
        public Character zzb(zzaom zzaomVar) throws IOException {
            if (zzaomVar.b() == zzaon.NULL) {
                zzaomVar.nextNull();
                return null;
            }
            String nextString = zzaomVar.nextString();
            if (nextString.length() == 1) {
                return Character.valueOf(nextString.charAt(0));
            }
            String valueOf = String.valueOf(nextString);
            throw new zzane(valueOf.length() != 0 ? "Expecting character, got: ".concat(valueOf) : new String("Expecting character, got: "));
        }
    };
    public static final zzani bgq = zza(Character.TYPE, Character.class, bgp);
    public static final zzanh<String> bgr = new zzanh<String>() { // from class: com.google.android.gms.internal.zzaok.5
        @Override // com.google.android.gms.internal.zzanh
        public void zza(zzaoo zzaooVar, String str) throws IOException {
            zzaooVar.zzts(str);
        }

        @Override // com.google.android.gms.internal.zzanh
        /* renamed from: zzq, reason: merged with bridge method [inline-methods] */
        public String zzb(zzaom zzaomVar) throws IOException {
            zzaon b2 = zzaomVar.b();
            if (b2 != zzaon.NULL) {
                return b2 == zzaon.BOOLEAN ? Boolean.toString(zzaomVar.nextBoolean()) : zzaomVar.nextString();
            }
            zzaomVar.nextNull();
            return null;
        }
    };
    public static final zzanh<BigDecimal> bgs = new zzanh<BigDecimal>() { // from class: com.google.android.gms.internal.zzaok.6
        @Override // com.google.android.gms.internal.zzanh
        public void zza(zzaoo zzaooVar, BigDecimal bigDecimal) throws IOException {
            zzaooVar.zza(bigDecimal);
        }

        @Override // com.google.android.gms.internal.zzanh
        /* renamed from: zzr, reason: merged with bridge method [inline-methods] */
        public BigDecimal zzb(zzaom zzaomVar) throws IOException {
            if (zzaomVar.b() == zzaon.NULL) {
                zzaomVar.nextNull();
                return null;
            }
            try {
                return new BigDecimal(zzaomVar.nextString());
            } catch (NumberFormatException e) {
                throw new zzane(e);
            }
        }
    };
    public static final zzanh<BigInteger> bgt = new zzanh<BigInteger>() { // from class: com.google.android.gms.internal.zzaok.7
        @Override // com.google.android.gms.internal.zzanh
        public void zza(zzaoo zzaooVar, BigInteger bigInteger) throws IOException {
            zzaooVar.zza(bigInteger);
        }

        @Override // com.google.android.gms.internal.zzanh
        /* renamed from: zzs, reason: merged with bridge method [inline-methods] */
        public BigInteger zzb(zzaom zzaomVar) throws IOException {
            if (zzaomVar.b() == zzaon.NULL) {
                zzaomVar.nextNull();
                return null;
            }
            try {
                return new BigInteger(zzaomVar.nextString());
            } catch (NumberFormatException e) {
                throw new zzane(e);
            }
        }
    };
    public static final zzani bgu = zza(String.class, bgr);
    public static final zzanh<StringBuilder> bgv = new zzanh<StringBuilder>() { // from class: com.google.android.gms.internal.zzaok.8
        @Override // com.google.android.gms.internal.zzanh
        public void zza(zzaoo zzaooVar, StringBuilder sb) throws IOException {
            zzaooVar.zzts(sb == null ? null : sb.toString());
        }

        @Override // com.google.android.gms.internal.zzanh
        /* renamed from: zzt, reason: merged with bridge method [inline-methods] */
        public StringBuilder zzb(zzaom zzaomVar) throws IOException {
            if (zzaomVar.b() != zzaon.NULL) {
                return new StringBuilder(zzaomVar.nextString());
            }
            zzaomVar.nextNull();
            return null;
        }
    };
    public static final zzani bgw = zza(StringBuilder.class, bgv);
    public static final zzanh<StringBuffer> bgx = new zzanh<StringBuffer>() { // from class: com.google.android.gms.internal.zzaok.9
        @Override // com.google.android.gms.internal.zzanh
        public void zza(zzaoo zzaooVar, StringBuffer stringBuffer) throws IOException {
            zzaooVar.zzts(stringBuffer == null ? null : stringBuffer.toString());
        }

        @Override // com.google.android.gms.internal.zzanh
        /* renamed from: zzu, reason: merged with bridge method [inline-methods] */
        public StringBuffer zzb(zzaom zzaomVar) throws IOException {
            if (zzaomVar.b() != zzaon.NULL) {
                return new StringBuffer(zzaomVar.nextString());
            }
            zzaomVar.nextNull();
            return null;
        }
    };
    public static final zzani bgy = zza(StringBuffer.class, bgx);
    public static final zzanh<URL> bgz = new zzanh<URL>() { // from class: com.google.android.gms.internal.zzaok.10
        @Override // com.google.android.gms.internal.zzanh
        public void zza(zzaoo zzaooVar, URL url) throws IOException {
            zzaooVar.zzts(url == null ? null : url.toExternalForm());
        }

        @Override // com.google.android.gms.internal.zzanh
        /* renamed from: zzv, reason: merged with bridge method [inline-methods] */
        public URL zzb(zzaom zzaomVar) throws IOException {
            if (zzaomVar.b() == zzaon.NULL) {
                zzaomVar.nextNull();
                return null;
            }
            String nextString = zzaomVar.nextString();
            if ("null".equals(nextString)) {
                return null;
            }
            return new URL(nextString);
        }
    };
    public static final zzani bgA = zza(URL.class, bgz);
    public static final zzanh<URI> bgB = new zzanh<URI>() { // from class: com.google.android.gms.internal.zzaok.11
        @Override // com.google.android.gms.internal.zzanh
        public void zza(zzaoo zzaooVar, URI uri) throws IOException {
            zzaooVar.zzts(uri == null ? null : uri.toASCIIString());
        }

        @Override // com.google.android.gms.internal.zzanh
        /* renamed from: zzw, reason: merged with bridge method [inline-methods] */
        public URI zzb(zzaom zzaomVar) throws IOException {
            if (zzaomVar.b() == zzaon.NULL) {
                zzaomVar.nextNull();
                return null;
            }
            try {
                String nextString = zzaomVar.nextString();
                if ("null".equals(nextString)) {
                    return null;
                }
                return new URI(nextString);
            } catch (URISyntaxException e) {
                throw new zzamw(e);
            }
        }
    };
    public static final zzani bgC = zza(URI.class, bgB);
    public static final zzanh<InetAddress> bgD = new zzanh<InetAddress>() { // from class: com.google.android.gms.internal.zzaok.13
        @Override // com.google.android.gms.internal.zzanh
        public void zza(zzaoo zzaooVar, InetAddress inetAddress) throws IOException {
            zzaooVar.zzts(inetAddress == null ? null : inetAddress.getHostAddress());
        }

        @Override // com.google.android.gms.internal.zzanh
        /* renamed from: zzy, reason: merged with bridge method [inline-methods] */
        public InetAddress zzb(zzaom zzaomVar) throws IOException {
            if (zzaomVar.b() != zzaon.NULL) {
                return InetAddress.getByName(zzaomVar.nextString());
            }
            zzaomVar.nextNull();
            return null;
        }
    };
    public static final zzani bgE = zzb(InetAddress.class, bgD);
    public static final zzanh<UUID> bgF = new zzanh<UUID>() { // from class: com.google.android.gms.internal.zzaok.14
        @Override // com.google.android.gms.internal.zzanh
        public void zza(zzaoo zzaooVar, UUID uuid) throws IOException {
            zzaooVar.zzts(uuid == null ? null : uuid.toString());
        }

        @Override // com.google.android.gms.internal.zzanh
        /* renamed from: zzz, reason: merged with bridge method [inline-methods] */
        public UUID zzb(zzaom zzaomVar) throws IOException {
            if (zzaomVar.b() != zzaon.NULL) {
                return UUID.fromString(zzaomVar.nextString());
            }
            zzaomVar.nextNull();
            return null;
        }
    };
    public static final zzani bgG = zza(UUID.class, bgF);
    public static final zzani bgH = new zzani() { // from class: com.google.android.gms.internal.zzaok.15
        @Override // com.google.android.gms.internal.zzani
        public <T> zzanh<T> zza(zzamp zzampVar, zzaol<T> zzaolVar) {
            if (zzaolVar.m() != Timestamp.class) {
                return null;
            }
            final zzanh<T> zzk = zzampVar.zzk(Date.class);
            return (zzanh<T>) new zzanh<Timestamp>() { // from class: com.google.android.gms.internal.zzaok.15.1
                @Override // com.google.android.gms.internal.zzanh
                public void zza(zzaoo zzaooVar, Timestamp timestamp) throws IOException {
                    zzk.zza(zzaooVar, timestamp);
                }

                @Override // com.google.android.gms.internal.zzanh
                /* renamed from: zzaa, reason: merged with bridge method [inline-methods] */
                public Timestamp zzb(zzaom zzaomVar) throws IOException {
                    Date date = (Date) zzk.zzb(zzaomVar);
                    if (date != null) {
                        return new Timestamp(date.getTime());
                    }
                    return null;
                }
            };
        }
    };
    public static final zzanh<Calendar> bgI = new zzanh<Calendar>() { // from class: com.google.android.gms.internal.zzaok.16
        @Override // com.google.android.gms.internal.zzanh
        public void zza(zzaoo zzaooVar, Calendar calendar) throws IOException {
            if (calendar == null) {
                zzaooVar.l();
                return;
            }
            zzaooVar.j();
            zzaooVar.zztr("year");
            zzaooVar.zzcr(calendar.get(1));
            zzaooVar.zztr("month");
            zzaooVar.zzcr(calendar.get(2));
            zzaooVar.zztr("dayOfMonth");
            zzaooVar.zzcr(calendar.get(5));
            zzaooVar.zztr("hourOfDay");
            zzaooVar.zzcr(calendar.get(11));
            zzaooVar.zztr("minute");
            zzaooVar.zzcr(calendar.get(12));
            zzaooVar.zztr("second");
            zzaooVar.zzcr(calendar.get(13));
            zzaooVar.k();
        }

        @Override // com.google.android.gms.internal.zzanh
        /* renamed from: zzab, reason: merged with bridge method [inline-methods] */
        public Calendar zzb(zzaom zzaomVar) throws IOException {
            int i = 0;
            if (zzaomVar.b() == zzaon.NULL) {
                zzaomVar.nextNull();
                return null;
            }
            zzaomVar.beginObject();
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            while (zzaomVar.b() != zzaon.END_OBJECT) {
                String nextName = zzaomVar.nextName();
                int nextInt = zzaomVar.nextInt();
                if ("year".equals(nextName)) {
                    i6 = nextInt;
                } else if ("month".equals(nextName)) {
                    i5 = nextInt;
                } else if ("dayOfMonth".equals(nextName)) {
                    i4 = nextInt;
                } else if ("hourOfDay".equals(nextName)) {
                    i3 = nextInt;
                } else if ("minute".equals(nextName)) {
                    i2 = nextInt;
                } else if ("second".equals(nextName)) {
                    i = nextInt;
                }
            }
            zzaomVar.endObject();
            return new GregorianCalendar(i6, i5, i4, i3, i2, i);
        }
    };
    public static final zzani bgJ = zzb(Calendar.class, GregorianCalendar.class, bgI);
    public static final zzanh<Locale> bgK = new zzanh<Locale>() { // from class: com.google.android.gms.internal.zzaok.17
        @Override // com.google.android.gms.internal.zzanh
        public void zza(zzaoo zzaooVar, Locale locale) throws IOException {
            zzaooVar.zzts(locale == null ? null : locale.toString());
        }

        @Override // com.google.android.gms.internal.zzanh
        /* renamed from: zzac, reason: merged with bridge method [inline-methods] */
        public Locale zzb(zzaom zzaomVar) throws IOException {
            if (zzaomVar.b() == zzaon.NULL) {
                zzaomVar.nextNull();
                return null;
            }
            StringTokenizer stringTokenizer = new StringTokenizer(zzaomVar.nextString(), "_");
            String nextToken = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            String nextToken2 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            String nextToken3 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            return (nextToken2 == null && nextToken3 == null) ? new Locale(nextToken) : nextToken3 == null ? new Locale(nextToken, nextToken2) : new Locale(nextToken, nextToken2, nextToken3);
        }
    };
    public static final zzani bgL = zza(Locale.class, bgK);
    public static final zzanh<zzamv> bgM = new zzanh<zzamv>() { // from class: com.google.android.gms.internal.zzaok.18
        @Override // com.google.android.gms.internal.zzanh
        public void zza(zzaoo zzaooVar, zzamv zzamvVar) throws IOException {
            if (zzamvVar == null || zzamvVar.zzczj()) {
                zzaooVar.l();
                return;
            }
            if (zzamvVar.zzczi()) {
                zzanb zzczm = zzamvVar.zzczm();
                if (zzczm.zzczp()) {
                    zzaooVar.zza(zzczm.zzcze());
                    return;
                } else if (zzczm.zzczo()) {
                    zzaooVar.zzda(zzczm.getAsBoolean());
                    return;
                } else {
                    zzaooVar.zzts(zzczm.zzczf());
                    return;
                }
            }
            if (zzamvVar.zzczg()) {
                zzaooVar.h();
                Iterator<zzamv> it = zzamvVar.zzczl().iterator();
                while (it.hasNext()) {
                    zza(zzaooVar, it.next());
                }
                zzaooVar.i();
                return;
            }
            if (!zzamvVar.zzczh()) {
                String valueOf = String.valueOf(zzamvVar.getClass());
                throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 15).append("Couldn't write ").append(valueOf).toString());
            }
            zzaooVar.j();
            for (Map.Entry<String, zzamv> entry : zzamvVar.zzczk().entrySet()) {
                zzaooVar.zztr(entry.getKey());
                zza(zzaooVar, entry.getValue());
            }
            zzaooVar.k();
        }

        @Override // com.google.android.gms.internal.zzanh
        /* renamed from: zzad, reason: merged with bridge method [inline-methods] */
        public zzamv zzb(zzaom zzaomVar) throws IOException {
            switch (AnonymousClass26.bfK[zzaomVar.b().ordinal()]) {
                case 1:
                    return new zzanb(new zzans(zzaomVar.nextString()));
                case 2:
                    return new zzanb(Boolean.valueOf(zzaomVar.nextBoolean()));
                case 3:
                    return new zzanb(zzaomVar.nextString());
                case 4:
                    zzaomVar.nextNull();
                    return zzamx.bei;
                case 5:
                    zzams zzamsVar = new zzams();
                    zzaomVar.beginArray();
                    while (zzaomVar.hasNext()) {
                        zzamsVar.zzc((zzamv) zzb(zzaomVar));
                    }
                    zzaomVar.endArray();
                    return zzamsVar;
                case 6:
                    zzamy zzamyVar = new zzamy();
                    zzaomVar.beginObject();
                    while (zzaomVar.hasNext()) {
                        zzamyVar.zza(zzaomVar.nextName(), (zzamv) zzb(zzaomVar));
                    }
                    zzaomVar.endObject();
                    return zzamyVar;
                default:
                    throw new IllegalArgumentException();
            }
        }
    };
    public static final zzani bgN = zzb(zzamv.class, bgM);
    public static final zzani bgO = new zzani() { // from class: com.google.android.gms.internal.zzaok.19
        @Override // com.google.android.gms.internal.zzani
        public <T> zzanh<T> zza(zzamp zzampVar, zzaol<T> zzaolVar) {
            Class<? super T> m = zzaolVar.m();
            if (!Enum.class.isAssignableFrom(m) || m == Enum.class) {
                return null;
            }
            if (!m.isEnum()) {
                m = m.getSuperclass();
            }
            return new zza(m);
        }
    };

    private static final class zza<T extends Enum<T>> extends zzanh<T> {
        private final Map<String, T> bgY = new HashMap();
        private final Map<T, String> bgZ = new HashMap();

        public zza(Class<T> cls) {
            try {
                for (T t : cls.getEnumConstants()) {
                    String name = t.name();
                    zzank zzankVar = (zzank) cls.getField(name).getAnnotation(zzank.class);
                    if (zzankVar != null) {
                        name = zzankVar.value();
                        String[] zzczs = zzankVar.zzczs();
                        for (String str : zzczs) {
                            this.bgY.put(str, t);
                        }
                    }
                    String str2 = name;
                    this.bgY.put(str2, t);
                    this.bgZ.put(t, str2);
                }
            } catch (NoSuchFieldException e) {
                throw new AssertionError();
            }
        }

        @Override // com.google.android.gms.internal.zzanh
        public void zza(zzaoo zzaooVar, T t) throws IOException {
            zzaooVar.zzts(t == null ? null : this.bgZ.get(t));
        }

        @Override // com.google.android.gms.internal.zzanh
        /* renamed from: zzaf, reason: merged with bridge method [inline-methods] */
        public T zzb(zzaom zzaomVar) throws IOException {
            if (zzaomVar.b() != zzaon.NULL) {
                return this.bgY.get(zzaomVar.nextString());
            }
            zzaomVar.nextNull();
            return null;
        }
    }

    public static <TT> zzani zza(final zzaol<TT> zzaolVar, final zzanh<TT> zzanhVar) {
        return new zzani() { // from class: com.google.android.gms.internal.zzaok.20
            @Override // com.google.android.gms.internal.zzani
            public <T> zzanh<T> zza(zzamp zzampVar, zzaol<T> zzaolVar2) {
                if (zzaolVar2.equals(zzaol.this)) {
                    return zzanhVar;
                }
                return null;
            }
        };
    }

    public static <TT> zzani zza(final Class<TT> cls, final zzanh<TT> zzanhVar) {
        return new zzani() { // from class: com.google.android.gms.internal.zzaok.21
            public String toString() {
                String valueOf = String.valueOf(cls.getName());
                String valueOf2 = String.valueOf(zzanhVar);
                return new StringBuilder(String.valueOf(valueOf).length() + 23 + String.valueOf(valueOf2).length()).append("Factory[type=").append(valueOf).append(",adapter=").append(valueOf2).append("]").toString();
            }

            @Override // com.google.android.gms.internal.zzani
            public <T> zzanh<T> zza(zzamp zzampVar, zzaol<T> zzaolVar) {
                if (zzaolVar.m() == cls) {
                    return zzanhVar;
                }
                return null;
            }
        };
    }

    public static <TT> zzani zza(final Class<TT> cls, final Class<TT> cls2, final zzanh<? super TT> zzanhVar) {
        return new zzani() { // from class: com.google.android.gms.internal.zzaok.22
            public String toString() {
                String valueOf = String.valueOf(cls2.getName());
                String valueOf2 = String.valueOf(cls.getName());
                String valueOf3 = String.valueOf(zzanhVar);
                return new StringBuilder(String.valueOf(valueOf).length() + 24 + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length()).append("Factory[type=").append(valueOf).append("+").append(valueOf2).append(",adapter=").append(valueOf3).append("]").toString();
            }

            @Override // com.google.android.gms.internal.zzani
            public <T> zzanh<T> zza(zzamp zzampVar, zzaol<T> zzaolVar) {
                Class<? super T> m = zzaolVar.m();
                if (m == cls || m == cls2) {
                    return zzanhVar;
                }
                return null;
            }
        };
    }

    public static <TT> zzani zzb(final Class<TT> cls, final zzanh<TT> zzanhVar) {
        return new zzani() { // from class: com.google.android.gms.internal.zzaok.25
            public String toString() {
                String valueOf = String.valueOf(cls.getName());
                String valueOf2 = String.valueOf(zzanhVar);
                return new StringBuilder(String.valueOf(valueOf).length() + 32 + String.valueOf(valueOf2).length()).append("Factory[typeHierarchy=").append(valueOf).append(",adapter=").append(valueOf2).append("]").toString();
            }

            @Override // com.google.android.gms.internal.zzani
            public <T> zzanh<T> zza(zzamp zzampVar, zzaol<T> zzaolVar) {
                if (cls.isAssignableFrom(zzaolVar.m())) {
                    return zzanhVar;
                }
                return null;
            }
        };
    }

    public static <TT> zzani zzb(final Class<TT> cls, final Class<? extends TT> cls2, final zzanh<? super TT> zzanhVar) {
        return new zzani() { // from class: com.google.android.gms.internal.zzaok.24
            public String toString() {
                String valueOf = String.valueOf(cls.getName());
                String valueOf2 = String.valueOf(cls2.getName());
                String valueOf3 = String.valueOf(zzanhVar);
                return new StringBuilder(String.valueOf(valueOf).length() + 24 + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length()).append("Factory[type=").append(valueOf).append("+").append(valueOf2).append(",adapter=").append(valueOf3).append("]").toString();
            }

            @Override // com.google.android.gms.internal.zzani
            public <T> zzanh<T> zza(zzamp zzampVar, zzaol<T> zzaolVar) {
                Class<? super T> m = zzaolVar.m();
                if (m == cls || m == cls2) {
                    return zzanhVar;
                }
                return null;
            }
        };
    }
}
