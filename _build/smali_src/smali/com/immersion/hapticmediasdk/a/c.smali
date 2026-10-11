.class public Lcom/immersion/hapticmediasdk/a/c;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/immersion/hapticmediasdk/a/c$a;,
        Lcom/immersion/hapticmediasdk/a/c$c;
    }
.end annotation


# static fields
.field public static d:I = 0x56

.field public static e:I = 0x1

.field public static f:I = 0x2

.field public static g:I


# instance fields
.field private A:Z

.field private B:Z

.field private C:Ljava/util/ArrayList;

.field private D:Lcom/immersion/hapticmediasdk/b/d;

.field private E:Z

.field private F:Lcom/immersion/hapticmediasdk/b/a;

.field private final G:Ljava/lang/Runnable;

.field private final H:Ljava/lang/Runnable;

.field public a:Landroid/content/Context;

.field public volatile b:Z

.field public volatile c:Z

.field private h:I

.field private final i:Ljava/lang/String;

.field private j:Landroid/os/Handler;

.field private final k:Landroid/os/Handler;

.field private l:Lcom/immersion/hapticmediasdk/a/b;

.field private m:Landroid/os/Looper;

.field private n:Lcom/immersion/hapticmediasdk/a/d;

.field private o:Lcom/immersion/content/EndpointWarp;

.field private final p:Lcom/immersion/hapticmediasdk/b/c;

.field private q:Ljava/lang/Object;

.field private r:Ljava/lang/Object;

.field private s:I

.field private t:I

.field private u:I

.field private v:J

.field private w:I

.field private x:I

.field private y:I

.field private z:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;ZLcom/immersion/hapticmediasdk/b/d;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "HapticPlaybackThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput v2, p0, Lcom/immersion/hapticmediasdk/a/c;->h:I

    new-instance v0, Lcom/immersion/hapticmediasdk/b/c;

    invoke-direct {v0}, Lcom/immersion/hapticmediasdk/b/c;-><init>()V

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->p:Lcom/immersion/hapticmediasdk/b/c;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->q:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->r:Ljava/lang/Object;

    sget v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->e:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->f:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->e:I

    :pswitch_0
    iput-boolean v2, p0, Lcom/immersion/hapticmediasdk/a/c;->A:Z

    iput-boolean v2, p0, Lcom/immersion/hapticmediasdk/a/c;->B:Z

    iput-boolean v2, p0, Lcom/immersion/hapticmediasdk/a/c;->b:Z

    iput-boolean v2, p0, Lcom/immersion/hapticmediasdk/a/c;->c:Z

    iput-boolean v2, p0, Lcom/immersion/hapticmediasdk/a/c;->E:Z

    new-instance v0, Lcom/immersion/hapticmediasdk/a/c$d;

    invoke-direct {v0, p0}, Lcom/immersion/hapticmediasdk/a/c$d;-><init>(Lcom/immersion/hapticmediasdk/a/c;)V

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->G:Ljava/lang/Runnable;

    new-instance v0, Lcom/immersion/hapticmediasdk/a/c$b;

    invoke-direct {v0, p0}, Lcom/immersion/hapticmediasdk/a/c$b;-><init>(Lcom/immersion/hapticmediasdk/a/c;)V

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->H:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/immersion/hapticmediasdk/a/c;->i:Ljava/lang/String;

    iput-object p3, p0, Lcom/immersion/hapticmediasdk/a/c;->k:Landroid/os/Handler;

    iput-object p1, p0, Lcom/immersion/hapticmediasdk/a/c;->a:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/immersion/hapticmediasdk/a/c;->E:Z

    new-instance v0, Lcom/immersion/hapticmediasdk/b/a;

    invoke-direct {v0, p1}, Lcom/immersion/hapticmediasdk/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->F:Lcom/immersion/hapticmediasdk/b/a;

    iput-object p5, p0, Lcom/immersion/hapticmediasdk/a/c;->D:Lcom/immersion/hapticmediasdk/b/d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->C:Ljava/util/ArrayList;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static a()I
    .locals 1

    const/16 v0, 0x29

    return v0
.end method

