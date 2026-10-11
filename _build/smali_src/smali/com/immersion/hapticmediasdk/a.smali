.class public abstract Lcom/immersion/hapticmediasdk/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/immersion/hapticmediasdk/a$a;
    }
.end annotation


# static fields
.field public static d:I = 0x19

.field public static e:I = 0x0

.field public static f:I = 0x1

.field public static g:I = 0x2


# instance fields
.field public a:Lcom/immersion/hapticmediasdk/a$a;

.field public b:Z

.field public c:Lcom/immersion/hapticmediasdk/d;

.field private h:Landroid/os/HandlerThread;

.field private i:Landroid/os/Handler;

.field private j:Landroid/content/Context;

.field private k:Lcom/immersion/hapticmediasdk/b/d;


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/immersion/hapticmediasdk/a$a;->a:Lcom/immersion/hapticmediasdk/a$a;

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/a;->a:Lcom/immersion/hapticmediasdk/a$a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/immersion/hapticmediasdk/a;->b:Z

    iput-object p2, p0, Lcom/immersion/hapticmediasdk/a;->j:Landroid/content/Context;

    sget v0, Lcom/immersion/hapticmediasdk/a;->d:I

    sget v1, Lcom/immersion/hapticmediasdk/a;->f:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a;->d:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a;->g:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a;->e:I

    if-eq v0, v1, :cond_0

    const/16 v0, 0x18

    sput v0, Lcom/immersion/hapticmediasdk/a;->d:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/a;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a;->e:I

    :cond_0
    new-instance v0, Lcom/immersion/hapticmediasdk/b/d;

    invoke-direct {v0}, Lcom/immersion/hapticmediasdk/b/d;-><init>()V

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/a;->k:Lcom/immersion/hapticmediasdk/b/d;

    return-void
.end method

.method public static a()I
    .locals 1

    const/16 v0, 0x60

    return v0
.end method

.method public static e()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method


# virtual methods
.method public final a(J)I
    .locals 5

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/immersion/hapticmediasdk/a;->c()Lcom/immersion/hapticmediasdk/a$a;

    move-result-object v0

    sget v1, Lcom/immersion/hapticmediasdk/a;->d:I

    sget v2, Lcom/immersion/hapticmediasdk/a;->f:I

    add-int/2addr v2, v1

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a;->g:I

    rem-int/2addr v1, v2

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a;->a()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/a;->d:I

    const/16 v1, 0x62

    sput v1, Lcom/immersion/hapticmediasdk/a;->e:I

    :pswitch_0
    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->c:Lcom/immersion/hapticmediasdk/a$a;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->g:Lcom/immersion/hapticmediasdk/a$a;

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a;->c:Lcom/immersion/hapticmediasdk/d;

    invoke-virtual {v0, p1, p2}, Lcom/immersion/hapticmediasdk/d;->a(J)V

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a;->c:Lcom/immersion/hapticmediasdk/d;

    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->c:Lcom/immersion/hapticmediasdk/a$a;

    invoke-virtual {v0, v1}, Lcom/immersion/hapticmediasdk/d;->a(Lcom/immersion/hapticmediasdk/a$a;)I

    move-result v0

    :goto_0
    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a;->c:Lcom/immersion/hapticmediasdk/d;

    invoke-virtual {v0, p1, p2}, Lcom/immersion/hapticmediasdk/d;->a(J)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->f:Lcom/immersion/hapticmediasdk/a$a;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->h:Lcom/immersion/hapticmediasdk/a$a;

    if-ne v0, v1, :cond_1

    :cond_3
    :pswitch_2
    packed-switch v3, :pswitch_data_1

    :goto_1
    packed-switch v3, :pswitch_data_2

    goto :goto_1

    nop

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
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public abstract a(Ljava/lang/String;)I
.end method

.method public b()I
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.permission.VIBRATE"

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/a;->j:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SDK Monitor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/a;->h:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a;->h:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a;->h:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/a;->i:Landroid/os/Handler;

    new-instance v0, Lcom/immersion/hapticmediasdk/d;

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a;->i:Landroid/os/Handler;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    sget v2, Lcom/immersion/hapticmediasdk/a;->d:I

    sget v3, Lcom/immersion/hapticmediasdk/a;->f:I

    add-int/2addr v3, v2

    mul-int/2addr v2, v3

    sget v3, Lcom/immersion/hapticmediasdk/a;->g:I

    rem-int/2addr v2, v3

    packed-switch v2, :pswitch_data_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a;->a()I

    move-result v2

    sput v2, Lcom/immersion/hapticmediasdk/a;->d:I

    const/16 v2, 0x5d

    sput v2, Lcom/immersion/hapticmediasdk/a;->e:I

    :pswitch_0
    :try_start_2
    iget-object v2, p0, Lcom/immersion/hapticmediasdk/a;->j:Landroid/content/Context;

    iget-object v3, p0, Lcom/immersion/hapticmediasdk/a;->k:Lcom/immersion/hapticmediasdk/b/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/immersion/hapticmediasdk/d;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/immersion/hapticmediasdk/b/d;)V

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/a;->c:Lcom/immersion/hapticmediasdk/d;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_3
    const-string v0, "HapticContentSDK"

    const-string v1, "Failed to create a Haptic Content SDK instance.Vibrate permission denied."

    invoke-static {v0, v1}, Lcom/immersion/hapticmediasdk/b/b;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v0, -0x3

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Lcom/immersion/hapticmediasdk/a$a;
    .locals 1

    iget-boolean v0, p0, Lcom/immersion/hapticmediasdk/a;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/immersion/hapticmediasdk/a$a;->i:Lcom/immersion/hapticmediasdk/a$a;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a;->c:Lcom/immersion/hapticmediasdk/d;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/d;->g()Lcom/immersion/hapticmediasdk/a$a;

    move-result-object v0

    goto :goto_0
