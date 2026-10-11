package org.apache.commons.io;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class HexDump {
    public static final String EOL = System.getProperty("line.separator");
    private static final char[] _hexcodes = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    private static final int[] _shifts = {28, 24, 20, 16, 12, 8, 4, 0};

    public static void dump(byte[] data, long offset, OutputStream stream, int index) throws IOException, ArrayIndexOutOfBoundsException, IllegalArgumentException {
        if (index < 0 || index >= data.length) {
            throw new ArrayIndexOutOfBoundsException("illegal index: " + index + " into array of length " + data.length);
        }
        if (stream == null) {
            throw new IllegalArgumentException("cannot write to nullstream");
        }
        long j = index + offset;
        StringBuilder sb = new StringBuilder(74);
        while (index < data.length) {
            int length = data.length - index;
            if (length > 16) {
                length = 16;
            }
            dump(sb, j).append(' ');
            for (int i = 0; i < 16; i++) {
                if (i < length) {
                    dump(sb, data[i + index]);
                } else {
                    sb.append("  ");
                }
                sb.append(' ');
            }
            for (int i2 = 0; i2 < length; i2++) {
                if (data[i2 + index] >= 32 && data[i2 + index] < Byte.MAX_VALUE) {
                    sb.append((char) data[i2 + index]);
                } else {
                    sb.append(FilenameUtils.EXTENSION_SEPARATOR);
                }
            }
            sb.append(EOL);
            stream.write(sb.toString().getBytes());
            stream.flush();
            sb.setLength(0);
            j += length;
            index += 16;
        }
    }

    private static StringBuilder dump(StringBuilder _lbuffer, long value) {
        for (int i = 0; i < 8; i++) {
            _lbuffer.append(_hexcodes[((int) (value >> _shifts[i])) & 15]);
        }
        return _lbuffer;
    }

    private static StringBuilder dump(StringBuilder _cbuffer, byte value) {
        for (int i = 0; i < 2; i++) {
            _cbuffer.append(_hexcodes[(value >> _shifts[i + 6]) & 15]);
        }
        return _cbuffer;
    }
}