.method public static synthetic a(Lcom/immersion/hapticmediasdk/a/c;I)I
    .locals 2

    :pswitch_0
    const/4 v0, 0x1

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->e:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->f:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_2

    const/16 v0, 0x4a

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->g:I

    :pswitch_2
    iput p1, p0, Lcom/immersion/hapticmediasdk/a/c;->s:I

    return p1

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

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public static synthetic a(Lcom/immersion/hapticmediasdk/a/c;J)J
    .locals 3

    const/4 v0, 0x1

    :pswitch_0
    packed-switch v0, :pswitch_data_0

    :goto_0
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->e:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->d:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->f:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->g:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    const/16 v0, 0x5a

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->g:I

    :cond_0
    iput-wide p1, p0, Lcom/immersion/hapticmediasdk/a/c;->z:J

    return-wide p1

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

.method public static synthetic a(Lcom/immersion/hapticmediasdk/a/c;Lcom/immersion/hapticmediasdk/a/d;)Lcom/immersion/hapticmediasdk/a/d;
    .locals 2

    const/4 v0, 0x0

    :pswitch_0
    packed-switch v0, :pswitch_data_0

    :goto_0
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->e:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->d:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->f:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->g:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->g:I

    :cond_0
    iput-object p1, p0, Lcom/immersion/hapticmediasdk/a/c;->n:Lcom/immersion/hapticmediasdk/a/d;

    return-object p1

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

.method public static synthetic a(Lcom/immersion/hapticmediasdk/a/c;)Ljava/lang/Runnable;
    .locals 3

    const/4 v0, 0x1

    :pswitch_0
    packed-switch v0, :pswitch_data_0

    :goto_0
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->G:Ljava/lang/Runnable;

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->d:I

    sget v2, Lcom/immersion/hapticmediasdk/a/c;->e:I

    add-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/c;->d:I

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/c;->f:I

    rem-int/2addr v1, v2

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->b()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/a/c;->d:I

    const/16 v1, 0x12

    sput v1, Lcom/immersion/hapticmediasdk/a/c;->g:I

    :cond_0
    return-object v0

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

.method private a(Landroid/os/Message;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/immersion/hapticmediasdk/a/c;->A:Z

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->k:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/c;->k:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->e:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->d:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->f:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->g:I

    if-eq v0, v1, :cond_0

    const/16 v0, 0x29

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->g:I

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/immersion/hapticmediasdk/a/c;IJ)V
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->e:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->d:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->f:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->g:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    const/16 v0, 0x2d

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->g:I

    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/immersion/hapticmediasdk/a/c;->c(IJ)V

    return-void

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

.method public static synthetic a(Lcom/immersion/hapticmediasdk/a/c;Landroid/os/Message;)V
    .locals 2

    :pswitch_0
    const/4 v0, 0x1

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->e()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->f:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_2

    const/16 v0, 0x38

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    const/16 v0, 0x5c

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->g:I

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/immersion/hapticmediasdk/a/c;->a(Landroid/os/Message;)V

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

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public static b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic b(Lcom/immersion/hapticmediasdk/a/c;I)I
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->e:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->d:I

    mul-int/2addr v0, v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->i()I

    move-result v1

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->g:I

    if-eq v0, v1, :cond_0

    const/16 v0, 0x8

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->g:I

    :cond_0
    :try_start_0
    iput p1, p0, Lcom/immersion/hapticmediasdk/a/c;->t:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    throw v0
.end method

.method public static synthetic b(Lcom/immersion/hapticmediasdk/a/c;)Landroid/os/Handler;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->j:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->d:I

    sget v2, Lcom/immersion/hapticmediasdk/a/c;->e:I

    add-int/2addr v2, v1

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/c;->f:I

    rem-int/2addr v1, v2

    packed-switch v1, :pswitch_data_0

    const/16 v1, 0x9

    sput v1, Lcom/immersion/hapticmediasdk/a/c;->d:I

    const/16 v1, 0x3e

    sput v1, Lcom/immersion/hapticmediasdk/a/c;->g:I

    :pswitch_0
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

.method public static synthetic c(Lcom/immersion/hapticmediasdk/a/c;I)I
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->e:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->d:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->f:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->g:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    const/16 v0, 0x57

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->g:I

    :cond_0
    iput p1, p0, Lcom/immersion/hapticmediasdk/a/c;->u:I

    return p1
