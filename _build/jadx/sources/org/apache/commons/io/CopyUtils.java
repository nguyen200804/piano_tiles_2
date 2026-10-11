package org.apache.commons.io;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.StringReader;
import java.io.Writer;

@Deprecated
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class CopyUtils {
    private static final int DEFAULT_BUFFER_SIZE = 4096;

    public static void copy(byte[] input, OutputStream output) throws IOException {
        output.write(input);
    }

    public static void copy(byte[] input, Writer output) throws IOException {
        copy(new ByteArrayInputStream(input), output);
    }

    public static void copy(byte[] input, Writer output, String encoding) throws IOException {
        copy(new ByteArrayInputStream(input), output, encoding);
    }

    public static int copy(InputStream input, OutputStream output) throws IOException {
        byte[] bArr = new byte[4096];
        int i = 0;
        while (true) {
            int read = input.read(bArr);
            if (-1 != read) {
                output.write(bArr, 0, read);
                i += read;
            } else {
                return i;
            }
        }
    }

    public static int copy(Reader input, Writer output) throws IOException {
        char[] cArr = new char[4096];
        int i = 0;
        while (true) {
            int read = input.read(cArr);
            if (-1 != read) {
                output.write(cArr, 0, read);
                i += read;
            } else {
                return i;
            }
        }
    }

    public static void copy(InputStream input, Writer output) throws IOException {
        copy(new InputStreamReader(input), output);
    }

    public static void copy(InputStream input, Writer output, String encoding) throws IOException {
        copy(new InputStreamReader(input, encoding), output);
    }

    public static void copy(Reader input, OutputStream output) throws IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(output);
        copy(input, outputStreamWriter);
        outputStreamWriter.flush();
    }

    public static void copy(String input, OutputStream output) throws IOException {
        StringReader stringReader = new StringReader(input);
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(output);
        copy(stringReader, outputStreamWriter);
        outputStreamWriter.flush();
    }

    public static void copy(String input, Writer output) throws IOException {
        output.write(input);
    }
}
