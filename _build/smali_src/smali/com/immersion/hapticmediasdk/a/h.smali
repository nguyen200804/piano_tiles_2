.class public Lcom/immersion/hapticmediasdk/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/immersion/hapticmediasdk/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/immersion/hapticmediasdk/a/h$a;,
        Lcom/immersion/hapticmediasdk/a/h$b;
    }
.end annotation


# static fields
.field public static a:I = 0x0

.field public static b:I = 0x1

.field public static c:I = 0x2

.field public static d:I = 0x5d

.field private static j:I

.field private static k:I


# instance fields
.field private e:Ljava/io/File;

.field private f:Ljava/nio/channels/FileChannel;

.field private g:Lcom/immersion/hapticmediasdk/a/h$b;

.field private h:Lcom/immersion/hapticmediasdk/a/h$b;

.field private i:I

.field private l:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

.field private m:Ljava/lang/String;

.field private final n:Lcom/immersion/hapticmediasdk/b/c;

.field private o:Lcom/immersion/hapticmediasdk/b/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    :pswitch_0
    const/4 v0, 0x1

    packed-switch v0, :pswitch_data_0

    :goto_0
    packed-switch v2, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x28

    sput v0, Lcom/immersion/hapticmediasdk/a/h;->j:I

    sget v0, Lcom/immersion/hapticmediasdk/a/h;->d:I

    sget v1, Lcom/immersion/hapticmediasdk/a/h;->b:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/h;->d:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/h;->c:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/h;->a:I

    if-eq v0, v1, :cond_0

    const/16 v0, 0x37

    sput v0, Lcom/immersion/hapticmediasdk/a/h;->d:I

    const/16 v0, 0x22

    sput v0, Lcom/immersion/hapticmediasdk/a/h;->a:I

    :cond_0
    sput v2, Lcom/immersion/hapticmediasdk/a/h;->k:I

    return-void

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

.method public constructor <init>(Ljava/lang/String;Lcom/immersion/hapticmediasdk/b/a;)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/immersion/hapticmediasdk/b/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/h;->d()I

    move-result v1

    sget v2, Lcom/immersion/hapticmediasdk/a/h;->b:I

    add-int/2addr v1, v2

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/h;->d()I

    move-result v2

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/h;->c:I

    rem-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/h;->a:I

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/h;->d()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/a/h;->a:I

    :cond_0
    :try_start_1
    invoke-direct {v0}, Lcom/immersion/hapticmediasdk/b/c;-><init>()V

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/a/h;->n:Lcom/immersion/hapticmediasdk/b/c;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iput-object p1, p0, Lcom/immersion/hapticmediasdk/a/h;->m:Ljava/lang/String;

    iput-object p2, p0, Lcom/immersion/hapticmediasdk/a/h;->o:Lcom/immersion/hapticmediasdk/b/a;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0
.end method

