.class public Lcom/immersion/hapticmediasdk/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/immersion/hapticmediasdk/d$a;
    }
.end annotation


# static fields
.field public static a:I = 0x25

.field public static b:I = 0x1

.field public static c:I = 0x2

.field public static d:I


# instance fields
.field private final e:Ljava/lang/Object;

.field private final f:Ljava/lang/Object;

.field private g:J

.field private h:J

.field private i:Landroid/os/Handler;

.field private volatile j:Lcom/immersion/hapticmediasdk/a$a;

.field private k:Lcom/immersion/hapticmediasdk/a/f;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Landroid/content/Context;

.field private o:Lcom/immersion/hapticmediasdk/b/d;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/immersion/hapticmediasdk/b/d;)V
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/d;->a:I

    sget v1, Lcom/immersion/hapticmediasdk/d;->b:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/d;->a:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/d;->c:I

    rem-int/2addr v0, v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/d;->a()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/16 v0, 0x2f

    sput v0, Lcom/immersion/hapticmediasdk/d;->a:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/d;->b()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/d;->b:I

    :cond_0
    :try_start_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/d;->e:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/d;->f:Ljava/lang/Object;

    sget-object v0, Lcom/immersion/hapticmediasdk/a$a;->a:Lcom/immersion/hapticmediasdk/a$a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iput-object v0, p0, Lcom/immersion/hapticmediasdk/d;->j:Lcom/immersion/hapticmediasdk/a$a;

    iput-object p1, p0, Lcom/immersion/hapticmediasdk/d;->i:Landroid/os/Handler;

    iput-object p2, p0, Lcom/immersion/hapticmediasdk/d;->n:Landroid/content/Context;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iput-object p3, p0, Lcom/immersion/hapticmediasdk/d;->o:Lcom/immersion/hapticmediasdk/b/d;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

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

    const/4 v0, 0x0

    return v0
.end method

.method public static b()I
    .locals 1

    const/16 v0, 0x36

    return v0
.end method

