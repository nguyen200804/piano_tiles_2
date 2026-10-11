.class public Lcom/immersion/hapticmediasdk/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/immersion/hapticmediasdk/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/immersion/hapticmediasdk/a/g$a;,
        Lcom/immersion/hapticmediasdk/a/g$b;
    }
.end annotation


# static fields
.field public static a:I = 0xa

.field public static b:I = 0x0

.field public static c:I = 0x2

.field public static d:I = 0x1

.field private static k:I

.field private static l:I


# instance fields
.field private e:Ljava/io/File;

.field private f:Ljava/nio/channels/FileChannel;

.field private g:Lcom/immersion/hapticmediasdk/a/g$b;

.field private h:Lcom/immersion/hapticmediasdk/a/g$b;

.field private i:I

.field private j:I

.field private m:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

.field private n:Ljava/lang/String;

.field private o:Lcom/immersion/hapticmediasdk/b/a;

.field private p:Lcom/immersion/content/a;

.field private q:[B

.field private final r:Lcom/immersion/hapticmediasdk/b/c;

.field private s:I

.field private t:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x50

    sput v0, Lcom/immersion/hapticmediasdk/a/g;->k:I

    const/4 v0, 0x0

    sput v0, Lcom/immersion/hapticmediasdk/a/g;->l:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/immersion/hapticmediasdk/b/a;I)V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget v0, Lcom/immersion/hapticmediasdk/a/g;->a:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/g;->d()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/g;->a:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/g;->c:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/g;->b:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/g;->e()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/g;->a:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/g;->e()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/g;->b:I

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/immersion/hapticmediasdk/a/g;->i:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/a/g;->n:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/a/g;->o:Lcom/immersion/hapticmediasdk/b/a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/a/g;->q:[B

    new-instance v0, Lcom/immersion/hapticmediasdk/b/c;

    invoke-direct {v0}, Lcom/immersion/hapticmediasdk/b/c;-><init>()V

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/a/g;->r:Lcom/immersion/hapticmediasdk/b/c;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iput-object p1, p0, Lcom/immersion/hapticmediasdk/a/g;->n:Ljava/lang/String;

    iput-object p2, p0, Lcom/immersion/hapticmediasdk/a/g;->o:Lcom/immersion/hapticmediasdk/b/a;

    new-instance v0, Lcom/immersion/content/HapticHeaderUtils;

    invoke-direct {v0}, Lcom/immersion/content/HapticHeaderUtils;-><init>()V

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/a/g;->p:Lcom/immersion/content/a;

    iput p3, p0, Lcom/immersion/hapticmediasdk/a/g;->i:I
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

.method private a(Lcom/immersion/hapticmediasdk/a/g$b;I)I
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/a/g;->a:I

    sget v1, Lcom/immersion/hapticmediasdk/a/g;->d:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/g;->a:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/g;->c:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/g;->b:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    sput v0, Lcom/immersion/hapticmediasdk/a/g;->a:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/g;->e()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/g;->b:I

    :cond_0
    :try_start_0
    iget v0, p1, Lcom/immersion/hapticmediasdk/a/g$b;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int v0, p2, v0

    :try_start_1
    iget-object v1, p1, Lcom/immersion/hapticmediasdk/a/g$b;->b:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->capacity()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    :try_start_2
    rem-int/2addr v0, v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0
.end method

.method private static b(Lcom/immersion/hapticmediasdk/a/g$b;I)Z
    .locals 3

    iget v0, p0, Lcom/immersion/hapticmediasdk/a/g$b;->a:I

    if-ge p1, v0, :cond_1

    const/4 v0, 0x1

    sget v1, Lcom/immersion/hapticmediasdk/a/g;->a:I

    sget v2, Lcom/immersion/hapticmediasdk/a/g;->d:I

    add-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/g;->a:I

    mul-int/2addr v1, v2

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/g;->f()I

    move-result v2

    rem-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/g;->b:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0x16

    sput v1, Lcom/immersion/hapticmediasdk/a/g;->a:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/g;->e()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/a/g;->b:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Lcom/immersion/hapticmediasdk/a/g$b;I)Z
    .locals 3

    :try_start_0
    iget v0, p0, Lcom/immersion/hapticmediasdk/a/g$b;->a:I

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/g$b;->b:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->capacity()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    const/4 v0, 0x1

    sget v1, Lcom/immersion/hapticmediasdk/a/g;->a:I

    sget v2, Lcom/immersion/hapticmediasdk/a/g;->d:I

    add-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/g;->a:I

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/g;->c:I

    rem-int/2addr v1, v2

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/g;->g()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/g;->e()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/a/g;->a:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/g;->e()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/a/g;->b:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0
.end method

