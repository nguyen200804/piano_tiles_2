.class public Lcom/duapps/ad/entity/b;
.super Lcom/duapps/ad/entity/a/b;
.source "FacebookCacheManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/duapps/ad/entity/a/b",
        "<",
        "Lcom/duapps/ad/entity/a/a;",
        ">;",
        "Landroid/os/Handler$Callback;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private o:I

.field private final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/entity/d;",
            ">;"
        }
    .end annotation
.end field

.field private q:Landroid/os/Handler;

.field private r:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;IJILjava/lang/String;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 88
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/duapps/ad/entity/a/b;-><init>(Landroid/content/Context;IJLjava/lang/String;)V

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/duapps/ad/entity/b;->a:Ljava/util/List;

    .line 59
    const/4 v1, 0x0

    iput v1, p0, Lcom/duapps/ad/entity/b;->o:I

    .line 61
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/duapps/ad/entity/b;->p:Ljava/util/List;

    .line 65
    iput-object v0, p0, Lcom/duapps/ad/entity/b;->r:Landroid/content/Context;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/duapps/ad/entity/b;->r:Landroid/content/Context;

    .line 90
    iget v1, p0, Lcom/duapps/ad/entity/b;->i:I

    invoke-static {v1}, Lcom/duapps/ad/c/b/c;->a(I)V

    .line 93
    const-string v1, "offerwall"

    invoke-static {p6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 94
    invoke-static {p1}, Lcom/duapps/ad/base/p;->a(Landroid/content/Context;)Lcom/duapps/ad/base/p;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/duapps/ad/base/p;->c(I)Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/duapps/ad/entity/b;->b(Ljava/util/List;)V

    .line 104
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "fbnative"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 106
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 107
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/duapps/ad/entity/b;->q:Landroid/os/Handler;

    .line 109
    iget-object v0, p0, Lcom/duapps/ad/entity/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 111
    const-string v0, "FbCache"

    const-string v1, "Refresh request failed: no available Placement Id"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v0, "DuNativeAd"

    const-string v1, "Please setup fbids in DuAdNetwork init method"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_1
    if-lez p5, :cond_2

    const/4 v0, 0x5

    if-le p5, v0, :cond_3

    :cond_2
    move p5, v7

    :cond_3
    iput p5, p0, Lcom/duapps/ad/entity/b;->b:I

    .line 117
    iget-object v0, p0, Lcom/duapps/ad/entity/b;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/duapps/ad/entity/b;->r:Landroid/content/Context;

    .line 118
    invoke-static {v1}, Lcom/duapps/ad/base/m;->q(Landroid/content/Context;)J

    move-result-wide v2

    .line 117
    invoke-virtual {v0, v7, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 119
    return-void

    .line 100
    :cond_4
    iget-object v0, p0, Lcom/duapps/ad/entity/b;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/p;->a(Landroid/content/Context;)Lcom/duapps/ad/base/p;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/duapps/ad/base/p;->b(I)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/duapps/ad/entity/b;)Lcom/duapps/ad/b;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/duapps/ad/entity/b;->n:Lcom/duapps/ad/b;

    return-object v0
.end method

.method private a(Landroid/os/Message;I)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 265
    invoke-direct {p0}, Lcom/duapps/ad/entity/b;->e()Ljava/lang/String;

    move-result-object v2

    .line 266
    const-string v0, "FbCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refresh FB -> id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    if-nez v2, :cond_0

    .line 268
    const-string v0, "DuNativeAd"

    const-string v1, "No Available Placement ID"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iput-boolean v4, p0, Lcom/duapps/ad/entity/b;->d:Z

    .line 270
    iput-boolean v4, p0, Lcom/duapps/ad/entity/b;->e:Z

    .line 338
    :goto_0
    return-void

    .line 273
    :cond_0
    new-instance v3, Lcom/duapps/ad/entity/d;

    iget-object v0, p0, Lcom/duapps/ad/entity/b;->r:Landroid/content/Context;

    iget v1, p0, Lcom/duapps/ad/entity/b;->i:I

    iget-object v4, p0, Lcom/duapps/ad/entity/b;->k:Ljava/lang/String;

    invoke-direct {v3, v0, v2, v1, v4}, Lcom/duapps/ad/entity/d;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 274
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 275
    new-instance v0, Lcom/duapps/ad/entity/b$1;

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/duapps/ad/entity/b$1;-><init>(Lcom/duapps/ad/entity/b;Ljava/lang/String;Lcom/duapps/ad/entity/d;JI)V

    invoke-virtual {v3, v0}, Lcom/duapps/ad/entity/d;->a(Lcom/duapps/ad/entity/a;)V

    .line 337
    invoke-virtual {v3}, Lcom/duapps/ad/entity/d;->n()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/duapps/ad/entity/b;)Lcom/duapps/ad/b;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/duapps/ad/entity/b;->n:Lcom/duapps/ad/b;

    return-object v0