.end method

.method public final d()I
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/immersion/hapticmediasdk/a;->c()Lcom/immersion/hapticmediasdk/a$a;

    move-result-object v0

    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->b:Lcom/immersion/hapticmediasdk/a$a;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->d:Lcom/immersion/hapticmediasdk/a$a;

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a;->c:Lcom/immersion/hapticmediasdk/d;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/immersion/hapticmediasdk/d;->a(J)V

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a;->c:Lcom/immersion/hapticmediasdk/d;

    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->c:Lcom/immersion/hapticmediasdk/a$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a;->a()I

    move-result v2

    sget v3, Lcom/immersion/hapticmediasdk/a;->f:I

    add-int/2addr v2, v3

    invoke-static {}, Lcom/immersion/hapticmediasdk/a;->a()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-static {}, Lcom/immersion/hapticmediasdk/a;->e()I

    move-result v3

    rem-int/2addr v2, v3

    sget v3, Lcom/immersion/hapticmediasdk/a;->e:I

    if-eq v2, v3, :cond_1

    invoke-static {}, Lcom/immersion/hapticmediasdk/a;->a()I

    move-result v2

    sput v2, Lcom/immersion/hapticmediasdk/a;->d:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/a;->a()I

    move-result v2

    sput v2, Lcom/immersion/hapticmediasdk/a;->e:I

    :cond_1
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/immersion/hapticmediasdk/d;->a(Lcom/immersion/hapticmediasdk/a$a;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_0
    return v0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0
.end method

.method public final f()I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/immersion/hapticmediasdk/a;->c()Lcom/immersion/hapticmediasdk/a$a;

    move-result-object v2

    sget-object v3, Lcom/immersion/hapticmediasdk/a$a;->f:Lcom/immersion/hapticmediasdk/a$a;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/immersion/hapticmediasdk/a$a;->c:Lcom/immersion/hapticmediasdk/a$a;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/immersion/hapticmediasdk/a$a;->d:Lcom/immersion/hapticmediasdk/a$a;

    if-ne v2, v3, :cond_1

    :goto_0
    :try_start_0
    new-array v0, v1, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v0, 0x63

    sput v0, Lcom/immersion/hapticmediasdk/a;->d:I

    :cond_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a;->c:Lcom/immersion/hapticmediasdk/d;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/d;->f()V

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a;->c:Lcom/immersion/hapticmediasdk/d;

    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->c:Lcom/immersion/hapticmediasdk/a$a;

    invoke-virtual {v0, v1}, Lcom/immersion/hapticmediasdk/d;->a(Lcom/immersion/hapticmediasdk/a$a;)I

    move-result v0

    :cond_1
    return v0
.end method

.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/immersion/hapticmediasdk/a;->i()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0

    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method public final g()I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/immersion/hapticmediasdk/a;->c()Lcom/immersion/hapticmediasdk/a$a;

    move-result-object v1

    sget-object v2, Lcom/immersion/hapticmediasdk/a$a;->i:Lcom/immersion/hapticmediasdk/a$a;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/immersion/hapticmediasdk/a$a;->e:Lcom/immersion/hapticmediasdk/a$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v1, v2, :cond_1

    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v0, 0x15

    sput v0, Lcom/immersion/hapticmediasdk/a;->d:I

    :cond_0
    const/4 v0, -0x1

    :goto_1
    return v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a;->c:Lcom/immersion/hapticmediasdk/d;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->f:Lcom/immersion/hapticmediasdk/a$a;

    invoke-virtual {v0, v1}, Lcom/immersion/hapticmediasdk/d;->a(Lcom/immersion/hapticmediasdk/a$a;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v0

    goto :goto_1

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    throw v0
.end method

.method public final h()I
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/immersion/hapticmediasdk/a;->c()Lcom/immersion/hapticmediasdk/a$a;

    move-result-object v0

    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->i:Lcom/immersion/hapticmediasdk/a$a;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->a:Lcom/immersion/hapticmediasdk/a$a;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, -0x1

    :pswitch_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a;->c:Lcom/immersion/hapticmediasdk/d;

    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->d:Lcom/immersion/hapticmediasdk/a$a;

    invoke-virtual {v0, v1}, Lcom/immersion/hapticmediasdk/d;->a(Lcom/immersion/hapticmediasdk/a$a;)I

    move-result v0

    :pswitch_1
    packed-switch v2, :pswitch_data_0

    :goto_0
    packed-switch v2, :pswitch_data_1

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

.method public final i()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/immersion/hapticmediasdk/a;->c()Lcom/immersion/hapticmediasdk/a$a;

    move-result-object v0

    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->i:Lcom/immersion/hapticmediasdk/a$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a;->c:Lcom/immersion/hapticmediasdk/d;

    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->a:Lcom/immersion/hapticmediasdk/a$a;

    invoke-virtual {v0, v1}, Lcom/immersion/hapticmediasdk/d;->a(Lcom/immersion/hapticmediasdk/a$a;)I

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a;->h:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v2, p0, Lcom/immersion/hapticmediasdk/a;->h:Landroid/os/HandlerThread;

    iput-object v2, p0, Lcom/immersion/hapticmediasdk/a;->c:Lcom/immersion/hapticmediasdk/d;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/immersion/hapticmediasdk/a;->b:Z

    :cond_0
    return-void
.end method
