.class public Lcom/duapps/ad/k;
.super Ljava/lang/Object;
.source "ADRequestController.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/duapps/ad/g;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:I

.field private d:Landroid/os/Handler;

.field private e:Lcom/duapps/ad/b;

.field private f:Z

.field private g:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/duapps/ad/entity/a/b",
            "<",
            "Lcom/duapps/ad/entity/a/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:J

.field private k:Landroid/os/HandlerThread;

.field private volatile l:Z

.field private volatile m:Z

.field private n:Ljava/lang/String;

.field private o:Lcom/duapps/ad/c/a/c;

.field private p:Lcom/duapps/ad/entity/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/duapps/ad/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duapps/ad/k;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/k;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/k;->h:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/k;->i:Ljava/util/List;

    .line 121
    new-instance v0, Lcom/duapps/ad/k$1;

    invoke-direct {v0, p0}, Lcom/duapps/ad/k$1;-><init>(Lcom/duapps/ad/k;)V

    iput-object v0, p0, Lcom/duapps/ad/k;->p:Lcom/duapps/ad/entity/a/d;

    .line 51
    iput-object p1, p0, Lcom/duapps/ad/k;->b:Landroid/content/Context;

    .line 52
    iput p2, p0, Lcom/duapps/ad/k;->c:I

    .line 53
    iput-object p4, p0, Lcom/duapps/ad/k;->n:Ljava/lang/String;

    .line 54
    invoke-virtual {p0, p3}, Lcom/duapps/ad/k;->a(I)V

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/duapps/ad/k;)Lcom/duapps/ad/b;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/duapps/ad/k;->e:Lcom/duapps/ad/b;

    return-object v0
.end method

