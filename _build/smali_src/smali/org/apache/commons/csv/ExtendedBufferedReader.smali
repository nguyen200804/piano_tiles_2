.class final Lorg/apache/commons/csv/ExtendedBufferedReader;
.super Ljava/io/BufferedReader;
.source "ExtendedBufferedReader.java"


# instance fields
.field private closed:Z

.field private eolCounter:J

.field private lastChar:I

.field private position:J


# direct methods
.method constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 41
    const/4 v0, -0x2

    iput v0, p0, Lorg/apache/commons/csv/ExtendedBufferedReader;->lastChar:I

    .line 56
    return-void
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
    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/csv/ExtendedBufferedReader;->closed:Z

    .line 189
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/csv/ExtendedBufferedReader;->lastChar:I

    .line 190
    invoke-super {p0}, Ljava/io/BufferedReader;->close()V

    .line 191
    return-void
.end method

.method getCurrentLineNumber()J
    .locals 4

    .prologue
    .line 160
    iget v0, p0, Lorg/apache/commons/csv/ExtendedBufferedReader;->lastChar:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/apache/commons/csv/ExtendedBufferedReader;->lastChar:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/apache/commons/csv/ExtendedBufferedReader;->lastChar:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/apache/commons/csv/ExtendedBufferedReader;->lastChar:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 161
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/csv/ExtendedBufferedReader;->eolCounter:J

    .line 163
    :goto_0
    return-wide v0

    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/csv/ExtendedBufferedReader;->eolCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method getLastChar()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lorg/apache/commons/csv/ExtendedBufferedReader;->lastChar:I

    return v0
.end method

.method getPosition()J
    .locals 2

    .prologue
    .line 172
    iget-wide v0, p0, Lorg/apache/commons/csv/ExtendedBufferedReader;->position:J

    return-wide v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lorg/apache/commons/csv/ExtendedBufferedReader;->closed:Z

    return v0
.end method

.method lookAhead()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    const/4 v0, 0x1

    invoke-super {p0, v0}, Ljava/io/BufferedReader;->mark(I)V

    .line 147
    invoke-super {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    .line 148
    invoke-super {p0}, Ljava/io/BufferedReader;->reset()V

    .line 150
    return v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x1

    const/16 v2, 0xd

    .line 60
    invoke-super {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    .line 61
    if-eq v0, v2, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    iget v1, p0, Lorg/apache/commons/csv/ExtendedBufferedReader;->lastChar:I

    if-eq v1, v2, :cond_1

    .line 62
    :cond_0
    iget-wide v2, p0, Lorg/apache/commons/csv/ExtendedBufferedReader;->eolCounter:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/csv/ExtendedBufferedReader;->eolCounter:J

    .line 64
    :cond_1
    iput v0, p0, Lorg/apache/commons/csv/ExtendedBufferedReader;->lastChar:I

    .line 65
    iget-wide v0, p0, Lorg/apache/commons/csv/ExtendedBufferedReader;->position:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lorg/apache/commons/csv/ExtendedBufferedReader;->position:J

    .line 66
    iget v0, p0, Lorg/apache/commons/csv/ExtendedBufferedReader;->lastChar:I

    return v0
.end method

.method public read([CII)I
    .locals 10
    .param p1, "buf"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x1

    const/16 v6, 0xd

    const/4 v1, -0x1

    .line 83
    if-nez p3, :cond_0

    .line 84
    const/4 v0, 0x0

    .line 109
    :goto_0
    return v0

    .line 87
    :cond_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedReader;->read([CII)I

    move-result v0

    .line 89
    if-lez v0, :cond_6

    move v2, p2

    .line 91
    :goto_1
    add-int v1, p2, v0

    if-ge v2, v1, :cond_4

    .line 92
    aget-char v1, p1, v2

    .line 93
    const/16 v3, 0xa

    if-ne v1, v3, :cond_3

    .line 94
    if-lez v2, :cond_2

    add-int/lit8 v1, v2, -0x1

    aget-char v1, p1, v1

    :goto_2
    if-eq v6, v1, :cond_1

    .line 95
    iget-wide v4, p0, Lorg/apache/commons/csv/ExtendedBufferedReader;->eolCounter:J

    add-long/2addr v4, v8

    iput-wide v4, p0, Lorg/apache/commons/csv/ExtendedBufferedReader;->eolCounter:J

    .line 91
    :cond_1
    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 94
    :cond_2
    iget v1, p0, Lorg/apache/commons/csv/ExtendedBufferedReader;->lastChar:I

    goto :goto_2

    .line 97
    :cond_3
    if-ne v1, v6, :cond_1

    .line 98
    iget-wide v4, p0, Lorg/apache/commons/csv/ExtendedBufferedReader;->eolCounter:J

    add-long/2addr v4, v8

    iput-wide v4, p0, Lorg/apache/commons/csv/ExtendedBufferedReader;->eolCounter:J

    goto :goto_3

    .line 102
    :cond_4
    add-int v1, p2, v0

    add-int/lit8 v1, v1, -0x1

    aget-char v1, p1, v1

    iput v1, p0, Lorg/apache/commons/csv/ExtendedBufferedReader;->lastChar:I

    .line 108
    :cond_5
    :goto_4
    iget-wide v2, p0, Lorg/apache/commons/csv/ExtendedBufferedReader;->position:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/csv/ExtendedBufferedReader;->position:J

    goto :goto_0

    .line 104
    :cond_6
    if-ne v0, v1, :cond_5

    .line 105
    iput v1, p0, Lorg/apache/commons/csv/ExtendedBufferedReader;->lastChar:I

    goto :goto_4
.end method

.method public readLine()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-super {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_0

    .line 127
    const/16 v1, 0xa

    iput v1, p0, Lorg/apache/commons/csv/ExtendedBufferedReader;->lastChar:I

    .line 128
    iget-wide v2, p0, Lorg/apache/commons/csv/ExtendedBufferedReader;->eolCounter:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/csv/ExtendedBufferedReader;->eolCounter:J

    .line 133
    :goto_0
    return-object v0

    .line 130
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/commons/csv/ExtendedBufferedReader;->lastChar:I

    goto :goto_0
.end method