.end method

.method private b(Ljava/util/List;)V
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
    .line 356
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 357
    iget-object v1, p0, Lcom/duapps/ad/entity/b;->a:Ljava/util/List;

    monitor-enter v1

    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/entity/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 359
    iget-object v0, p0, Lcom/duapps/ad/entity/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 360
    monitor-exit v1

    .line 362
    :cond_0
    return-void

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic c(Lcom/duapps/ad/entity/b;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/duapps/ad/entity/b;->r:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/duapps/ad/entity/b;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/duapps/ad/entity/b;->i:I

    return v0
.end method

.method private e()Ljava/lang/String;
    .locals 4

    .prologue
    .line 70
    iget-object v1, p0, Lcom/duapps/ad/entity/b;->a:Ljava/util/List;

    monitor-enter v1

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/entity/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 72
    const/4 v0, 0x0

    monitor-exit v1

    .line 79
    :goto_0
    return-object v0

    .line 74
    :cond_0
    iget v0, p0, Lcom/duapps/ad/entity/b;->o:I

    iget-object v2, p0, Lcom/duapps/ad/entity/b;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 75
    iget-object v0, p0, Lcom/duapps/ad/entity/b;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 77
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/duapps/ad/entity/b;->a:Ljava/util/List;

    iget v2, p0, Lcom/duapps/ad/entity/b;->o:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    iget v2, p0, Lcom/duapps/ad/entity/b;->o:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/duapps/ad/entity/b;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/duapps/ad/entity/b;->o:I

    .line 79
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static synthetic e(Lcom/duapps/ad/entity/b;)Ljava/util/List;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/duapps/ad/entity/b;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/duapps/ad/entity/b;)Ljava/util/List;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/duapps/ad/entity/b;->p:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/duapps/ad/entity/b;)Lcom/duapps/ad/b;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/duapps/ad/entity/b;->n:Lcom/duapps/ad/b;

    return-object v0
.end method

.method static synthetic h(Lcom/duapps/ad/entity/b;)Lcom/duapps/ad/b;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/duapps/ad/entity/b;->n:Lcom/duapps/ad/b;

    return-object v0
.end method

