.class final Lorg/apache/commons/csv/Lexer;
.super Ljava/lang/Object;
.source "Lexer.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final DISABLED:C = '\ufffe'


# instance fields
.field private final commentStart:C

.field private final delimiter:C

.field private final escape:C

.field private final ignoreEmptyLines:Z

.field private final ignoreSurroundingSpaces:Z

.field private final quoteChar:C

.field private final reader:Lorg/apache/commons/csv/ExtendedBufferedReader;


# direct methods
.method constructor <init>(Lorg/apache/commons/csv/CSVFormat;Lorg/apache/commons/csv/ExtendedBufferedReader;)V
    .locals 1
    .param p1, "format"    # Lorg/apache/commons/csv/CSVFormat;
    .param p2, "reader"    # Lorg/apache/commons/csv/ExtendedBufferedReader;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p2, p0, Lorg/apache/commons/csv/Lexer;->reader:Lorg/apache/commons/csv/ExtendedBufferedReader;

    .line 63
    invoke-virtual {p1}, Lorg/apache/commons/csv/CSVFormat;->getDelimiter()C

    move-result v0

    iput-char v0, p0, Lorg/apache/commons/csv/Lexer;->delimiter:C

    .line 64
    invoke-virtual {p1}, Lorg/apache/commons/csv/CSVFormat;->getEscapeCharacter()Ljava/lang/Character;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/csv/Lexer;->mapNullToDisabled(Ljava/lang/Character;)C

    move-result v0

    iput-char v0, p0, Lorg/apache/commons/csv/Lexer;->escape:C

    .line 65
    invoke-virtual {p1}, Lorg/apache/commons/csv/CSVFormat;->getQuoteCharacter()Ljava/lang/Character;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/csv/Lexer;->mapNullToDisabled(Ljava/lang/Character;)C

    move-result v0

    iput-char v0, p0, Lorg/apache/commons/csv/Lexer;->quoteChar:C

    .line 66
    invoke-virtual {p1}, Lorg/apache/commons/csv/CSVFormat;->getCommentMarker()Ljava/lang/Character;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/csv/Lexer;->mapNullToDisabled(Ljava/lang/Character;)C

    move-result v0

    iput-char v0, p0, Lorg/apache/commons/csv/Lexer;->commentStart:C

    .line 67
    invoke-virtual {p1}, Lorg/apache/commons/csv/CSVFormat;->getIgnoreSurroundingSpaces()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/csv/Lexer;->ignoreSurroundingSpaces:Z

    .line 68
    invoke-virtual {p1}, Lorg/apache/commons/csv/CSVFormat;->getIgnoreEmptyLines()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/csv/Lexer;->ignoreEmptyLines:Z

    .line 69
    return-void
.end method

.method private isMetaChar(I)Z
    .locals 1
    .param p1, "ch"    # I

    .prologue
    .line 426
    iget-char v0, p0, Lorg/apache/commons/csv/Lexer;->delimiter:C

    if-eq p1, v0, :cond_0

    iget-char v0, p0, Lorg/apache/commons/csv/Lexer;->escape:C

    if-eq p1, v0, :cond_0

    iget-char v0, p0, Lorg/apache/commons/csv/Lexer;->quoteChar:C

    if-eq p1, v0, :cond_0

    iget-char v0, p0, Lorg/apache/commons/csv/Lexer;->commentStart:C

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mapNullToDisabled(Ljava/lang/Character;)C
    .locals 1
    .param p1, "c"    # Ljava/lang/Character;

    .prologue
    .line 292
    if-nez p1, :cond_0

    const v0, 0xfffe

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    goto :goto_0
.end method