.end method

.method private c(IJ)V
    .locals 8

    const/4 v4, 0x0

    const/4 v6, 0x1

    iget-boolean v0, p0, Lcom/immersion/hapticmediasdk/a/c;->B:Z

    if-nez v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->n:Lcom/immersion/hapticmediasdk/a/d;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->o:Lcom/immersion/content/EndpointWarp;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->n:Lcom/immersion/hapticmediasdk/a/d;

    invoke-interface {v0}, Lcom/immersion/hapticmediasdk/a/d;->b()[B

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "HapticPlaybackThread"

    const-string v1, "corrupted hapt file or unsupported format"

    invoke-static {v0, v1}, Lcom/immersion/hapticmediasdk/b/b;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "HapticPlaybackThread"

    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/immersion/hapticmediasdk/b/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v1, Lcom/immersion/content/EndpointWarp;

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/a/c;->a:Landroid/content/Context;

    array-length v3, v0

    invoke-direct {v1, v2, v0, v3}, Lcom/immersion/content/EndpointWarp;-><init>(Landroid/content/Context;[BI)V

    iput-object v1, p0, Lcom/immersion/hapticmediasdk/a/c;->o:Lcom/immersion/content/EndpointWarp;

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->o:Lcom/immersion/content/EndpointWarp;

    if-nez v0, :cond_2

    const-string v0, "HapticPlaybackThread"

    const-string v1, "Error creating endpointwarp"

    invoke-static {v0, v1}, Lcom/immersion/hapticmediasdk/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->o:Lcom/immersion/content/EndpointWarp;

    invoke-virtual {v0}, Lcom/immersion/content/EndpointWarp;->c()V
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    iput-boolean v4, p0, Lcom/immersion/hapticmediasdk/a/c;->c:Z

    iput-boolean v6, p0, Lcom/immersion/hapticmediasdk/a/c;->B:Z

    iput v4, p0, Lcom/immersion/hapticmediasdk/a/c;->y:I

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/c;->q:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iput p1, p0, Lcom/immersion/hapticmediasdk/a/c;->x:I

    iget v0, p0, Lcom/immersion/hapticmediasdk/a/c;->x:I

    iput v0, p0, Lcom/immersion/hapticmediasdk/a/c;->w:I

    iget-wide v2, p0, Lcom/immersion/hapticmediasdk/a/c;->z:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/immersion/hapticmediasdk/a/c;->z:J

    :cond_4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-wide p2, p0, Lcom/immersion/hapticmediasdk/a/c;->v:J

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/a/c;->s()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :pswitch_0
    packed-switch v6, :pswitch_data_0

    :goto_1
    packed-switch v6, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

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

.method public static synthetic c(Lcom/immersion/hapticmediasdk/a/c;)V
    .locals 2

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/a/c;->o()V

    sget v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->e:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->f:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->g:I

    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic d(Lcom/immersion/hapticmediasdk/a/c;I)I
    .locals 3

    const/4 v2, 0x0

    sget v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->e:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->d:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->f:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->g:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    const/16 v0, 0x17

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->g:I

    :cond_0
    :pswitch_0
    packed-switch v2, :pswitch_data_0

    :goto_0
    packed-switch v2, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iput p1, p0, Lcom/immersion/hapticmediasdk/a/c;->h:I

    return p1

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

.method public static synthetic d(Lcom/immersion/hapticmediasdk/a/c;)Lcom/immersion/hapticmediasdk/a/d;
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->e:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->f:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    const/16 v0, 0x13

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->g:I

    :pswitch_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->n:Lcom/immersion/hapticmediasdk/a/d;

    :pswitch_1
    const/4 v1, 0x0

    packed-switch v1, :pswitch_data_1

    :goto_0
    const/4 v1, 0x1

    packed-switch v1, :pswitch_data_2

    goto :goto_0

    :pswitch_2
    return-object v0

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

.method public static e()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic e(Lcom/immersion/hapticmediasdk/a/c;I)I
    .locals 3

    iget v0, p0, Lcom/immersion/hapticmediasdk/a/c;->x:I

    add-int/2addr v0, p1

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->d:I

    sget v2, Lcom/immersion/hapticmediasdk/a/c;->e:I

    add-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/c;->d:I

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/c;->f:I

    rem-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/c;->g:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0x37

    sput v1, Lcom/immersion/hapticmediasdk/a/c;->d:I

    const/4 v1, 0x1

    sput v1, Lcom/immersion/hapticmediasdk/a/c;->g:I

    :cond_0
    iput v0, p0, Lcom/immersion/hapticmediasdk/a/c;->x:I

    return v0
.end method

.method public static synthetic e(Lcom/immersion/hapticmediasdk/a/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic f(Lcom/immersion/hapticmediasdk/a/c;I)I
    .locals 2

    const/4 v0, -0x1

    :goto_0
    :try_start_0
    new-array v1, v0, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    :try_start_1
    iput p1, p0, Lcom/immersion/hapticmediasdk/a/c;->w:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p1

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/a/c;->d:I

    :goto_1
    :try_start_2
    new-array v1, v0, [I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public static synthetic f(Lcom/immersion/hapticmediasdk/a/c;)Lcom/immersion/hapticmediasdk/b/a;
    .locals 2

    const/4 v0, -0x1

    :goto_0
    :try_start_0
    new-array v1, v0, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v0, 0x5a

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->F:Lcom/immersion/hapticmediasdk/b/a;

    return-object v0
.end method

.method public static synthetic g(Lcom/immersion/hapticmediasdk/a/c;)I
    .locals 2

    iget v0, p0, Lcom/immersion/hapticmediasdk/a/c;->h:I

    return v0
.end method

.method public static synthetic h(Lcom/immersion/hapticmediasdk/a/c;)V
    .locals 2

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v0

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->e:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->f:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->g:I

    :pswitch_0
    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/a/c;->q()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static i()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static synthetic i(Lcom/immersion/hapticmediasdk/a/c;)V
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->e:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->f:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x19

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    const/16 v0, 0x24

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->g:I

    :pswitch_0
    :try_start_0
    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/a/c;->r()V
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

.method public static synthetic j(Lcom/immersion/hapticmediasdk/a/c;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/a/c;->p()V

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    return-void
.end method

.method public static synthetic k(Lcom/immersion/hapticmediasdk/a/c;)V
    .locals 2

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/a/c;->s()V

    :goto_0
    :try_start_0
    new-array v1, v0, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    return-void
.end method

.method private l()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->l:Lcom/immersion/hapticmediasdk/a/b;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/a/b;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->e:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->d:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->f:I

    rem-int/2addr v0, v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->b()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    const/16 v0, 0x41

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->e:I

    :cond_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->l:Lcom/immersion/hapticmediasdk/a/b;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/a/b;->b()V

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->l:Lcom/immersion/hapticmediasdk/a/b;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/a/b;->interrupt()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    :pswitch_0
    const/4 v0, 0x0

    packed-switch v0, :pswitch_data_0

    :goto_1
    const/4 v0, 0x1

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    :cond_1
    return-void

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

.method public static synthetic l(Lcom/immersion/hapticmediasdk/a/c;)Z
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/immersion/hapticmediasdk/a/c;->B:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->d:I

    sget v2, Lcom/immersion/hapticmediasdk/a/c;->e:I

    add-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/c;->d:I

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/c;->f:I

    rem-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/c;->g:I

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/a/c;->d:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/a/c;->g:I

    :cond_0
    return v0

    :catch_0
    move-exception v0

    throw v0
.end method

.method public static synthetic m(Lcom/immersion/hapticmediasdk/a/c;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->r:Ljava/lang/Object;

    return-object v0
.end method

.method private m()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->l:Lcom/immersion/hapticmediasdk/a/b;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/a/c;->l()V

    iput-object v3, p0, Lcom/immersion/hapticmediasdk/a/c;->l:Lcom/immersion/hapticmediasdk/a/b;

    :cond_0
    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/c;->r:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->j:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->m:Landroid/os/Looper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->m:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iput-object v3, p0, Lcom/immersion/hapticmediasdk/a/c;->m:Landroid/os/Looper;

    :cond_1
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->n:Lcom/immersion/hapticmediasdk/a/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->n:Lcom/immersion/hapticmediasdk/a/d;

    invoke-interface {v0}, Lcom/immersion/hapticmediasdk/a/d;->c()V

    iput-object v3, p0, Lcom/immersion/hapticmediasdk/a/c;->n:Lcom/immersion/hapticmediasdk/a/d;

    :cond_2
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->o:Lcom/immersion/content/EndpointWarp;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->o:Lcom/immersion/content/EndpointWarp;

    invoke-virtual {v0}, Lcom/immersion/content/EndpointWarp;->d()V

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->o:Lcom/immersion/content/EndpointWarp;

    invoke-virtual {v0}, Lcom/immersion/content/EndpointWarp;->e()V

    :pswitch_0
    const/4 v0, 0x0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iput-object v3, p0, Lcom/immersion/hapticmediasdk/a/c;->o:Lcom/immersion/content/EndpointWarp;

    :cond_3
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->F:Lcom/immersion/hapticmediasdk/b/a;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/b/a;->c()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

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

.method public static synthetic n(Lcom/immersion/hapticmediasdk/a/c;)Ljava/util/ArrayList;
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->e:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->d:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->f:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->g:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    const/16 v0, 0x5c

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->g:I

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->C:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    throw v0
.end method

.method private n()V
    .locals 1

    const/4 v0, 0x0

    monitor-enter p0

    :pswitch_0
    packed-switch v0, :pswitch_data_0

    :goto_0
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

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

.method public static synthetic o(Lcom/immersion/hapticmediasdk/a/c;)Lcom/immersion/hapticmediasdk/b/d;
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->e:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->f:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    const/16 v0, 0x40

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->g:I

    :pswitch_0
    const/4 v0, 0x1

    packed-switch v0, :pswitch_data_1

    :goto_0
    const/4 v0, 0x0

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->D:Lcom/immersion/hapticmediasdk/b/d;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private o()V
    .locals 8

    const-wide/16 v6, 0x64

    sget v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->e:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->d:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->f:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->g:I

    if-eq v0, v1, :cond_0

    const/16 v0, 0x4a

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    const/16 v0, 0x15

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->g:I

    :cond_0
    iget-boolean v0, p0, Lcom/immersion/hapticmediasdk/a/c;->A:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/immersion/hapticmediasdk/a/c;->u:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/immersion/hapticmediasdk/a/c;->u:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/c;->k:Landroid/os/Handler;

    const/4 v2, 0x7

    iget v3, p0, Lcom/immersion/hapticmediasdk/a/c;->s:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/c;->G:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->n:Lcom/immersion/hapticmediasdk/a/d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->n:Lcom/immersion/hapticmediasdk/a/d;

    iget v1, p0, Lcom/immersion/hapticmediasdk/a/c;->s:I

    invoke-interface {v0, v1}, Lcom/immersion/hapticmediasdk/a/d;->b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/immersion/hapticmediasdk/a/c;->t:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/c;->k:Landroid/os/Handler;

    const/4 v2, 0x6

    iget v3, p0, Lcom/immersion/hapticmediasdk/a/c;->s:I

    iget v4, p0, Lcom/immersion/hapticmediasdk/a/c;->t:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/c;->G:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static synthetic p(Lcom/immersion/hapticmediasdk/a/c;)Lcom/immersion/content/EndpointWarp;
    .locals 4

    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x4

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->o:Lcom/immersion/content/EndpointWarp;

    :pswitch_0
    packed-switch v3, :pswitch_data_0

    :goto_1
    packed-switch v3, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    return-object v0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    :goto_2
    :try_start_1
    new-array v0, v1, [I
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private p()V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/a/c;->m()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/a/c;->d:I

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/a/c;->d:I

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    const/16 v0, 0x26

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    iput-boolean v4, p0, Lcom/immersion/hapticmediasdk/a/c;->b:Z

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/a/c;->n()V

    :goto_3
    return-void

    :pswitch_0
    iput-boolean v4, p0, Lcom/immersion/hapticmediasdk/a/c;->b:Z

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/a/c;->n()V

    goto :goto_3

    :catch_3
    move-exception v0

    :try_start_4
    const-string v1, "HapticPlaybackThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "quit() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/immersion/hapticmediasdk/b/b;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :pswitch_1
    packed-switch v4, :pswitch_data_0

    :goto_4
    const/4 v0, 0x1

    packed-switch v0, :pswitch_data_1

    goto :goto_4

    :catchall_0
    move-exception v0

    iput-boolean v4, p0, Lcom/immersion/hapticmediasdk/a/c;->b:Z

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/a/c;->n()V

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

.method public static synthetic q(Lcom/immersion/hapticmediasdk/a/c;)Ljava/lang/Object;
    .locals 2

    sget v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->e:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->d:I

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->f:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->g:I

    if-eq v0, v1, :cond_0

    const/16 v0, 0x12

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->g:I

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->q:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    throw v0
.end method

.method private q()V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/immersion/hapticmediasdk/a/c;->B:Z

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->o:Lcom/immersion/content/EndpointWarp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->o:Lcom/immersion/content/EndpointWarp;

    invoke-virtual {v0}, Lcom/immersion/content/EndpointWarp;->d()V

    :cond_0
    :pswitch_0
    packed-switch v4, :pswitch_data_0

    :goto_0
    packed-switch v5, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/c;->G:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/immersion/hapticmediasdk/a/c;->j()V

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/c;->q:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/immersion/hapticmediasdk/a/c;->x:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/immersion/hapticmediasdk/a/c;->w:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/immersion/hapticmediasdk/a/c;->z:J

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput v4, p0, Lcom/immersion/hapticmediasdk/a/c;->y:I

    iput-wide v6, p0, Lcom/immersion/hapticmediasdk/a/c;->v:J

    iput-boolean v5, p0, Lcom/immersion/hapticmediasdk/a/c;->c:Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

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

.method public static synthetic r(Lcom/immersion/hapticmediasdk/a/c;)I
    .locals 2

    :pswitch_0
    const/4 v0, 0x0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v0

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->e:I

    add-int/2addr v0, v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v1

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->f:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->g:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->g:I

    :cond_0
    iget v0, p0, Lcom/immersion/hapticmediasdk/a/c;->x:I

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

.method private r()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/immersion/hapticmediasdk/a/c;->B:Z

    invoke-virtual {p0}, Lcom/immersion/hapticmediasdk/a/c;->j()V

    sget v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->e()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->f:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->g:I

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic s(Lcom/immersion/hapticmediasdk/a/c;)Ljava/lang/Runnable;
    .locals 2

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v0

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->e:I

    add-int/2addr v0, v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v1

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->f:I

    rem-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->g:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->g:I

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->H:Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    throw v0
.end method

.method private s()V
    .locals 13

    const/4 v12, 0x0

    iget-boolean v0, p0, Lcom/immersion/hapticmediasdk/a/c;->B:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/c;->q:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/immersion/hapticmediasdk/a/c;->x:I

    iget v4, p0, Lcom/immersion/hapticmediasdk/a/c;->w:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->n:Lcom/immersion/hapticmediasdk/a/d;

    invoke-interface {v0, v2}, Lcom/immersion/hapticmediasdk/a/d;->c(I)[B

    move-result-object v6

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->n:Lcom/immersion/hapticmediasdk/a/d;

    int-to-long v8, v2

    invoke-interface {v0, v8, v9}, Lcom/immersion/hapticmediasdk/a/d;->b(J)I

    move-result v7

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->n:Lcom/immersion/hapticmediasdk/a/d;

    int-to-long v8, v2

    invoke-interface {v0, v8, v9}, Lcom/immersion/hapticmediasdk/a/d;->a(J)J
    :try_end_1
    .catch Lcom/immersion/hapticmediasdk/models/b; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v8

    if-eqz v6, :cond_1

    iget-wide v0, p0, Lcom/immersion/hapticmediasdk/a/c;->v:J

    iget v3, p0, Lcom/immersion/hapticmediasdk/a/c;->y:I

    int-to-long v10, v3

    add-long/2addr v10, v0

    new-instance v0, Lcom/immersion/hapticmediasdk/a/c$a;

    int-to-long v2, v2

    int-to-long v4, v4

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/immersion/hapticmediasdk/a/c$a;-><init>(Lcom/immersion/hapticmediasdk/a/c;JJ[BIJ)V

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/c;->r:Ljava/lang/Object;

    :pswitch_0
    const/4 v2, 0x1

    packed-switch v2, :pswitch_data_0

    :goto_0
    packed-switch v12, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    monitor-enter v1

    :try_start_2
    iget-object v2, p0, Lcom/immersion/hapticmediasdk/a/c;->C:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/c;->j:Landroid/os/Handler;

    iget v2, p0, Lcom/immersion/hapticmediasdk/a/c;->h:I

    int-to-long v2, v2

    add-long/2addr v2, v10

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    iget v0, p0, Lcom/immersion/hapticmediasdk/a/c;->y:I

    iget v1, p0, Lcom/immersion/hapticmediasdk/a/c;->h:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/immersion/hapticmediasdk/a/c;->y:I

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->p:Lcom/immersion/hapticmediasdk/b/c;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/b/c;->b()V

    :cond_0
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    iput-boolean v12, p0, Lcom/immersion/hapticmediasdk/a/c;->B:Z

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/c;->k:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/c;->q:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_5
    iput v0, p0, Lcom/immersion/hapticmediasdk/a/c;->x:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/immersion/hapticmediasdk/a/c;->w:I

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    iput v12, p0, Lcom/immersion/hapticmediasdk/a/c;->y:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/immersion/hapticmediasdk/a/c;->v:J

    iput-boolean v12, p0, Lcom/immersion/hapticmediasdk/a/c;->B:Z

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

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


# virtual methods
.method public a(II)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->j:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/c;->j:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(IJ)V
    .locals 6

    const/4 v5, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/immersion/hapticmediasdk/a/c;->j()V

    iget-object v3, p0, Lcom/immersion/hapticmediasdk/a/c;->j:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v3, Landroid/os/Bundle;

    :pswitch_0
    packed-switch v0, :pswitch_data_0

    :goto_0
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "playback_timecode"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "playback_uptime"

    invoke-virtual {v3, v4, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v4, p0, Lcom/immersion/hapticmediasdk/a/c;->j:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    :goto_1
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    const/16 v5, 0x4b

    sput v5, Lcom/immersion/hapticmediasdk/a/c;->d:I

    :goto_2
    :try_start_1
    div-int/2addr v0, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_1
    move-exception v0

    const/16 v0, 0x26

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    invoke-virtual {v4, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->j:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catch_2
    move-exception v0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    :goto_3
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

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

.method public b(IJ)V
    .locals 10

    const/4 v8, 0x1

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/c;->q:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    int-to-long v4, p1

    sub-long v6, v2, p2

    add-long/2addr v4, v6

    long-to-int v0, v4

    iget v4, p0, Lcom/immersion/hapticmediasdk/a/c;->x:I

    iget-wide v6, p0, Lcom/immersion/hapticmediasdk/a/c;->z:J

    sub-long/2addr v2, v6

    long-to-int v2, v2

    add-int/2addr v2, v4

    sub-int v2, v0, v2

    const/16 v3, 0x32

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v3, v4, :cond_0

    iget v3, p0, Lcom/immersion/hapticmediasdk/a/c;->x:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/immersion/hapticmediasdk/a/c;->x:I

    :pswitch_0
    const/4 v2, 0x0

    packed-switch v2, :pswitch_data_0

    :goto_0
    packed-switch v8, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iget v2, p0, Lcom/immersion/hapticmediasdk/a/c;->x:I

    iput v2, p0, Lcom/immersion/hapticmediasdk/a/c;->w:I

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/a/c;->j:Landroid/os/Handler;

    iget-object v3, p0, Lcom/immersion/hapticmediasdk/a/c;->j:Landroid/os/Handler;

    const/4 v4, 0x1

    const/high16 v5, -0x80000000

    invoke-virtual {v3, v4, v0, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
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
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public c()Z
    .locals 3

    iget-boolean v0, p0, Lcom/immersion/hapticmediasdk/a/c;->b:Z

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->d:I

    sget v2, Lcom/immersion/hapticmediasdk/a/c;->e:I

    add-int/2addr v2, v1

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/c;->f:I

    rem-int/2addr v1, v2

    packed-switch v1, :pswitch_data_0

    const/16 v1, 0x45

    sput v1, Lcom/immersion/hapticmediasdk/a/c;->d:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/a/c;->g:I

    :pswitch_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public d()Z
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/immersion/hapticmediasdk/a/c;->c:Z

    :pswitch_0
    packed-switch v1, :pswitch_data_0

    :goto_0
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    sget v1, Lcom/immersion/hapticmediasdk/a/c;->d:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->e()I

    move-result v2

    add-int/2addr v2, v1

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/c;->f:I

    rem-int/2addr v1, v2

    packed-switch v1, :pswitch_data_2

    const/16 v1, 0xb

    sput v1, Lcom/immersion/hapticmediasdk/a/c;->d:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/a/c;->g:I

    :pswitch_2
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

.method public f()Landroid/os/Handler;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->j:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->d:I

    sget v2, Lcom/immersion/hapticmediasdk/a/c;->e:I

    add-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/c;->d:I

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/c;->f:I

    rem-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/c;->g:I

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/a/c;->d:I

    const/16 v1, 0x3a

    sput v1, Lcom/immersion/hapticmediasdk/a/c;->g:I

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    throw v0
.end method

.method public g()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->j:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->e:I

    add-int/2addr v1, v0

    mul-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->f:I

    rem-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x23

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    const/16 v0, 0x18

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->g:I

    :pswitch_0
    return-void

    :catch_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public h()V
    .locals 3

    const/4 v2, 0x1

    sget v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->e:I

    add-int/2addr v0, v1

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->d:I

    mul-int/2addr v0, v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->i()I

    move-result v1

    rem-int/2addr v0, v1

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->b()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/16 v0, 0x62

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    const/16 v0, 0x44

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->g:I

    :cond_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->j:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :pswitch_0
    packed-switch v2, :pswitch_data_0

    :goto_0
    packed-switch v2, :pswitch_data_1

    goto :goto_0

    :pswitch_1
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

.method public j()V
    .locals 4

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/c;->r:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/immersion/hapticmediasdk/a/c$a;

    iget-object v3, p0, Lcom/immersion/hapticmediasdk/a/c;->j:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public k()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->j:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    sget v1, Lcom/immersion/hapticmediasdk/a/c;->d:I

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->e()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/c;->d:I

    mul-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/c;->f:I

    rem-int/2addr v1, v2

    sget v2, Lcom/immersion/hapticmediasdk/a/c;->g:I

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v1

    sput v1, Lcom/immersion/hapticmediasdk/a/c;->d:I

    const/16 v1, 0x10

    sput v1, Lcom/immersion/hapticmediasdk/a/c;->g:I

    :cond_0
    :try_start_1
    iput-boolean v0, p0, Lcom/immersion/hapticmediasdk/a/c;->b:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/a/c;->n()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0
.end method

.method public run()V
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/16 v1, -0x13

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/immersion/hapticmediasdk/a/c;->m:Landroid/os/Looper;

    new-instance v1, Lcom/immersion/hapticmediasdk/a/c$c;

    invoke-direct {v1, p0, v2}, Lcom/immersion/hapticmediasdk/a/c$c;-><init>(Lcom/immersion/hapticmediasdk/a/c;Lcom/immersion/hapticmediasdk/a/c$d;)V

    iput-object v1, p0, Lcom/immersion/hapticmediasdk/a/c;->j:Landroid/os/Handler;

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/immersion/hapticmediasdk/a/c;->a()I

    move-result v0

    sput v0, Lcom/immersion/hapticmediasdk/a/c;->d:I

    new-instance v0, Lcom/immersion/hapticmediasdk/a/b;

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/c;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/a/c;->j:Landroid/os/Handler;

    iget-boolean v3, p0, Lcom/immersion/hapticmediasdk/a/c;->E:Z

    iget-object v4, p0, Lcom/immersion/hapticmediasdk/a/c;->F:Lcom/immersion/hapticmediasdk/b/a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/immersion/hapticmediasdk/a/b;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLcom/immersion/hapticmediasdk/b/a;)V

    iput-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->l:Lcom/immersion/hapticmediasdk/a/b;

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c;->l:Lcom/immersion/hapticmediasdk/a/b;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/a/b;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/immersion/hapticmediasdk/a/c;->b:Z

    invoke-direct {p0}, Lcom/immersion/hapticmediasdk/a/c;->n()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