.method static synthetic i(Lcom/duapps/ad/entity/b;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/duapps/ad/entity/b;->i:I

    return v0
.end method

.method static synthetic j(Lcom/duapps/ad/entity/b;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/duapps/ad/entity/b;->q:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/duapps/ad/entity/a/a;
    .locals 4

    .prologue
    .line 127
    const/4 v0, 0x0

    .line 129
    iget-object v2, p0, Lcom/duapps/ad/entity/b;->p:Ljava/util/List;

    monitor-enter v2

    .line 130
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/duapps/ad/entity/b;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 131
    iget-object v0, p0, Lcom/duapps/ad/entity/b;->p:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/d;

    .line 132
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Lcom/duapps/ad/entity/d;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 142
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    iget-object v2, p0, Lcom/duapps/ad/entity/b;->r:Landroid/content/Context;

    if-nez v1, :cond_2

    const-string v0, "FAIL"

    :goto_2
    iget v3, p0, Lcom/duapps/ad/entity/b;->i:I

    invoke-static {v2, v0, v3}, Lcom/duapps/ad/stats/c;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 145
    return-object v1

    .line 139
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/duapps/ad/entity/d;->c()V

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 143
    :cond_2
    const-string v0, "OK"

    goto :goto_2

    :cond_3
    move-object v1, v0

    goto :goto_1
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
    .line 348
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/entity/b;->r:Landroid/content/Context;

    iget v1, p0, Lcom/duapps/ad/entity/b;->i:I

    invoke-static {v0, p1, v1}, Lcom/duapps/ad/base/m;->a(Landroid/content/Context;Ljava/util/List;I)V

    .line 352
    invoke-direct {p0, p1}, Lcom/duapps/ad/entity/b;->b(Ljava/util/List;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 187
    invoke-super {p0, p1}, Lcom/duapps/ad/entity/a/b;->a(Z)V

    .line 188
    iget-object v0, p0, Lcom/duapps/ad/entity/b;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/c/b/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    const-string v0, "FbCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network error && sid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/duapps/ad/entity/b;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :goto_0
    return-void

    .line 192
    :cond_0
    const-string v0, "FbCache"

    const-string v1, "Refresh request..."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget v0, p0, Lcom/duapps/ad/entity/b;->b:I

    if-gtz v0, :cond_1

    .line 195
    const-string v0, "FbCache"

    const-string v1, "Refresh request failed: no available Placement Id"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/entity/b;->q:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/duapps/ad/entity/b;->b:I

    return v0
.end method

.method public c()I
    .locals 5

    .prologue
    .line 160
    const/4 v1, 0x0

    .line 161
    iget-object v2, p0, Lcom/duapps/ad/entity/b;->p:Ljava/util/List;

    monitor-enter v2

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/entity/b;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 163
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/d;

    .line 165
    if-nez v0, :cond_0

    .line 166
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 169
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/duapps/ad/entity/d;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 170
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 175
    goto :goto_0

    .line 172
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 173
    invoke-virtual {v0}, Lcom/duapps/ad/entity/d;->c()V

    move v0, v1

    goto :goto_1

    .line 176
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    return v1
.end method

.method public synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/duapps/ad/entity/b;->a()Lcom/duapps/ad/entity/a/a;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 205
    iget v0, p1, Landroid/os/Message;->what:I

    .line 206
    if-nez v0, :cond_6

    .line 207
    iget-object v0, p0, Lcom/duapps/ad/entity/b;->q:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 209
    iget-boolean v0, p0, Lcom/duapps/ad/entity/b;->d:Z

    if-eqz v0, :cond_0

    .line 210
    const-string v0, "FbCache"

    const-string v1, "Refresh request failed: already refreshing"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 261
    :goto_0
    return v0

    .line 214
    :cond_0
    iput-boolean v2, p0, Lcom/duapps/ad/entity/b;->d:Z

    .line 215
    iput-boolean v2, p0, Lcom/duapps/ad/entity/b;->e:Z

    .line 218
    iget-object v4, p0, Lcom/duapps/ad/entity/b;->p:Ljava/util/List;

    monitor-enter v4

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/entity/b;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v3

    .line 222
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 223
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/d;

    .line 224
    if-nez v0, :cond_1

    .line 225
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 228
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/duapps/ad/entity/d;->a()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 229
    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    .line 234
    goto :goto_1

    .line 231
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 232
    invoke-virtual {v0}, Lcom/duapps/ad/entity/d;->c()V

    move v0, v1

    goto :goto_2

    .line 235
    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    iget v0, p0, Lcom/duapps/ad/entity/b;->b:I

    if-ge v1, v0, :cond_5

    .line 238
    iget v0, p0, Lcom/duapps/ad/entity/b;->b:I

    sub-int/2addr v0, v1

    .line 239
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 240
    const-string v4, "FbCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Refresh request send: green = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " ,need = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_4
    iget-object v1, p0, Lcom/duapps/ad/entity/b;->q:Landroid/os/Handler;

    invoke-virtual {v1, v7, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_3
    move v0, v2

    .line 249
    goto :goto_0

    .line 245
    :cond_5
    const-string v0, "FbCache"

    const-string v1, "Refresh request OK: green is full"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iput-boolean v3, p0, Lcom/duapps/ad/entity/b;->d:Z

    goto :goto_3

    .line 250
    :cond_6
    if-ne v0, v7, :cond_8

    .line 251
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 252
    if-lez v0, :cond_7

    .line 253
    invoke-direct {p0, p1, v0}, Lcom/duapps/ad/entity/b;->a(Landroid/os/Message;I)V

    :goto_4
    move v0, v2

    .line 259
    goto/16 :goto_0

    .line 256
    :cond_7
    iput-boolean v3, p0, Lcom/duapps/ad/entity/b;->d:Z

    .line 257
    const-string v0, "FbCache"

    const-string v1, "Refresh result: DONE for geeen count"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    move v0, v3

    .line 261
    goto/16 :goto_0
.end method
