.class public Lcom/cmcm/dmc/sdk/g/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/dmc/sdk/g/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field static final a:Lcom/cmcm/dmc/sdk/g/c$a;

.field private static final f:[C

.field private static final g:[C


# instance fields
.field private final b:[B

.field private final c:I

.field private final d:Z

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/cmcm/dmc/sdk/g/c$a;->f:[C

    sget-object v0, Lcom/cmcm/dmc/sdk/g/c$a;->f:[C

    sput-object v0, Lcom/cmcm/dmc/sdk/g/c$a;->g:[C

    new-instance v0, Lcom/cmcm/dmc/sdk/g/c$a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/cmcm/dmc/sdk/g/c$a;-><init>(Z[BIZ)V

    sput-object v0, Lcom/cmcm/dmc/sdk/g/c$a;->a:Lcom/cmcm/dmc/sdk/g/c$a;

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x4bs
        0x61s
        0x6as
        0x44s
        0x37s
        0x41s
        0x5as
        0x63s
        0x46s
        0x32s
        0x51s
        0x6es
        0x50s
        0x72s
        0x35s
        0x66s
        0x77s
        0x69s
        0x48s
        0x52s
        0x4es
        0x79s
        0x67s
        0x6ds
        0x75s
        0x70s
        0x55s
        0x54s
        0x49s
        0x58s
        0x78s
        0x36s
        0x39s
        0x42s
        0x57s
        0x62s
        0x2ds
        0x68s
        0x4ds
        0x43s
        0x47s
        0x4as
        0x6fs
        0x5fs
        0x56s
        0x38s
        0x45s
        0x73s
        0x6bs
        0x7as
        0x31s
        0x59s
        0x64s
        0x76s
        0x4cs
        0x33s
        0x34s
        0x6cs
        0x65s
        0x74s
        0x71s
        0x53s
        0x4fs
    .end array-data
.end method

.method private constructor <init>(Z[BIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/cmcm/dmc/sdk/g/c$a;->d:Z

    iput-object p2, p0, Lcom/cmcm/dmc/sdk/g/c$a;->b:[B

    iput p3, p0, Lcom/cmcm/dmc/sdk/g/c$a;->c:I

    iput-boolean p4, p0, Lcom/cmcm/dmc/sdk/g/c$a;->e:Z

    return-void
.end method

.method private a(I)I
    .locals 3

    iget-boolean v0, p0, Lcom/cmcm/dmc/sdk/g/c$a;->e:Z

    if-eqz v0, :cond_1

    add-int/lit8 v0, p1, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    :goto_0
    iget v1, p0, Lcom/cmcm/dmc/sdk/g/c$a;->c:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    iget v2, p0, Lcom/cmcm/dmc/sdk/g/c$a;->c:I

    div-int/2addr v1, v2

    iget-object v2, p0, Lcom/cmcm/dmc/sdk/g/c$a;->b:[B

    array-length v2, v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_0
    return v0

    :cond_1
    rem-int/lit8 v0, p1, 0x3

    div-int/lit8 v1, p1, 0x3

    mul-int/lit8 v1, v1, 0x4

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private a([BII[B)I
    .locals 10

    iget-boolean v0, p0, Lcom/cmcm/dmc/sdk/g/c$a;->d:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/cmcm/dmc/sdk/g/c$a;->g:[C

    :goto_0
    sub-int v1, p3, p2

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x3

    add-int v6, p2, v1

    iget v2, p0, Lcom/cmcm/dmc/sdk/g/c$a;->c:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/cmcm/dmc/sdk/g/c$a;->c:I

    div-int/lit8 v2, v2, 0x4

    mul-int/lit8 v2, v2, 0x3

    if-le v1, v2, :cond_0

    iget v1, p0, Lcom/cmcm/dmc/sdk/g/c$a;->c:I

    div-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x3

    :cond_0
    const/4 v2, 0x0

    move v5, p2

    :goto_1
    if-ge v5, v6, :cond_4

    add-int v3, v5, v1

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result p2

    move v3, v2

    move v4, v5

    :goto_2
    if-ge v4, p2, :cond_2

    add-int/lit8 v7, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/lit8 v8, v7, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v7, v4

    add-int/lit8 v4, v8, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    add-int/lit8 v8, v3, 0x1

    ushr-int/lit8 v9, v7, 0x12

    and-int/lit8 v9, v9, 0x3f

    aget-char v9, v0, v9

    int-to-byte v9, v9

    aput-byte v9, p4, v3

    add-int/lit8 v3, v8, 0x1

    ushr-int/lit8 v9, v7, 0xc

    and-int/lit8 v9, v9, 0x3f

    aget-char v9, v0, v9

    int-to-byte v9, v9

    aput-byte v9, p4, v8

    add-int/lit8 v8, v3, 0x1

    ushr-int/lit8 v9, v7, 0x6

    and-int/lit8 v9, v9, 0x3f

    aget-char v9, v0, v9

    int-to-byte v9, v9

    aput-byte v9, p4, v3

    add-int/lit8 v3, v8, 0x1

    and-int/lit8 v7, v7, 0x3f

    aget-char v7, v0, v7

    int-to-byte v7, v7

    aput-byte v7, p4, v8

    goto :goto_2

    :cond_1
    sget-object v0, Lcom/cmcm/dmc/sdk/g/c$a;->f:[C

    goto :goto_0

    :cond_2
    sub-int v3, p2, v5

    div-int/lit8 v3, v3, 0x3

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    iget v4, p0, Lcom/cmcm/dmc/sdk/g/c$a;->c:I

    if-ne v3, v4, :cond_3

    if-ge p2, p3, :cond_3

    iget-object v5, p0, Lcom/cmcm/dmc/sdk/g/c$a;->b:[B

    array-length v7, v5

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v7, :cond_3

    aget-byte v8, v5, v3

    add-int/lit8 v4, v2, 0x1

    aput-byte v8, p4, v2

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_3

    :cond_3
    move v5, p2

    goto :goto_1

    :cond_4
    if-ge v5, p3, :cond_7

    add-int/lit8 v1, v5, 0x1

    aget-byte v3, p1, v5

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v5, v3, 0x2

    aget-char v5, v0, v5

    int-to-byte v5, v5

    aput-byte v5, p4, v2

    if-ne v1, p3, :cond_5

    add-int/lit8 v1, v4, 0x1

    shl-int/lit8 v2, v3, 0x4

    and-int/lit8 v2, v2, 0x3f

    aget-char v0, v0, v2

    int-to-byte v0, v0

    aput-byte v0, p4, v4

    iget-boolean v0, p0, Lcom/cmcm/dmc/sdk/g/c$a;->e:Z

    if-eqz v0, :cond_6

    add-int/lit8 v2, v1, 0x1

    const/16 v0, 0x3d

    aput-byte v0, p4, v1

    add-int/lit8 v0, v2, 0x1

    const/16 v1, 0x3d

    aput-byte v1, p4, v2

    :goto_4
    return v0

    :cond_5
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v2, v1, 0xff

    add-int/lit8 v5, v4, 0x1

    shl-int/lit8 v1, v3, 0x4

    and-int/lit8 v1, v1, 0x3f

    shr-int/lit8 v3, v2, 0x4

    or-int/2addr v1, v3

    aget-char v1, v0, v1

    int-to-byte v1, v1

    aput-byte v1, p4, v4

    add-int/lit8 v1, v5, 0x1

    shl-int/lit8 v2, v2, 0x2

    and-int/lit8 v2, v2, 0x3f

    aget-char v0, v0, v2

    int-to-byte v0, v0

    aput-byte v0, p4, v5

    iget-boolean v0, p0, Lcom/cmcm/dmc/sdk/g/c$a;->e:Z

    if-eqz v0, :cond_6

    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x3d

    aput-byte v2, p4, v1

    goto :goto_4

    :cond_6
    move v0, v1

    goto :goto_4

    :cond_7
    move v0, v2

    goto :goto_4
.end method


# virtual methods
.method public a([B)[B
    .locals 3

    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/cmcm/dmc/sdk/g/c$a;->a(I)I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    array-length v2, p1

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/cmcm/dmc/sdk/g/c$a;->a([BII[B)I

    move-result v1

    array-length v2, v0

    if-eq v1, v2, :cond_0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public b([B)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/cmcm/dmc/sdk/g/c$a;->a([B)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    array-length v2, v0

    invoke-direct {v1, v0, v3, v3, v2}, Ljava/lang/String;-><init>([BIII)V

    return-object v1
.end method