.method public static d()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private d(I)I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/g;->p:Lcom/immersion/content/a;

    if-eqz v1, :cond_0

    :pswitch_0
    packed-switch v0, :pswitch_data_0

    :goto_0
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/immersion/hapticmediasdk/a/g;->a:I

    sget v1, Lcom/immersion/hapticmediasdk/a/g;->d:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/g;->c:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_2

    const/16 v0, 0x35

    sput v0, Lcom/immersion/hapticmediasdk/a/g;->a:I

    const/16 v0, 0x55

    sput v0, Lcom/immersion/hapticmediasdk/a/g;->b:I

    :pswitch_2
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/g;->p:Lcom/immersion/content/a;

    invoke-virtual {v0, p1}, Lcom/immersion/content/a;->a(I)I

    move-result v0

    :cond_0
    return v0

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

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method private static d(Lcom/immersion/hapticmediasdk/a/g$b;I)Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {p0, p1}, Lcom/immersion/hapticmediasdk/a/g;->b(Lcom/immersion/hapticmediasdk/a/g$b;I)Z

    move-result v1

    if-nez v1, :cond_0

    :pswitch_0
    packed-switch v0, :pswitch_data_0

    :goto_0
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    invoke-static {p0, p1}, Lcom/immersion/hapticmediasdk/a/g;->c(Lcom/immersion/hapticmediasdk/a/g$b;I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/g;->e()I

    move-result v1

    sget v2, Lcom/immersion/hapticmediasdk/a/g;->d:I

    add-int/2addr v2, v1

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/g;->c:I

    rem-int/2addr v1, v2

    packed-switch v1, :pswitch_data_2

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/g;->e()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/a/g;->a:I

    const/16 v1, 0x18

    sput v1, Lcom/immersion/hapticmediasdk/a/g;->b:I

    :cond_0
    :goto_1
    :pswitch_2
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    nop

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

.method public static e()I
    .locals 1

    const/16 v0, 0x17

    return v0
.end method

.method private e(I)Lcom/immersion/hapticmediasdk/a/g$b;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/immersion/hapticmediasdk/models/b;
        }
    .end annotation

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/g;->r:Lcom/immersion/hapticmediasdk/b/c;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/b/c;->a()V

    iget v0, p0, Lcom/immersion/hapticmediasdk/a/g;->s:I

    if-ge p1, v0, :cond_3

    iget v0, p0, Lcom/immersion/hapticmediasdk/a/g;->t:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int v2, v0, p1

    :try_start_1
    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/a/g;->l()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    add-int/lit16 v1, p1, 0x400

    add-int/2addr v1, v0

    :try_start_2
    iget v3, p0, Lcom/immersion/hapticmediasdk/a/g;->s:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-gt v1, v3, :cond_1

    add-int/lit16 v0, v0, 0x400

    sget v1, Lcom/immersion/hapticmediasdk/a/g;->a:I

    sget v3, Lcom/immersion/hapticmediasdk/a/g;->d:I

    add-int/2addr v1, v3

    sget v3, Lcom/immersion/hapticmediasdk/a/g;->a:I

    mul-int/2addr v1, v3

    sget v3, Lcom/immersion/hapticmediasdk/a/g;->c:I

    rem-int/2addr v1, v3

    sget v3, Lcom/immersion/hapticmediasdk/a/g;->b:I

    if-eq v1, v3, :cond_0

    const/16 v1, 0x1f

    sput v1, Lcom/immersion/hapticmediasdk/a/g;->a:I

    const/16 v1, 0x45

    sput v1, Lcom/immersion/hapticmediasdk/a/g;->b:I

    :cond_0
    move v4, v0

    :goto_0
    add-int v0, p1, v4

    :try_start_3
    iget v1, p0, Lcom/immersion/hapticmediasdk/a/g;->j:I

    if-le v0, v1, :cond_2

    new-instance v0, Lcom/immersion/hapticmediasdk/models/b;

    const-string v1, "Not enough bytes available yet."

    invoke-direct {v0, v1}, Lcom/immersion/hapticmediasdk/models/b;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    throw v0

    :cond_1
    :try_start_4
    iget v0, p0, Lcom/immersion/hapticmediasdk/a/g;->s:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    sub-int/2addr v0, p1

    move v4, v0

    goto :goto_0

    :cond_2
    :try_start_5
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/g;->f:Ljava/nio/channels/FileChannel;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    int-to-long v2, v2

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_6
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v0}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    new-instance v0, Lcom/immersion/hapticmediasdk/a/g$b;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/immersion/hapticmediasdk/a/g$b;-><init>(Lcom/immersion/hapticmediasdk/a/g$a;)V

    iput-object v1, v0, Lcom/immersion/hapticmediasdk/a/g$b;->b:Ljava/nio/MappedByteBuffer;

    iput p1, v0, Lcom/immersion/hapticmediasdk/a/g$b;->a:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :goto_1
    return-object v0

    :catch_1
    move-exception v0

    throw v0

    :cond_3
    move-object v0, v6

    goto :goto_1
