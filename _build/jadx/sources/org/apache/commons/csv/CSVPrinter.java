package org.apache.commons.csv;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Iterator;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class CSVPrinter implements Closeable, Flushable {
    private final CSVFormat format;
    private boolean newRecord = true;
    private final Appendable out;

    public CSVPrinter(Appendable out, CSVFormat format) throws IOException {
        Assertions.notNull(out, "out");
        Assertions.notNull(format, "format");
        this.out = out;
        this.format = format;
        if (format.getHeaderComments() != null) {
            for (String str : format.getHeaderComments()) {
                if (str != null) {
                    printComment(str);
                }
            }
        }
        if (format.getHeader() != null && !format.getSkipHeaderRecord()) {
            printRecord(format.getHeader());
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.out instanceof Closeable) {
            ((Closeable) this.out).close();
        }
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        if (this.out instanceof Flushable) {
            ((Flushable) this.out).flush();
        }
    }

    public Appendable getOut() {
        return this.out;
    }

    public void print(Object value) throws IOException {
        this.format.print(value, this.out, this.newRecord);
        this.newRecord = false;
    }

    public void printComment(String comment) throws IOException {
        if (this.format.isCommentMarkerSet()) {
            if (!this.newRecord) {
                println();
            }
            this.out.append(this.format.getCommentMarker().charValue());
            this.out.append(' ');
            int i = 0;
            while (i < comment.length()) {
                char charAt = comment.charAt(i);
                switch (charAt) {
                    case '\n':
                        break;
                    case 11:
                    case '\f':
                    default:
                        this.out.append(charAt);
                        continue;
                    case '\r':
                        if (i + 1 < comment.length() && comment.charAt(i + 1) == '\n') {
                            i++;
                            break;
                        }
                        break;
                }
                println();
                this.out.append(this.format.getCommentMarker().charValue());
                this.out.append(' ');
                i++;
            }
            println();
        }
    }

    public void println() throws IOException {
        this.format.println(this.out);
        this.newRecord = true;
    }

    public void printRecord(Iterable<?> values) throws IOException {
        Iterator<?> it = values.iterator();
        while (it.hasNext()) {
            print(it.next());
        }
        println();
    }

    public void printRecord(Object... values) throws IOException {
        this.format.printRecord(this.out, values);
        this.newRecord = true;
    }

    public void printRecords(Iterable<?> values) throws IOException {
        for (Object obj : values) {
            if (obj instanceof Object[]) {
                printRecord((Object[]) obj);
            } else if (obj instanceof Iterable) {
                printRecord((Iterable<?>) obj);
            } else {
                printRecord(obj);
            }
        }
    }

    public void printRecords(Object... values) throws IOException {
        for (Object obj : values) {
            if (obj instanceof Object[]) {
                printRecord((Object[]) obj);
            } else if (obj instanceof Iterable) {
                printRecord((Iterable<?>) obj);
            } else {
                printRecord(obj);
            }
        }
    }

    public void printRecords(ResultSet resultSet) throws SQLException, IOException {
        int columnCount = resultSet.getMetaData().getColumnCount();
        while (resultSet.next()) {
            for (int i = 1; i <= columnCount; i++) {
                print(resultSet.getObject(i));
            }
            println();
        }
    }
}
