.class public final Lorg/apache/commons/csv/CSVParser;
.super Ljava/lang/Object;
.source "CSVParser.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;",
        "Ljava/lang/Iterable",
        "<",
        "Lorg/apache/commons/csv/CSVRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private final characterOffset:J

.field private final format:Lorg/apache/commons/csv/CSVFormat;

.field private final headerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final lexer:Lorg/apache/commons/csv/Lexer;

.field private final record:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private recordNumber:J

.field private final reusableToken:Lorg/apache/commons/csv/Token;


# direct methods
.method public constructor <init>(Ljava/io/Reader;Lorg/apache/commons/csv/CSVFormat;)V
    .locals 8
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "format"    # Lorg/apache/commons/csv/CSVFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/csv/CSVParser;-><init>(Ljava/io/Reader;Lorg/apache/commons/csv/CSVFormat;JJ)V

    .line 253
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Lorg/apache/commons/csv/CSVFormat;JJ)V
    .locals 3
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "format"    # Lorg/apache/commons/csv/CSVFormat;
    .param p3, "characterOffset"    # J
    .param p5, "recordNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/csv/CSVParser;->record:Ljava/util/List;

    .line 232
    new-instance v0, Lorg/apache/commons/csv/Token;

    invoke-direct {v0}, Lorg/apache/commons/csv/Token;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/csv/CSVParser;->reusableToken:Lorg/apache/commons/csv/Token;

    .line 279
    const-string v0, "reader"

    invoke-static {p1, v0}, Lorg/apache/commons/csv/Assertions;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    const-string v0, "format"

    invoke-static {p2, v0}, Lorg/apache/commons/csv/Assertions;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    iput-object p2, p0, Lorg/apache/commons/csv/CSVParser;->format:Lorg/apache/commons/csv/CSVFormat;

    .line 283
    new-instance v0, Lorg/apache/commons/csv/Lexer;

    new-instance v1, Lorg/apache/commons/csv/ExtendedBufferedReader;

    invoke-direct {v1, p1}, Lorg/apache/commons/csv/ExtendedBufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v0, p2, v1}, Lorg/apache/commons/csv/Lexer;-><init>(Lorg/apache/commons/csv/CSVFormat;Lorg/apache/commons/csv/ExtendedBufferedReader;)V

    iput-object v0, p0, Lorg/apache/commons/csv/CSVParser;->lexer:Lorg/apache/commons/csv/Lexer;

    .line 284
    invoke-direct {p0}, Lorg/apache/commons/csv/CSVParser;->initializeHeader()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/csv/CSVParser;->headerMap:Ljava/util/Map;

    .line 285
    iput-wide p3, p0, Lorg/apache/commons/csv/CSVParser;->characterOffset:J

    .line 286
    const-wide/16 v0, 0x1

    sub-long v0, p5, v0

    iput-wide v0, p0, Lorg/apache/commons/csv/CSVParser;->recordNumber:J

    .line 287
    return-void
.end method

