package org.apache.commons.csv;

import java.io.IOException;
import java.io.Reader;
import java.io.Serializable;
import java.io.StringWriter;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.HashSet;
import org.apache.commons.io.IOUtils;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class CSVFormat implements Serializable {
    public static final CSVFormat DEFAULT = new CSVFormat(',', Constants.DOUBLE_QUOTE_CHAR, null, null, null, false, true, IOUtils.LINE_SEPARATOR_WINDOWS, null, null, null, false, false, false, false, false);
    public static final CSVFormat EXCEL = DEFAULT.withIgnoreEmptyLines(false).withAllowMissingColumnNames();
    public static final CSVFormat INFORMIX_UNLOAD = DEFAULT.withDelimiter('|').withEscape(IOUtils.DIR_SEPARATOR_WINDOWS).withQuote(Constants.DOUBLE_QUOTE_CHAR).withRecordSeparator('\n');
    public static final CSVFormat INFORMIX_UNLOAD_CSV = DEFAULT.withDelimiter(',').withQuote(Constants.DOUBLE_QUOTE_CHAR).withRecordSeparator('\n');
    public static final CSVFormat MYSQL = DEFAULT.withDelimiter('\t').withEscape(IOUtils.DIR_SEPARATOR_WINDOWS).withIgnoreEmptyLines(false).withQuote((Character) null).withRecordSeparator('\n').withNullString("\\N");
    public static final CSVFormat RFC4180 = DEFAULT.withIgnoreEmptyLines(false);
    public static final CSVFormat TDF = DEFAULT.withDelimiter('\t').withIgnoreSurroundingSpaces();
    private static final long serialVersionUID = 1;
    private final boolean allowMissingColumnNames;
    private final Character commentMarker;
    private final char delimiter;
    private final Character escapeCharacter;
    private final String[] header;
    private final String[] headerComments;
    private final boolean ignoreEmptyLines;
    private final boolean ignoreHeaderCase;
    private final boolean ignoreSurroundingSpaces;
    private final String nullString;
    private final Character quoteCharacter;
    private final QuoteMode quoteMode;
    private final String recordSeparator;
    private final boolean skipHeaderRecord;
    private final boolean trailingDelimiter;
    private final boolean trim;

    public enum Predefined {
        Default(CSVFormat.DEFAULT),
        Excel(CSVFormat.EXCEL),
        InformixUnload(CSVFormat.INFORMIX_UNLOAD),
        InformixUnloadCsv(CSVFormat.INFORMIX_UNLOAD_CSV),
        MySQL(CSVFormat.MYSQL),
        RFC4180(CSVFormat.RFC4180),
        TDF(CSVFormat.TDF);

        private final CSVFormat format;

        Predefined(CSVFormat format) {
            this.format = format;
        }

        public CSVFormat getFormat() {
            return this.format;
        }
    }

    private static boolean isLineBreak(char c) {
        return c == '\n' || c == '\r';
    }

    private static boolean isLineBreak(Character c) {
        return c != null && isLineBreak(c.charValue());
    }

    public static CSVFormat newFormat(char delimiter) {
        return new CSVFormat(delimiter, null, null, null, null, false, false, null, null, null, null, false, false, false, false, false);
    }

    public static CSVFormat valueOf(String format) {
        return Predefined.valueOf(format).getFormat();
    }

    private CSVFormat(char delimiter, Character quoteChar, QuoteMode quoteMode, Character commentStart, Character escape, boolean ignoreSurroundingSpaces, boolean ignoreEmptyLines, String recordSeparator, String nullString, Object[] headerComments, String[] header, boolean skipHeaderRecord, boolean allowMissingColumnNames, boolean ignoreHeaderCase, boolean trim, boolean trailingDelimiter) {
        this.delimiter = delimiter;
        this.quoteCharacter = quoteChar;
        this.quoteMode = quoteMode;
        this.commentMarker = commentStart;
        this.escapeCharacter = escape;
        this.ignoreSurroundingSpaces = ignoreSurroundingSpaces;
        this.allowMissingColumnNames = allowMissingColumnNames;
        this.ignoreEmptyLines = ignoreEmptyLines;
        this.recordSeparator = recordSeparator;
        this.nullString = nullString;
        this.headerComments = toStringArray(headerComments);
        this.header = header == null ? null : (String[]) header.clone();
        this.skipHeaderRecord = skipHeaderRecord;
        this.ignoreHeaderCase = ignoreHeaderCase;
        this.trailingDelimiter = trailingDelimiter;
        this.trim = trim;
        validate();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            CSVFormat cSVFormat = (CSVFormat) obj;
            if (this.delimiter == cSVFormat.delimiter && this.quoteMode == cSVFormat.quoteMode) {
                if (this.quoteCharacter == null) {
                    if (cSVFormat.quoteCharacter != null) {
                        return false;
                    }
                } else if (!this.quoteCharacter.equals(cSVFormat.quoteCharacter)) {
                    return false;
                }
                if (this.commentMarker == null) {
                    if (cSVFormat.commentMarker != null) {
                        return false;
                    }
                } else if (!this.commentMarker.equals(cSVFormat.commentMarker)) {
                    return false;
                }
                if (this.escapeCharacter == null) {
                    if (cSVFormat.escapeCharacter != null) {
                        return false;
                    }
                } else if (!this.escapeCharacter.equals(cSVFormat.escapeCharacter)) {
                    return false;
                }
                if (this.nullString == null) {
                    if (cSVFormat.nullString != null) {
                        return false;
                    }
                } else if (!this.nullString.equals(cSVFormat.nullString)) {
                    return false;
                }
                if (Arrays.equals(this.header, cSVFormat.header) && this.ignoreSurroundingSpaces == cSVFormat.ignoreSurroundingSpaces && this.ignoreEmptyLines == cSVFormat.ignoreEmptyLines && this.skipHeaderRecord == cSVFormat.skipHeaderRecord) {
                    return this.recordSeparator == null ? cSVFormat.recordSeparator == null : this.recordSeparator.equals(cSVFormat.recordSeparator);
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public String format(Object... values) {
        StringWriter stringWriter = new StringWriter();
        try {
            new CSVPrinter(stringWriter, this).printRecord(values);
            return stringWriter.toString().trim();
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public boolean getAllowMissingColumnNames() {
        return this.allowMissingColumnNames;
    }

    public Character getCommentMarker() {
        return this.commentMarker;
    }

    public char getDelimiter() {
        return this.delimiter;
    }

    public Character getEscapeCharacter() {
        return this.escapeCharacter;
    }

    public String[] getHeader() {
        if (this.header != null) {
            return (String[]) this.header.clone();
        }
        return null;
    }

    public String[] getHeaderComments() {
        if (this.headerComments != null) {
            return (String[]) this.headerComments.clone();
        }
        return null;
    }

    public boolean getIgnoreEmptyLines() {
        return this.ignoreEmptyLines;
    }

    public boolean getIgnoreHeaderCase() {
        return this.ignoreHeaderCase;
    }

    public boolean getIgnoreSurroundingSpaces() {
        return this.ignoreSurroundingSpaces;
    }

    public String getNullString() {
        return this.nullString;
    }

    public Character getQuoteCharacter() {
        return this.quoteCharacter;
    }

    public QuoteMode getQuoteMode() {
        return this.quoteMode;
    }

    public String getRecordSeparator() {
        return this.recordSeparator;
    }

    public boolean getSkipHeaderRecord() {
        return this.skipHeaderRecord;
    }

    public boolean getTrailingDelimiter() {
        return this.trailingDelimiter;
    }

    public boolean getTrim() {
        return this.trim;
    }

    public int hashCode() {
        return (((((((this.ignoreEmptyLines ? 1231 : 1237) + (((this.ignoreHeaderCase ? 1231 : 1237) + (((this.ignoreSurroundingSpaces ? 1231 : 1237) + (((this.nullString == null ? 0 : this.nullString.hashCode()) + (((this.escapeCharacter == null ? 0 : this.escapeCharacter.hashCode()) + (((this.commentMarker == null ? 0 : this.commentMarker.hashCode()) + (((this.quoteCharacter == null ? 0 : this.quoteCharacter.hashCode()) + (((this.quoteMode == null ? 0 : this.quoteMode.hashCode()) + ((this.delimiter + 31) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31) + (this.skipHeaderRecord ? 1231 : 1237)) * 31) + (this.recordSeparator != null ? this.recordSeparator.hashCode() : 0)) * 31) + Arrays.hashCode(this.header);
    }

    public boolean isCommentMarkerSet() {
        return this.commentMarker != null;
    }

    public boolean isEscapeCharacterSet() {
        return this.escapeCharacter != null;
    }

    public boolean isNullStringSet() {
        return this.nullString != null;
    }

    public boolean isQuoteCharacterSet() {
        return this.quoteCharacter != null;
    }

    public CSVParser parse(Reader in) throws IOException {
        return new CSVParser(in, this);
    }

    public CSVPrinter print(Appendable out) throws IOException {
        return new CSVPrinter(out, this);
    }

    public void print(Object value, Appendable out, boolean newRecord) throws IOException {
        String obj;
        if (value == null) {
            obj = this.nullString == null ? "" : this.nullString;
        } else {
            obj = value instanceof CharSequence ? (CharSequence) value : value.toString();
        }
        CharSequence trim = getTrim() ? trim(obj) : obj;
        print(value, trim, 0, trim.length(), out, newRecord);
    }

    private void print(Object object, CharSequence value, int offset, int len, Appendable out, boolean newRecord) throws IOException {
        if (!newRecord) {
            out.append(getDelimiter());
        }
        if (object == null) {
            out.append(value);
            return;
        }
        if (isQuoteCharacterSet()) {
            printAndQuote(object, value, offset, len, out, newRecord);
        } else if (isEscapeCharacterSet()) {
            printAndEscape(value, offset, len, out);
        } else {
            out.append(value, offset, offset + len);
        }
    }

    private void printAndEscape(CharSequence value, int offset, int len, Appendable out) throws IOException {
        int i;
        int i2 = offset + len;
        char delimiter = getDelimiter();
        char charValue = getEscapeCharacter().charValue();
        int i3 = offset;
        while (offset < i2) {
            char charAt = value.charAt(offset);
            if (charAt == '\r' || charAt == '\n' || charAt == delimiter || charAt == charValue) {
                if (offset > i3) {
                    out.append(value, i3, offset);
                }
                if (charAt == '\n') {
                    charAt = 'n';
                } else if (charAt == '\r') {
                    charAt = 'r';
                }
                out.append(charValue);
                out.append(charAt);
                i = offset + 1;
            } else {
                i = i3;
            }
            offset++;
            i3 = i;
        }
        if (offset > i3) {
            out.append(value, i3, offset);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:68:0x009c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void printAndQuote(java.lang.Object r10, java.lang.CharSequence r11, int r12, int r13, java.lang.Appendable r14, boolean r15) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 220
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.csv.CSVFormat.printAndQuote(java.lang.Object, java.lang.CharSequence, int, int, java.lang.Appendable, boolean):void");
    }

    public void println(Appendable out) throws IOException {
        if (getTrailingDelimiter()) {
            out.append(getDelimiter());
        }
        if (this.recordSeparator != null) {
            out.append(this.recordSeparator);
        }
    }

    public void printRecord(Appendable out, Object... values) throws IOException {
        int i = 0;
        while (i < values.length) {
            print(values[i], out, i == 0);
            i++;
        }
        println(out);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Delimiter=<").append(this.delimiter).append('>');
        if (isEscapeCharacterSet()) {
            sb.append(' ');
            sb.append("Escape=<").append(this.escapeCharacter).append('>');
        }
        if (isQuoteCharacterSet()) {
            sb.append(' ');
            sb.append("QuoteChar=<").append(this.quoteCharacter).append('>');
        }
        if (isCommentMarkerSet()) {
            sb.append(' ');
            sb.append("CommentStart=<").append(this.commentMarker).append('>');
        }
        if (isNullStringSet()) {
            sb.append(' ');
            sb.append("NullString=<").append(this.nullString).append('>');
        }
        if (this.recordSeparator != null) {
            sb.append(' ');
            sb.append("RecordSeparator=<").append(this.recordSeparator).append('>');
        }
        if (getIgnoreEmptyLines()) {
            sb.append(" EmptyLines:ignored");
        }
        if (getIgnoreSurroundingSpaces()) {
            sb.append(" SurroundingSpaces:ignored");
        }
        if (getIgnoreHeaderCase()) {
            sb.append(" IgnoreHeaderCase:ignored");
        }
        sb.append(" SkipHeaderRecord:").append(this.skipHeaderRecord);
        if (this.headerComments != null) {
            sb.append(' ');
            sb.append("HeaderComments:").append(Arrays.toString(this.headerComments));
        }
        if (this.header != null) {
            sb.append(' ');
            sb.append("Header:").append(Arrays.toString(this.header));
        }
        return sb.toString();
    }

    private String[] toStringArray(Object[] values) {
        if (values == null) {
            return null;
        }
        String[] strArr = new String[values.length];
        for (int i = 0; i < values.length; i++) {
            Object obj = values[i];
            strArr[i] = obj == null ? null : obj.toString();
        }
        return strArr;
    }

    private CharSequence trim(CharSequence charSequence) {
        if (charSequence instanceof String) {
            return ((String) charSequence).trim();
        }
        int length = charSequence.length();
        int i = 0;
        while (i < length && charSequence.charAt(i) <= ' ') {
            i++;
        }
        int i2 = length;
        while (i < i2 && charSequence.charAt(i2 - 1) <= ' ') {
            i2--;
        }
        return (i > 0 || i2 < length) ? charSequence.subSequence(i, i2) : charSequence;
    }

    private void validate() throws IllegalArgumentException {
        if (isLineBreak(this.delimiter)) {
            throw new IllegalArgumentException("The delimiter cannot be a line break");
        }
        if (this.quoteCharacter != null && this.delimiter == this.quoteCharacter.charValue()) {
            throw new IllegalArgumentException("The quoteChar character and the delimiter cannot be the same ('" + this.quoteCharacter + "')");
        }
        if (this.escapeCharacter != null && this.delimiter == this.escapeCharacter.charValue()) {
            throw new IllegalArgumentException("The escape character and the delimiter cannot be the same ('" + this.escapeCharacter + "')");
        }
        if (this.commentMarker != null && this.delimiter == this.commentMarker.charValue()) {
            throw new IllegalArgumentException("The comment start character and the delimiter cannot be the same ('" + this.commentMarker + "')");
        }
        if (this.quoteCharacter != null && this.quoteCharacter.equals(this.commentMarker)) {
            throw new IllegalArgumentException("The comment start character and the quoteChar cannot be the same ('" + this.commentMarker + "')");
        }
        if (this.escapeCharacter != null && this.escapeCharacter.equals(this.commentMarker)) {
            throw new IllegalArgumentException("The comment start and the escape character cannot be the same ('" + this.commentMarker + "')");
        }
        if (this.escapeCharacter == null && this.quoteMode == QuoteMode.NONE) {
            throw new IllegalArgumentException("No quotes mode set but no escape character is set");
        }
        if (this.header != null) {
            HashSet hashSet = new HashSet();
            for (String str : this.header) {
                if (!hashSet.add(str)) {
                    throw new IllegalArgumentException("The header contains a duplicate entry: '" + str + "' in " + Arrays.toString(this.header));
                }
            }
        }
    }

    public CSVFormat withAllowMissingColumnNames() {
        return withAllowMissingColumnNames(true);
    }

    public CSVFormat withAllowMissingColumnNames(boolean allowMissingColumnNames) {
        return new CSVFormat(this.delimiter, this.quoteCharacter, this.quoteMode, this.commentMarker, this.escapeCharacter, this.ignoreSurroundingSpaces, this.ignoreEmptyLines, this.recordSeparator, this.nullString, this.headerComments, this.header, this.skipHeaderRecord, allowMissingColumnNames, this.ignoreHeaderCase, this.trim, this.trailingDelimiter);
    }

    public CSVFormat withCommentMarker(char commentMarker) {
        return withCommentMarker(Character.valueOf(commentMarker));
    }

    public CSVFormat withCommentMarker(Character commentMarker) {
        if (isLineBreak(commentMarker)) {
            throw new IllegalArgumentException("The comment start marker character cannot be a line break");
        }
        return new CSVFormat(this.delimiter, this.quoteCharacter, this.quoteMode, commentMarker, this.escapeCharacter, this.ignoreSurroundingSpaces, this.ignoreEmptyLines, this.recordSeparator, this.nullString, this.headerComments, this.header, this.skipHeaderRecord, this.allowMissingColumnNames, this.ignoreHeaderCase, this.trim, this.trailingDelimiter);
    }

    public CSVFormat withDelimiter(char delimiter) {
        if (isLineBreak(delimiter)) {
            throw new IllegalArgumentException("The delimiter cannot be a line break");
        }
        return new CSVFormat(delimiter, this.quoteCharacter, this.quoteMode, this.commentMarker, this.escapeCharacter, this.ignoreSurroundingSpaces, this.ignoreEmptyLines, this.recordSeparator, this.nullString, this.headerComments, this.header, this.skipHeaderRecord, this.allowMissingColumnNames, this.ignoreHeaderCase, this.trim, this.trailingDelimiter);
    }

    public CSVFormat withEscape(char escape) {
        return withEscape(Character.valueOf(escape));
    }

    public CSVFormat withEscape(Character escape) {
        if (isLineBreak(escape)) {
            throw new IllegalArgumentException("The escape character cannot be a line break");
        }
        return new CSVFormat(this.delimiter, this.quoteCharacter, this.quoteMode, this.commentMarker, escape, this.ignoreSurroundingSpaces, this.ignoreEmptyLines, this.recordSeparator, this.nullString, this.headerComments, this.header, this.skipHeaderRecord, this.allowMissingColumnNames, this.ignoreHeaderCase, this.trim, this.trailingDelimiter);
    }

    public CSVFormat withFirstRecordAsHeader() {
        return withHeader(new String[0]).withSkipHeaderRecord();
    }

    public CSVFormat withHeader(Class<? extends Enum<?>> headerEnum) {
        String[] strArr = null;
        if (headerEnum != null) {
            Enum[] enumArr = (Enum[]) headerEnum.getEnumConstants();
            String[] strArr2 = new String[enumArr.length];
            for (int i = 0; i < enumArr.length; i++) {
                strArr2[i] = enumArr[i].name();
            }
            strArr = strArr2;
        }
        return withHeader(strArr);
    }

    public CSVFormat withHeader(ResultSet resultSet) throws SQLException {
        return withHeader(resultSet != null ? resultSet.getMetaData() : null);
    }

    public CSVFormat withHeader(ResultSetMetaData metaData) throws SQLException {
        String[] strArr = null;
        if (metaData != null) {
            int columnCount = metaData.getColumnCount();
            strArr = new String[columnCount];
            for (int i = 0; i < columnCount; i++) {
                strArr[i] = metaData.getColumnLabel(i + 1);
            }
        }
        return withHeader(strArr);
    }

    public CSVFormat withHeader(String... header) {
        return new CSVFormat(this.delimiter, this.quoteCharacter, this.quoteMode, this.commentMarker, this.escapeCharacter, this.ignoreSurroundingSpaces, this.ignoreEmptyLines, this.recordSeparator, this.nullString, this.headerComments, header, this.skipHeaderRecord, this.allowMissingColumnNames, this.ignoreHeaderCase, this.trim, this.trailingDelimiter);
    }

    public CSVFormat withHeaderComments(Object... headerComments) {
        return new CSVFormat(this.delimiter, this.quoteCharacter, this.quoteMode, this.commentMarker, this.escapeCharacter, this.ignoreSurroundingSpaces, this.ignoreEmptyLines, this.recordSeparator, this.nullString, headerComments, this.header, this.skipHeaderRecord, this.allowMissingColumnNames, this.ignoreHeaderCase, this.trim, this.trailingDelimiter);
    }

    public CSVFormat withIgnoreEmptyLines() {
        return withIgnoreEmptyLines(true);
    }

    public CSVFormat withIgnoreEmptyLines(boolean ignoreEmptyLines) {
        return new CSVFormat(this.delimiter, this.quoteCharacter, this.quoteMode, this.commentMarker, this.escapeCharacter, this.ignoreSurroundingSpaces, ignoreEmptyLines, this.recordSeparator, this.nullString, this.headerComments, this.header, this.skipHeaderRecord, this.allowMissingColumnNames, this.ignoreHeaderCase, this.trim, this.trailingDelimiter);
    }

    public CSVFormat withIgnoreHeaderCase() {
        return withIgnoreHeaderCase(true);
    }

    public CSVFormat withIgnoreHeaderCase(boolean ignoreHeaderCase) {
        return new CSVFormat(this.delimiter, this.quoteCharacter, this.quoteMode, this.commentMarker, this.escapeCharacter, this.ignoreSurroundingSpaces, this.ignoreEmptyLines, this.recordSeparator, this.nullString, this.headerComments, this.header, this.skipHeaderRecord, this.allowMissingColumnNames, ignoreHeaderCase, this.trim, this.trailingDelimiter);
    }

    public CSVFormat withIgnoreSurroundingSpaces() {
        return withIgnoreSurroundingSpaces(true);
    }

    public CSVFormat withIgnoreSurroundingSpaces(boolean ignoreSurroundingSpaces) {
        return new CSVFormat(this.delimiter, this.quoteCharacter, this.quoteMode, this.commentMarker, this.escapeCharacter, ignoreSurroundingSpaces, this.ignoreEmptyLines, this.recordSeparator, this.nullString, this.headerComments, this.header, this.skipHeaderRecord, this.allowMissingColumnNames, this.ignoreHeaderCase, this.trim, this.trailingDelimiter);
    }

    public CSVFormat withNullString(String nullString) {
        return new CSVFormat(this.delimiter, this.quoteCharacter, this.quoteMode, this.commentMarker, this.escapeCharacter, this.ignoreSurroundingSpaces, this.ignoreEmptyLines, this.recordSeparator, nullString, this.headerComments, this.header, this.skipHeaderRecord, this.allowMissingColumnNames, this.ignoreHeaderCase, this.trim, this.trailingDelimiter);
    }

    public CSVFormat withQuote(char quoteChar) {
        return withQuote(Character.valueOf(quoteChar));
    }

    public CSVFormat withQuote(Character quoteChar) {
        if (isLineBreak(quoteChar)) {
            throw new IllegalArgumentException("The quoteChar cannot be a line break");
        }
        return new CSVFormat(this.delimiter, quoteChar, this.quoteMode, this.commentMarker, this.escapeCharacter, this.ignoreSurroundingSpaces, this.ignoreEmptyLines, this.recordSeparator, this.nullString, this.headerComments, this.header, this.skipHeaderRecord, this.allowMissingColumnNames, this.ignoreHeaderCase, this.trim, this.trailingDelimiter);
    }

    public CSVFormat withQuoteMode(QuoteMode quoteModePolicy) {
        return new CSVFormat(this.delimiter, this.quoteCharacter, quoteModePolicy, this.commentMarker, this.escapeCharacter, this.ignoreSurroundingSpaces, this.ignoreEmptyLines, this.recordSeparator, this.nullString, this.headerComments, this.header, this.skipHeaderRecord, this.allowMissingColumnNames, this.ignoreHeaderCase, this.trim, this.trailingDelimiter);
    }

    public CSVFormat withRecordSeparator(char recordSeparator) {
        return withRecordSeparator(String.valueOf(recordSeparator));
    }

    public CSVFormat withRecordSeparator(String recordSeparator) {
        return new CSVFormat(this.delimiter, this.quoteCharacter, this.quoteMode, this.commentMarker, this.escapeCharacter, this.ignoreSurroundingSpaces, this.ignoreEmptyLines, recordSeparator, this.nullString, this.headerComments, this.header, this.skipHeaderRecord, this.allowMissingColumnNames, this.ignoreHeaderCase, this.trim, this.trailingDelimiter);
    }

    public CSVFormat withSkipHeaderRecord() {
        return withSkipHeaderRecord(true);
    }

    public CSVFormat withSkipHeaderRecord(boolean skipHeaderRecord) {
        return new CSVFormat(this.delimiter, this.quoteCharacter, this.quoteMode, this.commentMarker, this.escapeCharacter, this.ignoreSurroundingSpaces, this.ignoreEmptyLines, this.recordSeparator, this.nullString, this.headerComments, this.header, skipHeaderRecord, this.allowMissingColumnNames, this.ignoreHeaderCase, this.trim, this.trailingDelimiter);
    }

    public CSVFormat withTrailingDelimiter() {
        return withTrailingDelimiter(true);
    }

    public CSVFormat withTrailingDelimiter(boolean trailingDelimiter) {
        return new CSVFormat(this.delimiter, this.quoteCharacter, this.quoteMode, this.commentMarker, this.escapeCharacter, this.ignoreSurroundingSpaces, this.ignoreEmptyLines, this.recordSeparator, this.nullString, this.headerComments, this.header, this.skipHeaderRecord, this.allowMissingColumnNames, this.ignoreHeaderCase, this.trim, trailingDelimiter);
    }

    public CSVFormat withTrim() {
        return withTrim(true);
    }

    public CSVFormat withTrim(boolean trim) {
        return new CSVFormat(this.delimiter, this.quoteCharacter, this.quoteMode, this.commentMarker, this.escapeCharacter, this.ignoreSurroundingSpaces, this.ignoreEmptyLines, this.recordSeparator, this.nullString, this.headerComments, this.header, this.skipHeaderRecord, this.allowMissingColumnNames, this.ignoreHeaderCase, trim, this.trailingDelimiter);
    }
}
