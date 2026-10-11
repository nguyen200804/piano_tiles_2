.class Lcom/cmplay/b/e$b;
.super Ljava/lang/Object;
.source "CacheUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private static a([BC)I
    .locals 2

    .prologue
    .line 801
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 802
    aget-byte v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 806
    :goto_1
    return v0

    .line 801
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 806
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 719
    invoke-static {p0}, Lcom/cmplay/b/e$b;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static a([B)Z
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 738
    invoke-static {p0}, Lcom/cmplay/b/e$b;->c([B)[Ljava/lang/String;

    move-result-object v3

    .line 739
    if-eqz v3, :cond_1

    array-length v0, v3

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    .line 740
    aget-object v0, v3, v2

    .line 741
    :goto_0
    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 742
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 745
    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 746
    aget-object v0, v3, v1

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 747
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v6, v10

    add-long/2addr v4, v6

    cmp-long v0, v8, v4

    if-lez v0, :cond_1

    move v0, v1

    .line 751
    :goto_1
    return v0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method private static a([BII)[B
    .locals 4

    .prologue
    .line 810
    sub-int v0, p2, p1

    .line 811
    if-gez v0, :cond_0

    .line 812
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 813
    :cond_0
    new-array v1, v0, [B

    .line 814
    const/4 v2, 0x0

    array-length v3, p0

    sub-int/2addr v3, p1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 816
    return-object v1
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 719
    invoke-static {p0}, Lcom/cmplay/b/e$b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b([B)Z
    .locals 2

    .prologue
    .line 786
    if-eqz p0, :cond_0

    array-length v0, p0

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    const/16 v0, 0xd

    aget-byte v0, p0, v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    const/16 v0, 0x20

    invoke-static {p0, v0}, Lcom/cmplay/b/e$b;->a([BC)I

    move-result v0

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 728
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/b/e$b;->a([B)Z

    move-result v0

    return v0
.end method

.method private static c([B)[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 791
    invoke-static {p0}, Lcom/cmplay/b/e$b;->b([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 792
    new-instance v1, Ljava/lang/String;

    const/16 v0, 0xd

    invoke-static {p0, v4, v0}, Lcom/cmplay/b/e$b;->a([BII)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 793
    new-instance v2, Ljava/lang/String;

    const/16 v0, 0xe

    const/16 v3, 0x20

    invoke-static {p0, v3}, Lcom/cmplay/b/e$b;->a([BC)I

    move-result v3

    invoke-static {p0, v0, v3}, Lcom/cmplay/b/e$b;->a([BII)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 795
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    aput-object v1, v0, v4

    const/4 v1, 0x1

    aput-object v2, v0, v1

    .line 797
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 770
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/b/e$b;->b([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 774
    :cond_0
    return-object p0
.end method