.method private b(Lcom/immersion/hapticmediasdk/a$a;)I
    .locals 6

    sget v0, Lcom/immersion/hapticmediasdk/d;->a:I

    sget v1, Lcom/immersion/hapticmediasdk/d;->b:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/d;->c:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x13

    sput v0, Lcom/immersion/hapticmediasdk/d;->a:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/d;->b()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/d;->b:I

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/d;->i:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/immersion/hapticmediasdk/d;->j:Lcom/immersion/hapticmediasdk/a$a;

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/d;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/immersion/hapticmediasdk/a/f;

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/d;->i:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/immersion/hapticmediasdk/a/f;-><init>(Landroid/os/Looper;Lcom/immersion/hapticmediasdk/d;)V

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/d;->k:Lcom/immersion/hapticmediasdk/a/f;

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/d;->k:Lcom/immersion/hapticmediasdk/a/f;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/a/f;->b()Landroid/os/Handler;

    move-result-object v3

    new-instance v0, Lcom/immersion/hapticmediasdk/a/c;

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/d;->n:Landroid/content/Context;

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/d;->l:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-boolean v4, p0, Lcom/immersion/hapticmediasdk/d;->m:Z

    iget-object v5, p0, Lcom/immersion/hapticmediasdk/d;->o:Lcom/immersion/hapticmediasdk/b/d;

    invoke-direct/range {v0 .. v5}, Lcom/immersion/hapticmediasdk/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;ZLcom/immersion/hapticmediasdk/b/d;)V

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/d;->k:Lcom/immersion/hapticmediasdk/a/f;

    invoke-virtual {v1, v0}, Lcom/immersion/hapticmediasdk/a/f;->a(Lcom/immersion/hapticmediasdk/a/c;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x4

    goto :goto_0

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

.method public static c()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private h()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/d;->i:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/d;->k:Lcom/immersion/hapticmediasdk/a/f;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/d;->k()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MediaTaskManager"

    const-string v1, "Could not dispose haptics, reset anyway."

    invoke-static {v0, v1}, Lcom/immersion/hapticmediasdk/b/b;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/immersion/hapticmediasdk/d;->l:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/immersion/hapticmediasdk/d;->g:J

    sget-object v0, Lcom/immersion/hapticmediasdk/a$a;->a:Lcom/immersion/hapticmediasdk/a$a;

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/d;->j:Lcom/immersion/hapticmediasdk/a$a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    sget v0, Lcom/immersion/hapticmediasdk/d;->a:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/d;->c()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/d;->c:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/d;->b()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/d;->a:I

    const/16 v0, 0x37

    sput v0, Lcom/immersion/hapticmediasdk/d;->b:I

    :pswitch_0
    const/4 v0, 0x0

    return v0

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

.method private i()I
    .locals 4

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/d;->i:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/d;->k:Lcom/immersion/hapticmediasdk/a/f;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/a/f;->f()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->c:Lcom/immersion/hapticmediasdk/a$a;

    iput-object v1, p0, Lcom/immersion/hapticmediasdk/d;->j:Lcom/immersion/hapticmediasdk/a$a;

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/d;->i:Landroid/os/Handler;

    sget v2, Lcom/immersion/hapticmediasdk/d;->a:I

    sget v3, Lcom/immersion/hapticmediasdk/d;->b:I

    add-int/2addr v3, v2

    mul-int/2addr v2, v3

    sget v3, Lcom/immersion/hapticmediasdk/d;->c:I

    rem-int/2addr v2, v3

    packed-switch v2, :pswitch_data_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/d;->b()I

    move-result v2

    sput v2, Lcom/immersion/hapticmediasdk/d;->a:I

    const/16 v2, 0x44

    sput v2, Lcom/immersion/hapticmediasdk/d;->d:I

    :pswitch_0
    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private j()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/d;->i:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/immersion/hapticmediasdk/d;->g:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget v0, Lcom/immersion/hapticmediasdk/d;->a:I

    sget v1, Lcom/immersion/hapticmediasdk/d;->b:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/d;->a:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/d;->c:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/d;->d:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/d;->b()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/d;->a:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/d;->b()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/d;->d:I

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/d;->k:Lcom/immersion/hapticmediasdk/a/f;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/a/f;->k()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-nez v0, :cond_1

    :try_start_2
    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->d:Lcom/immersion/hapticmediasdk/a$a;

    iput-object v1, p0, Lcom/immersion/hapticmediasdk/d;->j:Lcom/immersion/hapticmediasdk/a$a;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0
.end method

.method private k()I
    .locals 3

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/d;->j()I

    move-result v0

    if-nez v0, :cond_1

    :pswitch_0
    const/4 v1, 0x0

    packed-switch v1, :pswitch_data_0

    :goto_0
    const/4 v1, 0x1

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/immersion/hapticmediasdk/d;->k:Lcom/immersion/hapticmediasdk/a/f;

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/d;->i:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/immersion/hapticmediasdk/a/f;->a(Landroid/os/Handler;)V

    sget v1, Lcom/immersion/hapticmediasdk/d;->a:I

    sget v2, Lcom/immersion/hapticmediasdk/d;->b:I

    add-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/d;->a:I

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/d;->c:I

    rem-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/d;->d:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0x50

    sput v1, Lcom/immersion/hapticmediasdk/d;->a:I

    const/16 v1, 0x2c

    sput v1, Lcom/immersion/hapticmediasdk/d;->d:I

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/immersion/hapticmediasdk/d;->k:Lcom/immersion/hapticmediasdk/a/f;

    :cond_1
    return v0

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

.method private l()I
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/immersion/hapticmediasdk/d;->i:Landroid/os/Handler;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v2, p0, Lcom/immersion/hapticmediasdk/d;->k:Lcom/immersion/hapticmediasdk/a/f;

    invoke-virtual {v2}, Lcom/immersion/hapticmediasdk/a/f;->c()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    :try_start_2
    div-int/2addr v0, v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/immersion/hapticmediasdk/d;->b()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/d;->a:I

    :try_start_3
    sget-object v0, Lcom/immersion/hapticmediasdk/a$a;->f:Lcom/immersion/hapticmediasdk/a$a;

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/d;->j:Lcom/immersion/hapticmediasdk/a$a;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_0
    return v2

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    throw v0
.end method

.method private m()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/d;->i:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/d;->i:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v1

    if-eqz v1, :cond_1

    :pswitch_0
    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v1, 0x1

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/immersion/hapticmediasdk/d;->b()I

    move-result v1

    sget v2, Lcom/immersion/hapticmediasdk/d;->b:I

    add-int/2addr v1, v2

    invoke-static {}, Lcom/immersion/hapticmediasdk/d;->b()I

    move-result v2

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/d;->c:I

    rem-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/d;->d:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0x46

    sput v1, Lcom/immersion/hapticmediasdk/d;->a:I

    const/16 v1, 0x32

    sput v1, Lcom/immersion/hapticmediasdk/d;->d:I

    :cond_0
    :goto_1
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1

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

.method private n()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/d;->k:Lcom/immersion/hapticmediasdk/a/f;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/a/f;->c()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    sget v1, Lcom/immersion/hapticmediasdk/d;->a:I

    sget v2, Lcom/immersion/hapticmediasdk/d;->b:I

    add-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/d;->a:I

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/d;->c:I

    rem-int/2addr v1, v2

    invoke-static {}, Lcom/immersion/hapticmediasdk/d;->a()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/16 v1, 0x40

    sput v1, Lcom/immersion/hapticmediasdk/d;->a:I

    const/16 v1, 0x20

    sput v1, Lcom/immersion/hapticmediasdk/d;->d:I

    :cond_0
    :try_start_1
    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->g:Lcom/immersion/hapticmediasdk/a$a;

    iput-object v1, p0, Lcom/immersion/hapticmediasdk/d;->j:Lcom/immersion/hapticmediasdk/a$a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    return v0

    :catch_0
    move-exception v0

    throw v0
.end method

.method private o()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/d;->k:Lcom/immersion/hapticmediasdk/a/f;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/a/f;->c()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->h:Lcom/immersion/hapticmediasdk/a$a;

    iput-object v1, p0, Lcom/immersion/hapticmediasdk/d;->j:Lcom/immersion/hapticmediasdk/a$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    sget v1, Lcom/immersion/hapticmediasdk/d;->a:I

    sget v2, Lcom/immersion/hapticmediasdk/d;->b:I

    add-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/d;->a:I

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/d;->c:I

    rem-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/d;->d:I

    if-eq v1, v2, :cond_1

    const/16 v1, 0x1d

    sput v1, Lcom/immersion/hapticmediasdk/d;->a:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/d;->b()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/d;->d:I

    :cond_1
    return v0

    :catch_0
    move-exception v0

    throw v0
.end method

.method private p()I
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/d;->a:I

    sget v1, Lcom/immersion/hapticmediasdk/d;->b:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/d;->a:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/d;->c:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/d;->d:I

    if-eq v0, v1, :cond_0

    const/16 v0, 0x4e

    sput v0, Lcom/immersion/hapticmediasdk/d;->a:I

    const/16 v0, 0xe

    sput v0, Lcom/immersion/hapticmediasdk/d;->d:I

    :cond_0
    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/d;->i()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/d;->m()I

    move-result v0

    :cond_1
    :pswitch_0
    const/4 v1, 0x0

    packed-switch v1, :pswitch_data_0

    :goto_0
    const/4 v1, 0x1

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    return v0

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


# virtual methods
.method public a(Lcom/immersion/hapticmediasdk/a$a;)I
    .locals 6

    const/4 v1, 0x0

    const/4 v0, -0x1

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/d;->e:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/immersion/hapticmediasdk/a$a;->a:Lcom/immersion/hapticmediasdk/a$a;

    if-ne p1, v3, :cond_0

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/d;->h()I

    move-result v0

    monitor-exit v2

    :goto_0
    return v0

    :cond_0
    sget-object v3, Lcom/immersion/hapticmediasdk/d$a;->a:[I

    iget-object v4, p0, Lcom/immersion/hapticmediasdk/d;->j:Lcom/immersion/hapticmediasdk/a$a;

    invoke-virtual {v4}, Lcom/immersion/hapticmediasdk/a$a;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_0
    :try_start_1
    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->b:Lcom/immersion/hapticmediasdk/a$a;

    if-ne p1, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/immersion/hapticmediasdk/d;->b(Lcom/immersion/hapticmediasdk/a$a;)I

    move-result v0

    goto :goto_1

    :pswitch_1
    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->c:Lcom/immersion/hapticmediasdk/a$a;

    if-ne p1, v1, :cond_4

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/d;->p()I

    move-result v0

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->e:Lcom/immersion/hapticmediasdk/a$a;

    if-ne p1, v1, :cond_1

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/d;->j()I

    move-result v0

    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->e:Lcom/immersion/hapticmediasdk/a$a;

    iput-object v1, p0, Lcom/immersion/hapticmediasdk/d;->j:Lcom/immersion/hapticmediasdk/a$a;

    goto :goto_1

    :cond_3
    sget-object v3, Lcom/immersion/hapticmediasdk/a$a;->c:Lcom/immersion/hapticmediasdk/a$a;

    if-ne p1, v3, :cond_e

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/d;->k:Lcom/immersion/hapticmediasdk/a/f;

    iget-wide v4, p0, Lcom/immersion/hapticmediasdk/d;->g:J

    long-to-int v1, v4

    invoke-virtual {v0, v1}, Lcom/immersion/hapticmediasdk/a/f;->a(I)V

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/d;->p()I

    move-result v0

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->d:Lcom/immersion/hapticmediasdk/a$a;

    if-ne p1, v1, :cond_5

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/d;->j()I

    move-result v0

    goto :goto_1

    :cond_5
    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->e:Lcom/immersion/hapticmediasdk/a$a;

    if-ne p1, v1, :cond_1

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/d;->j()I

    move-result v0

    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->e:Lcom/immersion/hapticmediasdk/a$a;

    iput-object v1, p0, Lcom/immersion/hapticmediasdk/d;->j:Lcom/immersion/hapticmediasdk/a$a;

    goto :goto_1

    :pswitch_2
    const/4 v3, 0x1

    packed-switch v3, :pswitch_data_1

    :goto_2
    packed-switch v1, :pswitch_data_2

    goto :goto_2

    :pswitch_3
    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->c:Lcom/immersion/hapticmediasdk/a$a;

    if-ne p1, v1, :cond_6

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/d;->m()I

    move-result v0

    goto :goto_1

    :cond_6
    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->f:Lcom/immersion/hapticmediasdk/a$a;

    if-ne p1, v1, :cond_7

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/d;->l()I

    move-result v0

    goto :goto_1

    :cond_7
    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->g:Lcom/immersion/hapticmediasdk/a$a;

    if-ne p1, v1, :cond_9

    const-string v0, "MediaTaskManager"

    const-string v1, "Haptic playback is paused due to update time-out. Call update() to resume playback"

    invoke-static {v0, v1}, Lcom/immersion/hapticmediasdk/b/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/d;->n()I

    move-result v0

    goto :goto_1

    :pswitch_4
    sget-object v3, Lcom/immersion/hapticmediasdk/a$a;->c:Lcom/immersion/hapticmediasdk/a$a;

    if-ne p1, v3, :cond_8

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/d;->k:Lcom/immersion/hapticmediasdk/a/f;

    iget-wide v4, p0, Lcom/immersion/hapticmediasdk/d;->g:J

    long-to-int v1, v4

    invoke-virtual {v0, v1}, Lcom/immersion/hapticmediasdk/a/f;->a(I)V

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/d;->p()I

    move-result v0

    goto/16 :goto_1

    :cond_8
    sget-object v3, Lcom/immersion/hapticmediasdk/a$a;->f:Lcom/immersion/hapticmediasdk/a$a;

    if-ne p1, v3, :cond_b

    move v0, v1

    goto/16 :goto_1

    :cond_9
    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->h:Lcom/immersion/hapticmediasdk/a$a;

    if-ne p1, v1, :cond_a

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/d;->o()I

    move-result v0

    const-string v1, "MediaTaskManager"

    const-string v3, "Haptic playback is paused due to slow data buffering..."

    invoke-static {v1, v3}, Lcom/immersion/hapticmediasdk/b/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->d:Lcom/immersion/hapticmediasdk/a$a;

    if-ne p1, v1, :cond_2

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/d;->j()I

    move-result v0

    goto/16 :goto_1

    :cond_b
    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->d:Lcom/immersion/hapticmediasdk/a$a;

    if-ne p1, v1, :cond_c

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/d;->j()I

    move-result v0

    goto/16 :goto_1

    :cond_c
    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->e:Lcom/immersion/hapticmediasdk/a$a;

    if-ne p1, v1, :cond_1

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/d;->j()I

    move-result v0

    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->e:Lcom/immersion/hapticmediasdk/a$a;

    iput-object v1, p0, Lcom/immersion/hapticmediasdk/d;->j:Lcom/immersion/hapticmediasdk/a$a;

    goto/16 :goto_1

    :pswitch_5
    sget-object v3, Lcom/immersion/hapticmediasdk/a$a;->g:Lcom/immersion/hapticmediasdk/a$a;

    if-ne p1, v3, :cond_3

    move v0, v1

    goto/16 :goto_1

    :cond_d
    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->e:Lcom/immersion/hapticmediasdk/a$a;

    if-ne p1, v1, :cond_1

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/d;->j()I

    move-result v0

    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->e:Lcom/immersion/hapticmediasdk/a$a;

    iput-object v1, p0, Lcom/immersion/hapticmediasdk/d;->j:Lcom/immersion/hapticmediasdk/a$a;

    goto/16 :goto_1

    :pswitch_6
    sget-object v3, Lcom/immersion/hapticmediasdk/a$a;->h:Lcom/immersion/hapticmediasdk/a$a;

    if-ne p1, v3, :cond_11

    move v0, v1

    goto/16 :goto_1

    :cond_e
    sget-object v3, Lcom/immersion/hapticmediasdk/a$a;->f:Lcom/immersion/hapticmediasdk/a$a;

    if-ne p1, v3, :cond_f

    sget-object v0, Lcom/immersion/hapticmediasdk/a$a;->f:Lcom/immersion/hapticmediasdk/a$a;

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/d;->j:Lcom/immersion/hapticmediasdk/a$a;

    move v0, v1

    goto/16 :goto_1

    :cond_f
    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->d:Lcom/immersion/hapticmediasdk/a$a;

    if-ne p1, v1, :cond_d

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/d;->j()I

    move-result v0

    goto/16 :goto_1

    :cond_10
    sget-object v3, Lcom/immersion/hapticmediasdk/a$a;->f:Lcom/immersion/hapticmediasdk/a$a;

    if-ne p1, v3, :cond_12

    sget-object v0, Lcom/immersion/hapticmediasdk/a$a;->f:Lcom/immersion/hapticmediasdk/a$a;

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/d;->j:Lcom/immersion/hapticmediasdk/a$a;

    move v0, v1

    goto/16 :goto_1

    :pswitch_7
    sget-object v3, Lcom/immersion/hapticmediasdk/a$a;->c:Lcom/immersion/hapticmediasdk/a$a;

    if-ne p1, v3, :cond_14

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/d;->p()I

    move-result v0

    goto/16 :goto_1

    :cond_11
    sget-object v3, Lcom/immersion/hapticmediasdk/a$a;->c:Lcom/immersion/hapticmediasdk/a$a;

    if-ne p1, v3, :cond_10

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/d;->k:Lcom/immersion/hapticmediasdk/a/f;

    iget-wide v4, p0, Lcom/immersion/hapticmediasdk/d;->g:J

    long-to-int v1, v4

    invoke-virtual {v0, v1}, Lcom/immersion/hapticmediasdk/a/f;->a(I)V

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/d;->p()I

    move-result v0

    goto/16 :goto_1

    :cond_12
    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->d:Lcom/immersion/hapticmediasdk/a$a;

    if-ne p1, v1, :cond_13

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/d;->j()I

    move-result v0

    goto/16 :goto_1

    :cond_13
    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->e:Lcom/immersion/hapticmediasdk/a$a;

    if-ne p1, v1, :cond_1

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/d;->j()I

    move-result v0

    sget-object v1, Lcom/immersion/hapticmediasdk/a$a;->e:Lcom/immersion/hapticmediasdk/a$a;

    iput-object v1, p0, Lcom/immersion/hapticmediasdk/d;->j:Lcom/immersion/hapticmediasdk/a$a;

    goto/16 :goto_1

    :cond_14
    sget-object v3, Lcom/immersion/hapticmediasdk/a$a;->d:Lcom/immersion/hapticmediasdk/a$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v3, :cond_1

    move v0, v1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public a(J)V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/d;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/d;->j:Lcom/immersion/hapticmediasdk/a$a;

    sget-object v2, Lcom/immersion/hapticmediasdk/a$a;->d:Lcom/immersion/hapticmediasdk/a$a;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/d;->k:Lcom/immersion/hapticmediasdk/a/f;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/a/f;->d()V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/immersion/hapticmediasdk/d;->h:J

    :pswitch_0
    packed-switch v4, :pswitch_data_0

    :goto_0
    packed-switch v4, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iput-wide p1, p0, Lcom/immersion/hapticmediasdk/d;->g:J

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

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
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/d;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/immersion/hapticmediasdk/d;->l:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/immersion/hapticmediasdk/d;->m:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    :pswitch_0
    packed-switch v2, :pswitch_data_0

    :goto_0
    packed-switch v2, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

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

.method public d()J
    .locals 4

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/d;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/immersion/hapticmediasdk/d;->g:J

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    :pswitch_0
    const/4 v2, 0x1

    packed-switch v2, :pswitch_data_0

    :goto_0
    const/4 v2, 0x0

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

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

.method public e()J
    .locals 4

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/d;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/immersion/hapticmediasdk/d;->h:J

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    const/4 v1, 0x0

    packed-switch v1, :pswitch_data_0

    :goto_0
    const/4 v1, 0x1

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    throw v0

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

.method public f()V
    .locals 4

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/d;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/d;->j:Lcom/immersion/hapticmediasdk/a$a;

    :pswitch_0
    const/4 v2, 0x1

    packed-switch v2, :pswitch_data_0

    :goto_0
    const/4 v2, 0x0

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    sget-object v2, Lcom/immersion/hapticmediasdk/a$a;->d:Lcom/immersion/hapticmediasdk/a$a;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/d;->k:Lcom/immersion/hapticmediasdk/a/f;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/a/f;->d()V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/immersion/hapticmediasdk/d;->h:J

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

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

.method public g()Lcom/immersion/hapticmediasdk/a$a;
    .locals 2

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/d;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/d;->j:Lcom/immersion/hapticmediasdk/a$a;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    sget v0, Lcom/immersion/hapticmediasdk/d;->a:I

    sget v1, Lcom/immersion/hapticmediasdk/d;->b:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/d;->a:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/d;->c:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/d;->d:I

    if-eq v0, v1, :cond_0

    const/16 v0, 0x5b

    sput v0, Lcom/immersion/hapticmediasdk/d;->a:I

    const/16 v0, 0x1e

    sput v0, Lcom/immersion/hapticmediasdk/d;->d:I

    :cond_0
    :pswitch_0
    packed-switch v2, :pswitch_data_0

    :goto_0
    packed-switch v2, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/immersion/hapticmediasdk/a$a;->g:Lcom/immersion/hapticmediasdk/a$a;

    invoke-virtual {p0, v0}, Lcom/immersion/hapticmediasdk/d;->a(Lcom/immersion/hapticmediasdk/a$a;)I

    return-void

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
.end method