.method private a(Lcom/immersion/hapticmediasdk/a/h$b;I)I
    .locals 3

    const/4 v1, 0x1

    iget v0, p1, Lcom/immersion/hapticmediasdk/a/h$b;->a:I

    :pswitch_0
    packed-switch v1, :pswitch_data_0

    :goto_0
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    sub-int v0, p2, v0

    sget v1, Lcom/immersion/hapticmediasdk/a/h;->d:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/h;->e()I

    move-result v2

    add-int/2addr v2, v1

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/h;->c:I

    rem-int/2addr v1, v2

    packed-switch v1, :pswitch_data_2

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/h;->d()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/a/h;->d:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/h;->d()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/a/h;->a:I

    :pswitch_2
    iget-object v1, p1, Lcom/immersion/hapticmediasdk/a/h$b;->b:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->capacity()I

    move-result v1

    rem-int/2addr v0, v1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method private static b(Lcom/immersion/hapticmediasdk/a/h$b;I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/immersion/hapticmediasdk/a/h$b;->a:I

    if-ge p1, v2, :cond_0

    sget v1, Lcom/immersion/hapticmediasdk/a/h;->d:I

    sget v2, Lcom/immersion/hapticmediasdk/a/h;->b:I

    add-int/2addr v2, v1

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/h;->c:I

    rem-int/2addr v1, v2

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/h;->d()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/a/h;->d:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/h;->d()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/a/h;->a:I

    :goto_0
    :pswitch_0
    return v0

    :cond_0
    :pswitch_1
    packed-switch v1, :pswitch_data_1

    :goto_1
    packed-switch v0, :pswitch_data_2

    goto :goto_1

    :pswitch_2
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static c(Lcom/immersion/hapticmediasdk/a/h$b;I)Z
    .locals 3

    iget v0, p0, Lcom/immersion/hapticmediasdk/a/h$b;->a:I

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/h$b;->b:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->capacity()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    const/4 v0, 0x1

    sget v1, Lcom/immersion/hapticmediasdk/a/h;->d:I

    sget v2, Lcom/immersion/hapticmediasdk/a/h;->b:I

    add-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/h;->d:I

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/h;->c:I

    rem-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/h;->a:I

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/h;->d()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/a/h;->d:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/h;->d()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/a/h;->a:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()I
    .locals 1

    const/16 v0, 0x49

    return v0
.end method

.method private d(I)Z
    .locals 3

    iget v0, p0, Lcom/immersion/hapticmediasdk/a/h;->i:I

    if-lt v0, p1, :cond_1

    const/4 v0, 0x1

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/h;->d()I

    move-result v1

    sget v2, Lcom/immersion/hapticmediasdk/a/h;->b:I

    add-int/2addr v1, v2

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/h;->d()I

    move-result v2

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/h;->c:I

    rem-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/h;->a:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0x3a

    sput v1, Lcom/immersion/hapticmediasdk/a/h;->d:I

    const/16 v1, 0x4b

    sput v1, Lcom/immersion/hapticmediasdk/a/h;->a:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d(Lcom/immersion/hapticmediasdk/a/h$b;I)Z
    .locals 3

    :try_start_0
    invoke-static {p0, p1}, Lcom/immersion/hapticmediasdk/a/h;->b(Lcom/immersion/hapticmediasdk/a/h$b;I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/immersion/hapticmediasdk/a/h;->c(Lcom/immersion/hapticmediasdk/a/h$b;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    sget v1, Lcom/immersion/hapticmediasdk/a/h;->d:I

    sget v2, Lcom/immersion/hapticmediasdk/a/h;->b:I

    add-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/h;->d:I

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/h;->c:I

    rem-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/h;->a:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0x34

    sput v1, Lcom/immersion/hapticmediasdk/a/h;->d:I

    const/4 v1, 0x7

    sput v1, Lcom/immersion/hapticmediasdk/a/h;->a:I

    :cond_0
    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0
.end method

.method public static e()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private e(I)I
    .locals 5

    const/16 v0, 0x3e8

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/h;->l:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    invoke-virtual {v1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->e()I

    move-result v1

    div-int/2addr v0, v1

    div-int v1, p1, v0

    sget v0, Lcom/immersion/hapticmediasdk/a/h;->d:I

    sget v2, Lcom/immersion/hapticmediasdk/a/h;->b:I

    add-int/2addr v0, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/h;->d:I

    mul-int/2addr v0, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/h;->c:I

    rem-int/2addr v0, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/h;->a:I

    if-eq v0, v2, :cond_0

    const/16 v0, 0x4d

    sput v0, Lcom/immersion/hapticmediasdk/a/h;->d:I

    const/16 v0, 0x40

    sput v0, Lcom/immersion/hapticmediasdk/a/h;->a:I

    :cond_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/h;->l:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->f()I

    move-result v0

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/a/h;->l:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    invoke-virtual {v2}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->g()I

    move-result v2

    mul-int v3, v0, v2

    int-to-float v3, v3

    const/high16 v4, 0x41000000    # 8.0f

    div-float/2addr v3, v4

    mul-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x8

    int-to-float v2, v0

    float-to-int v0, v2

    cmpl-float v2, v3, v2

    if-lez v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    mul-int/2addr v0, v1

    return v0
.end method

.method private static e(Lcom/immersion/hapticmediasdk/a/h$b;I)Z
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/a/h;->d:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/h;->e()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/h;->c:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x39

    sput v0, Lcom/immersion/hapticmediasdk/a/h;->d:I

    const/16 v0, 0x1b

    sput v0, Lcom/immersion/hapticmediasdk/a/h;->a:I

    :pswitch_0
    :try_start_0
    sget v0, Lcom/immersion/hapticmediasdk/a/h;->k:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, p1

    :try_start_1
    invoke-static {p0, v0}, Lcom/immersion/hapticmediasdk/a/h;->c(Lcom/immersion/hapticmediasdk/a/h$b;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    return v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static f()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private f(I)Lcom/immersion/hapticmediasdk/a/h$b;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/immersion/hapticmediasdk/models/b;
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/h;->n:Lcom/immersion/hapticmediasdk/b/c;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/b/c;->a()V

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/h;->l:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->h()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/h;->l:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->i()I

    move-result v0

    add-int v2, v0, p1

    add-int/lit16 v0, p1, 0x1000

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/h;->l:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    invoke-virtual {v1}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->h()I

    move-result v1

    if-gt v0, v1, :cond_1

    const/16 v0, 0x1000

    move v4, v0

    :goto_0
    add-int v0, p1, v4

    iget v1, p0, Lcom/immersion/hapticmediasdk/a/h;->i:I

    if-le v0, v1, :cond_0

    new-instance v0, Lcom/immersion/hapticmediasdk/models/b;

    const-string v1, "Not enough bytes available yet."

    invoke-direct {v0, v1}, Lcom/immersion/hapticmediasdk/models/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/h;->f:Ljava/nio/channels/FileChannel;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    int-to-long v2, v2

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v0}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    new-instance v0, Lcom/immersion/hapticmediasdk/a/h$b;

    invoke-direct {v0, v6}, Lcom/immersion/hapticmediasdk/a/h$b;-><init>(Lcom/immersion/hapticmediasdk/a/h$a;)V

    iput-object v1, v0, Lcom/immersion/hapticmediasdk/a/h$b;->b:Ljava/nio/MappedByteBuffer;

    iput p1, v0, Lcom/immersion/hapticmediasdk/a/h$b;->a:I

    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/h;->l:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->h()I

    move-result v0

    sub-int/2addr v0, p1

    move v4, v0

    goto :goto_0

    :cond_2
    move-object v0, v6

    goto :goto_1
.end method

.method public static g()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method private h()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/h;->l:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/h;->e:Ljava/io/File;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/h;->o:Lcom/immersion/hapticmediasdk/b/a;

    iget-object v3, p0, Lcom/immersion/hapticmediasdk/a/h;->m:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/immersion/hapticmediasdk/b/a;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/immersion/hapticmediasdk/a/h;->e:Ljava/io/File;

    :cond_2
    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/h;->f:Ljava/nio/channels/FileChannel;

    if-nez v1, :cond_3

    new-instance v3, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/h;->e:Ljava/io/File;

    const-string v4, "r"

    invoke-direct {v3, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/immersion/hapticmediasdk/a/h;->f:Ljava/nio/channels/FileChannel;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/h;->f:Ljava/nio/channels/FileChannel;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/a/h;->i()Z

    move-result v0

    goto :goto_0

    :cond_4
    const/16 v1, 0x3000

    invoke-direct {p0, v1}, Lcom/immersion/hapticmediasdk/a/h;->d(I)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    const-string v3, "MemoryMappedFileReader"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/immersion/hapticmediasdk/b/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/h;->o:Lcom/immersion/hapticmediasdk/b/a;

    invoke-virtual {v1, v2}, Lcom/immersion/hapticmediasdk/b/a;->a(Ljava/io/Closeable;)V

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/h;->o:Lcom/immersion/hapticmediasdk/b/a;

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/a/h;->f:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1, v2}, Lcom/immersion/hapticmediasdk/b/a;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    move-object v2, v3

    goto :goto_1
.end method

.method private i()Z
    .locals 8

    const/4 v2, 0x1

    const/4 v6, 0x4

    const/4 v1, 0x0

    const/4 v0, 0x4

    :try_start_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/immersion/hapticmediasdk/a/h;->f:Ljava/nio/channels/FileChannel;

    const-wide/16 v4, 0x10

    invoke-virtual {v3, v0, v4, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v3

    if-eq v3, v6, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    add-int/lit8 v0, v0, 0x1c

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/immersion/hapticmediasdk/a/h;->f:Ljava/nio/channels/FileChannel;

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v3, v6, v7}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v4

    :pswitch_0
    packed-switch v1, :pswitch_data_0

    :goto_1
    packed-switch v2, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    if-ne v4, v0, :cond_0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    new-instance v4, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;

    invoke-direct {v4}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;-><init>()V

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/h;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a(Ljava/lang/String;)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;

    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {v4, v0}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;

    const/16 v0, 0x14

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {v4, v0}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->b(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {v4, v0}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->c(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {v4, v0}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->d(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;

    const/16 v0, 0x18

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->e(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v0, v5

    invoke-virtual {v4, v0}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->f(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    invoke-virtual {v4, v5}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->g(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;

    new-array v6, v5, [I

    move v0, v1

    :goto_2
    if-ge v0, v5, :cond_2

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    aput v7, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v4, v6}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->a([I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {v4, v0}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->h(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->i(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->j(I)Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;

    invoke-virtual {v4}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation$a;->e()Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/a/h;->l:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    sget v0, Lcom/immersion/hapticmediasdk/a/h;->j:I

    iget-object v3, p0, Lcom/immersion/hapticmediasdk/a/h;->l:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    invoke-virtual {v3}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->e()I

    move-result v3

    mul-int/2addr v0, v3

    div-int/lit16 v0, v0, 0x3e8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    sget v3, Lcom/immersion/hapticmediasdk/a/h;->d:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/h;->e()I

    move-result v4

    add-int/2addr v4, v3

    mul-int/2addr v3, v4

    sget v4, Lcom/immersion/hapticmediasdk/a/h;->c:I

    rem-int/2addr v3, v4

    packed-switch v3, :pswitch_data_2

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/h;->d()I

    move-result v3

    sput v3, Lcom/immersion/hapticmediasdk/a/h;->d:I

    const/16 v3, 0x33

    sput v3, Lcom/immersion/hapticmediasdk/a/h;->a:I

    :pswitch_2
    :try_start_1
    iget-object v3, p0, Lcom/immersion/hapticmediasdk/a/h;->l:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    invoke-virtual {v3}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->f()I

    move-result v3

    mul-int/2addr v0, v3

    iget-object v3, p0, Lcom/immersion/hapticmediasdk/a/h;->l:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    invoke-virtual {v3}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->g()I

    move-result v3

    mul-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x8

    sput v0, Lcom/immersion/hapticmediasdk/a/h;->k:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method private j()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/immersion/hapticmediasdk/models/b;,
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/h;->h:Lcom/immersion/hapticmediasdk/a/h$b;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/h;->h:Lcom/immersion/hapticmediasdk/a/h$b;

    iget v0, v0, Lcom/immersion/hapticmediasdk/a/h$b;->a:I

    add-int/lit16 v0, v0, 0x1000

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/h;->h:Lcom/immersion/hapticmediasdk/a/h$b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iput-object v1, p0, Lcom/immersion/hapticmediasdk/a/h;->g:Lcom/immersion/hapticmediasdk/a/h$b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/h;->d()I

    move-result v1

    sget v2, Lcom/immersion/hapticmediasdk/a/h;->b:I

    add-int/2addr v1, v2

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/h;->d()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/h;->g()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/h;->f()I

    move-result v2

    if-eq v1, v2, :cond_1

    const/16 v1, 0x50

    sput v1, Lcom/immersion/hapticmediasdk/a/h;->d:I

    const/16 v1, 0x44

    sput v1, Lcom/immersion/hapticmediasdk/a/h;->a:I

    :cond_1
    :try_start_2
    invoke-direct {p0, v0}, Lcom/immersion/hapticmediasdk/a/h;->f(I)Lcom/immersion/hapticmediasdk/a/h$b;

    move-result-object v0

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/a/h;->h:Lcom/immersion/hapticmediasdk/a/h$b;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0
.end method


# virtual methods
.method public a()I
    .locals 3

    :try_start_0
    sget v0, Lcom/immersion/hapticmediasdk/a/h;->j:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget v1, Lcom/immersion/hapticmediasdk/a/h;->d:I

    sget v2, Lcom/immersion/hapticmediasdk/a/h;->b:I

    add-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/h;->d:I

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/h;->c:I

    rem-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/h;->a:I

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/h;->d()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/a/h;->d:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/h;->d()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/a/h;->a:I

    :cond_0
    return v0

    :catch_0
    move-exception v0

    throw v0
.end method

.method public a(J)J
    .locals 2

    :pswitch_0
    const/4 v0, 0x0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/immersion/hapticmediasdk/a/h;->d:I

    sget v1, Lcom/immersion/hapticmediasdk/a/h;->b:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/h;->c:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_2

    const/16 v0, 0x59

    sput v0, Lcom/immersion/hapticmediasdk/a/h;->d:I

    const/16 v0, 0x2f

    sput v0, Lcom/immersion/hapticmediasdk/a/h;->a:I

    :pswitch_2
    const-wide/16 v0, 0x0

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public a(I)V
    .locals 2

    iput p1, p0, Lcom/immersion/hapticmediasdk/a/h;->i:I

    sget v0, Lcom/immersion/hapticmediasdk/a/h;->d:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/h;->e()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/h;->d:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/h;->c:I

    rem-int/2addr v0, v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/h;->f()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/16 v0, 0x3e

    sput v0, Lcom/immersion/hapticmediasdk/a/h;->d:I

    const/4 v0, 0x4

    sput v0, Lcom/immersion/hapticmediasdk/a/h;->a:I

    :cond_0
    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/a/h;->h()Z

    return-void
.end method

.method public b(J)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(I)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/a/h;->h()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/immersion/hapticmediasdk/a/h;->e(I)I

    move-result v3

    iget-object v4, p0, Lcom/immersion/hapticmediasdk/a/h;->g:Lcom/immersion/hapticmediasdk/a/h$b;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/immersion/hapticmediasdk/a/h;->g:Lcom/immersion/hapticmediasdk/a/h$b;

    invoke-static {v4, v3}, Lcom/immersion/hapticmediasdk/a/h;->d(Lcom/immersion/hapticmediasdk/a/h$b;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_8

    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/immersion/hapticmediasdk/a/h;->h:Lcom/immersion/hapticmediasdk/a/h$b;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/immersion/hapticmediasdk/a/h;->h:Lcom/immersion/hapticmediasdk/a/h$b;

    invoke-static {v4, v3}, Lcom/immersion/hapticmediasdk/a/h;->d(Lcom/immersion/hapticmediasdk/a/h$b;I)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/immersion/hapticmediasdk/a/h;->h:Lcom/immersion/hapticmediasdk/a/h$b;

    invoke-static {v4, v3}, Lcom/immersion/hapticmediasdk/a/h;->e(Lcom/immersion/hapticmediasdk/a/h$b;I)Z
    :try_end_1
    .catch Lcom/immersion/hapticmediasdk/models/b; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-eqz v4, :cond_7

    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/immersion/hapticmediasdk/a/h;->g:Lcom/immersion/hapticmediasdk/a/h$b;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/a/h;->g:Lcom/immersion/hapticmediasdk/a/h$b;

    iget v2, v2, Lcom/immersion/hapticmediasdk/a/h$b;->a:I
    :try_end_2
    .catch Lcom/immersion/hapticmediasdk/models/b; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    if-eq v2, v3, :cond_4

    :cond_3
    :try_start_3
    invoke-direct {p0, v3}, Lcom/immersion/hapticmediasdk/a/h;->f(I)Lcom/immersion/hapticmediasdk/a/h$b;

    move-result-object v2

    iput-object v2, p0, Lcom/immersion/hapticmediasdk/a/h;->g:Lcom/immersion/hapticmediasdk/a/h$b;

    :cond_4
    iget-object v2, p0, Lcom/immersion/hapticmediasdk/a/h;->h:Lcom/immersion/hapticmediasdk/a/h$b;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/a/h;->h:Lcom/immersion/hapticmediasdk/a/h$b;

    iget v2, v2, Lcom/immersion/hapticmediasdk/a/h$b;->a:I

    add-int/lit16 v4, v3, 0x1000

    if-eq v2, v4, :cond_6

    :cond_5
    add-int/lit16 v2, v3, 0x1000

    invoke-direct {p0, v2}, Lcom/immersion/hapticmediasdk/a/h;->f(I)Lcom/immersion/hapticmediasdk/a/h$b;

    move-result-object v2

    iput-object v2, p0, Lcom/immersion/hapticmediasdk/a/h;->h:Lcom/immersion/hapticmediasdk/a/h$b;

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/a/h;->j()V
    :try_end_3
    .catch Lcom/immersion/hapticmediasdk/models/b; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    :try_start_4
    new-array v0, v2, [I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_5
    const-string v2, "MemoryMappedFileReader"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :try_start_6
    invoke-virtual {v1}, Lcom/immersion/hapticmediasdk/models/b;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/immersion/hapticmediasdk/b/b;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    const/4 v0, 0x5

    sput v0, Lcom/immersion/hapticmediasdk/a/h;->d:I

    :cond_8
    :try_start_7
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/h;->g:Lcom/immersion/hapticmediasdk/a/h$b;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    if-eqz v0, :cond_9

    :try_start_8
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/h;->g:Lcom/immersion/hapticmediasdk/a/h$b;

    iget-object v0, v0, Lcom/immersion/hapticmediasdk/a/h$b;->b:Ljava/nio/MappedByteBuffer;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :try_start_9
    iget-object v2, p0, Lcom/immersion/hapticmediasdk/a/h;->g:Lcom/immersion/hapticmediasdk/a/h$b;

    invoke-direct {p0, v2, v3}, Lcom/immersion/hapticmediasdk/a/h;->a(Lcom/immersion/hapticmediasdk/a/h$b;I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_9
    move v0, v1

    goto :goto_0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_0

    :catch_4
    move-exception v0

    throw v0
.end method

.method public b()[B
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public c()V
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/a/h;->d:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/h;->e()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/h;->c:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/h;->d()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/h;->d:I

    const/16 v0, 0x23

    sput v0, Lcom/immersion/hapticmediasdk/a/h;->a:I

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/h;->o:Lcom/immersion/hapticmediasdk/b/a;

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/h;->f:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, v1}, Lcom/immersion/hapticmediasdk/b/a;->a(Ljava/io/Closeable;)V
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

.method public c(I)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/immersion/hapticmediasdk/models/b;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/h;->g:Lcom/immersion/hapticmediasdk/a/h$b;

    if-nez v1, :cond_2

    :cond_0
    :goto_0
    return-object v0

    :pswitch_0
    iget-object v2, p0, Lcom/immersion/hapticmediasdk/a/h;->g:Lcom/immersion/hapticmediasdk/a/h$b;

    iget-object v2, v2, Lcom/immersion/hapticmediasdk/a/h$b;->b:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2}, Ljava/nio/MappedByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/a/h;->l:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    invoke-virtual {v2}, Lcom/immersion/hapticmediasdk/models/HapticFileInformation;->h()I

    move-result v2

    if-ge v1, v2, :cond_0

    :try_start_0
    sget v1, Lcom/immersion/hapticmediasdk/a/h;->k:I

    new-array v1, v1, [B

    sget v2, Lcom/immersion/hapticmediasdk/a/h;->k:I

    iget-object v3, p0, Lcom/immersion/hapticmediasdk/a/h;->g:Lcom/immersion/hapticmediasdk/a/h$b;

    iget-object v3, v3, Lcom/immersion/hapticmediasdk/a/h$b;->b:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v3}, Ljava/nio/MappedByteBuffer;->remaining()I

    move-result v3

    if-lt v2, v3, :cond_5

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/a/h;->g:Lcom/immersion/hapticmediasdk/a/h$b;

    iget-object v2, v2, Lcom/immersion/hapticmediasdk/a/h$b;->b:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2}, Ljava/nio/MappedByteBuffer;->remaining()I

    move-result v3

    sget v2, Lcom/immersion/hapticmediasdk/a/h;->k:I

    sub-int/2addr v2, v3

    iget-object v4, p0, Lcom/immersion/hapticmediasdk/a/h;->g:Lcom/immersion/hapticmediasdk/a/h$b;

    iget-object v4, v4, Lcom/immersion/hapticmediasdk/a/h$b;->b:Ljava/nio/MappedByteBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, v3}, Ljava/nio/MappedByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    if-lez v2, :cond_1

    iget-object v4, p0, Lcom/immersion/hapticmediasdk/a/h;->h:Lcom/immersion/hapticmediasdk/a/h$b;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/immersion/hapticmediasdk/a/h;->h:Lcom/immersion/hapticmediasdk/a/h$b;

    iget-object v4, v4, Lcom/immersion/hapticmediasdk/a/h$b;->b:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v4}, Ljava/nio/MappedByteBuffer;->remaining()I

    move-result v4

    if-lt v4, v2, :cond_4

    :goto_1
    iget-object v4, p0, Lcom/immersion/hapticmediasdk/a/h;->h:Lcom/immersion/hapticmediasdk/a/h$b;

    iget-object v4, v4, Lcom/immersion/hapticmediasdk/a/h$b;->b:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v4, v1, v3, v2}, Ljava/nio/MappedByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :cond_1
    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/a/h;->j()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/h;->g:Lcom/immersion/hapticmediasdk/a/h$b;

    sget v2, Lcom/immersion/hapticmediasdk/a/h;->d:I

    sget v3, Lcom/immersion/hapticmediasdk/a/h;->b:I

    add-int/2addr v2, v3

    sget v3, Lcom/immersion/hapticmediasdk/a/h;->d:I

    mul-int/2addr v2, v3

    sget v3, Lcom/immersion/hapticmediasdk/a/h;->c:I

    rem-int/2addr v2, v3

    sget v3, Lcom/immersion/hapticmediasdk/a/h;->a:I

    if-eq v2, v3, :cond_3

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/h;->d()I

    move-result v2

    sput v2, Lcom/immersion/hapticmediasdk/a/h;->d:I

    const/16 v2, 0x2f

    sput v2, Lcom/immersion/hapticmediasdk/a/h;->a:I

    :cond_3
    iget v1, v1, Lcom/immersion/hapticmediasdk/a/h$b;->a:I

    :pswitch_1
    const/4 v2, 0x1

    packed-switch v2, :pswitch_data_0

    :goto_3
    packed-switch v4, :pswitch_data_1

    goto :goto_3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/immersion/hapticmediasdk/a/h;->h:Lcom/immersion/hapticmediasdk/a/h$b;

    iget-object v2, v2, Lcom/immersion/hapticmediasdk/a/h$b;->b:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2}, Ljava/nio/MappedByteBuffer;->remaining()I

    move-result v2

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/immersion/hapticmediasdk/a/h;->g:Lcom/immersion/hapticmediasdk/a/h$b;

    iget-object v2, v2, Lcom/immersion/hapticmediasdk/a/h$b;->b:Ljava/nio/MappedByteBuffer;

    const/4 v3, 0x0

    sget v4, Lcom/immersion/hapticmediasdk/a/h;->k:I

    invoke-virtual {v2, v1, v3, v4}, Ljava/nio/MappedByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
