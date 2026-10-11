package org.apache.commons.csv;

import java.io.Closeable;
import java.io.IOException;
import org.apache.commons.csv.Token;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class Lexer implements Closeable {
    private static final char DISABLED = 65534;
    private final char commentStart;
    private final char delimiter;
    private final char escape;
    private final boolean ignoreEmptyLines;
    private final boolean ignoreSurroundingSpaces;
    private final char quoteChar;
    private final ExtendedBufferedReader reader;

    Lexer(CSVFormat format, ExtendedBufferedReader reader) {
        this.reader = reader;
        this.delimiter = format.getDelimiter();
        this.escape = mapNullToDisabled(format.getEscapeCharacter());
        this.quoteChar = mapNullToDisabled(format.getQuoteCharacter());
        this.commentStart = mapNullToDisabled(format.getCommentMarker());
        this.ignoreSurroundingSpaces = format.getIgnoreSurroundingSpaces();
        this.ignoreEmptyLines = format.getIgnoreEmptyLines();
    }

    Token nextToken(Token token) throws IOException {
        int lastChar = this.reader.getLastChar();
        int read = this.reader.read();
        boolean readEndOfLine = readEndOfLine(read);
        if (this.ignoreEmptyLines) {
            while (readEndOfLine && isStartOfLine(lastChar)) {
                int read2 = this.reader.read();
                readEndOfLine = readEndOfLine(read2);
                if (isEndOfFile(read2)) {
                    token.type = Token.Type.EOF;
                    break;
                }
                lastChar = read;
                read = read2;
            }
        }
        if (isEndOfFile(lastChar) || (!isDelimiter(lastChar) && isEndOfFile(read))) {
            token.type = Token.Type.EOF;
        } else if (isStartOfLine(lastChar) && isCommentStart(read)) {
            String readLine = this.reader.readLine();
            if (readLine == null) {
                token.type = Token.Type.EOF;
            } else {
                token.content.append(readLine.trim());
                token.type = Token.Type.COMMENT;
            }
        } else {
            while (token.type == Token.Type.INVALID) {
                if (this.ignoreSurroundingSpaces) {
                    while (isWhitespace(read) && !readEndOfLine) {
                        read = this.reader.read();
                        readEndOfLine = readEndOfLine(read);
                    }
                }
                if (isDelimiter(read)) {
                    token.type = Token.Type.TOKEN;
                } else if (readEndOfLine) {
                    token.type = Token.Type.EORECORD;
                } else if (isQuoteChar(read)) {
                    parseEncapsulatedToken(token);
                } else if (isEndOfFile(read)) {
                    token.type = Token.Type.EOF;
                    token.isReady = true;
                } else {
                    parseSimpleToken(token, read);
                }
            }
        }
        return token;
    }

    private Token parseSimpleToken(Token token, int ch) throws IOException {
        while (true) {
            if (readEndOfLine(ch)) {
                token.type = Token.Type.EORECORD;
                break;
            }
            if (isEndOfFile(ch)) {
                token.type = Token.Type.EOF;
                token.isReady = true;
                break;
            }
            if (isDelimiter(ch)) {
                token.type = Token.Type.TOKEN;
                break;
            }
            if (isEscape(ch)) {
                int readEscape = readEscape();
                if (readEscape == -1) {
                    token.content.append((char) ch).append((char) this.reader.getLastChar());
                } else {
                    token.content.append((char) readEscape);
                }
                ch = this.reader.read();
            } else {
                token.content.append((char) ch);
                ch = this.reader.read();
            }
        }
        if (this.ignoreSurroundingSpaces) {
            trimTrailingSpaces(token.content);
        }
        return token;
    }

    private Token parseEncapsulatedToken(Token token) throws IOException {
        int read;
        long currentLineNumber = getCurrentLineNumber();
        while (true) {
            int read2 = this.reader.read();
            if (isEscape(read2)) {
                int readEscape = readEscape();
                if (readEscape == -1) {
                    token.content.append((char) read2).append((char) this.reader.getLastChar());
                } else {
                    token.content.append((char) readEscape);
                }
            } else if (isQuoteChar(read2)) {
                if (isQuoteChar(this.reader.lookAhead())) {
                    token.content.append((char) this.reader.read());
                } else {
                    do {
                        read = this.reader.read();
                        if (isDelimiter(read)) {
                            token.type = Token.Type.TOKEN;
                        } else if (isEndOfFile(read)) {
                            token.type = Token.Type.EOF;
                            token.isReady = true;
                        } else if (readEndOfLine(read)) {
                            token.type = Token.Type.EORECORD;
                        }
                        return token;
                    } while (isWhitespace(read));
                    throw new IOException("(line " + getCurrentLineNumber() + ") invalid char between encapsulated token and delimiter");
                }
            } else {
                if (isEndOfFile(read2)) {
                    throw new IOException("(startline " + currentLineNumber + ") EOF reached before encapsulated token finished");
                }
                token.content.append((char) read2);
            }
        }
    }

    private char mapNullToDisabled(Character c) {
        return c == null ? DISABLED : c.charValue();
    }

    long getCurrentLineNumber() {
        return this.reader.getCurrentLineNumber();
    }

    long getCharacterPosition() {
        return this.reader.getPosition();
    }

    int readEscape() throws IOException {
        int read = this.reader.read();
        switch (read) {
            case -1:
                throw new IOException("EOF whilst processing escape sequence");
            case 8:
            case 9:
            case 10:
            case 12:
            case 13:
                return read;
            case 98:
                return 8;
            case 102:
                return 12;
            case 110:
                return 10;
            case 114:
                return 13;
            case 116:
                return 9;
            default:
                if (isMetaChar(read)) {
                    return read;
                }
                return -1;
        }
    }

    void trimTrailingSpaces(StringBuilder buffer) {
        int length = buffer.length();
        while (length > 0 && Character.isWhitespace(buffer.charAt(length - 1))) {
            length--;
        }
        if (length != buffer.length()) {
            buffer.setLength(length);
        }
    }

    boolean readEndOfLine(int ch) throws IOException {
        if (ch == 13 && this.reader.lookAhead() == 10) {
            ch = this.reader.read();
        }
        return ch == 10 || ch == 13;
    }

    boolean isClosed() {
        return this.reader.isClosed();
    }

    boolean isWhitespace(int ch) {
        return !isDelimiter(ch) && Character.isWhitespace((char) ch);
    }

    boolean isStartOfLine(int ch) {
        return ch == 10 || ch == 13 || ch == -2;
    }

    boolean isEndOfFile(int ch) {
        return ch == -1;
    }

    boolean isDelimiter(int ch) {
        return ch == this.delimiter;
    }

    boolean isEscape(int ch) {
        return ch == this.escape;
    }

    boolean isQuoteChar(int ch) {
        return ch == this.quoteChar;
    }

    boolean isCommentStart(int ch) {
        return ch == this.commentStart;
    }

    private boolean isMetaChar(int ch) {
        return ch == this.delimiter || ch == this.escape || ch == this.quoteChar || ch == this.commentStart;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.reader.close();
    }
}
