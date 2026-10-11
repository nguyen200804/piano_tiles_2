.class Lorg/apache/commons/csv/CSVParser$1;
.super Ljava/lang/Object;
.source "CSVParser.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/csv/CSVParser;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lorg/apache/commons/csv/CSVRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private current:Lorg/apache/commons/csv/CSVRecord;

.field final synthetic this$0:Lorg/apache/commons/csv/CSVParser;


# direct methods
.method constructor <init>(Lorg/apache/commons/csv/CSVParser;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/commons/csv/CSVParser;

    .prologue
    .line 436
    iput-object p1, p0, Lorg/apache/commons/csv/CSVParser$1;->this$0:Lorg/apache/commons/csv/CSVParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getNextRecord()Lorg/apache/commons/csv/CSVRecord;
    .locals 2

    .prologue
    .line 441
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/csv/CSVParser$1;->this$0:Lorg/apache/commons/csv/CSVParser;

    invoke-virtual {v0}, Lorg/apache/commons/csv/CSVParser;->nextRecord()Lorg/apache/commons/csv/CSVRecord;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 442
    :catch_0
    move-exception v0

    .line 444
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 450
    iget-object v1, p0, Lorg/apache/commons/csv/CSVParser$1;->this$0:Lorg/apache/commons/csv/CSVParser;

    invoke-virtual {v1}, Lorg/apache/commons/csv/CSVParser;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 457
    :cond_0
    :goto_0
    return v0

    .line 453
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/csv/CSVParser$1;->current:Lorg/apache/commons/csv/CSVRecord;

    if-nez v1, :cond_2

    .line 454
    invoke-direct {p0}, Lorg/apache/commons/csv/CSVParser$1;->getNextRecord()Lorg/apache/commons/csv/CSVRecord;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/csv/CSVParser$1;->current:Lorg/apache/commons/csv/CSVRecord;

    .line 457
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/csv/CSVParser$1;->current:Lorg/apache/commons/csv/CSVRecord;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 436
    invoke-virtual {p0}, Lorg/apache/commons/csv/CSVParser$1;->next()Lorg/apache/commons/csv/CSVRecord;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/commons/csv/CSVRecord;
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lorg/apache/commons/csv/CSVParser$1;->this$0:Lorg/apache/commons/csv/CSVParser;

    invoke-virtual {v0}, Lorg/apache/commons/csv/CSVParser;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "CSVParser has been closed"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/csv/CSVParser$1;->current:Lorg/apache/commons/csv/CSVRecord;

    .line 466
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/csv/CSVParser$1;->current:Lorg/apache/commons/csv/CSVRecord;

    .line 468
    if-nez v0, :cond_1

    .line 470
    invoke-direct {p0}, Lorg/apache/commons/csv/CSVParser$1;->getNextRecord()Lorg/apache/commons/csv/CSVRecord;

    move-result-object v0

    .line 471
    if-nez v0, :cond_1

    .line 472
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more CSV records available"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :cond_1
    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 481
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
