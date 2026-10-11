.class public Lcom/cmplay/internalpush/data/ParseCloudDataVideo;
.super Lcom/cmplay/internalpush/data/o;
.source "ParseCloudDataVideo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/internalpush/data/ParseCloudDataVideo$VideoProgressStatusReceiver;
    }
.end annotation


# static fields
.field private static a:Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

.field private static y:I


# instance fields
.field private A:Lcom/cmplay/internalpush/video/b/b;

.field private b:Z

.field private m:Lcom/cmplay/internalpush/video/b/c;

.field private n:Z

.field private o:Landroid/os/HandlerThread;

.field private p:Landroid/os/Handler;

.field private q:I

.field private r:I

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cmplay/internalpush/data/c;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lcom/cmplay/internalpush/video/b/d;

.field private v:Lcom/cmplay/internalpush/data/ParseCloudDataVideo$VideoProgressStatusReceiver;

.field private w:Lcom/cmplay/internalpush/video/b/a;

.field private x:Ljava/util/Timer;

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/16 v0, 0x320

    sput v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->y:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Lcom/cmplay/internalpush/data/o;-><init>()V

    .line 49
    iput-boolean v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->b:Z

    .line 51
    iput-boolean v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->n:Z

    .line 54
    iput v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->q:I

    .line 55
    iput v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->r:I

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->s:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->t:Ljava/util/List;

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->z:J

    .line 184
    new-instance v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$2;

    invoke-direct {v0, p0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$2;-><init>(Lcom/cmplay/internalpush/data/ParseCloudDataVideo;)V

    iput-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->A:Lcom/cmplay/internalpush/video/b/b;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->j:Landroid/content/Context;

    .line 72
    invoke-static {p1}, Lcom/cmplay/internalpush/a/d;->a(Landroid/content/Context;)V

    .line 73
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "clean_videocache_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->o:Landroid/os/HandlerThread;

    .line 74
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->o:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 75
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->o:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->p:Landroid/os/Handler;

    .line 77
    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->b()V

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/cmplay/internalpush/data/ParseCloudDataVideo;I)I
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->q:I

    return p1
.end method

.method public static a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/ParseCloudDataVideo;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->a:Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    invoke-direct {v0, p0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->a:Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    .line 101
    :cond_0
    sget-object v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->a:Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    return-object v0
.end method

.method static synthetic a(Lcom/cmplay/internalpush/data/ParseCloudDataVideo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/cmplay/internalpush/data/ParseCloudDataVideo;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->r()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/cmplay/internalpush/data/ParseCloudDataVideo;J)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->c(J)V

    return-void
.end method

.method static synthetic a(Lcom/cmplay/internalpush/data/ParseCloudDataVideo;Z)Z
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/cmplay/internalpush/data/ParseCloudDataVideo;)Lcom/cmplay/internalpush/video/b/c;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->m:Lcom/cmplay/internalpush/video/b/c;

    return-object v0
.end method

.method static synthetic b(Lcom/cmplay/internalpush/data/ParseCloudDataVideo;Z)Z
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->n:Z

    return p1
.end method

.method static synthetic c(Lcom/cmplay/internalpush/data/ParseCloudDataVideo;)I
    .locals 2

    .prologue
    .line 45
    iget v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->q:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->q:I

    return v0
.end method

