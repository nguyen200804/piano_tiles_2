.class public Lcom/immersion/hapticmediasdk/a/a;
.super Ljava/lang/Object;


# static fields
.field public static a:I = 0x48

.field public static b:I = 0x2

.field public static c:I = 0x1

.field public static d:I


# direct methods
.method public static a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static a(Ljava/nio/channels/FileChannel;)I
    .locals 6

    const/4 v4, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x4

    :try_start_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/a;->b()I

    move-result v2

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/a;->a()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/a;->b()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/a;->d()I

    move-result v3

    rem-int/2addr v2, v3

    sget v3, Lcom/immersion/hapticmediasdk/a/a;->d:I

    if-eq v2, v3, :cond_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/a;->b()I

    move-result v2

    sput v2, Lcom/immersion/hapticmediasdk/a/a;->a:I

    const/16 v2, 0x5d

    sput v2, Lcom/immersion/hapticmediasdk/a/a;->d:I

    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const-wide/16 v2, 0x10

    invoke-virtual {p0, v1, v2, v3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v2

    if-eq v2, v4, :cond_2

    :goto_0
    return v0

    :cond_1
    :pswitch_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    const/4 v2, 0x4

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    const/16 v2, 0x14

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v2, Lcom/immersion/content/HapticHeaderUtils;

    invoke-direct {v2}, Lcom/immersion/content/HapticHeaderUtils;-><init>()V

    invoke-virtual {v2, v3, v1}, Lcom/immersion/content/a;->a(Ljava/nio/ByteBuffer;I)V

    invoke-virtual {v2}, Lcom/immersion/content/a;->f()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    add-int/lit8 v2, v1, 0x1c

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v3, v4, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v4

    if-eq v4, v2, :cond_1

    goto :goto_0

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

.method public static a(Ljava/lang/String;Lcom/immersion/hapticmediasdk/b/a;)Lcom/immersion/hapticmediasdk/a/d;
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lcom/immersion/hapticmediasdk/a/a;->b(Ljava/lang/String;Lcom/immersion/hapticmediasdk/b/a;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const-string v1, "FileReaderFactory"

    const-string v2, "Unsupported HAPT file version"

    invoke-static {v1, v2}, Lcom/immersion/hapticmediasdk/b/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    :pswitch_1
    packed-switch v3, :pswitch_data_1

    :goto_0
    packed-switch v3, :pswitch_data_2

    goto :goto_0

    :cond_0
    :goto_1
    :pswitch_2
    return-object v0

    :pswitch_3
    const-string v1, "FileReaderFactory"

    const-string v2, "Can\'t retrieve Major version! Not enough bytes available yet."

    invoke-static {v1, v2}, Lcom/immersion/hapticmediasdk/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    sget v1, Lcom/immersion/hapticmediasdk/a/a;->a:I

    sget v2, Lcom/immersion/hapticmediasdk/a/a;->c:I

    add-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/a;->a:I

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/a;->b:I

    rem-int/2addr v1, v2

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/a;->c()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/a;->b()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/a/a;->a:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/a;->b()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/a/a;->c:I

    goto :goto_1

    :pswitch_4
    :try_start_1
    new-instance v1, Lcom/immersion/hapticmediasdk/a/g;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lcom/immersion/hapticmediasdk/a/g;-><init>(Ljava/lang/String;Lcom/immersion/hapticmediasdk/b/a;I)V

    move-object v0, v1

    goto :goto_1

    :pswitch_5
    new-instance v1, Lcom/immersion/hapticmediasdk/a/g;

    const/4 v2, 0x3

    invoke-direct {v1, p0, p1, v2}, Lcom/immersion/hapticmediasdk/a/g;-><init>(Ljava/lang/String;Lcom/immersion/hapticmediasdk/b/a;I)V

    move-object v0, v1

    goto :goto_1

    :pswitch_6
    new-instance v1, Lcom/immersion/hapticmediasdk/a/h;

    invoke-direct {v1, p0, p1}, Lcom/immersion/hapticmediasdk/a/h;-><init>(Ljava/lang/String;Lcom/immersion/hapticmediasdk/b/a;)V
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static b()I
    .locals 1

    const/16 v0, 0x2f

    return v0
.end method

.method private static b(Ljava/lang/String;Lcom/immersion/hapticmediasdk/b/a;)I
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1, p0}, Lcom/immersion/hapticmediasdk/b/a;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    const/4 v0, -0x1

    :cond_0
    :goto_1
    return v0

    :cond_1
    if-eqz p0, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    throw v0

    :cond_2
    if-nez v1, :cond_3

    :try_start_2
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v1, v2, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/immersion/hapticmediasdk/a/a;->a(Ljava/nio/channels/FileChannel;)I

    move-result v0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/a;->b()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/a/a;->a:I

    goto :goto_1
.end method

.method public static c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static d()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
