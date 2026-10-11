package com.cmplay.base.util.webview.encode;

import com.applovin.sdk.AppLovinTargetingData;
import java.io.ByteArrayOutputStream;
import org.apache.commons.io.IOUtils;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class Base64 {
    public static final int CRLF = 4;
    public static final int DEFAULT = 0;
    public static final int NO_CLOSE = 16;
    public static final int NO_PADDING = 1;
    public static final int NO_WRAP = 2;
    public static final int URL_SAFE = 8;
    private static char[] base64EncodeChars = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', AppLovinTargetingData.GENDER_FEMALE, 'g', 'h', 'i', 'j', 'k', 'l', AppLovinTargetingData.GENDER_MALE, 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', IOUtils.DIR_SEPARATOR_UNIX};
    private static byte[] base64DecodeChars = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1};

    static abstract class Coder {
        public int op;
        public byte[] output;

        public abstract int maxOutputSize(int i);

        public abstract boolean process(byte[] bArr, int i, int i2, boolean z);

        Coder() {
        }
    }

    public static byte[] decode(byte[] input, int flags) {
        return decode(input, 0, input.length, flags);
    }

    public static byte[] decode(byte[] input, int offset, int len, int flags) {
        Decoder decoder = new Decoder(flags, new byte[(len * 3) / 4]);
        if (!decoder.process(input, offset, len, true)) {
            throw new IllegalArgumentException("bad base-64");
        }
        if (decoder.op == decoder.output.length) {
            return decoder.output;
        }
        byte[] bArr = new byte[decoder.op];
        System.arraycopy(decoder.output, 0, bArr, 0, decoder.op);
        return bArr;
    }

    static class Decoder extends Coder {
        private static final int[] DECODE = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
        private static final int[] DECODE_WEBSAFE = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
        private static final int EQUALS = -2;
        private static final int SKIP = -1;
        private final int[] alphabet;
        private int state;
        private int value;

        public Decoder(int flags, byte[] output) {
            this.output = output;
            this.alphabet = (flags & 8) == 0 ? DECODE : DECODE_WEBSAFE;
            this.state = 0;
            this.value = 0;
        }

        @Override // com.cmplay.base.util.webview.encode.Base64.Coder
        public int maxOutputSize(int len) {
            return ((len * 3) / 4) + 10;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x005c, code lost:
        
            if (r13 != false) goto L57;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x005e, code lost:
        
            r9.state = r3;
            r9.value = r2;
            r9.op = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:?, code lost:
        
            return true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x0104, code lost:
        
            switch(r3) {
                case 0: goto L58;
                case 1: goto L59;
                case 2: goto L60;
                case 3: goto L61;
                case 4: goto L62;
                default: goto L58;
            };
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0107, code lost:
        
            r9.state = r3;
            r9.op = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:?, code lost:
        
            return true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x010e, code lost:
        
            r9.state = 6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:?, code lost:
        
            return false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x0114, code lost:
        
            r4[r0] = (byte) (r2 >> 4);
            r0 = r0 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x011d, code lost:
        
            r1 = r0 + 1;
            r4[r0] = (byte) (r2 >> 10);
            r0 = r1 + 1;
            r4[r1] = (byte) (r2 >> 2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:27:0x012c, code lost:
        
            r9.state = 6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:?, code lost:
        
            return false;
         */
        @Override // com.cmplay.base.util.webview.encode.Base64.Coder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean process(byte[] r10, int r11, int r12, boolean r13) {
            /*
                Method dump skipped, instructions count: 340
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.cmplay.base.util.webview.encode.Base64.Decoder.process(byte[], int, int, boolean):boolean");
        }
    }

    static class Encoder extends Coder {
        static final /* synthetic */ boolean $assertionsDisabled;
        private static final byte[] ENCODE;
        private static final byte[] ENCODE_WEBSAFE;
        public static final int LINE_GROUPS = 19;
        private final byte[] alphabet;
        private int count;
        public final boolean do_cr;
        public final boolean do_newline;
        public final boolean do_padding;
        private final byte[] tail;
        int tailLen;

        static {
            $assertionsDisabled = !Base64.class.desiredAssertionStatus();
            ENCODE = new byte[]{65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};
            ENCODE_WEBSAFE = new byte[]{65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};
        }

        public Encoder(int flags, byte[] output) {
            this.output = output;
            this.do_padding = (flags & 1) == 0;
            this.do_newline = (flags & 2) == 0;
            this.do_cr = (flags & 4) != 0;
            this.alphabet = (flags & 8) == 0 ? ENCODE : ENCODE_WEBSAFE;
            this.tail = new byte[2];
            this.tailLen = 0;
            this.count = this.do_newline ? 19 : -1;
        }

        @Override // com.cmplay.base.util.webview.encode.Base64.Coder
        public int maxOutputSize(int len) {
            return ((len * 8) / 5) + 10;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // com.cmplay.base.util.webview.encode.Base64.Coder
        public boolean process(byte[] input, int offset, int len, boolean finish) {
            int i;
            int i2;
            byte b2;
            int i3;
            byte b3;
            int i4;
            byte b4;
            int i5;
            int i6;
            int i7;
            int i8;
            byte[] bArr = this.alphabet;
            byte[] bArr2 = this.output;
            int i9 = 0;
            int i10 = this.count;
            int len2 = len + offset;
            int i11 = -1;
            switch (this.tailLen) {
                case 0:
                    i = offset;
                    break;
                case 1:
                    if (offset + 2 <= len2) {
                        int i12 = offset + 1;
                        i11 = ((this.tail[0] & 255) << 16) | ((input[offset] & 255) << 8) | (input[i12] & 255);
                        this.tailLen = 0;
                        i = i12 + 1;
                        break;
                    }
                    i = offset;
                    break;
                case 2:
                    if (offset + 1 <= len2) {
                        i = offset + 1;
                        i11 = ((this.tail[0] & 255) << 16) | ((this.tail[1] & 255) << 8) | (input[offset] & 255);
                        this.tailLen = 0;
                        break;
                    }
                    i = offset;
                    break;
                default:
                    i = offset;
                    break;
            }
            if (i11 != -1) {
                bArr2[0] = bArr[(i11 >> 18) & 63];
                bArr2[1] = bArr[(i11 >> 12) & 63];
                bArr2[2] = bArr[(i11 >> 6) & 63];
                i9 = 4;
                bArr2[3] = bArr[i11 & 63];
                i10--;
                if (i10 == 0) {
                    if (!this.do_cr) {
                        i8 = 4;
                    } else {
                        i8 = 5;
                        bArr2[4] = 13;
                    }
                    i9 = i8 + 1;
                    bArr2[i8] = 10;
                    i10 = 19;
                }
            }
            while (true) {
                int i13 = i10;
                int i14 = i9;
                if (i + 3 <= len2) {
                    int i15 = ((input[i] & 255) << 16) | ((input[i + 1] & 255) << 8) | (input[i + 2] & 255);
                    bArr2[i14] = bArr[(i15 >> 18) & 63];
                    bArr2[i14 + 1] = bArr[(i15 >> 12) & 63];
                    bArr2[i14 + 2] = bArr[(i15 >> 6) & 63];
                    bArr2[i14 + 3] = bArr[i15 & 63];
                    i += 3;
                    i9 = i14 + 4;
                    i10 = i13 - 1;
                    if (i10 == 0) {
                        if (this.do_cr) {
                            i7 = i9 + 1;
                            bArr2[i9] = 13;
                        } else {
                            i7 = i9;
                        }
                        i9 = i7 + 1;
                        bArr2[i7] = 10;
                        i10 = 19;
                    }
                } else {
                    if (finish) {
                        if (i - this.tailLen == len2 - 1) {
                            if (this.tailLen > 0) {
                                i6 = 1;
                                b4 = this.tail[0];
                                i5 = i;
                            } else {
                                b4 = input[i];
                                i5 = i + 1;
                                i6 = 0;
                            }
                            int i16 = (b4 & 255) << 4;
                            this.tailLen -= i6;
                            int i17 = i14 + 1;
                            bArr2[i14] = bArr[(i16 >> 6) & 63];
                            int i18 = i17 + 1;
                            bArr2[i17] = bArr[i16 & 63];
                            if (this.do_padding) {
                                int i19 = i18 + 1;
                                bArr2[i18] = 61;
                                i18 = i19 + 1;
                                bArr2[i19] = 61;
                            }
                            if (this.do_newline) {
                                if (this.do_cr) {
                                    bArr2[i18] = 13;
                                    i18++;
                                }
                                bArr2[i18] = 10;
                                i18++;
                            }
                            i = i5;
                            i14 = i18;
                        } else if (i - this.tailLen == len2 - 2) {
                            if (this.tailLen > 1) {
                                i3 = 1;
                                b2 = this.tail[0];
                            } else {
                                b2 = input[i];
                                i++;
                                i3 = 0;
                            }
                            int i20 = (b2 & 255) << 10;
                            if (this.tailLen > 0) {
                                b3 = this.tail[i3];
                                i3++;
                            } else {
                                b3 = input[i];
                                i++;
                            }
                            int i21 = ((b3 & 255) << 2) | i20;
                            this.tailLen -= i3;
                            int i22 = i14 + 1;
                            bArr2[i14] = bArr[(i21 >> 12) & 63];
                            int i23 = i22 + 1;
                            bArr2[i22] = bArr[(i21 >> 6) & 63];
                            int i24 = i23 + 1;
                            bArr2[i23] = bArr[i21 & 63];
                            if (this.do_padding) {
                                i4 = i24 + 1;
                                bArr2[i24] = 61;
                            } else {
                                i4 = i24;
                            }
                            if (this.do_newline) {
                                if (this.do_cr) {
                                    bArr2[i4] = 13;
                                    i4++;
                                }
                                bArr2[i4] = 10;
                                i4++;
                            }
                            i14 = i4;
                        } else if (this.do_newline && i14 > 0 && i13 != 19) {
                            if (this.do_cr) {
                                i2 = i14 + 1;
                                bArr2[i14] = 13;
                            } else {
                                i2 = i14;
                            }
                            i14 = i2 + 1;
                            bArr2[i2] = 10;
                        }
                        if (!$assertionsDisabled && this.tailLen != 0) {
                            throw new AssertionError();
                        }
                        if (!$assertionsDisabled && i != len2) {
                            throw new AssertionError();
                        }
                    } else if (i == len2 - 1) {
                        byte[] bArr3 = this.tail;
                        int i25 = this.tailLen;
                        this.tailLen = i25 + 1;
                        bArr3[i25] = input[i];
                    } else if (i == len2 - 2) {
                        byte[] bArr4 = this.tail;
                        int i26 = this.tailLen;
                        this.tailLen = i26 + 1;
                        bArr4[i26] = input[i];
                        byte[] bArr5 = this.tail;
                        int i27 = this.tailLen;
                        this.tailLen = i27 + 1;
                        bArr5[i27] = input[i + 1];
                    }
                    this.op = i14;
                    this.count = i13;
                    return true;
                }
            }
        }
    }

    private Base64() {
    }

    public static String encode(byte[] data) {
        int length = data.length;
        StringBuffer stringBuffer = new StringBuffer();
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            int i2 = i + 1;
            int i3 = data[i] & 255;
            if (i2 == length) {
                stringBuffer.append(base64EncodeChars[i3 >>> 2]);
                stringBuffer.append(base64EncodeChars[(i3 & 3) << 4]);
                stringBuffer.append("==");
                break;
            }
            int i4 = i2 + 1;
            int i5 = data[i2] & 255;
            if (i4 == length) {
                stringBuffer.append(base64EncodeChars[i3 >>> 2]);
                stringBuffer.append(base64EncodeChars[((i3 & 3) << 4) | ((i5 & 240) >>> 4)]);
                stringBuffer.append(base64EncodeChars[(i5 & 15) << 2]);
                stringBuffer.append("=");
                break;
            }
            i = i4 + 1;
            int i6 = data[i4] & 255;
            stringBuffer.append(base64EncodeChars[i3 >>> 2]);
            stringBuffer.append(base64EncodeChars[((i3 & 3) << 4) | ((i5 & 240) >>> 4)]);
            stringBuffer.append(base64EncodeChars[((i5 & 15) << 2) | ((i6 & 192) >>> 6)]);
            stringBuffer.append(base64EncodeChars[i6 & 63]);
        }
        return stringBuffer.toString();
    }

    public static byte[] decode(String str) {
        int i;
        byte b2;
        int i2;
        byte b3;
        int i3;
        byte b4;
        byte b5;
        byte[] bytes = str.getBytes();
        int length = bytes.length;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(length);
        int i4 = 0;
        while (i4 < length) {
            while (true) {
                i = i4 + 1;
                b2 = base64DecodeChars[bytes[i4]];
                if (i >= length || b2 != -1) {
                    break;
                }
                i4 = i;
            }
            if (b2 != -1) {
                while (true) {
                    i2 = i + 1;
                    b3 = base64DecodeChars[bytes[i]];
                    if (i2 >= length || b3 != -1) {
                        break;
                    }
                    i = i2;
                }
                if (b3 == -1) {
                    break;
                }
                byteArrayOutputStream.write((b2 << 2) | ((b3 & 48) >>> 4));
                while (true) {
                    i3 = i2 + 1;
                    byte b6 = bytes[i2];
                    if (b6 == 61) {
                        return byteArrayOutputStream.toByteArray();
                    }
                    b4 = base64DecodeChars[b6];
                    if (i3 >= length || b4 != -1) {
                        break;
                    }
                    i2 = i3;
                }
                if (b4 == -1) {
                    break;
                }
                byteArrayOutputStream.write(((b3 & 15) << 4) | ((b4 & 60) >>> 2));
                while (true) {
                    i4 = i3 + 1;
                    byte b7 = bytes[i3];
                    if (b7 == 61) {
                        return byteArrayOutputStream.toByteArray();
                    }
                    b5 = base64DecodeChars[b7];
                    if (i4 >= length || b5 != -1) {
                        break;
                    }
                    i3 = i4;
                }
                if (b5 == -1) {
                    break;
                }
                byteArrayOutputStream.write(b5 | ((b4 & 3) << 6));
            } else {
                break;
            }
        }
        return byteArrayOutputStream.toByteArray();
    }
}
