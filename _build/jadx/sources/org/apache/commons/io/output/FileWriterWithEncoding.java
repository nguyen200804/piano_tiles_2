package org.apache.commons.io.output;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class FileWriterWithEncoding extends Writer {
    private final Writer out;

    public FileWriterWithEncoding(String filename, String encoding) throws IOException {
        this(new File(filename), encoding, false);
    }

    public FileWriterWithEncoding(String filename, String encoding, boolean append) throws IOException {
        this(new File(filename), encoding, append);
    }

    public FileWriterWithEncoding(String filename, Charset encoding) throws IOException {
        this(new File(filename), encoding, false);
    }

    public FileWriterWithEncoding(String filename, Charset encoding, boolean append) throws IOException {
        this(new File(filename), encoding, append);
    }

    public FileWriterWithEncoding(String filename, CharsetEncoder encoding) throws IOException {
        this(new File(filename), encoding, false);
    }

    public FileWriterWithEncoding(String filename, CharsetEncoder encoding, boolean append) throws IOException {
        this(new File(filename), encoding, append);
    }

    public FileWriterWithEncoding(File file, String encoding) throws IOException {
        this(file, encoding, false);
    }

    public FileWriterWithEncoding(File file, String encoding, boolean append) throws IOException {
        this.out = initWriter(file, encoding, append);
    }

    public FileWriterWithEncoding(File file, Charset encoding) throws IOException {
        this(file, encoding, false);
    }

    public FileWriterWithEncoding(File file, Charset encoding, boolean append) throws IOException {
        this.out = initWriter(file, encoding, append);
    }

    public FileWriterWithEncoding(File file, CharsetEncoder encoding) throws IOException {
        this(file, encoding, false);
    }

    public FileWriterWithEncoding(File file, CharsetEncoder encoding, boolean append) throws IOException {
        this.out = initWriter(file, encoding, append);
    }

    private static Writer initWriter(File file, Object encoding, boolean append) throws IOException {
        FileOutputStream fileOutputStream;
        if (file == null) {
            throw new NullPointerException("File is missing");
        }
        if (encoding == null) {
            throw new NullPointerException("Encoding is missing");
        }
        boolean exists = file.exists();
        try {
            fileOutputStream = new FileOutputStream(file, append);
        } catch (IOException e) {
            e = e;
            fileOutputStream = null;
        } catch (RuntimeException e2) {
            e = e2;
            fileOutputStream = null;
        }
        try {
            if (encoding instanceof Charset) {
                return new OutputStreamWriter(fileOutputStream, (Charset) encoding);
            }
            if (encoding instanceof CharsetEncoder) {
                return new OutputStreamWriter(fileOutputStream, (CharsetEncoder) encoding);
            }
            return new OutputStreamWriter(fileOutputStream, (String) encoding);
        } catch (IOException e3) {
            e = e3;
            IOUtils.closeQuietly((Writer) null);
            IOUtils.closeQuietly((OutputStream) fileOutputStream);
            if (!exists) {
                FileUtils.deleteQuietly(file);
            }
            throw e;
        } catch (RuntimeException e4) {
            e = e4;
            IOUtils.closeQuietly((Writer) null);
            IOUtils.closeQuietly((OutputStream) fileOutputStream);
            if (!exists) {
                FileUtils.deleteQuietly(file);
            }
            throw e;
        }
    }

    @Override // java.io.Writer
    public void write(int idx) throws IOException {
        this.out.write(idx);
    }

    @Override // java.io.Writer
    public void write(char[] chr) throws IOException {
        this.out.write(chr);
    }

    @Override // java.io.Writer
    public void write(char[] chr, int st, int end) throws IOException {
        this.out.write(chr, st, end);
    }

    @Override // java.io.Writer
    public void write(String str) throws IOException {
        this.out.write(str);
    }

    @Override // java.io.Writer
    public void write(String str, int st, int end) throws IOException {
        this.out.write(str, st, end);
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() throws IOException {
        this.out.flush();
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.out.close();
    }
}