.method private addRecordValue(Z)V
    .locals 3
    .param p1, "lastRecord"    # Z

    .prologue
    .line 290
    iget-object v0, p0, Lorg/apache/commons/csv/CSVParser;->reusableToken:Lorg/apache/commons/csv/Token;

    iget-object v0, v0, Lorg/apache/commons/csv/Token;->content:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    iget-object v1, p0, Lorg/apache/commons/csv/CSVParser;->format:Lorg/apache/commons/csv/CSVFormat;

    invoke-virtual {v1}, Lorg/apache/commons/csv/CSVFormat;->getTrim()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 292
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/csv/CSVParser;->format:Lorg/apache/commons/csv/CSVFormat;

    invoke-virtual {v1}, Lorg/apache/commons/csv/CSVFormat;->getTrailingDelimiter()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/csv/CSVParser;->format:Lorg/apache/commons/csv/CSVFormat;

    invoke-virtual {v1}, Lorg/apache/commons/csv/CSVFormat;->getNullString()Ljava/lang/String;

    move-result-object v1

    .line 296
    iget-object v2, p0, Lorg/apache/commons/csv/CSVParser;->record:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private initializeHeader()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 379
    .line 380
    iget-object v0, p0, Lorg/apache/commons/csv/CSVParser;->format:Lorg/apache/commons/csv/CSVFormat;

    invoke-virtual {v0}, Lorg/apache/commons/csv/CSVFormat;->getHeader()[Ljava/lang/String;

    move-result-object v3

    .line 381
    if-eqz v3, :cond_8

    .line 382
    iget-object v0, p0, Lorg/apache/commons/csv/CSVParser;->format:Lorg/apache/commons/csv/CSVFormat;

    invoke-virtual {v0}, Lorg/apache/commons/csv/CSVFormat;->getIgnoreHeaderCase()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/TreeMap;

    sget-object v4, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v4}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 387
    :goto_0
    array-length v4, v3

    if-nez v4, :cond_4

    .line 389
    invoke-virtual {p0}, Lorg/apache/commons/csv/CSVParser;->nextRecord()Lorg/apache/commons/csv/CSVRecord;

    move-result-object v3

    .line 390
    if-eqz v3, :cond_0

    .line 391
    invoke-virtual {v3}, Lorg/apache/commons/csv/CSVRecord;->values()[Ljava/lang/String;

    move-result-object v1

    :cond_0
    move-object v4, v1

    .line 401
    :goto_1
    if-eqz v4, :cond_9

    move v1, v2

    .line 402
    :goto_2
    array-length v3, v4

    if-ge v1, v3, :cond_9

    .line 403
    aget-object v5, v4, v1

    .line 404
    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    .line 405
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_1
    const/4 v3, 0x1

    .line 406
    :goto_3
    if-eqz v6, :cond_7

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/commons/csv/CSVParser;->format:Lorg/apache/commons/csv/CSVFormat;

    invoke-virtual {v3}, Lorg/apache/commons/csv/CSVFormat;->getAllowMissingColumnNames()Z

    move-result v3

    if-nez v3, :cond_7

    .line 407
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The header contains a duplicate name: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 408
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_0

    .line 394
    :cond_4
    iget-object v1, p0, Lorg/apache/commons/csv/CSVParser;->format:Lorg/apache/commons/csv/CSVFormat;

    invoke-virtual {v1}, Lorg/apache/commons/csv/CSVFormat;->getSkipHeaderRecord()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 395
    invoke-virtual {p0}, Lorg/apache/commons/csv/CSVParser;->nextRecord()Lorg/apache/commons/csv/CSVRecord;

    :cond_5
    move-object v4, v3

    .line 397
    goto :goto_1

    :cond_6
    move v3, v2

    .line 405
    goto :goto_3

    .line 410
    :cond_7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    move-object v0, v1

    .line 414
    :cond_9
    return-object v0
.end method

.method public static parse(Ljava/io/File;Ljava/nio/charset/Charset;Lorg/apache/commons/csv/CSVFormat;)Lorg/apache/commons/csv/CSVParser;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "format"    # Lorg/apache/commons/csv/CSVFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    const-string v0, "file"

    invoke-static {p0, v0}, Lorg/apache/commons/csv/Assertions;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    const-string v0, "format"

    invoke-static {p2, v0}, Lorg/apache/commons/csv/Assertions;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    new-instance v0, Lorg/apache/commons/csv/CSVParser;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1, p2}, Lorg/apache/commons/csv/CSVParser;-><init>(Ljava/io/Reader;Lorg/apache/commons/csv/CSVFormat;)V

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Lorg/apache/commons/csv/CSVFormat;)Lorg/apache/commons/csv/CSVParser;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "format"    # Lorg/apache/commons/csv/CSVFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    const-string v0, "string"

    invoke-static {p0, v0}, Lorg/apache/commons/csv/Assertions;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    const-string v0, "format"

    invoke-static {p1, v0}, Lorg/apache/commons/csv/Assertions;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    new-instance v0, Lorg/apache/commons/csv/CSVParser;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/csv/CSVParser;-><init>(Ljava/io/Reader;Lorg/apache/commons/csv/CSVFormat;)V

    return-object v0
