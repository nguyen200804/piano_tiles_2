.class public final Lorg/apache/commons/csv/CSVRecord;
.super Ljava/lang/Object;
.source "CSVRecord.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final characterPosition:J

.field private final comment:Ljava/lang/String;

.field private final mapping:Ljava/util/Map;
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

.field private final recordNumber:J

.field private final values:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/apache/commons/csv/CSVRecord;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>([Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "values"    # [Ljava/lang/String;
    .param p3, "comment"    # Ljava/lang/String;
    .param p4, "recordNumber"    # J
    .param p6, "characterPosition"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "JJ)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p2, "mapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-wide p4, p0, Lorg/apache/commons/csv/CSVRecord;->recordNumber:J

    .line 56
    if-eqz p1, :cond_0

    .end local p1    # "values":[Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lorg/apache/commons/csv/CSVRecord;->values:[Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lorg/apache/commons/csv/CSVRecord;->mapping:Ljava/util/Map;

    .line 58
    iput-object p3, p0, Lorg/apache/commons/csv/CSVRecord;->comment:Ljava/lang/String;

    .line 59
    iput-wide p6, p0, Lorg/apache/commons/csv/CSVRecord;->characterPosition:J

    .line 60
    return-void

    .line 56
    .restart local p1    # "values":[Ljava/lang/String;
    :cond_0
    sget-object p1, Lorg/apache/commons/csv/CSVRecord;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0
.end method

.method private toList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lorg/apache/commons/csv/CSVRecord;->values:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/commons/csv/CSVRecord;->values:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public get(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/csv/CSVRecord;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 98
    iget-object v0, p0, Lorg/apache/commons/csv/CSVRecord;->mapping:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No header mapping was specified, the record values can\'t be accessed by name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/csv/CSVRecord;->mapping:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 103
    if-nez v0, :cond_1

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mapping for %s not found, expected one of %s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v4

    iget-object v3, p0, Lorg/apache/commons/csv/CSVRecord;->mapping:Ljava/util/Map;

    .line 105
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    aput-object v3, v2, v5

    .line 104
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/csv/CSVRecord;->values:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v0, v1, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 109
    :catch_0
    move-exception v1

    .line 110
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Index for header \'%s\' is %d but CSVRecord only has %d values!"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object v0, v3, v5

    iget-object v0, p0, Lorg/apache/commons/csv/CSVRecord;->values:[Ljava/lang/String;

    array-length v0, v0

    .line 112
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    .line 110
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getCharacterPosition()J
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lorg/apache/commons/csv/CSVRecord;->characterPosition:J

    return-wide v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/apache/commons/csv/CSVRecord;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordNumber()J
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Lorg/apache/commons/csv/CSVRecord;->recordNumber:J

    return-wide v0
.end method

.method public hasComment()Z
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lorg/apache/commons/csv/CSVRecord;->comment:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConsistent()Z
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lorg/apache/commons/csv/CSVRecord;->mapping:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/csv/CSVRecord;->mapping:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/csv/CSVRecord;->values:[Ljava/lang/String;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMapped(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 188
    iget-object v0, p0, Lorg/apache/commons/csv/CSVRecord;->mapping:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/csv/CSVRecord;->mapping:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSet(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Lorg/apache/commons/csv/CSVRecord;->isMapped(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/csv/CSVRecord;->mapping:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/csv/CSVRecord;->values:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    invoke-direct {p0}, Lorg/apache/commons/csv/CSVRecord;->toList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method putIn(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>(TM;)TM;"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, "map":Ljava/util/Map;, "TM;"
    iget-object v0, p0, Lorg/apache/commons/csv/CSVRecord;->mapping:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 229
    :cond_0
    return-object p1

    .line 223
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/csv/CSVRecord;->mapping:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 224
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 225
    iget-object v3, p0, Lorg/apache/commons/csv/CSVRecord;->values:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 226
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/csv/CSVRecord;->values:[Ljava/lang/String;

    aget-object v1, v3, v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lorg/apache/commons/csv/CSVRecord;->values:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public toMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lorg/apache/commons/csv/CSVRecord;->values:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/csv/CSVRecord;->putIn(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CSVRecord [comment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/csv/CSVRecord;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mapping="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/csv/CSVRecord;->mapping:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recordNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/commons/csv/CSVRecord;->recordNumber:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", values="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/csv/CSVRecord;->values:[Ljava/lang/String;

    .line 271
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method values()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lorg/apache/commons/csv/CSVRecord;->values:[Ljava/lang/String;

    return-object v0
.end method