.method private parseEncapsulatedToken(Lorg/apache/commons/csv/Token;)Lorg/apache/commons/csv/Token;
    .locals 5
    .param p1, "token"    # Lorg/apache/commons/csv/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    invoke-virtual {p0}, Lorg/apache/commons/csv/Lexer;->getCurrentLineNumber()J

    move-result-wide v0

    .line 245
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/csv/Lexer;->reader:Lorg/apache/commons/csv/ExtendedBufferedReader;

    invoke-virtual {v2}, Lorg/apache/commons/csv/ExtendedBufferedReader;->read()I

    move-result v2

    .line 247
    invoke-virtual {p0, v2}, Lorg/apache/commons/csv/Lexer;->isEscape(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 248
    invoke-virtual {p0}, Lorg/apache/commons/csv/Lexer;->readEscape()I

    move-result v3

    .line 249
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 250
    iget-object v3, p1, Lorg/apache/commons/csv/Token;->content:Ljava/lang/StringBuilder;

    int-to-char v2, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/csv/Lexer;->reader:Lorg/apache/commons/csv/ExtendedBufferedReader;

    invoke-virtual {v3}, Lorg/apache/commons/csv/ExtendedBufferedReader;->getLastChar()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 252
    :cond_0
    iget-object v2, p1, Lorg/apache/commons/csv/Token;->content:Ljava/lang/StringBuilder;

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 254
    :cond_1
    invoke-virtual {p0, v2}, Lorg/apache/commons/csv/Lexer;->isQuoteChar(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 255
    iget-object v2, p0, Lorg/apache/commons/csv/Lexer;->reader:Lorg/apache/commons/csv/ExtendedBufferedReader;

    invoke-virtual {v2}, Lorg/apache/commons/csv/ExtendedBufferedReader;->lookAhead()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/csv/Lexer;->isQuoteChar(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 257
    iget-object v2, p0, Lorg/apache/commons/csv/Lexer;->reader:Lorg/apache/commons/csv/ExtendedBufferedReader;

    invoke-virtual {v2}, Lorg/apache/commons/csv/ExtendedBufferedReader;->read()I

    move-result v2

    .line 258
    iget-object v3, p1, Lorg/apache/commons/csv/Token;->content:Ljava/lang/StringBuilder;

    int-to-char v2, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 262
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/csv/Lexer;->reader:Lorg/apache/commons/csv/ExtendedBufferedReader;

    invoke-virtual {v0}, Lorg/apache/commons/csv/ExtendedBufferedReader;->read()I

    move-result v0

    .line 263
    invoke-virtual {p0, v0}, Lorg/apache/commons/csv/Lexer;->isDelimiter(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 264
    sget-object v0, Lorg/apache/commons/csv/Token$Type;->TOKEN:Lorg/apache/commons/csv/Token$Type;

    iput-object v0, p1, Lorg/apache/commons/csv/Token;->type:Lorg/apache/commons/csv/Token$Type;

    .line 272
    :goto_1
    return-object p1

    .line 266
    :cond_3
    invoke-virtual {p0, v0}, Lorg/apache/commons/csv/Lexer;->isEndOfFile(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 267
    sget-object v0, Lorg/apache/commons/csv/Token$Type;->EOF:Lorg/apache/commons/csv/Token$Type;

    iput-object v0, p1, Lorg/apache/commons/csv/Token;->type:Lorg/apache/commons/csv/Token$Type;

    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/apache/commons/csv/Token;->isReady:Z

    goto :goto_1

    .line 270
    :cond_4
    invoke-virtual {p0, v0}, Lorg/apache/commons/csv/Lexer;->readEndOfLine(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 271
    sget-object v0, Lorg/apache/commons/csv/Token$Type;->EORECORD:Lorg/apache/commons/csv/Token$Type;

    iput-object v0, p1, Lorg/apache/commons/csv/Token;->type:Lorg/apache/commons/csv/Token$Type;

    goto :goto_1

    .line 273
    :cond_5
    invoke-virtual {p0, v0}, Lorg/apache/commons/csv/Lexer;->isWhitespace(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 275
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/csv/Lexer;->getCurrentLineNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") invalid char between encapsulated token and delimiter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_6
    invoke-virtual {p0, v2}, Lorg/apache/commons/csv/Lexer;->isEndOfFile(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 282
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(startline "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") EOF reached before encapsulated token finished"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 286
    :cond_7
    iget-object v3, p1, Lorg/apache/commons/csv/Token;->content:Ljava/lang/StringBuilder;

    int-to-char v2, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method private parseSimpleToken(Lorg/apache/commons/csv/Token;I)Lorg/apache/commons/csv/Token;
    .locals 2
    .param p1, "token"    # Lorg/apache/commons/csv/Token;
    .param p2, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    :goto_0
    invoke-virtual {p0, p2}, Lorg/apache/commons/csv/Lexer;->readEndOfLine(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    sget-object v0, Lorg/apache/commons/csv/Token$Type;->EORECORD:Lorg/apache/commons/csv/Token$Type;

    iput-object v0, p1, Lorg/apache/commons/csv/Token;->type:Lorg/apache/commons/csv/Token$Type;

    .line 213
    :goto_1
    iget-boolean v0, p0, Lorg/apache/commons/csv/Lexer;->ignoreSurroundingSpaces:Z

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p1, Lorg/apache/commons/csv/Token;->content:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lorg/apache/commons/csv/Lexer;->trimTrailingSpaces(Ljava/lang/StringBuilder;)V

    .line 217
    :cond_0
    return-object p1

    .line 192
    :cond_1
    invoke-virtual {p0, p2}, Lorg/apache/commons/csv/Lexer;->isEndOfFile(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    sget-object v0, Lorg/apache/commons/csv/Token$Type;->EOF:Lorg/apache/commons/csv/Token$Type;

    iput-object v0, p1, Lorg/apache/commons/csv/Token;->type:Lorg/apache/commons/csv/Token$Type;

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/apache/commons/csv/Token;->isReady:Z

    goto :goto_1

    .line 196
    :cond_2
    invoke-virtual {p0, p2}, Lorg/apache/commons/csv/Lexer;->isDelimiter(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 197
    sget-object v0, Lorg/apache/commons/csv/Token$Type;->TOKEN:Lorg/apache/commons/csv/Token$Type;

    iput-object v0, p1, Lorg/apache/commons/csv/Token;->type:Lorg/apache/commons/csv/Token$Type;

    goto :goto_1

    .line 199
    :cond_3
    invoke-virtual {p0, p2}, Lorg/apache/commons/csv/Lexer;->isEscape(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 200
    invoke-virtual {p0}, Lorg/apache/commons/csv/Lexer;->readEscape()I

    move-result v0

    .line 201
    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 202
    iget-object v0, p1, Lorg/apache/commons/csv/Token;->content:Ljava/lang/StringBuilder;

    int-to-char v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/csv/Lexer;->reader:Lorg/apache/commons/csv/ExtendedBufferedReader;

    invoke-virtual {v1}, Lorg/apache/commons/csv/ExtendedBufferedReader;->getLastChar()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    :goto_2
    iget-object v0, p0, Lorg/apache/commons/csv/Lexer;->reader:Lorg/apache/commons/csv/ExtendedBufferedReader;

    invoke-virtual {v0}, Lorg/apache/commons/csv/ExtendedBufferedReader;->read()I

    move-result p2

    .line 207
    goto :goto_0

    .line 204
    :cond_4
    iget-object v1, p1, Lorg/apache/commons/csv/Token;->content:Ljava/lang/StringBuilder;

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 208
    :cond_5
    iget-object v0, p1, Lorg/apache/commons/csv/Token;->content:Ljava/lang/StringBuilder;

    int-to-char v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    iget-object v0, p0, Lorg/apache/commons/csv/Lexer;->reader:Lorg/apache/commons/csv/ExtendedBufferedReader;

    invoke-virtual {v0}, Lorg/apache/commons/csv/ExtendedBufferedReader;->read()I

    move-result p2

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 440
    iget-object v0, p0, Lorg/apache/commons/csv/Lexer;->reader:Lorg/apache/commons/csv/ExtendedBufferedReader;

    invoke-virtual {v0}, Lorg/apache/commons/csv/ExtendedBufferedReader;->close()V

    .line 441
    return-void
.end method

.method getCharacterPosition()J
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lorg/apache/commons/csv/Lexer;->reader:Lorg/apache/commons/csv/ExtendedBufferedReader;

    invoke-virtual {v0}, Lorg/apache/commons/csv/ExtendedBufferedReader;->getPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method getCurrentLineNumber()J
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lorg/apache/commons/csv/Lexer;->reader:Lorg/apache/commons/csv/ExtendedBufferedReader;

    invoke-virtual {v0}, Lorg/apache/commons/csv/ExtendedBufferedReader;->getCurrentLineNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method isClosed()Z
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lorg/apache/commons/csv/Lexer;->reader:Lorg/apache/commons/csv/ExtendedBufferedReader;

    invoke-virtual {v0}, Lorg/apache/commons/csv/ExtendedBufferedReader;->isClosed()Z

    move-result v0

    return v0
.end method

.method isCommentStart(I)Z
    .locals 1
    .param p1, "ch"    # I

    .prologue
    .line 422
    iget-char v0, p0, Lorg/apache/commons/csv/Lexer;->commentStart:C

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDelimiter(I)Z
    .locals 1
    .param p1, "ch"    # I

    .prologue
    .line 410
    iget-char v0, p0, Lorg/apache/commons/csv/Lexer;->delimiter:C

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isEndOfFile(I)Z
    .locals 1
    .param p1, "ch"    # I

    .prologue
    .line 406
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isEscape(I)Z
    .locals 1
    .param p1, "ch"    # I

    .prologue
    .line 414
    iget-char v0, p0, Lorg/apache/commons/csv/Lexer;->escape:C

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isQuoteChar(I)Z
    .locals 1
    .param p1, "ch"    # I

    .prologue
    .line 418
    iget-char v0, p0, Lorg/apache/commons/csv/Lexer;->quoteChar:C

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isStartOfLine(I)Z
    .locals 1
    .param p1, "ch"    # I

    .prologue
    .line 399
    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isWhitespace(I)Z
    .locals 1
    .param p1, "ch"    # I

    .prologue
    .line 389
    invoke-virtual {p0, p1}, Lorg/apache/commons/csv/Lexer;->isDelimiter(I)Z

    move-result v0

    if-nez v0, :cond_0

    int-to-char v0, p1

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method nextToken(Lorg/apache/commons/csv/Token;)Lorg/apache/commons/csv/Token;
    .locals 5
    .param p1, "token"    # Lorg/apache/commons/csv/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/commons/csv/Lexer;->reader:Lorg/apache/commons/csv/ExtendedBufferedReader;

    invoke-virtual {v0}, Lorg/apache/commons/csv/ExtendedBufferedReader;->getLastChar()I

    move-result v2

    .line 89
    iget-object v0, p0, Lorg/apache/commons/csv/Lexer;->reader:Lorg/apache/commons/csv/ExtendedBufferedReader;

    invoke-virtual {v0}, Lorg/apache/commons/csv/ExtendedBufferedReader;->read()I

    move-result v1

    .line 94
    invoke-virtual {p0, v1}, Lorg/apache/commons/csv/Lexer;->readEndOfLine(I)Z

    move-result v0

    .line 97
    iget-boolean v3, p0, Lorg/apache/commons/csv/Lexer;->ignoreEmptyLines:Z

    if-eqz v3, :cond_1

    .line 98
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lorg/apache/commons/csv/Lexer;->isStartOfLine(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 101
    iget-object v0, p0, Lorg/apache/commons/csv/Lexer;->reader:Lorg/apache/commons/csv/ExtendedBufferedReader;

    invoke-virtual {v0}, Lorg/apache/commons/csv/ExtendedBufferedReader;->read()I

    move-result v2

    .line 102
    invoke-virtual {p0, v2}, Lorg/apache/commons/csv/Lexer;->readEndOfLine(I)Z

    move-result v0

    .line 104
    invoke-virtual {p0, v2}, Lorg/apache/commons/csv/Lexer;->isEndOfFile(I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 105
    sget-object v0, Lorg/apache/commons/csv/Token$Type;->EOF:Lorg/apache/commons/csv/Token$Type;

    iput-object v0, p1, Lorg/apache/commons/csv/Token;->type:Lorg/apache/commons/csv/Token$Type;

    .line 164
    :cond_0
    :goto_1
    return-object p1

    .line 113
    :cond_1
    invoke-virtual {p0, v2}, Lorg/apache/commons/csv/Lexer;->isEndOfFile(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v2}, Lorg/apache/commons/csv/Lexer;->isDelimiter(I)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0, v1}, Lorg/apache/commons/csv/Lexer;->isEndOfFile(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 114
    :cond_2
    sget-object v0, Lorg/apache/commons/csv/Token$Type;->EOF:Lorg/apache/commons/csv/Token$Type;

    iput-object v0, p1, Lorg/apache/commons/csv/Token;->type:Lorg/apache/commons/csv/Token$Type;

    goto :goto_1

    .line 119
    :cond_3
    invoke-virtual {p0, v2}, Lorg/apache/commons/csv/Lexer;->isStartOfLine(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0, v1}, Lorg/apache/commons/csv/Lexer;->isCommentStart(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 120
    iget-object v0, p0, Lorg/apache/commons/csv/Lexer;->reader:Lorg/apache/commons/csv/ExtendedBufferedReader;

    invoke-virtual {v0}, Lorg/apache/commons/csv/ExtendedBufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 121
    if-nez v0, :cond_4

    .line 122
    sget-object v0, Lorg/apache/commons/csv/Token$Type;->EOF:Lorg/apache/commons/csv/Token$Type;

    iput-object v0, p1, Lorg/apache/commons/csv/Token;->type:Lorg/apache/commons/csv/Token$Type;

    goto :goto_1

    .line 126
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 127
    iget-object v1, p1, Lorg/apache/commons/csv/Token;->content:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    sget-object v0, Lorg/apache/commons/csv/Token$Type;->COMMENT:Lorg/apache/commons/csv/Token$Type;

    iput-object v0, p1, Lorg/apache/commons/csv/Token;->type:Lorg/apache/commons/csv/Token$Type;

    goto :goto_1

    .line 143
    :cond_5
    invoke-virtual {p0, v1}, Lorg/apache/commons/csv/Lexer;->isDelimiter(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 145
    sget-object v2, Lorg/apache/commons/csv/Token$Type;->TOKEN:Lorg/apache/commons/csv/Token$Type;

    iput-object v2, p1, Lorg/apache/commons/csv/Token;->type:Lorg/apache/commons/csv/Token$Type;

    .line 133
    :cond_6
    :goto_2
    iget-object v2, p1, Lorg/apache/commons/csv/Token;->type:Lorg/apache/commons/csv/Token$Type;

    sget-object v3, Lorg/apache/commons/csv/Token$Type;->INVALID:Lorg/apache/commons/csv/Token$Type;

    if-ne v2, v3, :cond_0

    .line 135
    iget-boolean v2, p0, Lorg/apache/commons/csv/Lexer;->ignoreSurroundingSpaces:Z

    if-eqz v2, :cond_5

    .line 136
    :goto_3
    invoke-virtual {p0, v1}, Lorg/apache/commons/csv/Lexer;->isWhitespace(I)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v0, :cond_5

    .line 137
    iget-object v0, p0, Lorg/apache/commons/csv/Lexer;->reader:Lorg/apache/commons/csv/ExtendedBufferedReader;

    invoke-virtual {v0}, Lorg/apache/commons/csv/ExtendedBufferedReader;->read()I

    move-result v1

    .line 138
    invoke-virtual {p0, v1}, Lorg/apache/commons/csv/Lexer;->readEndOfLine(I)Z

    move-result v0

    goto :goto_3

    .line 146
    :cond_7
    if-eqz v0, :cond_8

    .line 149
    sget-object v2, Lorg/apache/commons/csv/Token$Type;->EORECORD:Lorg/apache/commons/csv/Token$Type;

    iput-object v2, p1, Lorg/apache/commons/csv/Token;->type:Lorg/apache/commons/csv/Token$Type;

    goto :goto_2

    .line 150
    :cond_8
    invoke-virtual {p0, v1}, Lorg/apache/commons/csv/Lexer;->isQuoteChar(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 152
    invoke-direct {p0, p1}, Lorg/apache/commons/csv/Lexer;->parseEncapsulatedToken(Lorg/apache/commons/csv/Token;)Lorg/apache/commons/csv/Token;

    goto :goto_2

    .line 153
    :cond_9
    invoke-virtual {p0, v1}, Lorg/apache/commons/csv/Lexer;->isEndOfFile(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 156
    sget-object v2, Lorg/apache/commons/csv/Token$Type;->EOF:Lorg/apache/commons/csv/Token$Type;

    iput-object v2, p1, Lorg/apache/commons/csv/Token;->type:Lorg/apache/commons/csv/Token$Type;

    .line 157
    const/4 v2, 0x1

    iput-boolean v2, p1, Lorg/apache/commons/csv/Token;->isReady:Z

    goto :goto_2

    .line 161
    :cond_a
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/csv/Lexer;->parseSimpleToken(Lorg/apache/commons/csv/Token;I)Lorg/apache/commons/csv/Token;

    goto :goto_2

    :cond_b
    move v4, v2

    move v2, v1

    move v1, v4

    goto/16 :goto_0
.end method

.method readEndOfLine(I)Z
    .locals 3
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0xd

    const/16 v1, 0xa

    .line 374
    if-ne p1, v2, :cond_0

    iget-object v0, p0, Lorg/apache/commons/csv/Lexer;->reader:Lorg/apache/commons/csv/ExtendedBufferedReader;

    invoke-virtual {v0}, Lorg/apache/commons/csv/ExtendedBufferedReader;->lookAhead()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 376
    iget-object v0, p0, Lorg/apache/commons/csv/Lexer;->reader:Lorg/apache/commons/csv/ExtendedBufferedReader;

    invoke-virtual {v0}, Lorg/apache/commons/csv/ExtendedBufferedReader;->read()I

    move-result p1

    .line 378
    :cond_0
    if-eq p1, v1, :cond_1

    if-ne p1, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method readEscape()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    iget-object v0, p0, Lorg/apache/commons/csv/Lexer;->reader:Lorg/apache/commons/csv/ExtendedBufferedReader;

    invoke-virtual {v0}, Lorg/apache/commons/csv/ExtendedBufferedReader;->read()I

    move-result v0

    .line 328
    sparse-switch v0, :sswitch_data_0

    .line 349
    invoke-direct {p0, v0}, Lorg/apache/commons/csv/Lexer;->isMetaChar(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    :goto_0
    :sswitch_0
    return v0

    .line 330
    :sswitch_1
    const/16 v0, 0xd

    goto :goto_0

    .line 332
    :sswitch_2
    const/16 v0, 0xa

    goto :goto_0

    .line 334
    :sswitch_3
    const/16 v0, 0x9

    goto :goto_0

    .line 336
    :sswitch_4
    const/16 v0, 0x8

    goto :goto_0

    .line 338
    :sswitch_5
    const/16 v0, 0xc

    goto :goto_0

    .line 346
    :sswitch_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "EOF whilst processing escape sequence"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 328
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_6
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x62 -> :sswitch_4
        0x66 -> :sswitch_5
        0x6e -> :sswitch_2
        0x72 -> :sswitch_1
        0x74 -> :sswitch_3
    .end sparse-switch
.end method

.method trimTrailingSpaces(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuilder;

    .prologue
    .line 358
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 359
    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 362
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 363
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 365
    :cond_1
    return-void
.end method