.end method

.method public static parse(Ljava/net/URL;Ljava/nio/charset/Charset;Lorg/apache/commons/csv/CSVFormat;)Lorg/apache/commons/csv/CSVParser;
    .locals 3
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "format"    # Lorg/apache/commons/csv/CSVFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    const-string v0, "url"

    invoke-static {p0, v0}, Lorg/apache/commons/csv/Assertions;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    const-string v0, "charset"

    invoke-static {p1, v0}, Lorg/apache/commons/csv/Assertions;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    const-string v0, "format"

    invoke-static {p2, v0}, Lorg/apache/commons/csv/Assertions;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    new-instance v0, Lorg/apache/commons/csv/CSVParser;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1, p2}, Lorg/apache/commons/csv/CSVParser;-><init>(Ljava/io/Reader;Lorg/apache/commons/csv/CSVFormat;)V

    return-object v0
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
    .line 307
    iget-object v0, p0, Lorg/apache/commons/csv/CSVParser;->lexer:Lorg/apache/commons/csv/Lexer;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lorg/apache/commons/csv/CSVParser;->lexer:Lorg/apache/commons/csv/Lexer;

    invoke-virtual {v0}, Lorg/apache/commons/csv/Lexer;->close()V

    .line 310
    :cond_0
    return-void
.end method

.method public getCurrentLineNumber()J
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lorg/apache/commons/csv/CSVParser;->lexer:Lorg/apache/commons/csv/Lexer;

    invoke-virtual {v0}, Lorg/apache/commons/csv/Lexer;->getCurrentLineNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 334
    iget-object v0, p0, Lorg/apache/commons/csv/CSVParser;->headerMap:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lorg/apache/commons/csv/CSVParser;->headerMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public getRecordNumber()J
    .locals 2

    .prologue
    .line 348
    iget-wide v0, p0, Lorg/apache/commons/csv/CSVParser;->recordNumber:J

    return-wide v0
.end method

.method public getRecords()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/csv/CSVRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 366
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/csv/CSVParser;->nextRecord()Lorg/apache/commons/csv/CSVRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 367
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 369
    :cond_0
    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lorg/apache/commons/csv/CSVParser;->lexer:Lorg/apache/commons/csv/Lexer;

    invoke-virtual {v0}, Lorg/apache/commons/csv/Lexer;->isClosed()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/commons/csv/CSVRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 436
    new-instance v0, Lorg/apache/commons/csv/CSVParser$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/csv/CSVParser$1;-><init>(Lorg/apache/commons/csv/CSVParser;)V

    return-object v0
.end method

