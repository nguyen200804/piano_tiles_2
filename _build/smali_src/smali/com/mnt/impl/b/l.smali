.class final Lcom/mnt/impl/b/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/mnt/impl/e/c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/mnt/impl/e/c;Lcom/mnt/impl/e/c;)I
    .locals 5

    .prologue
    .line 351
    const/4 v1, -0x1

    .line 1181
    :try_start_0
    iget v0, p1, Lcom/mnt/impl/e/c;->g:I

    .line 2181
    iget v1, p0, Lcom/mnt/impl/e/c;->g:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    sub-int/2addr v0, v1

    .line 354
    if-nez v0, :cond_0

    .line 355
    :try_start_1
    invoke-virtual {p1}, Lcom/mnt/impl/e/c;->getCampId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/mnt/impl/e/c;->getCampId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    sub-long v0, v2, v0

    long-to-int v0, v0

    .line 360
    :cond_0
    :goto_0
    return v0

    .line 358
    :catch_0
    move-exception v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 348
    check-cast p1, Lcom/mnt/impl/e/c;

    check-cast p2, Lcom/mnt/impl/e/c;

    invoke-static {p1, p2}, Lcom/mnt/impl/b/l;->a(Lcom/mnt/impl/e/c;Lcom/mnt/impl/e/c;)I

    move-result v0

    return v0
.end method
