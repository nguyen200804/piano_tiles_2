package org.apache.commons.io;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.CharArrayWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.Reader;
import java.io.Writer;
import java.net.HttpURLConnection;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.URI;
import java.net.URL;
import java.net.URLConnection;
import java.nio.channels.Selector;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.apache.commons.io.output.ByteArrayOutputStream;
import org.apache.commons.io.output.StringBuilderWriter;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class IOUtils {
    private static final int DEFAULT_BUFFER_SIZE = 4096;
    public static final char DIR_SEPARATOR = File.separatorChar;
    public static final char DIR_SEPARATOR_UNIX = '/';
    public static final char DIR_SEPARATOR_WINDOWS = '\\';
    private static final int EOF = -1;
    public static final String LINE_SEPARATOR;
    public static final String LINE_SEPARATOR_UNIX = "\n";
    public static final String LINE_SEPARATOR_WINDOWS = "\r\n";
    private static final int SKIP_BUFFER_SIZE = 2048;
    private static byte[] SKIP_BYTE_BUFFER;
    private static char[] SKIP_CHAR_BUFFER;

    static {
        StringBuilderWriter stringBuilderWriter = new StringBuilderWriter(4);
        PrintWriter printWriter = new PrintWriter(stringBuilderWriter);
        printWriter.println();
        LINE_SEPARATOR = stringBuilderWriter.toString();
        printWriter.close();
    }

    public static void close(URLConnection conn) {
        if (conn instanceof HttpURLConnection) {
            ((HttpURLConnection) conn).disconnect();
        }
    }

    public static void closeQuietly(Reader input) {
        closeQuietly((Closeable) input);
    }

    public static void closeQuietly(Writer output) {
        closeQuietly((Closeable) output);
    }

    public static void closeQuietly(InputStream input) {
        closeQuietly((Closeable) input);
    }

    public static void closeQuietly(OutputStream output) {
        closeQuietly((Closeable) output);
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    public static void closeQuietly(Socket sock) {
        if (sock != null) {
            try {
                sock.close();
            } catch (IOException e) {
            }
        }
    }

    public static void closeQuietly(Selector selector) {
        if (selector != null) {
            try {
                selector.close();
            } catch (IOException e) {
            }
        }
    }

    public static void closeQuietly(ServerSocket sock) {
        if (sock != null) {
            try {
                sock.close();
            } catch (IOException e) {
            }
        }
    }

    public static InputStream toBufferedInputStream(InputStream input) throws IOException {
        return ByteArrayOutputStream.toBufferedInputStream(input);
    }

    public static BufferedReader toBufferedReader(Reader reader) {
        return reader instanceof BufferedReader ? (BufferedReader) reader : new BufferedReader(reader);
    }

    public static byte[] toByteArray(InputStream input) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        copy(input, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static byte[] toByteArray(InputStream input, long size) throws IOException {
        if (size > 2147483647L) {
            throw new IllegalArgumentException("Size cannot be greater than Integer max value: " + size);
        }
        return toByteArray(input, (int) size);
    }

    public static byte[] toByteArray(InputStream input, int size) throws IOException {
        int i = 0;
        if (size < 0) {
            throw new IllegalArgumentException("Size must be equal or greater than zero: " + size);
        }
        if (size == 0) {
            return new byte[0];
        }
        byte[] bArr = new byte[size];
        while (i < size) {
            int read = input.read(bArr, i, size - i);
            if (read == -1) {
                break;
            }
            i += read;
        }
        if (i != size) {
            throw new IOException("Unexpected readed size. current: " + i + ", excepted: " + size);
        }
        return bArr;
    }

    public static byte[] toByteArray(Reader input) throws IOException {
        return toByteArray(input, Charset.defaultCharset());
    }

    public static byte[] toByteArray(Reader input, Charset encoding) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        copy(input, byteArrayOutputStream, encoding);
        return byteArrayOutputStream.toByteArray();
    }

    public static byte[] toByteArray(Reader input, String encoding) throws IOException {
        return toByteArray(input, Charsets.toCharset(encoding));
    }

    @Deprecated
    public static byte[] toByteArray(String input) throws IOException {
        return input.getBytes();
    }

    public static byte[] toByteArray(URI uri) throws IOException {
        return toByteArray(uri.toURL());
    }

    public static byte[] toByteArray(URL url) throws IOException {
        URLConnection openConnection = url.openConnection();
        try {
            return toByteArray(openConnection);
        } finally {
            close(openConnection);
        }
    }

    public static byte[] toByteArray(URLConnection urlConn) throws IOException {
        InputStream inputStream = urlConn.getInputStream();
        try {
            return toByteArray(inputStream);
        } finally {
            inputStream.close();
        }
    }

    public static char[] toCharArray(InputStream is) throws IOException {
        return toCharArray(is, Charset.defaultCharset());
    }

    public static char[] toCharArray(InputStream is, Charset encoding) throws IOException {
        CharArrayWriter charArrayWriter = new CharArrayWriter();
        copy(is, charArrayWriter, encoding);
        return charArrayWriter.toCharArray();
    }

    public static char[] toCharArray(InputStream is, String encoding) throws IOException {
        return toCharArray(is, Charsets.toCharset(encoding));
    }

    public static char[] toCharArray(Reader input) throws IOException {
        CharArrayWriter charArrayWriter = new CharArrayWriter();
        copy(input, charArrayWriter);
        return charArrayWriter.toCharArray();
    }

    public static String toString(InputStream input) throws IOException {
        return toString(input, Charset.defaultCharset());
    }

    public static String toString(InputStream input, Charset encoding) throws IOException {
        StringBuilderWriter stringBuilderWriter = new StringBuilderWriter();
        copy(input, stringBuilderWriter, encoding);
        return stringBuilderWriter.toString();
    }

    public static String toString(InputStream input, String encoding) throws IOException {
        return toString(input, Charsets.toCharset(encoding));
    }

    public static String toString(Reader input) throws IOException {
        StringBuilderWriter stringBuilderWriter = new StringBuilderWriter();
        copy(input, stringBuilderWriter);
        return stringBuilderWriter.toString();
    }

    public static String toString(URI uri) throws IOException {
        return toString(uri, Charset.defaultCharset());
    }

    public static String toString(URI uri, Charset encoding) throws IOException {
        return toString(uri.toURL(), Charsets.toCharset(encoding));
    }

    public static String toString(URI uri, String encoding) throws IOException {
        return toString(uri, Charsets.toCharset(encoding));
    }

    public static String toString(URL url) throws IOException {
        return toString(url, Charset.defaultCharset());
    }

    public static String toString(URL url, Charset encoding) throws IOException {
        InputStream openStream = url.openStream();
        try {
            return toString(openStream, encoding);
        } finally {
            openStream.close();
        }
    }

    public static String toString(URL url, String encoding) throws IOException {
        return toString(url, Charsets.toCharset(encoding));
    }

    @Deprecated
    public static String toString(byte[] input) throws IOException {
        return new String(input);
    }

    public static String toString(byte[] input, String encoding) throws IOException {
        return new String(input, Charsets.toCharset(encoding));
    }

    public static List<String> readLines(InputStream input) throws IOException {
        return readLines(input, Charset.defaultCharset());
    }

    public static List<String> readLines(InputStream input, Charset encoding) throws IOException {
        return readLines(new InputStreamReader(input, Charsets.toCharset(encoding)));
    }

    public static List<String> readLines(InputStream input, String encoding) throws IOException {
        return readLines(input, Charsets.toCharset(encoding));
    }

    public static List<String> readLines(Reader input) throws IOException {
        BufferedReader bufferedReader = toBufferedReader(input);
        ArrayList arrayList = new ArrayList();
        for (String readLine = bufferedReader.readLine(); readLine != null; readLine = bufferedReader.readLine()) {
            arrayList.add(readLine);
        }
        return arrayList;
    }

    public static LineIterator lineIterator(Reader reader) {
        return new LineIterator(reader);
    }

    public static LineIterator lineIterator(InputStream input, Charset encoding) throws IOException {
        return new LineIterator(new InputStreamReader(input, Charsets.toCharset(encoding)));
    }

    public static LineIterator lineIterator(InputStream input, String encoding) throws IOException {
        return lineIterator(input, Charsets.toCharset(encoding));
    }

    public static InputStream toInputStream(CharSequence input) {
        return toInputStream(input, Charset.defaultCharset());
    }

    public static InputStream toInputStream(CharSequence input, Charset encoding) {
        return toInputStream(input.toString(), encoding);
    }

    public static InputStream toInputStream(CharSequence input, String encoding) throws IOException {
        return toInputStream(input, Charsets.toCharset(encoding));
    }

    public static InputStream toInputStream(String input) {
        return toInputStream(input, Charset.defaultCharset());
    }

    public static InputStream toInputStream(String input, Charset encoding) {
        return new ByteArrayInputStream(input.getBytes(Charsets.toCharset(encoding)));
    }

    public static InputStream toInputStream(String input, String encoding) throws IOException {
        return new ByteArrayInputStream(input.getBytes(Charsets.toCharset(encoding)));
    }

    public static void write(byte[] data, OutputStream output) throws IOException {
        if (data != null) {
            output.write(data);
        }
    }

    public static void write(byte[] data, Writer output) throws IOException {
        write(data, output, Charset.defaultCharset());
    }

    public static void write(byte[] data, Writer output, Charset encoding) throws IOException {
        if (data != null) {
            output.write(new String(data, Charsets.toCharset(encoding)));
        }
    }

    public static void write(byte[] data, Writer output, String encoding) throws IOException {
        write(data, output, Charsets.toCharset(encoding));
    }

    public static void write(char[] data, Writer output) throws IOException {
        if (data != null) {
            output.write(data);
        }
    }

    public static void write(char[] data, OutputStream output) throws IOException {
        write(data, output, Charset.defaultCharset());
    }

    public static void write(char[] data, OutputStream output, Charset encoding) throws IOException {
        if (data != null) {
            output.write(new String(data).getBytes(Charsets.toCharset(encoding)));
        }
    }

    public static void write(char[] data, OutputStream output, String encoding) throws IOException {
        write(data, output, Charsets.toCharset(encoding));
    }

    public static void write(CharSequence data, Writer output) throws IOException {
        if (data != null) {
            write(data.toString(), output);
        }
    }

    public static void write(CharSequence data, OutputStream output) throws IOException {
        write(data, output, Charset.defaultCharset());
    }

    public static void write(CharSequence data, OutputStream output, Charset encoding) throws IOException {
        if (data != null) {
            write(data.toString(), output, encoding);
        }
    }

    public static void write(CharSequence data, OutputStream output, String encoding) throws IOException {
        write(data, output, Charsets.toCharset(encoding));
    }

    public static void write(String data, Writer output) throws IOException {
        if (data != null) {
            output.write(data);
        }
    }

    public static void write(String data, OutputStream output) throws IOException {
        write(data, output, Charset.defaultCharset());
    }

    public static void write(String data, OutputStream output, Charset encoding) throws IOException {
        if (data != null) {
            output.write(data.getBytes(Charsets.toCharset(encoding)));
        }
    }

    public static void write(String data, OutputStream output, String encoding) throws IOException {
        write(data, output, Charsets.toCharset(encoding));
    }

    @Deprecated
    public static void write(StringBuffer data, Writer output) throws IOException {
        if (data != null) {
            output.write(data.toString());
        }
    }

    @Deprecated
    public static void write(StringBuffer data, OutputStream output) throws IOException {
        write(data, output, (String) null);
    }

    @Deprecated
    public static void write(StringBuffer data, OutputStream output, String encoding) throws IOException {
        if (data != null) {
            output.write(data.toString().getBytes(Charsets.toCharset(encoding)));
        }
    }

    public static void writeLines(Collection<?> lines, String lineEnding, OutputStream output) throws IOException {
        writeLines(lines, lineEnding, output, Charset.defaultCharset());
    }

    public static void writeLines(Collection<?> lines, String lineEnding, OutputStream output, Charset encoding) throws IOException {
        if (lines != null) {
            if (lineEnding == null) {
                lineEnding = LINE_SEPARATOR;
            }
            Charset charset = Charsets.toCharset(encoding);
            for (Object obj : lines) {
                if (obj != null) {
                    output.write(obj.toString().getBytes(charset));
                }
                output.write(lineEnding.getBytes(charset));
            }
        }
    }

    public static void writeLines(Collection<?> lines, String lineEnding, OutputStream output, String encoding) throws IOException {
        writeLines(lines, lineEnding, output, Charsets.toCharset(encoding));
    }

    public static void writeLines(Collection<?> lines, String lineEnding, Writer writer) throws IOException {
        if (lines != null) {
            if (lineEnding == null) {
                lineEnding = LINE_SEPARATOR;
            }
            for (Object obj : lines) {
                if (obj != null) {
                    writer.write(obj.toString());
                }
                writer.write(lineEnding);
            }
        }
    }

    public static int copy(InputStream input, OutputStream output) throws IOException {
        long copyLarge = copyLarge(input, output);
        if (copyLarge > 2147483647L) {
            return -1;
        }
        return (int) copyLarge;
    }

    public static long copyLarge(InputStream input, OutputStream output) throws IOException {
        return copyLarge(input, output, new byte[4096]);
    }

    public static long copyLarge(InputStream input, OutputStream output, byte[] buffer) throws IOException {
        long j = 0;
        while (true) {
            int read = input.read(buffer);
            if (-1 != read) {
                output.write(buffer, 0, read);
                j += read;
            } else {
                return j;
            }
        }
    }

    public static long copyLarge(InputStream input, OutputStream output, long inputOffset, long length) throws IOException {
        return copyLarge(input, output, inputOffset, length, new byte[4096]);
    }

    public static long copyLarge(InputStream input, OutputStream output, long inputOffset, long length, byte[] buffer) throws IOException {
        if (inputOffset > 0) {
            skipFully(input, inputOffset);
        }
        if (length == 0) {
            return 0L;
        }
        int length2 = buffer.length;
        int i = (length <= 0 || length >= ((long) length2)) ? length2 : (int) length;
        long j = 0;
        while (i > 0) {
            int read = input.read(buffer, 0, i);
            if (-1 == read) {
                break;
            }
            output.write(buffer, 0, read);
            j += read;
            if (length > 0) {
                i = (int) Math.min(length - j, length2);
            }
        }
        return j;
    }

    public static void copy(InputStream input, Writer output) throws IOException {
        copy(input, output, Charset.defaultCharset());
    }

    public static void copy(InputStream input, Writer output, Charset encoding) throws IOException {
        copy(new InputStreamReader(input, Charsets.toCharset(encoding)), output);
    }

    public static void copy(InputStream input, Writer output, String encoding) throws IOException {
        copy(input, output, Charsets.toCharset(encoding));
    }

    public static int copy(Reader input, Writer output) throws IOException {
        long copyLarge = copyLarge(input, output);
        if (copyLarge > 2147483647L) {
            return -1;
        }
        return (int) copyLarge;
    }

    public static long copyLarge(Reader input, Writer output) throws IOException {
        return copyLarge(input, output, new char[4096]);
    }

    public static long copyLarge(Reader input, Writer output, char[] buffer) throws IOException {
        long j = 0;
        while (true) {
            int read = input.read(buffer);
            if (-1 != read) {
                output.write(buffer, 0, read);
                j += read;
            } else {
                return j;
            }
        }
    }

    public static long copyLarge(Reader input, Writer output, long inputOffset, long length) throws IOException {
        return copyLarge(input, output, inputOffset, length, new char[4096]);
    }

    public static long copyLarge(Reader input, Writer output, long inputOffset, long length, char[] buffer) throws IOException {
        if (inputOffset > 0) {
            skipFully(input, inputOffset);
        }
        if (length == 0) {
            return 0L;
        }
        int length2 = buffer.length;
        if (length > 0 && length < buffer.length) {
            length2 = (int) length;
        }
        int i = length2;
        long j = 0;
        while (i > 0) {
            int read = input.read(buffer, 0, i);
            if (-1 != read) {
                output.write(buffer, 0, read);
                j += read;
                if (length > 0) {
                    i = (int) Math.min(length - j, buffer.length);
                }
            } else {
                return j;
            }
        }
        return j;
    }

    public static void copy(Reader input, OutputStream output) throws IOException {
        copy(input, output, Charset.defaultCharset());
    }

    public static void copy(Reader input, OutputStream output, Charset encoding) throws IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(output, Charsets.toCharset(encoding));
        copy(input, outputStreamWriter);
        outputStreamWriter.flush();
    }

    public static void copy(Reader input, OutputStream output, String encoding) throws IOException {
        copy(input, output, Charsets.toCharset(encoding));
    }

    public static boolean contentEquals(InputStream input1, InputStream input2) throws IOException {
        if (!(input1 instanceof BufferedInputStream)) {
            input1 = new BufferedInputStream(input1);
        }
        if (!(input2 instanceof BufferedInputStream)) {
            input2 = new BufferedInputStream(input2);
        }
        for (int read = input1.read(); -1 != read; read = input1.read()) {
            if (read != input2.read()) {
                return false;
            }
        }
        return input2.read() == -1;
    }

    public static boolean contentEquals(Reader input1, Reader input2) throws IOException {
        Reader input12 = toBufferedReader(input1);
        Reader input22 = toBufferedReader(input2);
        for (int read = input12.read(); -1 != read; read = input12.read()) {
            if (read != input22.read()) {
                return false;
            }
        }
        return input22.read() == -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0027, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0029, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0025, code lost:
    
        if (r0 != null) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean contentEqualsIgnoreEOL(java.io.Reader r5, java.io.Reader r6) throws java.io.IOException {
        /*
            java.io.BufferedReader r2 = toBufferedReader(r5)
            java.io.BufferedReader r3 = toBufferedReader(r6)
            java.lang.String r1 = r2.readLine()
            java.lang.String r0 = r3.readLine()
        L10:
            if (r1 == 0) goto L23
            if (r0 == 0) goto L23
            boolean r4 = r1.equals(r0)
            if (r4 == 0) goto L23
            java.lang.String r1 = r2.readLine()
            java.lang.String r0 = r3.readLine()
            goto L10
        L23:
            if (r1 != 0) goto L2b
            if (r0 != 0) goto L29
            r0 = 1
        L28:
            return r0
        L29:
            r0 = 0
            goto L28
        L2b:
            boolean r0 = r1.equals(r0)
            goto L28
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.io.IOUtils.contentEqualsIgnoreEOL(java.io.Reader, java.io.Reader):boolean");
    }

    public static long skip(InputStream input, long toSkip) throws IOException {
        if (toSkip < 0) {
            throw new IllegalArgumentException("Skip count must be non-negative, actual: " + toSkip);
        }
        if (SKIP_BYTE_BUFFER == null) {
            SKIP_BYTE_BUFFER = new byte[2048];
        }
        long j = toSkip;
        while (j > 0) {
            long read = input.read(SKIP_BYTE_BUFFER, 0, (int) Math.min(j, PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH));
            if (read < 0) {
                break;
            }
            j -= read;
        }
        return toSkip - j;
    }

    public static long skip(Reader input, long toSkip) throws IOException {
        if (toSkip < 0) {
            throw new IllegalArgumentException("Skip count must be non-negative, actual: " + toSkip);
        }
        if (SKIP_CHAR_BUFFER == null) {
            SKIP_CHAR_BUFFER = new char[2048];
        }
        long j = toSkip;
        while (j > 0) {
            long read = input.read(SKIP_CHAR_BUFFER, 0, (int) Math.min(j, PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH));
            if (read < 0) {
                break;
            }
            j -= read;
        }
        return toSkip - j;
    }

    public static void skipFully(InputStream input, long toSkip) throws IOException {
        if (toSkip < 0) {
            throw new IllegalArgumentException("Bytes to skip must not be negative: " + toSkip);
        }
        long skip = skip(input, toSkip);
        if (skip != toSkip) {
            throw new EOFException("Bytes to skip: " + toSkip + " actual: " + skip);
        }
    }

    public static void skipFully(Reader input, long toSkip) throws IOException {
        long skip = skip(input, toSkip);
        if (skip != toSkip) {
            throw new EOFException("Chars to skip: " + toSkip + " actual: " + skip);
        }
    }

    public static int read(Reader input, char[] buffer, int offset, int length) throws IOException {
        if (length < 0) {
            throw new IllegalArgumentException("Length must not be negative: " + length);
        }
        int i = length;
        while (i > 0) {
            int read = input.read(buffer, (length - i) + offset, i);
            if (-1 == read) {
                break;
            }
            i -= read;
        }
        return length - i;
    }

    public static int read(Reader input, char[] buffer) throws IOException {
        return read(input, buffer, 0, buffer.length);
    }

    public static int read(InputStream input, byte[] buffer, int offset, int length) throws IOException {
        if (length < 0) {
            throw new IllegalArgumentException("Length must not be negative: " + length);
        }
        int i = length;
        while (i > 0) {
            int read = input.read(buffer, (length - i) + offset, i);
            if (-1 == read) {
                break;
            }
            i -= read;
        }
        return length - i;
    }

    public static int read(InputStream input, byte[] buffer) throws IOException {
        return read(input, buffer, 0, buffer.length);
    }

    public static void readFully(Reader input, char[] buffer, int offset, int length) throws IOException {
        int read = read(input, buffer, offset, length);
        if (read != length) {
            throw new EOFException("Length to read: " + length + " actual: " + read);
        }
    }

    public static void readFully(Reader input, char[] buffer) throws IOException {
        readFully(input, buffer, 0, buffer.length);
    }

    public static void readFully(InputStream input, byte[] buffer, int offset, int length) throws IOException {
        int read = read(input, buffer, offset, length);
        if (read != length) {
            throw new EOFException("Length to read: " + length + " actual: " + read);
        }
    }

    public static void readFully(InputStream input, byte[] buffer) throws IOException {
        readFully(input, buffer, 0, buffer.length);
    }
}
