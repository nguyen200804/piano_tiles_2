.class public final Lcom/mnt/impl/i/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x33

    const/16 v5, 0x32

    const/16 v4, 0x31

    const/16 v3, 0x30

    .line 17
    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x42

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x45

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x4e

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    aput-byte v5, v0, v1

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    const/4 v1, 0x6

    aput-byte v4, v0, v1

    const/4 v1, 0x7

    aput-byte v5, v0, v1

    const/16 v1, 0x8

    aput-byte v3, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    aput-byte v6, v0, v1

    const/16 v1, 0xb

    aput-byte v3, v0, v1

    const/16 v1, 0xc

    aput-byte v4, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    aput-byte v6, v0, v1

    const/16 v1, 0xf

    aput-byte v3, v0, v1

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    :try_start_0
    sget-object v0, Lcom/mnt/impl/e;->aN:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mnt/impl/i/a/b;->a([BLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    .line 59
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 62
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a([BLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    :try_start_0
    sget-object v0, Lcom/mnt/impl/e;->aO:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mnt/impl/i/a/b;->a([B[B)[B

    move-result-object v0

    .line 86
    invoke-static {v0}, Lcom/mnt/impl/i/a/a;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    .line 89
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a([BB)[B
    .locals 3

    .prologue
    .line 22
    :try_start_0
    array-length v0, p0

    new-array v0, v0, [B

    .line 23
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 24
    aget-byte v2, p0, v1

    xor-int/2addr v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method private static a([B[B)[B
    .locals 2

    .prologue
    .line 42
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 43
    aget-byte v1, p1, v0

    invoke-static {p0, v1}, Lcom/mnt/impl/i/a/b;->a([BB)[B

    move-result-object p0

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_0
    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 105
    :try_start_0
    invoke-static {p0}, Lcom/mnt/impl/i/a/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    sget-object v1, Lcom/mnt/impl/e;->aP:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mnt/impl/i/a/b;->a([B[B)[B

    move-result-object v1

    .line 106
    new-instance v0, Ljava/lang/String;

    sget-object v2, Lcom/mnt/impl/e;->aQ:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-object v0

    .line 108
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    const/4 v0, 0x0

    goto :goto_0
.end method