.method nextRecord()Lorg/apache/commons/csv/CSVRecord;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 494
    .line 495
    iget-object v0, p0, Lorg/apache/commons/csv/CSVParser;->record:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 497
    iget-object v0, p0, Lorg/apache/commons/csv/CSVParser;->lexer:Lorg/apache/commons/csv/Lexer;

    invoke-virtual {v0}, Lorg/apache/commons/csv/Lexer;->getCharacterPosition()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/csv/CSVParser;->characterOffset:J

    add-long v6, v2, v4

    move-object v0, v1

    .line 499
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/csv/CSVParser;->reusableToken:Lorg/apache/commons/csv/Token;

    invoke-virtual {v2}, Lorg/apache/commons/csv/Token;->reset()V

    .line 500
    iget-object v2, p0, Lorg/apache/commons/csv/CSVParser;->lexer:Lorg/apache/commons/csv/Lexer;

    iget-object v3, p0, Lorg/apache/commons/csv/CSVParser;->reusableToken:Lorg/apache/commons/csv/Token;

    invoke-virtual {v2, v3}, Lorg/apache/commons/csv/Lexer;->nextToken(Lorg/apache/commons/csv/Token;)Lorg/apache/commons/csv/Token;

    .line 501
    sget-object v2, Lorg/apache/commons/csv/CSVParser$2;->$SwitchMap$org$apache$commons$csv$Token$Type:[I

    iget-object v3, p0, Lorg/apache/commons/csv/CSVParser;->reusableToken:Lorg/apache/commons/csv/Token;

    iget-object v3, v3, Lorg/apache/commons/csv/Token;->type:Lorg/apache/commons/csv/Token$Type;

    invoke-virtual {v3}, Lorg/apache/commons/csv/Token$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 525
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected Token type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/csv/CSVParser;->reusableToken:Lorg/apache/commons/csv/Token;

    iget-object v2, v2, Lorg/apache/commons/csv/Token;->type:Lorg/apache/commons/csv/Token$Type;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 503
    :pswitch_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/apache/commons/csv/CSVParser;->addRecordValue(Z)V

    .line 527
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/csv/CSVParser;->reusableToken:Lorg/apache/commons/csv/Token;

    iget-object v2, v2, Lorg/apache/commons/csv/Token;->type:Lorg/apache/commons/csv/Token$Type;

    sget-object v3, Lorg/apache/commons/csv/Token$Type;->TOKEN:Lorg/apache/commons/csv/Token$Type;

    if-eq v2, v3, :cond_0

    .line 529
    iget-object v2, p0, Lorg/apache/commons/csv/CSVParser;->record:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 530
    iget-wide v2, p0, Lorg/apache/commons/csv/CSVParser;->recordNumber:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/csv/CSVParser;->recordNumber:J

    .line 531
    if-nez v0, :cond_3

    move-object v3, v1

    .line 532
    :goto_1
    new-instance v0, Lorg/apache/commons/csv/CSVRecord;

    iget-object v1, p0, Lorg/apache/commons/csv/CSVParser;->record:Ljava/util/List;

    iget-object v2, p0, Lorg/apache/commons/csv/CSVParser;->record:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/csv/CSVParser;->headerMap:Ljava/util/Map;

    iget-wide v4, p0, Lorg/apache/commons/csv/CSVParser;->recordNumber:J

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/csv/CSVRecord;-><init>([Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    .line 535
    :goto_2
    return-object v0

    .line 506
    :pswitch_1
    invoke-direct {p0, v8}, Lorg/apache/commons/csv/CSVParser;->addRecordValue(Z)V

    goto :goto_0

    .line 509
    :pswitch_2
    iget-object v2, p0, Lorg/apache/commons/csv/CSVParser;->reusableToken:Lorg/apache/commons/csv/Token;

    iget-boolean v2, v2, Lorg/apache/commons/csv/Token;->isReady:Z

    if-eqz v2, :cond_1

    .line 510
    invoke-direct {p0, v8}, Lorg/apache/commons/csv/CSVParser;->addRecordValue(Z)V

    goto :goto_0

    .line 514
    :pswitch_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/csv/CSVParser;->getCurrentLineNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") invalid parse sequence"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 516
    :pswitch_4
    if-nez v0, :cond_2

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 521
    :goto_3
    iget-object v2, p0, Lorg/apache/commons/csv/CSVParser;->reusableToken:Lorg/apache/commons/csv/Token;

    iget-object v2, v2, Lorg/apache/commons/csv/Token;->content:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 522
    iget-object v2, p0, Lorg/apache/commons/csv/CSVParser;->reusableToken:Lorg/apache/commons/csv/Token;

    sget-object v3, Lorg/apache/commons/csv/Token$Type;->TOKEN:Lorg/apache/commons/csv/Token$Type;

    iput-object v3, v2, Lorg/apache/commons/csv/Token;->type:Lorg/apache/commons/csv/Token$Type;

    goto :goto_0

    .line 519
    :cond_2
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 531
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_2

    .line 501
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
