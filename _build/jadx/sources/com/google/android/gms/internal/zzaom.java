package com.google.android.gms.internal;

import android.support.v4.view.MotionEventCompat;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import org.apache.commons.io.FilenameUtils;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzaom implements Closeable {
    private static final char[] bhc = ")]}'\n".toCharArray();
    private long bhi;
    private int bhj;
    private String bhk;
    private int bhm;
    private String[] bhn;
    private int[] bho;
    private final Reader in;
    private boolean bhd = false;
    private final char[] bhe = new char[1024];
    private int pos = 0;
    private int limit = 0;
    private int bhf = 0;
    private int bhg = 0;
    private int bhh = 0;
    private int[] bhl = new int[32];

    static {
        zzanr.beV = new zzanr() { // from class: com.google.android.gms.internal.zzaom.1
            @Override // com.google.android.gms.internal.zzanr
            public void zzi(zzaom zzaomVar) throws IOException {
                if (zzaomVar instanceof zzaoc) {
                    ((zzaoc) zzaomVar).e();
                    return;
                }
                int i = zzaomVar.bhh;
                if (i == 0) {
                    i = zzaomVar.o();
                }
                if (i == 13) {
                    zzaomVar.bhh = 9;
                    return;
                }
                if (i == 12) {
                    zzaomVar.bhh = 8;
                    return;
                }
                if (i == 14) {
                    zzaomVar.bhh = 10;
                    return;
                }
                String valueOf = String.valueOf(zzaomVar.b());
                int lineNumber = zzaomVar.getLineNumber();
                int columnNumber = zzaomVar.getColumnNumber();
                String path = zzaomVar.getPath();
                throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 70 + String.valueOf(path).length()).append("Expected a name but was ").append(valueOf).append(" ").append(" at line ").append(lineNumber).append(" column ").append(columnNumber).append(" path ").append(path).toString());
            }
        };
    }

    public zzaom(Reader reader) {
        this.bhm = 0;
        int[] iArr = this.bhl;
        int i = this.bhm;
        this.bhm = i + 1;
        iArr[i] = 6;
        this.bhn = new String[32];
        this.bho = new int[32];
        if (reader == null) {
            throw new NullPointerException("in == null");
        }
        this.in = reader;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getColumnNumber() {
        return (this.pos - this.bhg) + 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getLineNumber() {
        return this.bhf + 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int o() throws IOException {
        int i = this.bhl[this.bhm - 1];
        if (i == 1) {
            this.bhl[this.bhm - 1] = 2;
        } else if (i == 2) {
            switch (zzdb(true)) {
                case MotionEventCompat.AXIS_GENERIC_13 /* 44 */:
                    break;
                case 59:
                    t();
                    break;
                case 93:
                    this.bhh = 4;
                    return 4;
                default:
                    throw zztu("Unterminated array");
            }
        } else {
            if (i == 3 || i == 5) {
                this.bhl[this.bhm - 1] = 4;
                if (i == 5) {
                    switch (zzdb(true)) {
                        case MotionEventCompat.AXIS_GENERIC_13 /* 44 */:
                            break;
                        case 59:
                            t();
                            break;
                        case 125:
                            this.bhh = 2;
                            return 2;
                        default:
                            throw zztu("Unterminated object");
                    }
                }
                int zzdb = zzdb(true);
                switch (zzdb) {
                    case MotionEventCompat.AXIS_GENERIC_3 /* 34 */:
                        this.bhh = 13;
                        return 13;
                    case MotionEventCompat.AXIS_GENERIC_8 /* 39 */:
                        t();
                        this.bhh = 12;
                        return 12;
                    case 125:
                        if (i == 5) {
                            throw zztu("Expected name");
                        }
                        this.bhh = 2;
                        return 2;
                    default:
                        t();
                        this.pos--;
                        if (!zze((char) zzdb)) {
                            throw zztu("Expected name");
                        }
                        this.bhh = 14;
                        return 14;
                }
            }
            if (i == 4) {
                this.bhl[this.bhm - 1] = 5;
                switch (zzdb(true)) {
                    case 58:
                        break;
                    case 59:
                    case 60:
                    default:
                        throw zztu("Expected ':'");
                    case 61:
                        t();
                        if ((this.pos < this.limit || zzafm(1)) && this.bhe[this.pos] == '>') {
                            this.pos++;
                            break;
                        }
                        break;
                }
            } else if (i == 6) {
                if (this.bhd) {
                    w();
                }
                this.bhl[this.bhm - 1] = 7;
            } else if (i == 7) {
                if (zzdb(false) == -1) {
                    this.bhh = 17;
                    return 17;
                }
                t();
                this.pos--;
            } else if (i == 8) {
                throw new IllegalStateException("JsonReader is closed");
            }
        }
        switch (zzdb(true)) {
            case MotionEventCompat.AXIS_GENERIC_3 /* 34 */:
                if (this.bhm == 1) {
                    t();
                }
                this.bhh = 9;
                return 9;
            case MotionEventCompat.AXIS_GENERIC_8 /* 39 */:
                t();
                this.bhh = 8;
                return 8;
            case MotionEventCompat.AXIS_GENERIC_13 /* 44 */:
            case 59:
                break;
            case 91:
                this.bhh = 3;
                return 3;
            case 93:
                if (i == 1) {
                    this.bhh = 4;
                    return 4;
                }
                break;
            case 123:
                this.bhh = 1;
                return 1;
            default:
                this.pos--;
                if (this.bhm == 1) {
                    t();
                }
                int p = p();
                if (p != 0) {
                    return p;
                }
                int q = q();
                if (q != 0) {
                    return q;
                }
                if (!zze(this.bhe[this.pos])) {
                    throw zztu("Expected value");
                }
                t();
                this.bhh = 10;
                return 10;
        }
        if (i != 1 && i != 2) {
            throw zztu("Unexpected value");
        }
        t();
        this.pos--;
        this.bhh = 7;
        return 7;
    }

    private int p() throws IOException {
        String str;
        String str2;
        int i;
        char c = this.bhe[this.pos];
        if (c == 't' || c == 'T') {
            str = "true";
            str2 = "TRUE";
            i = 5;
        } else if (c == 'f' || c == 'F') {
            str = "false";
            str2 = "FALSE";
            i = 6;
        } else {
            if (c != 'n' && c != 'N') {
                return 0;
            }
            str = "null";
            str2 = "NULL";
            i = 7;
        }
        int length = str.length();
        for (int i2 = 1; i2 < length; i2++) {
            if (this.pos + i2 >= this.limit && !zzafm(i2 + 1)) {
                return 0;
            }
            char c2 = this.bhe[this.pos + i2];
            if (c2 != str.charAt(i2) && c2 != str2.charAt(i2)) {
                return 0;
            }
        }
        if ((this.pos + length < this.limit || zzafm(length + 1)) && zze(this.bhe[this.pos + length])) {
            return 0;
        }
        this.pos += length;
        this.bhh = i;
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0021, code lost:
    
        if (r3 != 2) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0023, code lost:
    
        if (r4 == false) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0029, code lost:
    
        if (r6 != Long.MIN_VALUE) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x002b, code lost:
    
        if (r5 == false) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002d, code lost:
    
        if (r5 == false) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002f, code lost:
    
        r15.bhi = r6;
        r15.pos += r10;
        r15.bhh = 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:?, code lost:
    
        return 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00dc, code lost:
    
        r6 = -r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00e0, code lost:
    
        if (r3 == 2) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00e3, code lost:
    
        if (r3 == 4) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00e6, code lost:
    
        if (r3 != 7) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00f0, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00e8, code lost:
    
        r15.bhj = r10;
        r15.bhh = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:?, code lost:
    
        return 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0052, code lost:
    
        if (zze(r2) == false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0054, code lost:
    
        return 0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int q() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 270
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaom.q():int");
    }

    private String r() throws IOException {
        String sb;
        StringBuilder sb2 = null;
        int i = 0;
        while (true) {
            if (this.pos + i < this.limit) {
                switch (this.bhe[this.pos + i]) {
                    case '\t':
                    case '\n':
                    case '\f':
                    case '\r':
                    case ' ':
                    case MotionEventCompat.AXIS_GENERIC_13 /* 44 */:
                    case ':':
                    case '[':
                    case ']':
                    case '{':
                    case '}':
                        break;
                    case MotionEventCompat.AXIS_GENERIC_4 /* 35 */:
                    case MotionEventCompat.AXIS_GENERIC_16 /* 47 */:
                    case ';':
                    case '=':
                    case '\\':
                        t();
                        break;
                    default:
                        i++;
                        continue;
                }
            } else if (i >= this.bhe.length) {
                if (sb2 == null) {
                    sb2 = new StringBuilder();
                }
                sb2.append(this.bhe, this.pos, i);
                this.pos = i + this.pos;
                if (zzafm(1)) {
                    i = 0;
                } else {
                    i = 0;
                }
            } else if (zzafm(i + 1)) {
            }
        }
        if (sb2 == null) {
            sb = new String(this.bhe, this.pos, i);
        } else {
            sb2.append(this.bhe, this.pos, i);
            sb = sb2.toString();
        }
        this.pos = i + this.pos;
        return sb;
    }

    private void s() throws IOException {
        do {
            int i = 0;
            while (this.pos + i < this.limit) {
                switch (this.bhe[this.pos + i]) {
                    case '\t':
                    case '\n':
                    case '\f':
                    case '\r':
                    case ' ':
                    case MotionEventCompat.AXIS_GENERIC_13 /* 44 */:
                    case ':':
                    case '[':
                    case ']':
                    case '{':
                    case '}':
                        break;
                    case MotionEventCompat.AXIS_GENERIC_4 /* 35 */:
                    case MotionEventCompat.AXIS_GENERIC_16 /* 47 */:
                    case ';':
                    case '=':
                    case '\\':
                        t();
                        break;
                    default:
                        i++;
                }
                this.pos = i + this.pos;
                return;
            }
            this.pos = i + this.pos;
        } while (zzafm(1));
    }

    private void t() throws IOException {
        if (!this.bhd) {
            throw zztu("Use JsonReader.setLenient(true) to accept malformed JSON");
        }
    }

    private void u() throws IOException {
        char c;
        do {
            if (this.pos >= this.limit && !zzafm(1)) {
                return;
            }
            char[] cArr = this.bhe;
            int i = this.pos;
            this.pos = i + 1;
            c = cArr[i];
            if (c == '\n') {
                this.bhf++;
                this.bhg = this.pos;
                return;
            }
        } while (c != '\r');
    }

    private char v() throws IOException {
        int i;
        if (this.pos == this.limit && !zzafm(1)) {
            throw zztu("Unterminated escape sequence");
        }
        char[] cArr = this.bhe;
        int i2 = this.pos;
        this.pos = i2 + 1;
        char c = cArr[i2];
        switch (c) {
            case '\n':
                this.bhf++;
                this.bhg = this.pos;
                return c;
            case 'b':
                return '\b';
            case 'f':
                return '\f';
            case 'n':
                return '\n';
            case 'r':
                return '\r';
            case 't':
                return '\t';
            case 'u':
                if (this.pos + 4 > this.limit && !zzafm(4)) {
                    throw zztu("Unterminated escape sequence");
                }
                int i3 = this.pos;
                int i4 = i3 + 4;
                char c2 = 0;
                for (int i5 = i3; i5 < i4; i5++) {
                    char c3 = this.bhe[i5];
                    char c4 = (char) (c2 << 4);
                    if (c3 >= '0' && c3 <= '9') {
                        i = c3 - '0';
                    } else if (c3 >= 'a' && c3 <= 'f') {
                        i = (c3 - 'a') + 10;
                    } else {
                        if (c3 < 'A' || c3 > 'F') {
                            String valueOf = String.valueOf(new String(this.bhe, this.pos, 4));
                            throw new NumberFormatException(valueOf.length() != 0 ? "\\u".concat(valueOf) : new String("\\u"));
                        }
                        i = (c3 - 'A') + 10;
                    }
                    c2 = (char) (c4 + i);
                }
                this.pos += 4;
                return c2;
            default:
                return c;
        }
    }

    private void w() throws IOException {
        zzdb(true);
        this.pos--;
        if (this.pos + bhc.length <= this.limit || zzafm(bhc.length)) {
            for (int i = 0; i < bhc.length; i++) {
                if (this.bhe[this.pos + i] != bhc[i]) {
                    return;
                }
            }
            this.pos += bhc.length;
        }
    }

    private void zzafl(int i) {
        if (this.bhm == this.bhl.length) {
            int[] iArr = new int[this.bhm * 2];
            int[] iArr2 = new int[this.bhm * 2];
            String[] strArr = new String[this.bhm * 2];
            System.arraycopy(this.bhl, 0, iArr, 0, this.bhm);
            System.arraycopy(this.bho, 0, iArr2, 0, this.bhm);
            System.arraycopy(this.bhn, 0, strArr, 0, this.bhm);
            this.bhl = iArr;
            this.bho = iArr2;
            this.bhn = strArr;
        }
        int[] iArr3 = this.bhl;
        int i2 = this.bhm;
        this.bhm = i2 + 1;
        iArr3[i2] = i;
    }

    private boolean zzafm(int i) throws IOException {
        char[] cArr = this.bhe;
        this.bhg -= this.pos;
        if (this.limit != this.pos) {
            this.limit -= this.pos;
            System.arraycopy(cArr, this.pos, cArr, 0, this.limit);
        } else {
            this.limit = 0;
        }
        this.pos = 0;
        do {
            int read = this.in.read(cArr, this.limit, cArr.length - this.limit);
            if (read == -1) {
                return false;
            }
            this.limit = read + this.limit;
            if (this.bhf == 0 && this.bhg == 0 && this.limit > 0 && cArr[0] == 65279) {
                this.pos++;
                this.bhg++;
                i++;
            }
        } while (this.limit < i);
        return true;
    }

    private int zzdb(boolean z) throws IOException {
        char[] cArr = this.bhe;
        int i = this.pos;
        int i2 = this.limit;
        while (true) {
            if (i == i2) {
                this.pos = i;
                if (!zzafm(1)) {
                    if (!z) {
                        return -1;
                    }
                    String valueOf = String.valueOf("End of input at line ");
                    throw new EOFException(new StringBuilder(String.valueOf(valueOf).length() + 30).append(valueOf).append(getLineNumber()).append(" column ").append(getColumnNumber()).toString());
                }
                i = this.pos;
                i2 = this.limit;
            }
            int i3 = i + 1;
            char c = cArr[i];
            if (c == '\n') {
                this.bhf++;
                this.bhg = i3;
                i = i3;
            } else if (c == ' ' || c == '\r') {
                i = i3;
            } else if (c == '\t') {
                i = i3;
            } else if (c == '/') {
                this.pos = i3;
                if (i3 == i2) {
                    this.pos--;
                    boolean zzafm = zzafm(2);
                    this.pos++;
                    if (!zzafm) {
                        return c;
                    }
                }
                t();
                switch (cArr[this.pos]) {
                    case MotionEventCompat.AXIS_GENERIC_11 /* 42 */:
                        this.pos++;
                        if (!zztt("*/")) {
                            throw zztu("Unterminated comment");
                        }
                        i = this.pos + 2;
                        i2 = this.limit;
                        break;
                    case MotionEventCompat.AXIS_GENERIC_16 /* 47 */:
                        this.pos++;
                        u();
                        i = this.pos;
                        i2 = this.limit;
                        break;
                    default:
                        return c;
                }
            } else {
                if (c != '#') {
                    this.pos = i3;
                    return c;
                }
                this.pos = i3;
                t();
                u();
                i = this.pos;
                i2 = this.limit;
            }
        }
    }

    private boolean zze(char c) throws IOException {
        switch (c) {
            case MotionEventCompat.AXIS_GENERIC_4 /* 35 */:
            case MotionEventCompat.AXIS_GENERIC_16 /* 47 */:
            case ';':
            case '=':
            case '\\':
                t();
            case '\t':
            case '\n':
            case '\f':
            case '\r':
            case ' ':
            case MotionEventCompat.AXIS_GENERIC_13 /* 44 */:
            case ':':
            case '[':
            case ']':
            case '{':
            case '}':
                return false;
            default:
                return true;
        }
    }

    private String zzf(char c) throws IOException {
        char[] cArr = this.bhe;
        StringBuilder sb = new StringBuilder();
        do {
            int i = this.pos;
            int i2 = this.limit;
            int i3 = i;
            while (i3 < i2) {
                int i4 = i3 + 1;
                char c2 = cArr[i3];
                if (c2 == c) {
                    this.pos = i4;
                    sb.append(cArr, i, (i4 - i) - 1);
                    return sb.toString();
                }
                if (c2 == '\\') {
                    this.pos = i4;
                    sb.append(cArr, i, (i4 - i) - 1);
                    sb.append(v());
                    i = this.pos;
                    i2 = this.limit;
                    i4 = i;
                } else if (c2 == '\n') {
                    this.bhf++;
                    this.bhg = i4;
                }
                i3 = i4;
            }
            sb.append(cArr, i, i3 - i);
            this.pos = i3;
        } while (zzafm(1));
        throw zztu("Unterminated string");
    }

    private void zzg(char c) throws IOException {
        char[] cArr = this.bhe;
        do {
            int i = this.pos;
            int i2 = this.limit;
            int i3 = i;
            while (i3 < i2) {
                int i4 = i3 + 1;
                char c2 = cArr[i3];
                if (c2 == c) {
                    this.pos = i4;
                    return;
                }
                if (c2 == '\\') {
                    this.pos = i4;
                    v();
                    i4 = this.pos;
                    i2 = this.limit;
                } else if (c2 == '\n') {
                    this.bhf++;
                    this.bhg = i4;
                }
                i3 = i4;
            }
            this.pos = i3;
        } while (zzafm(1));
        throw zztu("Unterminated string");
    }

    private boolean zztt(String str) throws IOException {
        int i;
        while (true) {
            if (this.pos + str.length() > this.limit && !zzafm(str.length())) {
                return false;
            }
            if (this.bhe[this.pos] != '\n') {
                for (0; i < str.length(); i + 1) {
                    i = this.bhe[this.pos + i] == str.charAt(i) ? i + 1 : 0;
                }
                return true;
            }
            this.bhf++;
            this.bhg = this.pos + 1;
            this.pos++;
        }
    }

    private IOException zztu(String str) throws IOException {
        int lineNumber = getLineNumber();
        int columnNumber = getColumnNumber();
        String path = getPath();
        throw new zzaop(new StringBuilder(String.valueOf(str).length() + 45 + String.valueOf(path).length()).append(str).append(" at line ").append(lineNumber).append(" column ").append(columnNumber).append(" path ").append(path).toString());
    }

    public zzaon b() throws IOException {
        int i = this.bhh;
        if (i == 0) {
            i = o();
        }
        switch (i) {
            case 1:
                return zzaon.BEGIN_OBJECT;
            case 2:
                return zzaon.END_OBJECT;
            case 3:
                return zzaon.BEGIN_ARRAY;
            case 4:
                return zzaon.END_ARRAY;
            case 5:
            case 6:
                return zzaon.BOOLEAN;
            case 7:
                return zzaon.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return zzaon.STRING;
            case 12:
            case 13:
            case 14:
                return zzaon.NAME;
            case 15:
            case 16:
                return zzaon.NUMBER;
            case 17:
                return zzaon.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    public void beginArray() throws IOException {
        int i = this.bhh;
        if (i == 0) {
            i = o();
        }
        if (i == 3) {
            zzafl(1);
            this.bho[this.bhm - 1] = 0;
            this.bhh = 0;
        } else {
            String valueOf = String.valueOf(b());
            int lineNumber = getLineNumber();
            int columnNumber = getColumnNumber();
            String path = getPath();
            throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 74 + String.valueOf(path).length()).append("Expected BEGIN_ARRAY but was ").append(valueOf).append(" at line ").append(lineNumber).append(" column ").append(columnNumber).append(" path ").append(path).toString());
        }
    }

    public void beginObject() throws IOException {
        int i = this.bhh;
        if (i == 0) {
            i = o();
        }
        if (i == 1) {
            zzafl(3);
            this.bhh = 0;
        } else {
            String valueOf = String.valueOf(b());
            int lineNumber = getLineNumber();
            int columnNumber = getColumnNumber();
            String path = getPath();
            throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 75 + String.valueOf(path).length()).append("Expected BEGIN_OBJECT but was ").append(valueOf).append(" at line ").append(lineNumber).append(" column ").append(columnNumber).append(" path ").append(path).toString());
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.bhh = 0;
        this.bhl[0] = 8;
        this.bhm = 1;
        this.in.close();
    }

    public void endArray() throws IOException {
        int i = this.bhh;
        if (i == 0) {
            i = o();
        }
        if (i != 4) {
            String valueOf = String.valueOf(b());
            int lineNumber = getLineNumber();
            int columnNumber = getColumnNumber();
            String path = getPath();
            throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 72 + String.valueOf(path).length()).append("Expected END_ARRAY but was ").append(valueOf).append(" at line ").append(lineNumber).append(" column ").append(columnNumber).append(" path ").append(path).toString());
        }
        this.bhm--;
        int[] iArr = this.bho;
        int i2 = this.bhm - 1;
        iArr[i2] = iArr[i2] + 1;
        this.bhh = 0;
    }

    public void endObject() throws IOException {
        int i = this.bhh;
        if (i == 0) {
            i = o();
        }
        if (i != 2) {
            String valueOf = String.valueOf(b());
            int lineNumber = getLineNumber();
            int columnNumber = getColumnNumber();
            String path = getPath();
            throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 73 + String.valueOf(path).length()).append("Expected END_OBJECT but was ").append(valueOf).append(" at line ").append(lineNumber).append(" column ").append(columnNumber).append(" path ").append(path).toString());
        }
        this.bhm--;
        this.bhn[this.bhm] = null;
        int[] iArr = this.bho;
        int i2 = this.bhm - 1;
        iArr[i2] = iArr[i2] + 1;
        this.bhh = 0;
    }

    public String getPath() {
        StringBuilder append = new StringBuilder().append('$');
        int i = this.bhm;
        for (int i2 = 0; i2 < i; i2++) {
            switch (this.bhl[i2]) {
                case 1:
                case 2:
                    append.append('[').append(this.bho[i2]).append(']');
                    break;
                case 3:
                case 4:
                case 5:
                    append.append(FilenameUtils.EXTENSION_SEPARATOR);
                    if (this.bhn[i2] != null) {
                        append.append(this.bhn[i2]);
                        break;
                    } else {
                        break;
                    }
            }
        }
        return append.toString();
    }

    public boolean hasNext() throws IOException {
        int i = this.bhh;
        if (i == 0) {
            i = o();
        }
        return (i == 2 || i == 4) ? false : true;
    }

    public final boolean isLenient() {
        return this.bhd;
    }

    public boolean nextBoolean() throws IOException {
        int i = this.bhh;
        if (i == 0) {
            i = o();
        }
        if (i == 5) {
            this.bhh = 0;
            int[] iArr = this.bho;
            int i2 = this.bhm - 1;
            iArr[i2] = iArr[i2] + 1;
            return true;
        }
        if (i == 6) {
            this.bhh = 0;
            int[] iArr2 = this.bho;
            int i3 = this.bhm - 1;
            iArr2[i3] = iArr2[i3] + 1;
            return false;
        }
        String valueOf = String.valueOf(b());
        int lineNumber = getLineNumber();
        int columnNumber = getColumnNumber();
        String path = getPath();
        throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 72 + String.valueOf(path).length()).append("Expected a boolean but was ").append(valueOf).append(" at line ").append(lineNumber).append(" column ").append(columnNumber).append(" path ").append(path).toString());
    }

    public double nextDouble() throws IOException {
        int i = this.bhh;
        if (i == 0) {
            i = o();
        }
        if (i == 15) {
            this.bhh = 0;
            int[] iArr = this.bho;
            int i2 = this.bhm - 1;
            iArr[i2] = iArr[i2] + 1;
            return this.bhi;
        }
        if (i == 16) {
            this.bhk = new String(this.bhe, this.pos, this.bhj);
            this.pos += this.bhj;
        } else if (i == 8 || i == 9) {
            this.bhk = zzf(i == 8 ? '\'' : '\"');
        } else if (i == 10) {
            this.bhk = r();
        } else if (i != 11) {
            String valueOf = String.valueOf(b());
            int lineNumber = getLineNumber();
            int columnNumber = getColumnNumber();
            String path = getPath();
            throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 71 + String.valueOf(path).length()).append("Expected a double but was ").append(valueOf).append(" at line ").append(lineNumber).append(" column ").append(columnNumber).append(" path ").append(path).toString());
        }
        this.bhh = 11;
        double parseDouble = Double.parseDouble(this.bhk);
        if (!this.bhd && (Double.isNaN(parseDouble) || Double.isInfinite(parseDouble))) {
            int lineNumber2 = getLineNumber();
            int columnNumber2 = getColumnNumber();
            String path2 = getPath();
            throw new zzaop(new StringBuilder(String.valueOf(path2).length() + 102).append("JSON forbids NaN and infinities: ").append(parseDouble).append(" at line ").append(lineNumber2).append(" column ").append(columnNumber2).append(" path ").append(path2).toString());
        }
        this.bhk = null;
        this.bhh = 0;
        int[] iArr2 = this.bho;
        int i3 = this.bhm - 1;
        iArr2[i3] = iArr2[i3] + 1;
        return parseDouble;
    }

    public int nextInt() throws IOException {
        int i = this.bhh;
        if (i == 0) {
            i = o();
        }
        if (i == 15) {
            int i2 = (int) this.bhi;
            if (this.bhi != i2) {
                long j = this.bhi;
                int lineNumber = getLineNumber();
                int columnNumber = getColumnNumber();
                String path = getPath();
                throw new NumberFormatException(new StringBuilder(String.valueOf(path).length() + 89).append("Expected an int but was ").append(j).append(" at line ").append(lineNumber).append(" column ").append(columnNumber).append(" path ").append(path).toString());
            }
            this.bhh = 0;
            int[] iArr = this.bho;
            int i3 = this.bhm - 1;
            iArr[i3] = iArr[i3] + 1;
            return i2;
        }
        if (i == 16) {
            this.bhk = new String(this.bhe, this.pos, this.bhj);
            this.pos += this.bhj;
        } else {
            if (i != 8 && i != 9) {
                String valueOf = String.valueOf(b());
                int lineNumber2 = getLineNumber();
                int columnNumber2 = getColumnNumber();
                String path2 = getPath();
                throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 69 + String.valueOf(path2).length()).append("Expected an int but was ").append(valueOf).append(" at line ").append(lineNumber2).append(" column ").append(columnNumber2).append(" path ").append(path2).toString());
            }
            this.bhk = zzf(i == 8 ? '\'' : '\"');
            try {
                int parseInt = Integer.parseInt(this.bhk);
                this.bhh = 0;
                int[] iArr2 = this.bho;
                int i4 = this.bhm - 1;
                iArr2[i4] = iArr2[i4] + 1;
                return parseInt;
            } catch (NumberFormatException e) {
            }
        }
        this.bhh = 11;
        double parseDouble = Double.parseDouble(this.bhk);
        int i5 = (int) parseDouble;
        if (i5 != parseDouble) {
            String str = this.bhk;
            int lineNumber3 = getLineNumber();
            int columnNumber3 = getColumnNumber();
            String path3 = getPath();
            throw new NumberFormatException(new StringBuilder(String.valueOf(str).length() + 69 + String.valueOf(path3).length()).append("Expected an int but was ").append(str).append(" at line ").append(lineNumber3).append(" column ").append(columnNumber3).append(" path ").append(path3).toString());
        }
        this.bhk = null;
        this.bhh = 0;
        int[] iArr3 = this.bho;
        int i6 = this.bhm - 1;
        iArr3[i6] = iArr3[i6] + 1;
        return i5;
    }

    public long nextLong() throws IOException {
        int i = this.bhh;
        if (i == 0) {
            i = o();
        }
        if (i == 15) {
            this.bhh = 0;
            int[] iArr = this.bho;
            int i2 = this.bhm - 1;
            iArr[i2] = iArr[i2] + 1;
            return this.bhi;
        }
        if (i == 16) {
            this.bhk = new String(this.bhe, this.pos, this.bhj);
            this.pos += this.bhj;
        } else {
            if (i != 8 && i != 9) {
                String valueOf = String.valueOf(b());
                int lineNumber = getLineNumber();
                int columnNumber = getColumnNumber();
                String path = getPath();
                throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 69 + String.valueOf(path).length()).append("Expected a long but was ").append(valueOf).append(" at line ").append(lineNumber).append(" column ").append(columnNumber).append(" path ").append(path).toString());
            }
            this.bhk = zzf(i == 8 ? '\'' : '\"');
            try {
                long parseLong = Long.parseLong(this.bhk);
                this.bhh = 0;
                int[] iArr2 = this.bho;
                int i3 = this.bhm - 1;
                iArr2[i3] = iArr2[i3] + 1;
                return parseLong;
            } catch (NumberFormatException e) {
            }
        }
        this.bhh = 11;
        double parseDouble = Double.parseDouble(this.bhk);
        long j = (long) parseDouble;
        if (j != parseDouble) {
            String str = this.bhk;
            int lineNumber2 = getLineNumber();
            int columnNumber2 = getColumnNumber();
            String path2 = getPath();
            throw new NumberFormatException(new StringBuilder(String.valueOf(str).length() + 69 + String.valueOf(path2).length()).append("Expected a long but was ").append(str).append(" at line ").append(lineNumber2).append(" column ").append(columnNumber2).append(" path ").append(path2).toString());
        }
        this.bhk = null;
        this.bhh = 0;
        int[] iArr3 = this.bho;
        int i4 = this.bhm - 1;
        iArr3[i4] = iArr3[i4] + 1;
        return j;
    }

    public String nextName() throws IOException {
        String zzf;
        int i = this.bhh;
        if (i == 0) {
            i = o();
        }
        if (i == 14) {
            zzf = r();
        } else if (i == 12) {
            zzf = zzf('\'');
        } else {
            if (i != 13) {
                String valueOf = String.valueOf(b());
                int lineNumber = getLineNumber();
                int columnNumber = getColumnNumber();
                String path = getPath();
                throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 69 + String.valueOf(path).length()).append("Expected a name but was ").append(valueOf).append(" at line ").append(lineNumber).append(" column ").append(columnNumber).append(" path ").append(path).toString());
            }
            zzf = zzf('\"');
        }
        this.bhh = 0;
        this.bhn[this.bhm - 1] = zzf;
        return zzf;
    }

    public void nextNull() throws IOException {
        int i = this.bhh;
        if (i == 0) {
            i = o();
        }
        if (i == 7) {
            this.bhh = 0;
            int[] iArr = this.bho;
            int i2 = this.bhm - 1;
            iArr[i2] = iArr[i2] + 1;
            return;
        }
        String valueOf = String.valueOf(b());
        int lineNumber = getLineNumber();
        int columnNumber = getColumnNumber();
        String path = getPath();
        throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 67 + String.valueOf(path).length()).append("Expected null but was ").append(valueOf).append(" at line ").append(lineNumber).append(" column ").append(columnNumber).append(" path ").append(path).toString());
    }

    public String nextString() throws IOException {
        String str;
        int i = this.bhh;
        if (i == 0) {
            i = o();
        }
        if (i == 10) {
            str = r();
        } else if (i == 8) {
            str = zzf('\'');
        } else if (i == 9) {
            str = zzf('\"');
        } else if (i == 11) {
            str = this.bhk;
            this.bhk = null;
        } else if (i == 15) {
            str = Long.toString(this.bhi);
        } else {
            if (i != 16) {
                String valueOf = String.valueOf(b());
                int lineNumber = getLineNumber();
                int columnNumber = getColumnNumber();
                String path = getPath();
                throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 71 + String.valueOf(path).length()).append("Expected a string but was ").append(valueOf).append(" at line ").append(lineNumber).append(" column ").append(columnNumber).append(" path ").append(path).toString());
            }
            str = new String(this.bhe, this.pos, this.bhj);
            this.pos += this.bhj;
        }
        this.bhh = 0;
        int[] iArr = this.bho;
        int i2 = this.bhm - 1;
        iArr[i2] = iArr[i2] + 1;
        return str;
    }

    public final void setLenient(boolean z) {
        this.bhd = z;
    }

    public void skipValue() throws IOException {
        int i = 0;
        do {
            int i2 = this.bhh;
            if (i2 == 0) {
                i2 = o();
            }
            if (i2 == 3) {
                zzafl(1);
                i++;
            } else if (i2 == 1) {
                zzafl(3);
                i++;
            } else if (i2 == 4) {
                this.bhm--;
                i--;
            } else if (i2 == 2) {
                this.bhm--;
                i--;
            } else if (i2 == 14 || i2 == 10) {
                s();
            } else if (i2 == 8 || i2 == 12) {
                zzg('\'');
            } else if (i2 == 9 || i2 == 13) {
                zzg('\"');
            } else if (i2 == 16) {
                this.pos += this.bhj;
            }
            this.bhh = 0;
        } while (i != 0);
        int[] iArr = this.bho;
        int i3 = this.bhm - 1;
        iArr[i3] = iArr[i3] + 1;
        this.bhn[this.bhm - 1] = "null";
    }

    public String toString() {
        String valueOf = String.valueOf(getClass().getSimpleName());
        int lineNumber = getLineNumber();
        return new StringBuilder(String.valueOf(valueOf).length() + 39).append(valueOf).append(" at line ").append(lineNumber).append(" column ").append(getColumnNumber()).toString();
    }
}
