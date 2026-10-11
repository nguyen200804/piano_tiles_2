package org.apache.commons.csv;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class ExtendedBufferedReader extends BufferedReader {
    private boolean closed;
    private long eolCounter;
    private int lastChar;
    private long position;

    ExtendedBufferedReader(Reader reader) {
        super(reader);
        this.lastChar = -2;
    }

    @Override // java.io.BufferedReader, java.io.Reader
    public int read() throws IOException {
        int read = super.read();
        if (read == 13 || (read == 10 && this.lastChar != 13)) {
            this.eolCounter++;
        }
        this.lastChar = read;
        this.position++;
        return this.lastChar;
    }

    int getLastChar() {
        return this.lastChar;
    }

    @Override // java.io.BufferedReader, java.io.Reader
    public int read(char[] cArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        int read = super.read(cArr, i, i2);
        if (read > 0) {
            int i3 = i;
            while (i3 < i + read) {
                char c = cArr[i3];
                if (c == '\n') {
                    if (13 != (i3 > 0 ? cArr[i3 - 1] : this.lastChar)) {
                        this.eolCounter++;
                    }
                } else if (c == '\r') {
                    this.eolCounter++;
                }
                i3++;
            }
            this.lastChar = cArr[(i + read) - 1];
        } else if (read == -1) {
            this.lastChar = -1;
        }
        this.position += read;
        return read;
    }

    @Override // java.io.BufferedReader
    public String readLine() throws IOException {
        String readLine = super.readLine();
        if (readLine != null) {
            this.lastChar = 10;
            this.eolCounter++;
        } else {
            this.lastChar = -1;
        }
        return readLine;
    }

    int lookAhead() throws IOException {
        super.mark(1);
        int read = super.read();
        super.reset();
        return read;
    }

    long getCurrentLineNumber() {
        return (this.lastChar == 13 || this.lastChar == 10 || this.lastChar == -2 || this.lastChar == -1) ? this.eolCounter : this.eolCounter + 1;
    }

    long getPosition() {
        return this.position;
    }

    public boolean isClosed() {
        return this.closed;
    }

    @Override // java.io.BufferedReader, java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.closed = true;
        this.lastChar = -1;
        super.close();
    }
}
