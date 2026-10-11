.class public final Lorg/apache/commons/csv/CSVPrinter;
.super Ljava/lang/Object;
.source "CSVPrinter.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field private final format:Lorg/apache/commons/csv/CSVFormat;

.field private newRecord:Z

.field private final out:Ljava/lang/Appendable;


# direct methods
.method public constructor <init>(Ljava/lang/Appendable;Lorg/apache/commons/csv/CSVFormat;)V
    .locals 4
    .param p1, "out"    # Ljava/lang/Appendable;
    .param p2, "format"    # Lorg/apache/commons/csv/CSVFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/csv/CSVPrinter;->newRecord:Z

    .line 61
    const-string v0, "out"

    invoke-static {p1, v0}, Lorg/apache/commons/csv/Assertions;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    const-string v0, "format"

    invoke-static {p2, v0}, Lorg/apache/commons/csv/Assertions;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lorg/apache/commons/csv/CSVPrinter;->out:Ljava/lang/Appendable;

    .line 65
    iput-object p2, p0, Lorg/apache/commons/csv/CSVPrinter;->format:Lorg/apache/commons/csv/CSVFormat;

    .line 68
    invoke-virtual {p2}, Lorg/apache/commons/csv/CSVFormat;->getHeaderComments()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {p2}, Lorg/apache/commons/csv/CSVFormat;->getHeaderComments()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 70
    if-eqz v3, :cond_0

    .line 71
    invoke-virtual {p0, v3}, Lorg/apache/commons/csv/CSVPrinter;->printComment(Ljava/lang/String;)V

    .line 69
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p2}, Lorg/apache/commons/csv/CSVFormat;->getHeader()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lorg/apache/commons/csv/CSVFormat;->getSkipHeaderRecord()Z

    move-result v0

    if-nez v0, :cond_2

    .line 76
    invoke-virtual {p2}, Lorg/apache/commons/csv/CSVFormat;->getHeader()[Ljava/lang/String;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/commons/csv/CSVPrinter;->printRecord([Ljava/lang/Object;)V

    .line 78
    :cond_2
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
    .line 86
    iget-object v0, p0, Lorg/apache/commons/csv/CSVPrinter;->out:Ljava/lang/Appendable;

    instance-of v0, v0, Ljava/io/Closeable;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lorg/apache/commons/csv/CSVPrinter;->out:Ljava/lang/Appendable;

    check-cast v0, Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 89
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lorg/apache/commons/csv/CSVPrinter;->out:Ljava/lang/Appendable;

    instance-of v0, v0, Ljava/io/Flushable;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lorg/apache/commons/csv/CSVPrinter;->out:Ljava/lang/Appendable;

    check-cast v0, Ljava/io/Flushable;

    invoke-interface {v0}, Ljava/io/Flushable;->flush()V

    .line 102
    :cond_0
    return-void
.end method

.method public getOut()Ljava/lang/Appendable;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/apache/commons/csv/CSVPrinter;->out:Ljava/lang/Appendable;

    return-object v0
.end method

.method public print(Ljava/lang/Object;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lorg/apache/commons/csv/CSVPrinter;->format:Lorg/apache/commons/csv/CSVFormat;

    iget-object v1, p0, Lorg/apache/commons/csv/CSVPrinter;->out:Ljava/lang/Appendable;

    iget-boolean v2, p0, Lorg/apache/commons/csv/CSVPrinter;->newRecord:Z

    invoke-virtual {v0, p1, v1, v2}, Lorg/apache/commons/csv/CSVFormat;->print(Ljava/lang/Object;Ljava/lang/Appendable;Z)V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/csv/CSVPrinter;->newRecord:Z

    .line 124
    return-void
.end method

.method public printComment(Ljava/lang/String;)V
    .locals 4
    .param p1, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x20

    .line 142
    iget-object v0, p0, Lorg/apache/commons/csv/CSVPrinter;->format:Lorg/apache/commons/csv/CSVFormat;

    invoke-virtual {v0}, Lorg/apache/commons/csv/CSVFormat;->isCommentMarkerSet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/csv/CSVPrinter;->newRecord:Z

    if-nez v0, :cond_1

    .line 146
    invoke-virtual {p0}, Lorg/apache/commons/csv/CSVPrinter;->println()V

    .line 148
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/csv/CSVPrinter;->out:Ljava/lang/Appendable;

    iget-object v1, p0, Lorg/apache/commons/csv/CSVPrinter;->format:Lorg/apache/commons/csv/CSVFormat;

    invoke-virtual {v1}, Lorg/apache/commons/csv/CSVFormat;->getCommentMarker()Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 149
    iget-object v0, p0, Lorg/apache/commons/csv/CSVPrinter;->out:Ljava/lang/Appendable;

    invoke-interface {v0, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 150
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 151
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 152
    packed-switch v1, :pswitch_data_0

    .line 164
    :pswitch_0
    iget-object v2, p0, Lorg/apache/commons/csv/CSVPrinter;->out:Ljava/lang/Appendable;

    invoke-interface {v2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 150
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 154
    :pswitch_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 155
    add-int/lit8 v0, v0, 0x1

    .line 159
    :cond_2
    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/commons/csv/CSVPrinter;->println()V

    .line 160
    iget-object v1, p0, Lorg/apache/commons/csv/CSVPrinter;->out:Ljava/lang/Appendable;

    iget-object v2, p0, Lorg/apache/commons/csv/CSVPrinter;->format:Lorg/apache/commons/csv/CSVFormat;

    invoke-virtual {v2}, Lorg/apache/commons/csv/CSVFormat;->getCommentMarker()Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 161
    iget-object v1, p0, Lorg/apache/commons/csv/CSVPrinter;->out:Ljava/lang/Appendable;

    invoke-interface {v1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_2

    .line 168
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/csv/CSVPrinter;->println()V

    goto :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public printRecord(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 197
    invoke-virtual {p0, v1}, Lorg/apache/commons/csv/CSVPrinter;->print(Ljava/lang/Object;)V

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/csv/CSVPrinter;->println()V

    .line 200
    return-void
.end method

.method public varargs printRecord([Ljava/lang/Object;)V
    .locals 2
    .param p1, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lorg/apache/commons/csv/CSVPrinter;->format:Lorg/apache/commons/csv/CSVFormat;

    iget-object v1, p0, Lorg/apache/commons/csv/CSVPrinter;->out:Ljava/lang/Appendable;

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/csv/CSVFormat;->printRecord(Ljava/lang/Appendable;[Ljava/lang/Object;)V

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/csv/CSVPrinter;->newRecord:Z

    .line 218
    return-void
.end method

.method public printRecords(Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 261
    instance-of v2, v0, [Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 262
    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/commons/csv/CSVPrinter;->printRecord([Ljava/lang/Object;)V

    goto :goto_0

    .line 263
    :cond_0
    instance-of v2, v0, Ljava/lang/Iterable;

    if-eqz v2, :cond_1

    .line 264
    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {p0, v0}, Lorg/apache/commons/csv/CSVPrinter;->printRecord(Ljava/lang/Iterable;)V

    goto :goto_0

    .line 266
    :cond_1
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v2}, Lorg/apache/commons/csv/CSVPrinter;->printRecord([Ljava/lang/Object;)V

    goto :goto_0

    .line 269
    :cond_2
    return-void
.end method

.method public printRecords(Ljava/sql/ResultSet;)V
    .locals 3
    .param p1, "resultSet"    # Ljava/sql/ResultSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 333
    invoke-interface {p1}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v1

    .line 334
    :goto_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    const/4 v0, 0x1

    :goto_1
    if-gt v0, v1, :cond_0

    .line 336
    invoke-interface {p1, v0}, Ljava/sql/ResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/csv/CSVPrinter;->print(Ljava/lang/Object;)V

    .line 335
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 338
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/csv/CSVPrinter;->println()V

    goto :goto_0

    .line 340
    :cond_1
    return-void
.end method

.method public varargs printRecords([Ljava/lang/Object;)V
    .locals 5
    .param p1, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 311
    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, p1, v1

    .line 312
    instance-of v4, v0, [Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 313
    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/commons/csv/CSVPrinter;->printRecord([Ljava/lang/Object;)V

    .line 311
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 314
    :cond_0
    instance-of v4, v0, Ljava/lang/Iterable;

    if-eqz v4, :cond_1

    .line 315
    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {p0, v0}, Lorg/apache/commons/csv/CSVPrinter;->printRecord(Ljava/lang/Iterable;)V

    goto :goto_1

    .line 317
    :cond_1
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-virtual {p0, v4}, Lorg/apache/commons/csv/CSVPrinter;->printRecord([Ljava/lang/Object;)V

    goto :goto_1

    .line 320
    :cond_2
    return-void
.end method

.method public println()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lorg/apache/commons/csv/CSVPrinter;->format:Lorg/apache/commons/csv/CSVFormat;

    iget-object v1, p0, Lorg/apache/commons/csv/CSVPrinter;->out:Ljava/lang/Appendable;

    invoke-virtual {v0, v1}, Lorg/apache/commons/csv/CSVFormat;->println(Ljava/lang/Appendable;)V

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/csv/CSVPrinter;->newRecord:Z

    .line 180
    return-void
.end method