.end method

.method private static e(Lcom/immersion/hapticmediasdk/a/g$b;I)Z
    .locals 3

    :try_start_0
    sget v0, Lcom/immersion/hapticmediasdk/a/g;->l:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget v1, Lcom/immersion/hapticmediasdk/a/g;->a:I

    sget v2, Lcom/immersion/hapticmediasdk/a/g;->d:I

    add-int/2addr v2, v1

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/g;->c:I

    rem-int/2addr v1, v2

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x4

    sput v1, Lcom/immersion/hapticmediasdk/a/g;->a:I

    const/16 v1, 0x3e

    sput v1, Lcom/immersion/hapticmediasdk/a/g;->b:I

    :pswitch_0
    add-int/2addr v0, p1

    :try_start_1
    invoke-static {p0, v0}, Lcom/immersion/hapticmediasdk/a/g;->c(Lcom/immersion/hapticmediasdk/a/g$b;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static f()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static g()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private h()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/immersion/hapticmediasdk/a/g;->m:Lcom/immersion/hapticmediasdk/models/HapticFileInformation;

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/immersion/hapticmediasdk/a/g;->e:Ljava/io/File;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/a/g;->o:Lcom/immersion/hapticmediasdk/b/a;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/a/g;->o:Lcom/immersion/hapticmediasdk/b/a;

    iget-object v3, p0, Lcom/immersion/hapticmediasdk/a/g;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/immersion/hapticmediasdk/b/a;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/immersion/hapticmediasdk/a/g;->e:Ljava/io/File;

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/immersion/hapticmediasdk/a/g;->f:Ljava/nio/channels/FileChannel;

    if-nez v2, :cond_3

    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/immersion/hapticmediasdk/a/g;->e:Ljava/io/File;

    const-string v4, "r"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/immersion/hapticmediasdk/a/g;->f:Ljava/nio/channels/FileChannel;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, v2

    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/immersion/hapticmediasdk/a/g;->f:Ljava/nio/channels/FileChannel;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v2, :cond_4

    sget v1, Lcom/immersion/hapticmediasdk/a/g;->a:I

    sget v2, Lcom/immersion/hapticmediasdk/a/g;->d:I

    add-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/g;->a:I

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/g;->c:I

    rem-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/g;->b:I

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/g;->e()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/a/g;->a:I

    const/16 v1, 0x60

    sput v1, Lcom/immersion/hapticmediasdk/a/g;->b:I

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_2
    :try_start_3
    const-string v2, "MemoryAlignedFileReader"

    const-string v3, "FileNotFoundException"

    invoke-static {v2, v3}, Lcom/immersion/hapticmediasdk/b/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/a/g;->o:Lcom/immersion/hapticmediasdk/b/a;

    invoke-virtual {v2, v1}, Lcom/immersion/hapticmediasdk/b/a;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/g;->o:Lcom/immersion/hapticmediasdk/b/a;

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/a/g;->f:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1, v2}, Lcom/immersion/hapticmediasdk/b/a;->a(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v1

    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :cond_4
    :try_start_6
    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/a/g;->i()Z

    move-result v0

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/immersion/hapticmediasdk/a/g;->n:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/immersion/hapticmediasdk/a/g;->n:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/immersion/hapticmediasdk/a/g;->e:Ljava/io/File;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    :catch_3
    move-exception v0

    throw v0

    :catch_4
    move-exception v1

    move-object v1, v2

    goto :goto_2
.end method

.method private i()Z
    .locals 8

    const/4 v6, 0x4

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x4

    :try_start_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/immersion/hapticmediasdk/a/g;->f:Ljava/nio/channels/FileChannel;

    const-wide/16 v4, 0x10

    invoke-virtual {v3, v2, v4, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v3

    if-eq v3, v6, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    add-int/lit8 v5, v5, 0x8

    sub-int/2addr v5, v3

    iput v5, p0, Lcom/immersion/hapticmediasdk/a/g;->s:I

    iput v3, p0, Lcom/immersion/hapticmediasdk/a/g;->t:I

    const/16 v3, 0x14

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-array v3, v2, [B

    iput-object v3, p0, Lcom/immersion/hapticmediasdk/a/g;->q:[B

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v5, p0, Lcom/immersion/hapticmediasdk/a/g;->q:[B

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/immersion/hapticmediasdk/a/g;->p:Lcom/immersion/content/a;

    invoke-virtual {v3, v4, v2}, Lcom/immersion/content/a;->a(Ljava/nio/ByteBuffer;I)V

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/a/g;->p:Lcom/immersion/content/a;

    invoke-virtual {v2}, Lcom/immersion/content/a;->b()I

    move-result v2

    if-lez v2, :cond_0

    mul-int/lit8 v2, v2, 0x2

    sput v2, Lcom/immersion/hapticmediasdk/a/g;->l:I

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/a/g;->p:Lcom/immersion/content/a;

    invoke-virtual {v2}, Lcom/immersion/content/a;->c()I

    move-result v2

    if-lez v2, :cond_0

    sput v2, Lcom/immersion/hapticmediasdk/a/g;->k:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    new-array v0, v1, [I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    :pswitch_0
    packed-switch v0, :pswitch_data_0

    :goto_2
    packed-switch v0, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    add-int/lit8 v3, v2, 0x1c

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/immersion/hapticmediasdk/a/g;->f:Ljava/nio/channels/FileChannel;

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v4, v6, v7}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v5

    if-eq v5, v3, :cond_1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/g;->e()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/g;->a:I

    const/4 v0, 0x1

    goto :goto_0

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

.method private j()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/immersion/hapticmediasdk/models/b;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/immersion/hapticmediasdk/a/g;->h:Lcom/immersion/hapticmediasdk/a/g$b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    :goto_0
    :try_start_1
    new-array v2, v1, [I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/g;->h:Lcom/immersion/hapticmediasdk/a/g$b;

    iget v0, v0, Lcom/immersion/hapticmediasdk/a/g$b;->a:I

    add-int/lit16 v0, v0, 0x400

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/g;->h:Lcom/immersion/hapticmediasdk/a/g$b;

    iput-object v1, p0, Lcom/immersion/hapticmediasdk/a/g;->g:Lcom/immersion/hapticmediasdk/a/g$b;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    sget v1, Lcom/immersion/hapticmediasdk/a/g;->l:I

    div-int/lit8 v1, v1, 0x2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    sub-int/2addr v0, v1

    :try_start_4
    invoke-direct {p0, v0}, Lcom/immersion/hapticmediasdk/a/g;->e(I)Lcom/immersion/hapticmediasdk/a/g$b;

    move-result-object v0

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/a/g;->h:Lcom/immersion/hapticmediasdk/a/g$b;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v2

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/g;->e()I

    move-result v2

    sput v2, Lcom/immersion/hapticmediasdk/a/g;->a:I

    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    const/16 v0, 0x27

    sput v0, Lcom/immersion/hapticmediasdk/a/g;->a:I

    :goto_3
    :try_start_6
    new-array v0, v1, [I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    const/16 v0, 0x2d

    sput v0, Lcom/immersion/hapticmediasdk/a/g;->a:I

    goto :goto_1
.end method

.method private k()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/g;->p:Lcom/immersion/content/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/g;->p:Lcom/immersion/content/a;

    invoke-virtual {v0}, Lcom/immersion/content/a;->g()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    sget v1, Lcom/immersion/hapticmediasdk/a/g;->a:I

    sget v2, Lcom/immersion/hapticmediasdk/a/g;->d:I

    add-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/g;->a:I

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/g;->c:I

    rem-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/g;->b:I

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/g;->e()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/a/g;->a:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/g;->e()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/a/g;->b:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0
.end method

.method private l()I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    add-int/lit16 v1, v0, 0x400

    sget v2, Lcom/immersion/hapticmediasdk/a/g;->l:I

    div-int/lit8 v2, v2, 0x2

    rem-int/2addr v1, v2

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x10

    goto :goto_0

    :cond_0
    return v0
.end method


# virtual methods
.method public a()I
    .locals 3

    sget v0, Lcom/immersion/hapticmediasdk/a/g;->k:I

    sget v1, Lcom/immersion/hapticmediasdk/a/g;->a:I

    sget v2, Lcom/immersion/hapticmediasdk/a/g;->d:I

    add-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/g;->a:I

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/g;->c:I

    rem-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/g;->b:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0x39

    sput v1, Lcom/immersion/hapticmediasdk/a/g;->a:I

    const/16 v1, 0x5e

    sput v1, Lcom/immersion/hapticmediasdk/a/g;->b:I

    :cond_0
    return v0
.end method

.method public a(J)J
    .locals 5

    sget v0, Lcom/immersion/hapticmediasdk/a/g;->k:I

    int-to-long v0, v0

    rem-long v0, p1, v0

    sget v2, Lcom/immersion/hapticmediasdk/a/g;->a:I

    sget v3, Lcom/immersion/hapticmediasdk/a/g;->d:I

    add-int/2addr v3, v2

    mul-int/2addr v2, v3

    sget v3, Lcom/immersion/hapticmediasdk/a/g;->c:I

    rem-int/2addr v2, v3

    packed-switch v2, :pswitch_data_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/g;->e()I

    move-result v2

    sput v2, Lcom/immersion/hapticmediasdk/a/g;->a:I

    const/16 v2, 0x28

    sput v2, Lcom/immersion/hapticmediasdk/a/g;->b:I

    :pswitch_0
    const-wide/16 v2, 0x10

    mul-long/2addr v0, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/g;->k:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public a(I)V
    .locals 1

    iput p1, p0, Lcom/immersion/hapticmediasdk/a/g;->j:I

    iget v0, p0, Lcom/immersion/hapticmediasdk/a/g;->j:I

    if-gtz v0, :cond_0

    iput p1, p0, Lcom/immersion/hapticmediasdk/a/g;->j:I

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/a/g;->h()Z

    :cond_0
    return-void
.end method

.method public b(J)I
    .locals 5

    const/4 v4, 0x2

    long-to-int v0, p1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/immersion/hapticmediasdk/a/g;->d(I)I

    move-result v0

    iget v1, p0, Lcom/immersion/hapticmediasdk/a/g;->i:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget v2, Lcom/immersion/hapticmediasdk/a/g;->a:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/g;->d()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lcom/immersion/hapticmediasdk/a/g;->a:I

    mul-int/2addr v2, v3

    sget v3, Lcom/immersion/hapticmediasdk/a/g;->c:I

    rem-int/2addr v2, v3

    sget v3, Lcom/immersion/hapticmediasdk/a/g;->b:I

    if-eq v2, v3, :cond_0

    sput v4, Lcom/immersion/hapticmediasdk/a/g;->a:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/g;->e()I

    move-result v2

    sput v2, Lcom/immersion/hapticmediasdk/a/g;->b:I

    :cond_0
    if-ne v1, v4, :cond_1

    :try_start_1
    div-int/lit8 v0, v0, 0x10

    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/immersion/hapticmediasdk/a/g;->i:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/a/g;->k()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    :try_start_2
    div-int/2addr v0, v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0
.end method

.method public b(I)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/a/g;->h()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/immersion/hapticmediasdk/a/g;->d(I)I

    move-result v2

    iget v3, p0, Lcom/immersion/hapticmediasdk/a/g;->s:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/immersion/hapticmediasdk/a/g;->g:Lcom/immersion/hapticmediasdk/a/g$b;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/immersion/hapticmediasdk/a/g;->g:Lcom/immersion/hapticmediasdk/a/g$b;

    invoke-static {v3, v2}, Lcom/immersion/hapticmediasdk/a/g;->d(Lcom/immersion/hapticmediasdk/a/g$b;I)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/immersion/hapticmediasdk/a/g;->h:Lcom/immersion/hapticmediasdk/a/g$b;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/immersion/hapticmediasdk/a/g;->h:Lcom/immersion/hapticmediasdk/a/g$b;

    invoke-static {v3, v2}, Lcom/immersion/hapticmediasdk/a/g;->d(Lcom/immersion/hapticmediasdk/a/g$b;I)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/immersion/hapticmediasdk/a/g;->h:Lcom/immersion/hapticmediasdk/a/g$b;

    invoke-static {v3, v2}, Lcom/immersion/hapticmediasdk/a/g;->e(Lcom/immersion/hapticmediasdk/a/g$b;I)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_3
    iget-object v3, p0, Lcom/immersion/hapticmediasdk/a/g;->g:Lcom/immersion/hapticmediasdk/a/g$b;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/immersion/hapticmediasdk/a/g;->g:Lcom/immersion/hapticmediasdk/a/g$b;

    iget v3, v3, Lcom/immersion/hapticmediasdk/a/g$b;->a:I

    if-eq v3, v2, :cond_5

    :cond_4
    invoke-direct {p0, v2}, Lcom/immersion/hapticmediasdk/a/g;->e(I)Lcom/immersion/hapticmediasdk/a/g$b;

    move-result-object v3

    iput-object v3, p0, Lcom/immersion/hapticmediasdk/a/g;->g:Lcom/immersion/hapticmediasdk/a/g$b;

    :cond_5
    iget-object v3, p0, Lcom/immersion/hapticmediasdk/a/g;->h:Lcom/immersion/hapticmediasdk/a/g$b;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/immersion/hapticmediasdk/a/g;->h:Lcom/immersion/hapticmediasdk/a/g$b;

    iget v3, v3, Lcom/immersion/hapticmediasdk/a/g$b;->a:I

    add-int/lit16 v4, v2, 0x400

    sget v5, Lcom/immersion/hapticmediasdk/a/g;->l:I

    div-int/lit8 v5, v5, 0x2
    :try_end_0
    .catch Lcom/immersion/hapticmediasdk/models/b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v4, v5

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/g;->e()I

    move-result v5

    sget v6, Lcom/immersion/hapticmediasdk/a/g;->d:I

    add-int/2addr v5, v6

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/g;->e()I

    move-result v6

    mul-int/2addr v5, v6

    sget v6, Lcom/immersion/hapticmediasdk/a/g;->c:I

    rem-int/2addr v5, v6

    sget v6, Lcom/immersion/hapticmediasdk/a/g;->b:I

    if-eq v5, v6, :cond_6

    const/16 v5, 0x62

    sput v5, Lcom/immersion/hapticmediasdk/a/g;->a:I

    const/16 v5, 0x49

    sput v5, Lcom/immersion/hapticmediasdk/a/g;->b:I

    :cond_6
    if-eq v3, v4, :cond_8

    :cond_7
    add-int/lit16 v2, v2, 0x400

    :try_start_1
    sget v3, Lcom/immersion/hapticmediasdk/a/g;->l:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/immersion/hapticmediasdk/a/g;->e(I)Lcom/immersion/hapticmediasdk/a/g$b;

    move-result-object v2

    iput-object v2, p0, Lcom/immersion/hapticmediasdk/a/g;->h:Lcom/immersion/hapticmediasdk/a/g$b;

    :cond_8
    move v0, v1

    goto :goto_0

    :cond_9
    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/a/g;->j()V
    :try_end_1
    .catch Lcom/immersion/hapticmediasdk/models/b; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_a
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/g;->g:Lcom/immersion/hapticmediasdk/a/g$b;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/g;->g:Lcom/immersion/hapticmediasdk/a/g$b;

    iget-object v0, v0, Lcom/immersion/hapticmediasdk/a/g$b;->b:Ljava/nio/MappedByteBuffer;

    iget-object v3, p0, Lcom/immersion/hapticmediasdk/a/g;->g:Lcom/immersion/hapticmediasdk/a/g$b;

    invoke-direct {p0, v3, v2}, Lcom/immersion/hapticmediasdk/a/g;->a(Lcom/immersion/hapticmediasdk/a/g$b;I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_b
    move v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto/16 :goto_0
.end method

.method public b()[B
    .locals 2

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/g;->q:[B

    return-object v0
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/g;->o:Lcom/immersion/hapticmediasdk/b/a;

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/g;->f:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, v1}, Lcom/immersion/hapticmediasdk/b/a;->a(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/g;->p:Lcom/immersion/content/a;

    invoke-virtual {v0}, Lcom/immersion/content/a;->h()V

    return-void
.end method

.method public c(I)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/immersion/hapticmediasdk/models/b;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/g;->g:Lcom/immersion/hapticmediasdk/a/g$b;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/immersion/hapticmediasdk/a/g;->d(I)I

    move-result v2

    iget v1, p0, Lcom/immersion/hapticmediasdk/a/g;->s:I

    sget v4, Lcom/immersion/hapticmediasdk/a/g;->l:I

    sub-int/2addr v1, v4

    if-ge v2, v1, :cond_0

    :try_start_0
    sget v1, Lcom/immersion/hapticmediasdk/a/g;->l:I

    new-array v1, v1, [B

    iget-object v4, p0, Lcom/immersion/hapticmediasdk/a/g;->g:Lcom/immersion/hapticmediasdk/a/g$b;

    iget-object v4, v4, Lcom/immersion/hapticmediasdk/a/g$b;->b:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v4}, Ljava/nio/MappedByteBuffer;->remaining()I

    move-result v4

    sget v5, Lcom/immersion/hapticmediasdk/a/g;->l:I

    if-ge v4, v5, :cond_2

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/a/g;->j()V

    :cond_2
    iget-object v4, p0, Lcom/immersion/hapticmediasdk/a/g;->g:Lcom/immersion/hapticmediasdk/a/g$b;

    iget-object v4, v4, Lcom/immersion/hapticmediasdk/a/g$b;->b:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v4}, Ljava/nio/MappedByteBuffer;->position()I

    move-result v4

    iget-object v5, p0, Lcom/immersion/hapticmediasdk/a/g;->g:Lcom/immersion/hapticmediasdk/a/g$b;

    iget v5, v5, Lcom/immersion/hapticmediasdk/a/g$b;->a:I

    add-int/2addr v4, v5

    if-lt v4, v2, :cond_3

    if-le v4, v2, :cond_5

    :cond_3
    sub-int/2addr v2, v4

    iget-object v4, p0, Lcom/immersion/hapticmediasdk/a/g;->g:Lcom/immersion/hapticmediasdk/a/g$b;

    iget-object v4, v4, Lcom/immersion/hapticmediasdk/a/g$b;->b:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v4}, Ljava/nio/MappedByteBuffer;->position()I

    move-result v4

    add-int/2addr v2, v4

    if-gez v2, :cond_7

    move v2, v3

    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/immersion/hapticmediasdk/a/g;->g:Lcom/immersion/hapticmediasdk/a/g$b;

    iget-object v4, v4, Lcom/immersion/hapticmediasdk/a/g$b;->b:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_5
    iget-object v2, p0, Lcom/immersion/hapticmediasdk/a/g;->g:Lcom/immersion/hapticmediasdk/a/g$b;

    iget-object v2, v2, Lcom/immersion/hapticmediasdk/a/g$b;->b:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2}, Ljava/nio/MappedByteBuffer;->remaining()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    sget v4, Lcom/immersion/hapticmediasdk/a/g;->a:I

    sget v5, Lcom/immersion/hapticmediasdk/a/g;->d:I

    add-int/2addr v5, v4

    mul-int/2addr v4, v5

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/g;->f()I

    move-result v5

    rem-int/2addr v4, v5

    packed-switch v4, :pswitch_data_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/g;->e()I

    move-result v4

    sput v4, Lcom/immersion/hapticmediasdk/a/g;->a:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/g;->e()I

    move-result v4

    sput v4, Lcom/immersion/hapticmediasdk/a/g;->b:I

    :pswitch_0
    :try_start_1
    iget-object v4, p0, Lcom/immersion/hapticmediasdk/a/g;->g:Lcom/immersion/hapticmediasdk/a/g$b;

    iget-object v4, v4, Lcom/immersion/hapticmediasdk/a/g$b;->b:Ljava/nio/MappedByteBuffer;

    const/4 v5, 0x0

    sget v6, Lcom/immersion/hapticmediasdk/a/g;->l:I

    if-ge v2, v6, :cond_6

    :goto_2
    invoke-virtual {v4, v1, v5, v2}, Ljava/nio/MappedByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/a/g;->g:Lcom/immersion/hapticmediasdk/a/g$b;

    iget-object v2, v2, Lcom/immersion/hapticmediasdk/a/g$b;->b:Ljava/nio/MappedByteBuffer;

    iget-object v4, p0, Lcom/immersion/hapticmediasdk/a/g;->g:Lcom/immersion/hapticmediasdk/a/g$b;

    iget-object v4, v4, Lcom/immersion/hapticmediasdk/a/g$b;->b:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v4}, Ljava/nio/MappedByteBuffer;->position()I

    move-result v4

    :pswitch_1
    packed-switch v3, :pswitch_data_1

    :goto_3
    const/4 v5, 0x1

    packed-switch v5, :pswitch_data_2

    goto :goto_3

    :pswitch_2
    sget v3, Lcom/immersion/hapticmediasdk/a/g;->l:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v4, v3

    invoke-virtual {v2, v3}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object v0, v1

    goto/16 :goto_0

    :cond_6
    sget v2, Lcom/immersion/hapticmediasdk/a/g;->l:I

    goto :goto_2

    :cond_7
    iget-object v4, p0, Lcom/immersion/hapticmediasdk/a/g;->g:Lcom/immersion/hapticmediasdk/a/g$b;

    iget-object v4, v4, Lcom/immersion/hapticmediasdk/a/g$b;->b:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v4}, Ljava/nio/MappedByteBuffer;->limit()I

    move-result v4

    if-ge v4, v2, :cond_4

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/a/g;->g:Lcom/immersion/hapticmediasdk/a/g$b;

    iget-object v2, v2, Lcom/immersion/hapticmediasdk/a/g$b;->b:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2}, Ljava/nio/MappedByteBuffer;->limit()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

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
