package org.apache.commons.io.output;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.io.input.XmlStreamReader;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class XmlStreamWriter extends Writer {
    private static final int BUFFER_SIZE = 4096;
    static final Pattern ENCODING_PATTERN = XmlStreamReader.ENCODING_PATTERN;
    private final String defaultEncoding;
    private String encoding;
    private final OutputStream out;
    private Writer writer;
    private StringWriter xmlPrologWriter;

    public XmlStreamWriter(OutputStream out) {
        this(out, (String) null);
    }

    public XmlStreamWriter(OutputStream out, String defaultEncoding) {
        this.xmlPrologWriter = new StringWriter(4096);
        this.out = out;
        this.defaultEncoding = defaultEncoding == null ? "UTF-8" : defaultEncoding;
    }

    public XmlStreamWriter(File file) throws FileNotFoundException {
        this(file, (String) null);
    }

    public XmlStreamWriter(File file, String defaultEncoding) throws FileNotFoundException {
        this(new FileOutputStream(file), defaultEncoding);
    }

    public String getEncoding() {
        return this.encoding;
    }

    public String getDefaultEncoding() {
        return this.defaultEncoding;
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.writer == null) {
            this.encoding = this.defaultEncoding;
            this.writer = new OutputStreamWriter(this.out, this.encoding);
            this.writer.write(this.xmlPrologWriter.toString());
        }
        this.writer.close();
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() throws IOException {
        if (this.writer != null) {
            this.writer.flush();
        }
    }

    private void detectEncoding(char[] cbuf, int off, int len) throws IOException {
        StringBuffer buffer = this.xmlPrologWriter.getBuffer();
        int length = buffer.length() + len > 4096 ? 4096 - buffer.length() : len;
        this.xmlPrologWriter.write(cbuf, off, length);
        if (buffer.length() >= 5) {
            if (buffer.substring(0, 5).equals("<?xml")) {
                int indexOf = buffer.indexOf("?>");
                if (indexOf > 0) {
                    Matcher matcher = ENCODING_PATTERN.matcher(buffer.substring(0, indexOf));
                    if (matcher.find()) {
                        this.encoding = matcher.group(1).toUpperCase();
                        this.encoding = this.encoding.substring(1, this.encoding.length() - 1);
                    } else {
                        this.encoding = this.defaultEncoding;
                    }
                } else if (buffer.length() >= 4096) {
                    this.encoding = this.defaultEncoding;
                }
            } else {
                this.encoding = this.defaultEncoding;
            }
            if (this.encoding != null) {
                this.xmlPrologWriter = null;
                this.writer = new OutputStreamWriter(this.out, this.encoding);
                this.writer.write(buffer.toString());
                if (len > length) {
                    this.writer.write(cbuf, off + length, len - length);
                }
            }
        }
    }

    @Override // java.io.Writer
    public void write(char[] cbuf, int off, int len) throws IOException {
        if (this.xmlPrologWriter != null) {
            detectEncoding(cbuf, off, len);
        } else {
            this.writer.write(cbuf, off, len);
        }
    }
}