.method private c(J)V
    .locals 7

    .prologue
    .line 507
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 508
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->s:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/data/c;

    .line 509
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 511
    iget-object v2, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->t:Ljava/util/List;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->s:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 514
    add-int/lit8 v1, v1, -0x1

    .line 507
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 517
    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/cmplay/internalpush/data/ParseCloudDataVideo;)Lcom/cmplay/internalpush/video/b/d;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->u:Lcom/cmplay/internalpush/video/b/d;

    return-object v0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "innerpush_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/cmplay/internalpush/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private r()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmplay/internalpush/data/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    invoke-static {}, Lcom/cmplay/internalpush/a/a/b;->a()Lcom/cmplay/internalpush/a/a/b;

    move-result-object v0

    invoke-static {}, Lcom/cmplay/base/util/i;->b()I

    move-result v1

    const-string v2, "open_screen_scene"

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/internalpush/a/a/b;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->a(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 213
    return-object v0
.end method

.method private s()V
    .locals 8

    .prologue
    .line 521
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/data/c;

    .line 522
    iget-object v1, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 523
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    .line 524
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cmplay/internalpush/data/c;->f(Z)V

    goto :goto_0

    .line 528
    :cond_2
    return-void
.end method

.method private t()Z
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 572
    .line 575
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/data/c;

    .line 576
    if-eqz v0, :cond_0

    .line 577
    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->x()I

    move-result v2

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->j()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 579
    invoke-virtual {v0, v3}, Lcom/cmplay/internalpush/data/c;->e(I)V

    goto :goto_0

    .line 584
    :cond_1
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->a(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 586
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 587
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    move v2, v3

    move v1, v3

    .line 588
    :goto_1
    if-ge v2, v5, :cond_2

    .line 589
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/data/c;

    .line 590
    if-eqz v0, :cond_6

    .line 591
    sput v3, Lcom/cmplay/internalpush/a/c;->a:I

    .line 592
    iget-object v6, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->j:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/cmplay/internalpush/a/c;->a(Landroid/content/Context;Lcom/cmplay/internalpush/data/c;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 593
    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->a(Lcom/cmplay/internalpush/data/c;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 594
    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->c(Lcom/cmplay/internalpush/data/c;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 595
    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->i(Lcom/cmplay/internalpush/data/c;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 596
    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->k(Lcom/cmplay/internalpush/data/c;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 598
    const/4 v1, 0x1

    .line 599
    iget-object v6, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->f:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    const-string v6, "internal_push"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ParseCloudDataVideo.resetHaveRotationTimesAndCheckAgain() name:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  pro_id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  filter rusult:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/cmplay/internalpush/a/c;->a:I

    invoke-static {v8}, Lcom/cmplay/internalpush/a/c;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->ac()Z

    move-result v0

    if-nez v0, :cond_6

    .line 621
    :cond_2
    const-string v0, "internal_push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ParseCloudDataVideo.resetHaveRotationTimesAndCheckAgain()  canShow:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   mInfoList.size():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    \tmErrorCodeStr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->l:Ljava/lang/String;

    .line 626
    if-nez v1, :cond_3

    .line 629
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->a(I)V

    .line 632
    :cond_3
    return v1

    .line 607
    :cond_4
    if-eqz v2, :cond_5

    .line 608
    const-string v6, "!"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    :cond_5
    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    sget v6, Lcom/cmplay/internalpush/a/c;->a:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    sget v6, Lcom/cmplay/internalpush/a/c;->a:I

    invoke-virtual {p0, v0, v6}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->a(Lcom/cmplay/internalpush/data/c;I)V

    .line 617
    const-string v6, "internal_push"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ParseCloudDataVideo.resetHaveRotationTimesAndCheckAgain()name:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  pro_id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "  filter rusult:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v7, Lcom/cmplay/internalpush/a/c;->a:I

    invoke-static {v7}, Lcom/cmplay/internalpush/a/c;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move v0, v1

    .line 588
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto/16 :goto_1
.end method

.method private u()V
    .locals 1

    .prologue
    .line 912
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->x:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 913
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->x:Ljava/util/Timer;

    .line 915
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    const-string v0, "section_video_distribution"

    return-object v0
.end method

.method public a(ILjava/util/TimerTask;)V
    .locals 4

    .prologue
    .line 904
    const-string v0, "internal_push"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ParseCloudDataVideo.startTimer   delayTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->q()V

    .line 906
    invoke-direct {p0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->u()V

    .line 907
    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 908
    :cond_0
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->x:Ljava/util/Timer;

    int-to-long v2, p1

    invoke-virtual {v0, p2, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 909
    return-void
.end method

.method public a(Lcom/cmplay/internalpush/video/b/d;)V
    .locals 0

    .prologue
    .line 741
    iput-object p1, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->u:Lcom/cmplay/internalpush/video/b/d;

    .line 742
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/cmplay/internalpush/video/b/a;Lcom/cmplay/internalpush/video/b/c;)V
    .locals 11

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x4

    const/4 v7, 0x0

    .line 114
    iput-object p3, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->m:Lcom/cmplay/internalpush/video/b/c;

    .line 115
    iput-object p2, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->w:Lcom/cmplay/internalpush/video/b/a;

    .line 116
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->a(Ljava/lang/String;)V

    .line 117
    const-string v0, "internal_push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ParseCloudDataVideo.startAsynPreLoadImg video json:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/cmplay/internalpush/video/e;->c:Lcom/cmplay/internalpush/video/b/a;

    if-eqz v0, :cond_0

    .line 121
    sget-object v0, Lcom/cmplay/internalpush/video/e;->c:Lcom/cmplay/internalpush/video/b/a;

    invoke-interface {v0, v1}, Lcom/cmplay/internalpush/video/b/a;->a(I)V

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->g()Z

    .line 129
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/data/c;

    .line 131
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->a(Lcom/cmplay/internalpush/data/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    const/4 v0, 0x1

    .line 137
    :goto_0
    if-eqz v0, :cond_4

    const/16 v2, 0x15

    .line 138
    :goto_1
    if-eqz v0, :cond_5

    const-string v6, ""

    .line 139
    :goto_2
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const-string v3, ""

    move v8, v7

    move-wide v9, v4

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    .line 142
    :cond_2
    iget-boolean v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->n:Z

    if-nez v0, :cond_3

    .line 144
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->p:Landroid/os/Handler;

    new-instance v1, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$1;

    invoke-direct {v1, p0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$1;-><init>(Lcom/cmplay/internalpush/data/ParseCloudDataVideo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 166
    :cond_3
    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->e()V

    .line 167
    return-void

    .line 137
    :cond_4
    const/16 v2, 0x16

    goto :goto_1

    .line 138
    :cond_5
    invoke-static {}, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->getInstance()Lcom/cmplay/internalpush/ipc/IpcCloudHelper;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->innpush_getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_6
    move v0, v7

    goto :goto_0
.end method

.method public a(Z)V
    .locals 14

    .prologue
    .line 225
    const-string v0, "internal_push"

    const-string v1, "ParseCloudDataVideo.getNextVideo()"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    if-eqz p1, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->n()Z

    .line 231
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 233
    iget v1, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->q:I

    iget-object v2, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 234
    const-string v0, "internal_push"

    const-string v1, "ParseCloudDataVideo.getNextVideo() \u5185\u63a8\u89c6\u9891 \u5faa\u73af\u904d\u5386\u4e86\u4e00\u904d\uff0c resetDownloadFailTag  \u505c\u6b62\u4e0b\u4e00\u4e2a\u4e0b\u8f7d"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->l()V

    .line 338
    :cond_1
    return-void

    .line 239
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ParseCloudDataVideo.getNextVideo()  \u5185\u63a8\u89c6\u9891 \u9700\u8981\u4e0b\u8f7d\u7684\u4e2a\u6570\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/cmplay/internalpush/data/c;

    .line 242
    const-string v0, "internal_push"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ParseCloudDataVideo.getNextVideo()  \u5185\u63a8\u89c6\u9891 \u5f00\u59cb\u4e0b\u8f7d pro_id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    isHitTopApp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Lcom/cmplay/internalpush/data/c;->ac()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Lcom/cmplay/internalpush/data/c;->e(Z)V

    .line 244
    invoke-static {}, Lcom/cmplay/internalpush/video/a/a;->a()Lcom/cmplay/internalpush/video/a/a;

    move-result-object v0

    invoke-virtual {v12}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v1

    invoke-virtual {v12}, Lcom/cmplay/internalpush/data/c;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Lcom/cmplay/internalpush/data/c;->F()Ljava/lang/String;

    move-result-object v4

    .line 245
    invoke-virtual {v12}, Lcom/cmplay/internalpush/data/c;->F()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 246
    invoke-virtual {v12}, Lcom/cmplay/internalpush/data/c;->l()Ljava/lang/String;

    move-result-object v6

    .line 247
    invoke-virtual {v12}, Lcom/cmplay/internalpush/data/c;->y()Ljava/lang/String;

    move-result-object v7

    .line 248
    invoke-virtual {v12}, Lcom/cmplay/internalpush/data/c;->i()J

    move-result-wide v8

    iget-object v10, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->w:Lcom/cmplay/internalpush/video/b/a;

    new-instance v11, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$3;

    invoke-direct {v11, p0, v12}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$3;-><init>(Lcom/cmplay/internalpush/data/ParseCloudDataVideo;Lcom/cmplay/internalpush/data/c;)V

    .line 244
    invoke-virtual/range {v0 .. v11}, Lcom/cmplay/internalpush/video/a/a;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/cmplay/internalpush/video/b/a;Lcom/cmplay/internalpush/video/a/b$a;)V

    .line 333
    sget-boolean v0, Lcom/cmplay/internalpush/video/e;->d:Z

    if-nez v0, :cond_3

    .line 334
    invoke-virtual {v12}, Lcom/cmplay/internalpush/data/c;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->c(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v12}, Lcom/cmplay/internalpush/data/c;->y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/cmplay/internalpush/data/c;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 775
    if-nez p1, :cond_1

    .line 790
    :cond_0
    :goto_0
    return v0

    .line 778
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 779
    const-string v1, "zzb"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "show id ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", videourl="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/cmplay/internalpush/data/c;->F()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    const-string v1, "zzb"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "show LocalPathVideo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/cmplay/internalpush/data/c;->G()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    invoke-virtual {p1}, Lcom/cmplay/internalpush/data/c;->F()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/cmplay/internalpush/data/c;->G()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 784
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/cmplay/internalpush/data/c;->G()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 785
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 786
    const-string v0, "zzb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkVideoDownloaded \u8017\u65f6\uff1a"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 81
    new-instance v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$VideoProgressStatusReceiver;

    invoke-direct {v0, p0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$VideoProgressStatusReceiver;-><init>(Lcom/cmplay/internalpush/data/ParseCloudDataVideo;)V

    iput-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->v:Lcom/cmplay/internalpush/data/ParseCloudDataVideo$VideoProgressStatusReceiver;

    .line 82
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 83
    const-string v1, "com.cmplay.libinnerpushvideo.video.Progress_notify"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->j:Landroid/content/Context;

    iget-object v2, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->v:Lcom/cmplay/internalpush/data/ParseCloudDataVideo$VideoProgressStatusReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    return-void
.end method

.method public b(J)V
    .locals 11

    .prologue
    const/4 v1, 0x4

    .line 639
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const-string v3, ""

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->l:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->p()I

    move-result v8

    move v2, v1

    move-wide v9, p1

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    .line 640
    return-void
.end method

.method public b(Z)V
    .locals 13

    .prologue
    .line 344
    const-string v0, "internal_push"

    const-string v1, "ParseCloudDataVideo.getNextHitTopVideo()"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    if-eqz p1, :cond_0

    .line 347
    const-string v0, "internal_push"

    const-string v1, "ParseCloudDataVideo.getNextHitTopVideo()  \u6267\u884ccanShow()\u5237\u65b0mAdCansShowList"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->n()Z

    .line 351
    :cond_0
    iget v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->q:I

    iget-object v1, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 352
    const-string v0, "internal_push"

    const-string v1, "ParseCloudDataVideo.getNextHitTopVideo  \u7206\u6b3e \u5185\u63a8\u89c6\u9891 \u5faa\u73af\u904d\u5386\u4e86\u4e00\u904d\uff0c resetDownloadFailTag  \u505c\u6b62\u4e0b\u4e00\u4e2a\u4e0b\u8f7d"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->l()V

    .line 355
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->A:Lcom/cmplay/internalpush/video/b/b;

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->A:Lcom/cmplay/internalpush/video/b/b;

    invoke-interface {v0}, Lcom/cmplay/internalpush/video/b/b;->a()V

    .line 451
    :cond_1
    :goto_0
    return-void

    .line 361
    :cond_2
    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->m()Lcom/cmplay/internalpush/data/c;

    move-result-object v12

    .line 362
    if-eqz v12, :cond_3

    .line 363
    const-string v0, "internal_push"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ParseCloudDataVideo.getNextHitTopVideo  \u7206\u6b3e \u5185\u63a8\u89c6\u9891 \u5f00\u59cb\u4e0b\u8f7d pro_id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    isHitTopApp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Lcom/cmplay/internalpush/data/c;->ac()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Lcom/cmplay/internalpush/data/c;->e(Z)V

    .line 365
    invoke-static {}, Lcom/cmplay/internalpush/video/a/a;->a()Lcom/cmplay/internalpush/video/a/a;

    move-result-object v0

    invoke-virtual {v12}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v1

    invoke-virtual {v12}, Lcom/cmplay/internalpush/data/c;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Lcom/cmplay/internalpush/data/c;->F()Ljava/lang/String;

    move-result-object v4

    .line 366
    invoke-virtual {v12}, Lcom/cmplay/internalpush/data/c;->F()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 367
    invoke-virtual {v12}, Lcom/cmplay/internalpush/data/c;->l()Ljava/lang/String;

    move-result-object v6

    .line 368
    invoke-virtual {v12}, Lcom/cmplay/internalpush/data/c;->y()Ljava/lang/String;

    move-result-object v7

    .line 369
    invoke-virtual {v12}, Lcom/cmplay/internalpush/data/c;->i()J

    move-result-wide v8

    iget-object v10, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->w:Lcom/cmplay/internalpush/video/b/a;

    new-instance v11, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$4;

    invoke-direct {v11, p0, v12}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$4;-><init>(Lcom/cmplay/internalpush/data/ParseCloudDataVideo;Lcom/cmplay/internalpush/data/c;)V

    .line 365
    invoke-virtual/range {v0 .. v11}, Lcom/cmplay/internalpush/video/a/a;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/cmplay/internalpush/video/b/a;Lcom/cmplay/internalpush/video/a/b$a;)V

    goto :goto_0

    .line 445
    :cond_3
    const-string v0, "internal_push"

    const-string v1, "ParseCloudDataVideo.getNextHitTopVideo  \u7206\u6b3e \u5185\u63a8\u89c6\u9891  info=null  \u6ca1\u6709\u9700\u8981\u4e0b\u8f7d"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->A:Lcom/cmplay/internalpush/video/b/b;

    if-eqz v0, :cond_1

    .line 448
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->A:Lcom/cmplay/internalpush/video/b/b;

    invoke-interface {v0}, Lcom/cmplay/internalpush/video/b/b;->a()V

    goto :goto_0
.end method

.method public b(I)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 712
    iput p1, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->r:I

    .line 714
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 733
    :goto_0
    return v0

    .line 719
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 720
    iget-wide v4, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->z:J

    sub-long v4, v2, v4

    sget v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->y:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    .line 721
    iput-wide v2, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->z:J

    .line 723
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/data/c;

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->a(Lcom/cmplay/internalpush/data/c;)Z

    move-result v0

    .line 724
    const-string v2, "internal_push"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ParseCloudDataVideo.show()   isShow ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    if-eqz v0, :cond_2

    .line 726
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->k()V

    .line 727
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->j:Landroid/content/Context;

    iget-object v2, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->j:Landroid/content/Context;

    invoke-static {v2}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->o()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->a(Landroid/content/Context;ZLjava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 730
    :cond_1
    const-string v0, "internal_push"

    const-string v2, "ParseCloudDataVideo.show()    \u9891\u7e41\u8c03\u8d77"

    invoke-static {v0, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    :cond_2
    iput-boolean v1, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->b:Z

    move v0, v1

    .line 733
    goto :goto_0
.end method

.method public c()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/cmplay/internalpush/data/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 550
    invoke-super {p0}, Lcom/cmplay/internalpush/data/o;->c()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 534
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/cmplay/internalpush/video/e;->c()Lcom/cmplay/base/util/c/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 535
    invoke-static {}, Lcom/cmplay/internalpush/video/e;->c()Lcom/cmplay/base/util/c/c;

    move-result-object v0

    new-instance v1, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$5;

    invoke-direct {v1, p0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo$5;-><init>(Lcom/cmplay/internalpush/data/ParseCloudDataVideo;)V

    invoke-interface {v0, p1, v1}, Lcom/cmplay/base/util/c/c;->a(Ljava/lang/String;Lcom/cmplay/base/util/c/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    :cond_0
    monitor-exit p0

    return-void

    .line 534
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(I)Z
    .locals 3

    .prologue
    .line 747
    iput p1, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->r:I

    .line 748
    const-string v0, "reportNeituiSdkApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ParseCloudDataVideo.isPlayable scene:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    iget-boolean v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->b:Z

    return v0
.end method

.method public d()V
    .locals 0

    .prologue
    .line 556
    return-void
.end method

.method public d(I)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 758
    iput p1, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->r:I

    .line 760
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/data/c;

    .line 762
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->ac()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->a(Lcom/cmplay/internalpush/data/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    const/4 v0, 0x1

    .line 766
    :goto_0
    const-string v1, "reportNeituiSdkApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ParseCloudDataVideo.isHitTopPlayable scene:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->r:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   isHitTopPlayable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->b(Z)V

    .line 175
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->a(Z)V

    .line 182
    return-void
.end method

.method public g()Z
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 458
    const-string v0, "internal_push"

    const-string v1, "ParseCloudDataVideo.getHitTopCanShowList()  \u8fc7\u6ee4\u627e\u51fa\u9700\u8981\u4e0b\u8f7d\u7d20\u6750\u7684\u7206\u6b3e"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 461
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 465
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 466
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v3, v2

    move v1, v2

    .line 467
    :goto_0
    if-ge v3, v4, :cond_2

    .line 468
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->g:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/data/c;

    .line 469
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->ac()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 470
    sput v2, Lcom/cmplay/internalpush/a/c;->a:I

    .line 471
    iget-object v5, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->j:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/cmplay/internalpush/a/c;->a(Landroid/content/Context;Lcom/cmplay/internalpush/data/c;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 472
    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->b(Lcom/cmplay/internalpush/data/c;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 473
    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->i(Lcom/cmplay/internalpush/data/c;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 475
    const/4 v1, 0x1

    .line 476
    iget-object v5, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->s:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    const-string v5, "internal_push"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ParseCloudDataVideo.getHitTopCanShowList()  name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  pro_id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "  filter rusult:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v6, Lcom/cmplay/internalpush/a/c;->a:I

    invoke-static {v6}, Lcom/cmplay/internalpush/a/c;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 467
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 479
    :cond_0
    const-string v5, "internal_push"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ParseCloudDataVideo.getHitTopCanShowList()  name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  pro_id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "  filter rusult:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v6, Lcom/cmplay/internalpush/a/c;->a:I

    invoke-static {v6}, Lcom/cmplay/internalpush/a/c;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v0, v1

    goto :goto_1

    .line 483
    :cond_2
    const-string v0, "internal_push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ParseCloudDataVideo.getHitTopCanShowList()  haveDataDl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mAdHitTopDataList.size()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mHitTopDownloadList.size():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->s:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :goto_2
    return v1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public m()Lcom/cmplay/internalpush/data/c;
    .locals 4

    .prologue
    .line 494
    const/4 v1, 0x0

    .line 495
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->s:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 496
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/data/c;

    .line 497
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->Y()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->h(Lcom/cmplay/internalpush/data/c;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    move-object v1, v0

    .line 500
    goto :goto_0

    .line 502
    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public n()Z
    .locals 12

    .prologue
    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    .line 647
    const-string v0, "internal_push"

    const-string v1, "ParseCloudDataVideo.canShow()"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 650
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 651
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 652
    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->c()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 655
    invoke-direct {p0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->s()V

    .line 659
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last_show_hit_top_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v5}, Lcom/cmplay/internalpush/a/d;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 661
    invoke-static {v0, v1}, Lcom/cmplay/internalpush/a/b;->a(J)Z

    move-result v3

    .line 662
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    move v2, v8

    move v1, v8

    .line 663
    :goto_0
    if-ge v2, v4, :cond_1

    .line 664
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/data/c;

    .line 665
    if-eqz v0, :cond_4

    .line 667
    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->ac()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 668
    invoke-virtual {v0, v8}, Lcom/cmplay/internalpush/data/c;->r(I)V

    .line 669
    invoke-virtual {v0, v8}, Lcom/cmplay/internalpush/data/c;->e(I)V

    .line 670
    const-string v5, "internal_push"

    const-string v6, "ParseCloudDataVideo.canShow()  \u4e0d\u662f\u76f8\u540c\u81ea\u7136\u5929\uff0c\u91cd\u7f6e\u7206\u6b3e\u5f53\u5929\u5c55\u793a\u6b21"

    invoke-static {v5, v6}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    :cond_0
    sput v8, Lcom/cmplay/internalpush/a/c;->a:I

    .line 674
    iget-object v5, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->j:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/cmplay/internalpush/a/c;->a(Landroid/content/Context;Lcom/cmplay/internalpush/data/c;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 675
    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->a(Lcom/cmplay/internalpush/data/c;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 676
    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->c(Lcom/cmplay/internalpush/data/c;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 677
    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->i(Lcom/cmplay/internalpush/data/c;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 678
    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->k(Lcom/cmplay/internalpush/data/c;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 680
    const/4 v1, 0x1

    .line 681
    iget-object v5, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->f:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    const-string v5, "internal_push"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ParseCloudDataVideo.canShow() name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  pro_id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  filter rusult:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/cmplay/internalpush/a/c;->a:I

    invoke-static {v7}, Lcom/cmplay/internalpush/a/c;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->ac()Z

    move-result v0

    if-nez v0, :cond_4

    .line 693
    :cond_1
    const-string v0, "internal_push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ParseCloudDataVideo.canShow()  canShow:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mInfoList.size()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "     mAdCansShowList.size():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    if-nez v1, :cond_2

    .line 697
    invoke-direct {p0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->t()Z

    move-result v1

    .line 707
    :cond_2
    :goto_1
    return v1

    .line 689
    :cond_3
    const-string v5, "internal_push"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ParseCloudDataVideo.canShow() name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  pro_id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "  filter rusult:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v6, Lcom/cmplay/internalpush/a/c;->a:I

    invoke-static {v6}, Lcom/cmplay/internalpush/a/c;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move v0, v1

    .line 663
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto/16 :goto_0

    .line 700
    :cond_5
    const-string v0, "internal_push"

    const-string v1, "ParseCloudDataVideo.canShow()  \u6ca1\u6709\u6570\u636e"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    const/16 v2, 0x10

    .line 704
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v1, 0x4

    const-string v3, ""

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->p()I

    move-result v7

    move-wide v9, v4

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    move v1, v8

    goto :goto_1
.end method

.method public o()Ljava/lang/String;
    .locals 26

    .prologue
    .line 798
    const/4 v2, 0x0

    .line 799
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->i:Lcom/cmplay/internalpush/data/c;

    if-eqz v3, :cond_1

    .line 800
    new-instance v3, Lcom/cmplay/internalpush/video/b;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->i:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->i:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->r()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->i:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->A()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->i:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->B()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->i:Lcom/cmplay/internalpush/data/c;

    .line 801
    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->y()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->i:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->F()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->i:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->G()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->i:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->l()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->i:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->H()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->i:Lcom/cmplay/internalpush/data/c;

    .line 802
    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->I()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->i:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->t()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->i:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->s()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->i:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->J()J

    move-result-wide v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->i:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->K()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->i:Lcom/cmplay/internalpush/data/c;

    .line 803
    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->Q()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->i:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->P()Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->i:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->b()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->r:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->i:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->i()J

    move-result-wide v24

    invoke-direct/range {v3 .. v25}, Lcom/cmplay/internalpush/video/b;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;JLjava/lang/String;ILjava/util/ArrayList;Ljava/lang/String;IJ)V

    .line 804
    invoke-virtual {v3}, Lcom/cmplay/internalpush/video/b;->a()Ljava/lang/String;

    move-result-object v2

    .line 830
    :cond_0
    :goto_0
    const-string v3, "internal_push"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ParseCloudDataVideo.getInnerPushModelForShow  dataJson:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    return-object v2

    .line 806
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 808
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->f:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cmplay/internalpush/data/c;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->i:Lcom/cmplay/internalpush/data/c;

    .line 810
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->j:Landroid/content/Context;

    invoke-static {v2}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->i:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v3}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v4

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v5, v3}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->a(JI)V

    .line 812
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->i:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->ac()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 813
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "last_show_hit_top_time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/cmplay/internalpush/a/d;->b(Ljava/lang/String;J)V

    .line 818
    :goto_1
    new-instance v3, Lcom/cmplay/internalpush/video/b;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->i:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->i:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->r()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->i:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->A()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->i:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->B()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->i:Lcom/cmplay/internalpush/data/c;

    .line 819
    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->y()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->i:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->F()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->i:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->G()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->i:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->l()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->i:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->H()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->i:Lcom/cmplay/internalpush/data/c;

    .line 820
    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->I()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->i:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->t()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->i:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->s()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->i:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->J()J

    move-result-wide v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->i:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->K()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->i:Lcom/cmplay/internalpush/data/c;

    .line 821
    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->Q()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->i:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->P()Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->i:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->b()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->r:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->i:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->i()J

    move-result-wide v24

    invoke-direct/range {v3 .. v25}, Lcom/cmplay/internalpush/video/b;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;JLjava/lang/String;ILjava/util/ArrayList;Ljava/lang/String;IJ)V

    .line 822
    invoke-virtual {v3}, Lcom/cmplay/internalpush/video/b;->a()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 815
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "last_show_open_screen_time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/cmplay/internalpush/a/d;->b(Ljava/lang/String;J)V

    goto/16 :goto_1
.end method

.method public p()I
    .locals 3

    .prologue
    .line 898
    const-string v0, "reportNeituiSdkApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ParseCloudDataVideo.getScence scene:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    iget v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->r:I

    return v0
.end method

.method public q()V
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->x:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->x:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 920
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->x:Ljava/util/Timer;

    .line 922
    :cond_0
    return-void
.end method