.method private a(ILcom/duapps/ad/entity/a/b;)V
    .locals 6

    .prologue
    .line 190
    if-gtz p1, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget v0, p2, Lcom/duapps/ad/entity/a/b;->m:I

    .line 195
    iget-object v1, p0, Lcom/duapps/ad/k;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/duapps/ad/k;->h:Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 199
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/duapps/ad/k;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duapps/ad/entity/a/b;

    .line 202
    if-eqz v1, :cond_0

    .line 203
    iget-boolean v2, v1, Lcom/duapps/ad/entity/a/b;->e:Z

    if-nez v2, :cond_2

    .line 204
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/duapps/ad/entity/a/b;->a(Z)V

    .line 205
    invoke-direct {p0, v0}, Lcom/duapps/ad/k;->a(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v1}, Lcom/duapps/ad/entity/a/b;->b()I

    move-result v2

    sub-int v2, p1, v2

    .line 207
    sget-object v3, Lcom/duapps/ad/k;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "channel-->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " start to fill."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "need count:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    if-lez v2, :cond_0

    .line 210
    invoke-direct {p0, v2, v1}, Lcom/duapps/ad/k;->a(ILcom/duapps/ad/entity/a/b;)V

    goto :goto_0

    .line 213
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/duapps/ad/k;->a(ILcom/duapps/ad/entity/a/b;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/duapps/ad/k;ILcom/duapps/ad/entity/a/b;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/duapps/ad/k;->a(ILcom/duapps/ad/entity/a/b;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 109
    iget-object v0, p0, Lcom/duapps/ad/k;->o:Lcom/duapps/ad/c/a/c;

    invoke-virtual {v0, p1}, Lcom/duapps/ad/c/a/c;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 110
    iget-object v2, p0, Lcom/duapps/ad/k;->d:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 111
    const/16 v3, 0x65

    iput v3, v2, Landroid/os/Message;->what:I

    .line 112
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 113
    iget-object v3, p0, Lcom/duapps/ad/k;->d:Landroid/os/Handler;

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 114
    sget-object v2, Lcom/duapps/ad/k;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "channelName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " send time out msg\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method static synthetic a(Lcom/duapps/ad/k;Z)Z
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/duapps/ad/k;->m:Z

    return p1
.end method

.method private a(Ljava/lang/String;J)Z
    .locals 6

    .prologue
    .line 402
    iget-object v0, p0, Lcom/duapps/ad/k;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/a/b;

    iget-wide v0, v0, Lcom/duapps/ad/entity/a/b;->g:J

    .line 403
    sget-object v2, Lcom/duapps/ad/k;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "channel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-->["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/duapps/ad/k;->j:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/duapps/ad/k;->j:J

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 408
    iget-object v0, p0, Lcom/duapps/ad/k;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 409
    iget-object v0, p0, Lcom/duapps/ad/k;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 410
    add-int/lit8 v1, v0, -0x1

    if-ne v5, v1, :cond_1

    .line 427
    :cond_0
    return-void

    .line 414
    :cond_1
    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_0
    if-le v4, v5, :cond_0

    .line 415
    add-int/lit8 v0, v4, -0x1

    if-ltz v0, :cond_2

    .line 416
    iget-object v0, p0, Lcom/duapps/ad/k;->h:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 417
    iget-object v1, p0, Lcom/duapps/ad/k;->h:Ljava/util/List;

    add-int/lit8 v2, v4, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 418
    iget-object v2, p0, Lcom/duapps/ad/k;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duapps/ad/entity/a/b;

    .line 419
    iget-object v3, p0, Lcom/duapps/ad/k;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/duapps/ad/entity/a/b;

    .line 420
    if-eqz v2, :cond_2

    if-nez v3, :cond_3

    .line 414
    :cond_2
    :goto_1
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_0

    .line 423
    :cond_3
    iget-wide v6, v3, Lcom/duapps/ad/entity/a/b;->g:J

    iput-wide v6, v2, Lcom/duapps/ad/entity/a/b;->g:J

    .line 424
    sget-object v2, Lcom/duapps/ad/k;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "channel :"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", used --> channel :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/duapps/ad/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/duapps/ad/k;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/k;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 72
    iget-object v1, p0, Lcom/duapps/ad/k;->h:Ljava/util/List;

    monitor-enter v1

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/k;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 74
    invoke-direct {p0, v0}, Lcom/duapps/ad/k;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    iget-object v3, p0, Lcom/duapps/ad/k;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/a/b;

    iget-object v3, p0, Lcom/duapps/ad/k;->p:Lcom/duapps/ad/entity/a/d;

    invoke-virtual {v0, v3}, Lcom/duapps/ad/entity/a/b;->a(Lcom/duapps/ad/entity/a/d;)V

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    return-void
.end method

.method private e()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 275
    iget-boolean v0, p0, Lcom/duapps/ad/k;->f:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 296
    :goto_0
    return v0

    .line 279
    :cond_0
    iput-boolean v1, p0, Lcom/duapps/ad/k;->f:Z

    .line 280
    iget-object v2, p0, Lcom/duapps/ad/k;->h:Ljava/util/List;

    monitor-enter v2

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/k;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 282
    invoke-direct {p0, v0}, Lcom/duapps/ad/k;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 284
    iget-object v4, p0, Lcom/duapps/ad/k;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/a/b;

    .line 285
    invoke-virtual {v0}, Lcom/duapps/ad/entity/a/b;->c()I

    move-result v4

    .line 286
    if-lez v4, :cond_1

    .line 287
    invoke-virtual {v0}, Lcom/duapps/ad/entity/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/a/a;

    .line 288
    if-eqz v0, :cond_1

    .line 289
    iget-object v1, p0, Lcom/duapps/ad/k;->p:Lcom/duapps/ad/entity/a/d;

    invoke-interface {v1, v0}, Lcom/duapps/ad/entity/a/d;->a(Lcom/duapps/ad/entity/a/a;)V

    .line 290
    sget-object v0, Lcom/duapps/ad/k;->a:Ljava/lang/String;

    const-string v1, "onAdLoaded in load method"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const/4 v0, 0x1

    monitor-exit v2

    goto :goto_0

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 296
    goto :goto_0
.end method

.method private f()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 332
    sget-object v0, Lcom/duapps/ad/k;->a:Ljava/lang/String;

    const-string v1, "scanResult"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 335
    :goto_0
    if-nez v2, :cond_8

    iget-boolean v0, p0, Lcom/duapps/ad/k;->l:Z

    if-nez v0, :cond_8

    .line 336
    iget-object v6, p0, Lcom/duapps/ad/k;->h:Ljava/util/List;

    monitor-enter v6

    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/k;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 338
    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 339
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 340
    iget-boolean v1, p0, Lcom/duapps/ad/k;->l:Z

    if-eqz v1, :cond_1

    .line 341
    iget-object v0, p0, Lcom/duapps/ad/k;->p:Lcom/duapps/ad/entity/a/d;

    sget-object v1, Lcom/duapps/ad/entity/a/c;->a:Lcom/duapps/ad/entity/a/c;

    sget-object v7, Lcom/duapps/ad/a;->b:Lcom/duapps/ad/a;

    invoke-interface {v0, v1, v7}, Lcom/duapps/ad/entity/a/d;->a(Lcom/duapps/ad/entity/a/b;Lcom/duapps/ad/a;)V

    .line 342
    sget-object v0, Lcom/duapps/ad/k;->a:Ljava/lang/String;

    const-string v1, "Current action has been canceled~"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 397
    :goto_2
    monitor-exit v6

    move v2, v0

    goto :goto_0

    .line 345
    :cond_1
    iget-object v1, p0, Lcom/duapps/ad/k;->h:Ljava/util/List;

    const-wide/16 v8, 0xa

    invoke-virtual {v1, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 346
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 347
    sub-long/2addr v8, v4

    .line 348
    iget-wide v10, p0, Lcom/duapps/ad/k;->j:J

    cmp-long v1, v8, v10

    if-lez v1, :cond_2

    .line 351
    iget-object v0, p0, Lcom/duapps/ad/k;->p:Lcom/duapps/ad/entity/a/d;

    sget-object v1, Lcom/duapps/ad/entity/a/c;->a:Lcom/duapps/ad/entity/a/c;

    sget-object v2, Lcom/duapps/ad/a;->f:Lcom/duapps/ad/a;

    invoke-interface {v0, v1, v2}, Lcom/duapps/ad/entity/a/d;->a(Lcom/duapps/ad/entity/a/b;Lcom/duapps/ad/a;)V

    move v0, v3

    .line 352
    goto :goto_2

    .line 354
    :cond_2
    iget-object v1, p0, Lcom/duapps/ad/k;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/duapps/ad/k;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/duapps/ad/k;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 361
    :cond_3
    iget-object v1, p0, Lcom/duapps/ad/k;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duapps/ad/entity/a/b;

    .line 363
    iget-boolean v10, v1, Lcom/duapps/ad/entity/a/b;->c:Z

    if-nez v10, :cond_5

    .line 364
    invoke-virtual {v1}, Lcom/duapps/ad/entity/a/b;->c()I

    move-result v10

    if-lez v10, :cond_4

    .line 365
    invoke-direct {p0, v0, v8, v9}, Lcom/duapps/ad/k;->a(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {v1}, Lcom/duapps/ad/entity/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/a/a;

    .line 367
    if-eqz v0, :cond_0

    .line 368
    iget-object v1, p0, Lcom/duapps/ad/k;->p:Lcom/duapps/ad/entity/a/d;

    invoke-interface {v1, v0}, Lcom/duapps/ad/entity/a/d;->a(Lcom/duapps/ad/entity/a/a;)V

    .line 369
    sget-object v0, Lcom/duapps/ad/k;->a:Ljava/lang/String;

    const-string v1, "onAdLoaded in load method"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    .line 371
    goto :goto_2

    .line 375
    :cond_4
    iget-boolean v8, v1, Lcom/duapps/ad/entity/a/b;->d:Z

    if-nez v8, :cond_0

    iget-boolean v8, v1, Lcom/duapps/ad/entity/a/b;->e:Z

    if-nez v8, :cond_0

    .line 376
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/duapps/ad/entity/a/b;->a(Z)V

    .line 377
    sget-object v1, Lcom/duapps/ad/k;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " is refreshing..."

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 397
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 382
    :cond_5
    :try_start_1
    invoke-direct {p0, v0}, Lcom/duapps/ad/k;->b(Ljava/lang/String;)V

    .line 383
    iget-object v1, p0, Lcom/duapps/ad/k;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 384
    iget-object v1, p0, Lcom/duapps/ad/k;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    :cond_6
    iget-object v1, p0, Lcom/duapps/ad/k;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 388
    iget-object v8, p0, Lcom/duapps/ad/k;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    .line 389
    if-ne v1, v8, :cond_7

    .line 391
    iget-object v0, p0, Lcom/duapps/ad/k;->p:Lcom/duapps/ad/entity/a/d;

    sget-object v1, Lcom/duapps/ad/entity/a/c;->a:Lcom/duapps/ad/entity/a/c;

    sget-object v2, Lcom/duapps/ad/a;->b:Lcom/duapps/ad/a;

    invoke-interface {v0, v1, v2}, Lcom/duapps/ad/entity/a/d;->a(Lcom/duapps/ad/entity/a/b;Lcom/duapps/ad/a;)V

    move v0, v3

    .line 392
    goto/16 :goto_2

    .line 394
    :cond_7
    sget-object v1, Lcom/duapps/ad/k;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "channel:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " is error"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 399
    :cond_8
    return-void

    :cond_9
    move v0, v2

    goto/16 :goto_2
.end method

.method private g()V
    .locals 10

    .prologue
    .line 430
    iget-wide v2, p0, Lcom/duapps/ad/k;->j:J

    .line 431
    iget-object v5, p0, Lcom/duapps/ad/k;->h:Ljava/util/List;

    monitor-enter v5

    .line 432
    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/k;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_0
    if-ltz v4, :cond_1

    .line 433
    iget-object v0, p0, Lcom/duapps/ad/k;->h:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 434
    iget-object v1, p0, Lcom/duapps/ad/k;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duapps/ad/entity/a/b;

    .line 435
    const/4 v6, 0x0

    iput-boolean v6, v1, Lcom/duapps/ad/entity/a/b;->c:Z

    .line 436
    const/4 v6, 0x0

    iput-boolean v6, v1, Lcom/duapps/ad/entity/a/b;->e:Z

    .line 437
    if-nez v4, :cond_0

    .line 438
    const-wide/16 v6, 0x0

    iput-wide v6, v1, Lcom/duapps/ad/entity/a/b;->g:J

    .line 443
    :goto_1
    sget-object v6, Lcom/duapps/ad/k;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "channel:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ",startTime:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v8, v1, Lcom/duapps/ad/entity/a/b;->g:J

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", wt:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v8, v1, Lcom/duapps/ad/entity/a/b;->f:J

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_0

    .line 440
    :cond_0
    iget-wide v6, v1, Lcom/duapps/ad/entity/a/b;->f:J

    sub-long/2addr v2, v6

    .line 441
    iput-wide v2, v1, Lcom/duapps/ad/entity/a/b;->g:J

    goto :goto_1

    .line 445
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 446
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/duapps/ad/k;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/c/b/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/duapps/ad/k;->p:Lcom/duapps/ad/entity/a/d;

    sget-object v1, Lcom/duapps/ad/entity/a/c;->a:Lcom/duapps/ad/entity/a/c;

    sget-object v2, Lcom/duapps/ad/a;->a:Lcom/duapps/ad/a;

    invoke-interface {v0, v1, v2}, Lcom/duapps/ad/entity/a/d;->a(Lcom/duapps/ad/entity/a/b;Lcom/duapps/ad/a;)V

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/k;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/duapps/ad/k;->p:Lcom/duapps/ad/entity/a/d;

    sget-object v1, Lcom/duapps/ad/entity/a/c;->a:Lcom/duapps/ad/entity/a/c;

    sget-object v2, Lcom/duapps/ad/a;->h:Lcom/duapps/ad/a;

    invoke-interface {v0, v1, v2}, Lcom/duapps/ad/entity/a/d;->a(Lcom/duapps/ad/entity/a/b;Lcom/duapps/ad/a;)V

    goto :goto_0

    .line 259
    :cond_2
    iget-boolean v0, p0, Lcom/duapps/ad/k;->m:Z

    if-eqz v0, :cond_3

    .line 260
    sget-object v0, Lcom/duapps/ad/k;->a:Ljava/lang/String;

    const-string v1, "Current task is already refreshing."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 263
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duapps/ad/k;->l:Z

    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duapps/ad/k;->m:Z

    .line 266
    invoke-direct {p0}, Lcom/duapps/ad/k;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/duapps/ad/k;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 268
    invoke-direct {p0}, Lcom/duapps/ad/k;->g()V

    .line 269
    iget-object v0, p0, Lcom/duapps/ad/k;->d:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public a(I)V
    .locals 6

    .prologue
    .line 58
    iget-object v0, p0, Lcom/duapps/ad/k;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/c/a/b;->a(Landroid/content/Context;)Lcom/duapps/ad/c/a/b;

    move-result-object v0

    iget v1, p0, Lcom/duapps/ad/k;->c:I

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/duapps/ad/k;->n:Ljava/lang/String;

    const-string v4, "offerwall"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/duapps/ad/c/a/b;->a(IZZ)Lcom/duapps/ad/c/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/k;->o:Lcom/duapps/ad/c/a/c;

    .line 59
    iget-object v0, p0, Lcom/duapps/ad/k;->o:Lcom/duapps/ad/c/a/c;

    iget-object v0, v0, Lcom/duapps/ad/c/a/c;->b:Ljava/util/List;

    .line 60
    iget-object v1, p0, Lcom/duapps/ad/k;->h:Ljava/util/List;

    iget-object v2, p0, Lcom/duapps/ad/k;->b:Landroid/content/Context;

    iget v3, p0, Lcom/duapps/ad/k;->c:I

    iget-object v4, p0, Lcom/duapps/ad/k;->n:Ljava/lang/String;

    invoke-static {v0, v2, v3, v4}, Lcom/duapps/ad/base/d;->a(Ljava/util/List;Landroid/content/Context;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 61
    iget-object v0, p0, Lcom/duapps/ad/k;->b:Landroid/content/Context;

    iget v1, p0, Lcom/duapps/ad/k;->c:I

    iget-object v3, p0, Lcom/duapps/ad/k;->h:Ljava/util/List;

    iget-object v4, p0, Lcom/duapps/ad/k;->g:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, p0, Lcom/duapps/ad/k;->n:Ljava/lang/String;

    move v2, p1

    invoke-static/range {v0 .. v5}, Lcom/duapps/ad/base/d;->a(Landroid/content/Context;IILjava/util/List;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/duapps/ad/k;->j:J

    .line 64
    invoke-direct {p0}, Lcom/duapps/ad/k;->d()V

    .line 66
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "adRequest"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/duapps/ad/k;->k:Landroid/os/HandlerThread;

    .line 67
    iget-object v0, p0, Lcom/duapps/ad/k;->k:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 68
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/duapps/ad/k;->k:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/duapps/ad/k;->d:Landroid/os/Handler;

    .line 69
    return-void
.end method

.method public a(Lcom/duapps/ad/b;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/duapps/ad/k;->e:Lcom/duapps/ad/b;

    .line 119
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 480
    const-string v0, "facebook"

    invoke-direct {p0, v0}, Lcom/duapps/ad/k;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/duapps/ad/k;->g:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "facebook"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/a/b;

    .line 482
    if-eqz v0, :cond_0

    .line 483
    check-cast v0, Lcom/duapps/ad/entity/b;

    invoke-virtual {v0, p1}, Lcom/duapps/ad/entity/b;->a(Ljava/util/List;)V

    .line 486
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 475
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duapps/ad/k;->m:Z

    .line 476
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duapps/ad/k;->l:Z

    .line 477
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .prologue
    .line 301
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 327
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 303
    :pswitch_0
    iget-object v0, p0, Lcom/duapps/ad/k;->d:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 305
    :try_start_0
    invoke-direct {p0}, Lcom/duapps/ad/k;->f()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 306
    :catch_0
    move-exception v0

    .line 307
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 311
    :pswitch_1
    iget-object v0, p0, Lcom/duapps/ad/k;->d:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 312
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 313
    iget-object v1, p0, Lcom/duapps/ad/k;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duapps/ad/entity/a/b;

    .line 314
    invoke-virtual {v1}, Lcom/duapps/ad/entity/a/b;->c()I

    move-result v2

    .line 315
    invoke-virtual {v1}, Lcom/duapps/ad/entity/a/b;->b()I

    move-result v3

    .line 316
    sub-int v2, v3, v2

    .line 317
    if-lez v2, :cond_0

    .line 318
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/duapps/ad/entity/a/b;->l:Z

    .line 319
    sget-object v3, Lcom/duapps/ad/k;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "channelName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " is time out"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-direct {p0, v2, v1}, Lcom/duapps/ad/k;->a(ILcom/duapps/ad/entity/a/b;)V

    goto :goto_0

    .line 301
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
