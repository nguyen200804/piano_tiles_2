package org.apache.commons.csv;

import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.StringReader;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.TreeMap;
import org.apache.commons.csv.Token;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class CSVParser implements Closeable, Iterable<CSVRecord> {
    private final long characterOffset;
    private final CSVFormat format;
    private final Map<String, Integer> headerMap;
    private final Lexer lexer;
    private final List<String> record;
    private long recordNumber;
    private final Token reusableToken;

    public static CSVParser parse(File file, Charset charset, CSVFormat format) throws IOException {
        Assertions.notNull(file, "file");
        Assertions.notNull(format, "format");
        return new CSVParser(new InputStreamReader(new FileInputStream(file), charset), format);
    }

    public static CSVParser parse(String string, CSVFormat format) throws IOException {
        Assertions.notNull(string, "string");
        Assertions.notNull(format, "format");
        return new CSVParser(new StringReader(string), format);
    }

    public static CSVParser parse(URL url, Charset charset, CSVFormat format) throws IOException {
        Assertions.notNull(url, "url");
        Assertions.notNull(charset, "charset");
        Assertions.notNull(format, "format");
        return new CSVParser(new InputStreamReader(url.openStream(), charset), format);
    }

    public CSVParser(Reader reader, CSVFormat format) throws IOException {
        this(reader, format, 0L, 1L);
    }

    public CSVParser(Reader reader, CSVFormat format, long characterOffset, long recordNumber) throws IOException {
        this.record = new ArrayList();
        this.reusableToken = new Token();
        Assertions.notNull(reader, "reader");
        Assertions.notNull(format, "format");
        this.format = format;
        this.lexer = new Lexer(format, new ExtendedBufferedReader(reader));
        this.headerMap = initializeHeader();
        this.characterOffset = characterOffset;
        this.recordNumber = recordNumber - 1;
    }

    private void addRecordValue(boolean lastRecord) {
        String sb = this.reusableToken.content.toString();
        if (this.format.getTrim()) {
            sb = sb.trim();
        }
        if (!lastRecord || !sb.isEmpty() || !this.format.getTrailingDelimiter()) {
            String nullString = this.format.getNullString();
            List<String> list = this.record;
            if (sb.equals(nullString)) {
                sb = null;
            }
            list.add(sb);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.lexer != null) {
            this.lexer.close();
        }
    }

    public long getCurrentLineNumber() {
        return this.lexer.getCurrentLineNumber();
    }

    public Map<String, Integer> getHeaderMap() {
        if (this.headerMap == null) {
            return null;
        }
        return new LinkedHashMap(this.headerMap);
    }

    public long getRecordNumber() {
        return this.recordNumber;
    }

    public List<CSVRecord> getRecords() throws IOException {
        ArrayList arrayList = new ArrayList();
        while (true) {
            CSVRecord nextRecord = nextRecord();
            if (nextRecord != null) {
                arrayList.add(nextRecord);
            } else {
                return arrayList;
            }
        }
    }

    private Map<String, Integer> initializeHeader() throws IOException {
        String[] strArr;
        String[] header = this.format.getHeader();
        if (header == null) {
            return null;
        }
        Map<String, Integer> treeMap = this.format.getIgnoreHeaderCase() ? new TreeMap<>(String.CASE_INSENSITIVE_ORDER) : new LinkedHashMap<>();
        if (header.length == 0) {
            CSVRecord nextRecord = nextRecord();
            strArr = nextRecord != null ? nextRecord.values() : null;
        } else {
            if (this.format.getSkipHeaderRecord()) {
                nextRecord();
            }
            strArr = header;
        }
        if (strArr != null) {
            for (int i = 0; i < strArr.length; i++) {
                String str = strArr[i];
                boolean containsKey = treeMap.containsKey(str);
                boolean z = str == null || str.trim().isEmpty();
                if (containsKey && (!z || !this.format.getAllowMissingColumnNames())) {
                    throw new IllegalArgumentException("The header contains a duplicate name: \"" + str + "\" in " + Arrays.toString(strArr));
                }
                treeMap.put(str, Integer.valueOf(i));
            }
            return treeMap;
        }
        return treeMap;
    }

    public boolean isClosed() {
        return this.lexer.isClosed();
    }

    @Override // java.lang.Iterable
    public Iterator<CSVRecord> iterator() {
        return new Iterator<CSVRecord>() { // from class: org.apache.commons.csv.CSVParser.1
            private CSVRecord current;

            private CSVRecord getNextRecord() {
                try {
                    return CSVParser.this.nextRecord();
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                if (CSVParser.this.isClosed()) {
                    return false;
                }
                if (this.current == null) {
                    this.current = getNextRecord();
                }
                return this.current != null;
            }

            @Override // java.util.Iterator
            public CSVRecord next() {
                if (CSVParser.this.isClosed()) {
                    throw new NoSuchElementException("CSVParser has been closed");
                }
                CSVRecord cSVRecord = this.current;
                this.current = null;
                if (cSVRecord == null && (cSVRecord = getNextRecord()) == null) {
                    throw new NoSuchElementException("No more CSV records available");
                }
                return cSVRecord;
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException();
            }
        };
    }

    CSVRecord nextRecord() throws IOException {
        this.record.clear();
        long characterPosition = this.lexer.getCharacterPosition() + this.characterOffset;
        StringBuilder sb = null;
        do {
            this.reusableToken.reset();
            this.lexer.nextToken(this.reusableToken);
            switch (this.reusableToken.type) {
                case TOKEN:
                    addRecordValue(false);
                    break;
                case EORECORD:
                    addRecordValue(true);
                    break;
                case EOF:
                    if (this.reusableToken.isReady) {
                        addRecordValue(true);
                        break;
                    }
                    break;
                case INVALID:
                    throw new IOException("(line " + getCurrentLineNumber() + ") invalid parse sequence");
                case COMMENT:
                    if (sb == null) {
                        sb = new StringBuilder();
                    } else {
                        sb.append('\n');
                    }
                    sb.append((CharSequence) this.reusableToken.content);
                    this.reusableToken.type = Token.Type.TOKEN;
                    break;
                default:
                    throw new IllegalStateException("Unexpected Token type: " + this.reusableToken.type);
            }
        } while (this.reusableToken.type == Token.Type.TOKEN);
        if (this.record.isEmpty()) {
            return null;
        }
        this.recordNumber++;
        return new CSVRecord((String[]) this.record.toArray(new String[this.record.size()]), this.headerMap, sb == null ? null : sb.toString(), this.recordNumber, characterPosition);
    }
}
