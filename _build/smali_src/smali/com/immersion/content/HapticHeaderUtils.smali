.class public Lcom/immersion/content/HapticHeaderUtils;
.super Lcom/immersion/content/a;


# static fields
.field public static b:I = 0x21

.field public static c:I = 0x1

.field public static d:I = 0x2

.field public static e:I


# instance fields
.field a:J

.field private i:[B

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 2

    sget v0, Lcom/immersion/content/HapticHeaderUtils;->b:I

    sget v1, Lcom/immersion/content/HapticHeaderUtils;->c:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/content/HapticHeaderUtils;->d:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x2b

    sput v0, Lcom/immersion/content/HapticHeaderUtils;->b:I

    invoke-static {}, Lcom/immersion/content/HapticHeaderUtils;->a()I

    move-result v0

    sput v0, Lcom/immersion/content/HapticHeaderUtils;->c:I

    :pswitch_0
    :try_start_0
    invoke-direct {p0}, Lcom/immersion/content/a;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static a()I
    .locals 1

    const/16 v0, 0x50

    return v0
.end method

.method private native calculateBlockRateNative(J)I
.end method

.method private native calculateBlockSizeNative(J)I
.end method

.method private native calculateByteOffsetIntoHapticDataNative(JI)I
.end method

.method public static d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private native disposeNative(J)V
.end method

.method public static e()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private native getContentIdNative(J)Ljava/lang/String;
.end method

.method private native getEncryptionNative(J)I
.end method

.method private native getMajorVersionNumberNative(J)I
.end method

.method private native getMinorVersionNumberNative(J)I
.end method

.method private native getNumChannelsNative(J)I
.end method

.method private native init([BI)J
.end method


# virtual methods
.method public a(I)I
    .locals 4

    iget-wide v0, p0, Lcom/immersion/content/HapticHeaderUtils;->a:J

    invoke-static {}, Lcom/immersion/content/HapticHeaderUtils;->a()I

    move-result v2

    sget v3, Lcom/immersion/content/HapticHeaderUtils;->c:I

    add-int/2addr v3, v2

    mul-int/2addr v2, v3

    sget v3, Lcom/immersion/content/HapticHeaderUtils;->d:I

    rem-int/2addr v2, v3

    packed-switch v2, :pswitch_data_0

    const/16 v2, 0x59

    sput v2, Lcom/immersion/content/HapticHeaderUtils;->b:I

    invoke-static {}, Lcom/immersion/content/HapticHeaderUtils;->a()I

    move-result v2

    sput v2, Lcom/immersion/content/HapticHeaderUtils;->e:I

    :pswitch_0
    invoke-direct {p0, v0, v1, p1}, Lcom/immersion/content/HapticHeaderUtils;->calculateByteOffsetIntoHapticDataNative(JI)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/nio/ByteBuffer;I)V
    .locals 3

    iput p2, p0, Lcom/immersion/content/HapticHeaderUtils;->j:I

    iget v0, p0, Lcom/immersion/content/HapticHeaderUtils;->j:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/immersion/content/HapticHeaderUtils;->i:[B

    iget-object v0, p0, Lcom/immersion/content/HapticHeaderUtils;->i:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/immersion/content/HapticHeaderUtils;->j:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/immersion/content/HapticHeaderUtils;->i:[B

    iget v1, p0, Lcom/immersion/content/HapticHeaderUtils;->j:I

    invoke-direct {p0, v0, v1}, Lcom/immersion/content/HapticHeaderUtils;->init([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/immersion/content/HapticHeaderUtils;->a:J

    return-void
.end method

.method public b()I
    .locals 2

    sget v0, Lcom/immersion/content/HapticHeaderUtils;->b:I

    sget v1, Lcom/immersion/content/HapticHeaderUtils;->c:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/content/HapticHeaderUtils;->b:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/content/HapticHeaderUtils;->d:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/content/HapticHeaderUtils;->e:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/immersion/content/HapticHeaderUtils;->a()I

    move-result v0

    sput v0, Lcom/immersion/content/HapticHeaderUtils;->b:I

    const/16 v0, 0x54

    sput v0, Lcom/immersion/content/HapticHeaderUtils;->e:I

    :cond_0
    iget-wide v0, p0, Lcom/immersion/content/HapticHeaderUtils;->a:J

    invoke-direct {p0, v0, v1}, Lcom/immersion/content/HapticHeaderUtils;->calculateBlockSizeNative(J)I

    move-result v0

    :pswitch_0
    const/4 v1, 0x1

    packed-switch v1, :pswitch_data_0

    :goto_0
    const/4 v1, 0x0

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c()I
    .locals 2

    sget v0, Lcom/immersion/content/HapticHeaderUtils;->b:I

    invoke-static {}, Lcom/immersion/content/HapticHeaderUtils;->e()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/content/HapticHeaderUtils;->b:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/content/HapticHeaderUtils;->d:I

    rem-int/2addr v0, v1

    invoke-static {}, Lcom/immersion/content/HapticHeaderUtils;->d()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/immersion/content/HapticHeaderUtils;->a()I

    move-result v0

    sput v0, Lcom/immersion/content/HapticHeaderUtils;->b:I

    const/16 v0, 0xc

    sput v0, Lcom/immersion/content/HapticHeaderUtils;->e:I

    :cond_0
    iget-wide v0, p0, Lcom/immersion/content/HapticHeaderUtils;->a:J

    invoke-direct {p0, v0, v1}, Lcom/immersion/content/HapticHeaderUtils;->calculateBlockRateNative(J)I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 2

    iget-wide v0, p0, Lcom/immersion/content/HapticHeaderUtils;->a:J

    invoke-direct {p0, v0, v1}, Lcom/immersion/content/HapticHeaderUtils;->getMajorVersionNumberNative(J)I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 2

    sget v0, Lcom/immersion/content/HapticHeaderUtils;->b:I

    invoke-static {}, Lcom/immersion/content/HapticHeaderUtils;->e()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/content/HapticHeaderUtils;->b:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/content/HapticHeaderUtils;->d:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/content/HapticHeaderUtils;->e:I

    if-eq v0, v1, :cond_0

    const/16 v0, 0x5c

    sput v0, Lcom/immersion/content/HapticHeaderUtils;->b:I

    invoke-static {}, Lcom/immersion/content/HapticHeaderUtils;->a()I

    move-result v0

    sput v0, Lcom/immersion/content/HapticHeaderUtils;->e:I

    :cond_0
    :try_start_0
    iget-wide v0, p0, Lcom/immersion/content/HapticHeaderUtils;->a:J

    invoke-direct {p0, v0, v1}, Lcom/immersion/content/HapticHeaderUtils;->getNumChannelsNative(J)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    throw v0
.end method

.method public h()V
    .locals 2

    const/4 v0, 0x0

    :pswitch_0
    packed-switch v0, :pswitch_data_0

    :goto_0
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/immersion/content/HapticHeaderUtils;->b:I

    invoke-static {}, Lcom/immersion/content/HapticHeaderUtils;->e()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/content/HapticHeaderUtils;->b:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/content/HapticHeaderUtils;->d:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/content/HapticHeaderUtils;->e:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/immersion/content/HapticHeaderUtils;->a()I

    move-result v0

    sput v0, Lcom/immersion/content/HapticHeaderUtils;->b:I

    const/16 v0, 0x5c

    sput v0, Lcom/immersion/content/HapticHeaderUtils;->e:I

    :cond_0
    iget-wide v0, p0, Lcom/immersion/content/HapticHeaderUtils;->a:J

    invoke-direct {p0, v0, v1}, Lcom/immersion/content/HapticHeaderUtils;->disposeNative(J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
