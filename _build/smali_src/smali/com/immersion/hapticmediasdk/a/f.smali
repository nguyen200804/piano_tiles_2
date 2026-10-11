.class public Lcom/immersion/hapticmediasdk/a/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/immersion/hapticmediasdk/a/f$a;
    }
.end annotation


# static fields
.field public static a:I = 0x23

.field public static b:I = 0x0

.field public static c:I = 0x1

.field public static d:I = 0x2


# instance fields
.field private e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private f:Ljava/util/concurrent/atomic/AtomicInteger;

.field private g:Landroid/os/Handler;

.field private h:Lcom/immersion/hapticmediasdk/a/c;

.field private i:Lcom/immersion/hapticmediasdk/b/c;

.field private j:Lcom/immersion/hapticmediasdk/d;

.field private k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/immersion/hapticmediasdk/d;)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/a/f;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/a/f;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lcom/immersion/hapticmediasdk/b/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget v1, Lcom/immersion/hapticmediasdk/a/f;->a:I

    sget v2, Lcom/immersion/hapticmediasdk/a/f;->c:I

    add-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/f;->a:I

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/f;->d:I

    rem-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/f;->b:I

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/f;->a()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/a/f;->a:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/f;->a()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/a/f;->b:I

    :cond_0
    :try_start_1
    invoke-direct {v0}, Lcom/immersion/hapticmediasdk/b/c;-><init>()V

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/a/f;->i:Lcom/immersion/hapticmediasdk/b/c;

    new-instance v0, Lcom/immersion/hapticmediasdk/a/f$b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-direct {v0, p0}, Lcom/immersion/hapticmediasdk/a/f$b;-><init>(Lcom/immersion/hapticmediasdk/a/f;)V

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/a/f;->k:Ljava/lang/Runnable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iput-object p2, p0, Lcom/immersion/hapticmediasdk/a/f;->j:Lcom/immersion/hapticmediasdk/d;

    new-instance v0, Lcom/immersion/hapticmediasdk/a/f$a;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-direct {v0, p0, p1}, Lcom/immersion/hapticmediasdk/a/f$a;-><init>(Lcom/immersion/hapticmediasdk/a/f;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/a/f;->g:Landroid/os/Handler;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0
.end method

.method public static a()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public static synthetic a(Lcom/immersion/hapticmediasdk/a/f;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/f;->e:Ljava/util/concurrent/atomic/AtomicInteger;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget v1, Lcom/immersion/hapticmediasdk/a/f;->a:I

    sget v2, Lcom/immersion/hapticmediasdk/a/f;->c:I

    add-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/f;->a:I

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/f;->d:I

    rem-int/2addr v1, v2

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/f;->l()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/16 v1, 0x14

    sput v1, Lcom/immersion/hapticmediasdk/a/f;->a:I

    const/16 v1, 0x4e

    sput v1, Lcom/immersion/hapticmediasdk/a/f;->b:I

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    throw v0
.end method

.method private a(IJ)V
    .locals 4

    :pswitch_0
    const/4 v0, 0x0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/f;->h:Lcom/immersion/hapticmediasdk/a/c;

    sget v1, Lcom/immersion/hapticmediasdk/a/f;->a:I

    sget v2, Lcom/immersion/hapticmediasdk/a/f;->c:I

    add-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/f;->a:I

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/f;->d:I

    rem-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/f;->b:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0xa

    sput v1, Lcom/immersion/hapticmediasdk/a/f;->a:I

    const/4 v1, 0x4

    sput v1, Lcom/immersion/hapticmediasdk/a/f;->b:I

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/immersion/hapticmediasdk/a/c;->a(IJ)V

    return-void

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

.method private a(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "haptic_download_exception"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    instance-of v1, v0, Lcom/immersion/hapticmediasdk/models/a;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/immersion/hapticmediasdk/models/a;

    const-string v2, "MediaController"

    new-instance v3, Ljava/lang/StringBuilder;

    :pswitch_0
    packed-switch v4, :pswitch_data_0

    :goto_0
    packed-switch v4, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "caught HttpUnsuccessfulExcetion http status code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/immersion/hapticmediasdk/models/a;->a()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/immersion/hapticmediasdk/b/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "MediaController"

    sget v2, Lcom/immersion/hapticmediasdk/a/f;->a:I

    sget v3, Lcom/immersion/hapticmediasdk/a/f;->c:I

    add-int/2addr v2, v3

    sget v3, Lcom/immersion/hapticmediasdk/a/f;->a:I

    mul-int/2addr v2, v3

    sget v3, Lcom/immersion/hapticmediasdk/a/f;->d:I

    rem-int/2addr v2, v3

    sget v3, Lcom/immersion/hapticmediasdk/a/f;->b:I

    if-eq v2, v3, :cond_1

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/f;->a()I

    move-result v2

    sput v2, Lcom/immersion/hapticmediasdk/a/f;->a:I

    const/16 v2, 0x62

    sput v2, Lcom/immersion/hapticmediasdk/a/f;->b:I

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HapticDownloadError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/immersion/hapticmediasdk/b/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/f;->j:Lcom/immersion/hapticmediasdk/d;

    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->e:Lcom/immersion/hapticmediasdk/a$a;

    invoke-virtual {v0, v1}, Lcom/immersion/hapticmediasdk/d;->a(Lcom/immersion/hapticmediasdk/a$a;)I

    return-void

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

.method public static synthetic a(Lcom/immersion/hapticmediasdk/a/f;I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/immersion/hapticmediasdk/a/f;->b(I)V

    return-void
.end method

.method public static synthetic a(Lcom/immersion/hapticmediasdk/a/f;IJ)V
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/a/f;->a:I

    sget v1, Lcom/immersion/hapticmediasdk/a/f;->c:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/f;->d:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x4f

    sput v0, Lcom/immersion/hapticmediasdk/a/f;->a:I

    const/16 v0, 0x4a

    sput v0, Lcom/immersion/hapticmediasdk/a/f;->b:I

    :pswitch_0
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/immersion/hapticmediasdk/a/f;->a(IJ)V
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

.method public static synthetic a(Lcom/immersion/hapticmediasdk/a/f;Landroid/os/Message;)V
    .locals 2

    :pswitch_0
    const/4 v0, 0x1

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/immersion/hapticmediasdk/a/f;->a:I

    sget v1, Lcom/immersion/hapticmediasdk/a/f;->c:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/f;->a:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/f;->d:I

    rem-int/2addr v0, v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/f;->l()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/16 v0, 0x1f

    sput v0, Lcom/immersion/hapticmediasdk/a/f;->a:I

    const/4 v0, 0x2

    sput v0, Lcom/immersion/hapticmediasdk/a/f;->b:I

    :cond_0
    invoke-direct {p0, p1}, Lcom/immersion/hapticmediasdk/a/f;->a(Landroid/os/Message;)V

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

.method private a(Z)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/f;->h:Lcom/immersion/hapticmediasdk/a/c;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/a/c;->c()Z

    move-result v0

    move v1, v2

    :cond_0
    if-eqz p1, :cond_2

    if-nez v0, :cond_1

    :goto_0
    iget-object v3, p0, Lcom/immersion/hapticmediasdk/a/f;->h:Lcom/immersion/hapticmediasdk/a/c;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/f;->h:Lcom/immersion/hapticmediasdk/a/c;

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :pswitch_0
    const/4 v0, 0x1

    packed-switch v0, :pswitch_data_0

    :goto_2
    packed-switch v2, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/f;->h:Lcom/immersion/hapticmediasdk/a/c;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/a/c;->c()Z

    move-result v0

    add-int/lit8 v1, v1, 0x1

    if-nez p1, :cond_0

    const/4 v3, 0x5

    if-lt v1, v3, :cond_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    if-eqz v0, :cond_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

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

.method public static synthetic b(Lcom/immersion/hapticmediasdk/a/f;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 2

    :pswitch_0
    const/4 v0, 0x0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/immersion/hapticmediasdk/a/f;->a:I

    sget v1, Lcom/immersion/hapticmediasdk/a/f;->c:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/f;->d:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_2

    const/16 v0, 0x1f

    sput v0, Lcom/immersion/hapticmediasdk/a/f;->a:I

    const/16 v0, 0x49

    sput v0, Lcom/immersion/hapticmediasdk/a/f;->b:I

    :pswitch_2
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/f;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0

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

.method private b(I)V
    .locals 2

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/f;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/f;->j:Lcom/immersion/hapticmediasdk/d;

    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->h:Lcom/immersion/hapticmediasdk/a$a;

    invoke-virtual {v0, v1}, Lcom/immersion/hapticmediasdk/d;->a(Lcom/immersion/hapticmediasdk/a$a;)I

    return-void
.end method

.method public static synthetic c(Lcom/immersion/hapticmediasdk/a/f;)Lcom/immersion/hapticmediasdk/d;
    .locals 3

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/f;->j:Lcom/immersion/hapticmediasdk/d;

    sget v1, Lcom/immersion/hapticmediasdk/a/f;->a:I

    sget v2, Lcom/immersion/hapticmediasdk/a/f;->c:I

    add-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/f;->a:I

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/f;->d:I

    rem-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/f;->b:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0x34

    sput v1, Lcom/immersion/hapticmediasdk/a/f;->a:I

    const/16 v1, 0x49

    sput v1, Lcom/immersion/hapticmediasdk/a/f;->b:I

    :cond_0
    return-object v0
.end method

.method public static synthetic d(Lcom/immersion/hapticmediasdk/a/f;)Lcom/immersion/hapticmediasdk/a/c;
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/a/f;->a:I

    sget v1, Lcom/immersion/hapticmediasdk/a/f;->c:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/f;->d:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x5d

    sput v0, Lcom/immersion/hapticmediasdk/a/f;->a:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/f;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/f;->b:I

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/f;->h:Lcom/immersion/hapticmediasdk/a/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static l()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static m()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method private n()I
    .locals 1

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/f;->h:Lcom/immersion/hapticmediasdk/a/c;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/a/c;->h()V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/f;->e:Ljava/util/concurrent/atomic/AtomicInteger;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/f;->a()I

    move-result v1

    sget v2, Lcom/immersion/hapticmediasdk/a/f;->c:I

    add-int/2addr v2, v1

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/f;->d:I

    rem-int/2addr v1, v2

    packed-switch v1, :pswitch_data_0

    const/16 v1, 0x8

    sput v1, Lcom/immersion/hapticmediasdk/a/f;->a:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/f;->a()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/a/f;->b:I

    :pswitch_0
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/os/Handler;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/f;->h:Lcom/immersion/hapticmediasdk/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/f;->h:Lcom/immersion/hapticmediasdk/a/c;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/a/c;->k()V

    invoke-direct {p0, v1}, Lcom/immersion/hapticmediasdk/a/f;->a(Z)V

    :pswitch_0
    packed-switch v1, :pswitch_data_0

    :goto_0
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/a/f;->h:Lcom/immersion/hapticmediasdk/a/c;

    :cond_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/f;->j:Lcom/immersion/hapticmediasdk/d;

    sget v1, Lcom/immersion/hapticmediasdk/a/f;->a:I

    sget v2, Lcom/immersion/hapticmediasdk/a/f;->c:I

    add-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/f;->a:I

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/f;->d:I

    rem-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/f;->b:I

    if-eq v1, v2, :cond_1

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/f;->a()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/a/f;->a:I

    const/16 v1, 0x1d

    sput v1, Lcom/immersion/hapticmediasdk/a/f;->b:I

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

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

.method public a(Lcom/immersion/hapticmediasdk/a/c;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/immersion/hapticmediasdk/a/f;->h:Lcom/immersion/hapticmediasdk/a/c;

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/f;->h:Lcom/immersion/hapticmediasdk/a/c;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/a/c;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget v0, Lcom/immersion/hapticmediasdk/a/f;->a:I

    sget v1, Lcom/immersion/hapticmediasdk/a/f;->c:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/f;->a:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/f;->d:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/f;->b:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/f;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/f;->a:I

    const/16 v0, 0x18

    sput v0, Lcom/immersion/hapticmediasdk/a/f;->b:I

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v0}, Lcom/immersion/hapticmediasdk/a/f;->a(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0
.end method

.method public b()Landroid/os/Handler;
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/a/f;->a:I

    sget v1, Lcom/immersion/hapticmediasdk/a/f;->c:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/f;->a:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/f;->d:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/f;->b:I

    if-eq v0, v1, :cond_0

    const/16 v0, 0x61

    sput v0, Lcom/immersion/hapticmediasdk/a/f;->a:I

    const/16 v0, 0x2d

    sput v0, Lcom/immersion/hapticmediasdk/a/f;->b:I

    :cond_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/f;->g:Landroid/os/Handler;

    return-object v0
.end method

.method public c()I
    .locals 3

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/a/f;->n()I

    move-result v0

    sget v1, Lcom/immersion/hapticmediasdk/a/f;->a:I

    sget v2, Lcom/immersion/hapticmediasdk/a/f;->c:I

    add-int/2addr v2, v1

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/f;->d:I

    rem-int/2addr v1, v2

    packed-switch v1, :pswitch_data_0

    const/16 v1, 0x27

    sput v1, Lcom/immersion/hapticmediasdk/a/f;->a:I

    const/16 v1, 0x49

    sput v1, Lcom/immersion/hapticmediasdk/a/f;->b:I

    :pswitch_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public d()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/f;->h:Lcom/immersion/hapticmediasdk/a/c;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/a/c;->d()Z

    move-result v0

    move v2, v0

    move v0, v1

    :goto_0
    if-nez v2, :cond_0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/a/f;->h:Lcom/immersion/hapticmediasdk/a/c;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/immersion/hapticmediasdk/a/f;->h:Lcom/immersion/hapticmediasdk/a/c;

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/a/f;->h:Lcom/immersion/hapticmediasdk/a/c;

    invoke-virtual {v2}, Lcom/immersion/hapticmediasdk/a/c;->d()Z

    move-result v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :pswitch_0
    const/4 v2, 0x1

    packed-switch v2, :pswitch_data_0

    :goto_2
    packed-switch v1, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    throw v0

    :cond_0
    return-void

    :catch_0
    move-exception v3

    goto :goto_1

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

.method public e()V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/f;->h:Lcom/immersion/hapticmediasdk/a/c;

    if-eqz v0, :cond_0

    :pswitch_0
    packed-switch v1, :pswitch_data_0

    :goto_0
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/f;->h:Lcom/immersion/hapticmediasdk/a/c;

    sget v1, Lcom/immersion/hapticmediasdk/a/f;->a:I

    sget v2, Lcom/immersion/hapticmediasdk/a/f;->c:I

    add-int/2addr v2, v1

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/f;->d:I

    rem-int/2addr v1, v2

    packed-switch v1, :pswitch_data_2

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/f;->a()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/a/f;->a:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/f;->a()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/a/f;->b:I

    :pswitch_2
    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/a/c;->f()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/f;->k:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void

    :cond_0
    const-string v0, "MediaController"

    const-string v1, "Can\'t start periodic sync since haptic playback thread stopped."

    invoke-static {v0, v1}, Lcom/immersion/hapticmediasdk/b/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

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

.method public f()I
    .locals 1

    invoke-virtual {p0}, Lcom/immersion/hapticmediasdk/a/f;->j()I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 2

    const/4 v0, 0x0

    :pswitch_0
    packed-switch v0, :pswitch_data_0

    :goto_0
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/immersion/hapticmediasdk/a/f;->a:I

    sget v1, Lcom/immersion/hapticmediasdk/a/f;->c:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/f;->a:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/f;->d:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/f;->b:I

    if-eq v0, v1, :cond_0

    const/16 v0, 0x33

    sput v0, Lcom/immersion/hapticmediasdk/a/f;->a:I

    const/16 v0, 0x3f

    sput v0, Lcom/immersion/hapticmediasdk/a/f;->b:I

    :cond_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/f;->j:Lcom/immersion/hapticmediasdk/d;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/d;->d()J

    move-result-wide v0

    long-to-int v0, v0

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
.end method

.method public h()J
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/a/f;->a:I

    sget v1, Lcom/immersion/hapticmediasdk/a/f;->c:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/f;->d:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/f;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/f;->a:I

    const/16 v0, 0x26

    sput v0, Lcom/immersion/hapticmediasdk/a/f;->b:I

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/f;->j:Lcom/immersion/hapticmediasdk/d;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/d;->e()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    :catch_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public i()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/f;->j:Lcom/immersion/hapticmediasdk/d;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/d;->g()Lcom/immersion/hapticmediasdk/a$a;

    move-result-object v0

    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->c:Lcom/immersion/hapticmediasdk/a$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0
.end method

.method public j()I
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/f;->i:Lcom/immersion/hapticmediasdk/b/c;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/b/c;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/f;->h:Lcom/immersion/hapticmediasdk/a/c;

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/f;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    sget v2, Lcom/immersion/hapticmediasdk/a/f;->a:I

    sget v3, Lcom/immersion/hapticmediasdk/a/f;->c:I

    add-int/2addr v3, v2

    mul-int/2addr v2, v3

    sget v3, Lcom/immersion/hapticmediasdk/a/f;->d:I

    rem-int/2addr v2, v3

    packed-switch v2, :pswitch_data_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/f;->a()I

    move-result v2

    sput v2, Lcom/immersion/hapticmediasdk/a/f;->a:I

    const/16 v2, 0x62

    sput v2, Lcom/immersion/hapticmediasdk/a/f;->b:I

    :pswitch_0
    :try_start_2
    iget-object v2, p0, Lcom/immersion/hapticmediasdk/a/f;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/immersion/hapticmediasdk/a/c;->a(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v0, 0x0

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

.method public k()I
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/f;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/f;->h:Lcom/immersion/hapticmediasdk/a/c;

    :pswitch_0
    const/4 v1, 0x1

    packed-switch v1, :pswitch_data_0

    :goto_0
    packed-switch v3, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/a/c;->g()V

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/f;->h:Lcom/immersion/hapticmediasdk/a/c;

    sget v1, Lcom/immersion/hapticmediasdk/a/f;->a:I

    sget v2, Lcom/immersion/hapticmediasdk/a/f;->c:I

    add-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/f;->a:I

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/f;->d:I

    rem-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/f;->b:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0x30

    sput v1, Lcom/immersion/hapticmediasdk/a/f;->a:I

    const/16 v1, 0x3f

    sput v1, Lcom/immersion/hapticmediasdk/a/f;->b:I

    :cond_0
    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/a/c;->f()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/f;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return v3

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
