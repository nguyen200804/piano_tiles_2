.class public final Lcom/mnt/impl/j/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:[Ljava/lang/String;

.field c:I

.field d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/mnt/impl/j/a;->a:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    iget-object v0, p0, Lcom/mnt/impl/j/a;->b:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mnt/impl/j/a;->b:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 50
    iget-object v3, p0, Lcom/mnt/impl/j/a;->b:[Ljava/lang/String;

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    .line 51
    const/16 v6, 0x2c

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 55
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
