.class Lcom/duapps/ad/entity/b$1;
.super Ljava/lang/Object;
.source "FacebookCacheManager.java"

# interfaces
.implements Lcom/duapps/ad/entity/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duapps/ad/entity/b;->a(Landroid/os/Message;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/duapps/ad/entity/d;

.field final synthetic c:J

.field final synthetic d:I

.field final synthetic e:Lcom/duapps/ad/entity/b;


# direct methods
.method constructor <init>(Lcom/duapps/ad/entity/b;Ljava/lang/String;Lcom/duapps/ad/entity/d;JI)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/duapps/ad/entity/b$1;->e:Lcom/duapps/ad/entity/b;

    iput-object p2, p0, Lcom/duapps/ad/entity/b$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/duapps/ad/entity/b$1;->b:Lcom/duapps/ad/entity/d;

    iput-wide p4, p0, Lcom/duapps/ad/entity/b$1;->c:J

    iput p6, p0, Lcom/duapps/ad/entity/b$1;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 320
    iget-object v0, p0, Lcom/duapps/ad/entity/b$1;->e:Lcom/duapps/ad/entity/b;

    invoke-static {v0}, Lcom/duapps/ad/entity/b;->c(Lcom/duapps/ad/entity/b;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/entity/b$1;->e:Lcom/duapps/ad/entity/b;

    invoke-static {v1}, Lcom/duapps/ad/entity/b;->i(Lcom/duapps/ad/entity/b;)I

    move-result v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/duapps/ad/entity/b$1;->c:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, p1, v2, v3}, Lcom/duapps/ad/stats/c;->a(Landroid/content/Context;IIJ)V

    .line 323
    const-string v0, "FbCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refresh result: id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/duapps/ad/entity/b$1;->b:Lcom/duapps/ad/entity/d;

    invoke-virtual {v2}, Lcom/duapps/ad/entity/d;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget v0, p0, Lcom/duapps/ad/entity/b$1;->d:I

    if-lez v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/duapps/ad/entity/b$1;->e:Lcom/duapps/ad/entity/b;

    invoke-static {v0}, Lcom/duapps/ad/entity/b;->j(Lcom/duapps/ad/entity/b;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    iget v2, p0, Lcom/duapps/ad/entity/b$1;->d:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 334
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/entity/b$1;->e:Lcom/duapps/ad/entity/b;

    iput-boolean v6, v0, Lcom/duapps/ad/entity/b;->d:Z

    .line 332
    const-string v0, "FbCache"

    const-string v1, "Refresh result: DONE for geeen count"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 279
    const-string v0, "FbCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/duapps/ad/entity/b$1;->e:Lcom/duapps/ad/entity/b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/duapps/ad/entity/b;->c:Z

    .line 281
    invoke-direct {p0, p1}, Lcom/duapps/ad/entity/b$1;->a(I)V

    .line 282
    iget-object v0, p0, Lcom/duapps/ad/entity/b$1;->e:Lcom/duapps/ad/entity/b;

    iget-boolean v0, v0, Lcom/duapps/ad/entity/b;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/entity/b$1;->e:Lcom/duapps/ad/entity/b;

    invoke-static {v0}, Lcom/duapps/ad/entity/b;->a(Lcom/duapps/ad/entity/b;)Lcom/duapps/ad/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/duapps/ad/entity/b$1;->e:Lcom/duapps/ad/entity/b;

    invoke-static {v0}, Lcom/duapps/ad/entity/b;->b(Lcom/duapps/ad/entity/b;)Lcom/duapps/ad/b;

    move-result-object v0

    new-instance v1, Lcom/duapps/ad/a;

    invoke-direct {v1, p1, p2}, Lcom/duapps/ad/a;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/duapps/ad/b;->a(Lcom/duapps/ad/a;)V

    .line 284
    :cond_0
    return-void
.end method

.method public a(Lcom/duapps/ad/entity/d;)V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/duapps/ad/entity/b$1;->e:Lcom/duapps/ad/entity/b;

    invoke-static {v0}, Lcom/duapps/ad/entity/b;->g(Lcom/duapps/ad/entity/b;)Lcom/duapps/ad/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/duapps/ad/entity/b$1;->e:Lcom/duapps/ad/entity/b;

    invoke-static {v0}, Lcom/duapps/ad/entity/b;->h(Lcom/duapps/ad/entity/b;)Lcom/duapps/ad/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/duapps/ad/b;->a()V

    .line 316
    :cond_0
    return-void
.end method

.method public a(Lcom/duapps/ad/entity/d;Z)V
    .locals 6

    .prologue
    .line 288
    const-string v0, "FbCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdLoaded: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/duapps/ad/entity/b$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/duapps/ad/entity/b$1;->e:Lcom/duapps/ad/entity/b;

    invoke-static {v0}, Lcom/duapps/ad/entity/b;->c(Lcom/duapps/ad/entity/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duapps/ad/base/m;->c(Landroid/content/Context;)I

    move-result v0

    .line 290
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 292
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    .line 294
    if-le v2, v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/duapps/ad/entity/b$1;->e:Lcom/duapps/ad/entity/b;

    invoke-static {v0}, Lcom/duapps/ad/entity/b;->c(Lcom/duapps/ad/entity/b;)Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/duapps/ad/entity/b$1;->e:Lcom/duapps/ad/entity/b;

    invoke-static {v3}, Lcom/duapps/ad/entity/b;->d(Lcom/duapps/ad/entity/b;)I

    move-result v3

    iget-object v4, p0, Lcom/duapps/ad/entity/b$1;->e:Lcom/duapps/ad/entity/b;

    invoke-static {v4}, Lcom/duapps/ad/entity/b;->e(Lcom/duapps/ad/entity/b;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/duapps/ad/entity/b$1;->e:Lcom/duapps/ad/entity/b;

    iget-object v5, v5, Lcom/duapps/ad/entity/b;->k:Ljava/lang/String;

    invoke-static {v0, v3, v4, v5}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/duapps/ad/entity/b$1;->e:Lcom/duapps/ad/entity/b;

    invoke-static {v0}, Lcom/duapps/ad/entity/b;->c(Lcom/duapps/ad/entity/b;)Landroid/content/Context;

    move-result-object v0

    const v3, 0x15180

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Lcom/duapps/ad/base/m;->b(Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    :cond_0
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 302
    iget-object v0, p0, Lcom/duapps/ad/entity/b$1;->e:Lcom/duapps/ad/entity/b;

    invoke-static {v0}, Lcom/duapps/ad/entity/b;->c(Lcom/duapps/ad/entity/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duapps/ad/base/m;->a(Landroid/content/Context;)V

    .line 303
    iget-object v0, p0, Lcom/duapps/ad/entity/b$1;->e:Lcom/duapps/ad/entity/b;

    invoke-static {v0}, Lcom/duapps/ad/entity/b;->c(Lcom/duapps/ad/entity/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duapps/ad/base/m;->b(Landroid/content/Context;)V

    .line 304
    iget-object v0, p0, Lcom/duapps/ad/entity/b$1;->e:Lcom/duapps/ad/entity/b;

    invoke-static {v0}, Lcom/duapps/ad/entity/b;->f(Lcom/duapps/ad/entity/b;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 305
    :try_start_1
    iget-object v0, p0, Lcom/duapps/ad/entity/b$1;->e:Lcom/duapps/ad/entity/b;

    invoke-static {v0}, Lcom/duapps/ad/entity/b;->f(Lcom/duapps/ad/entity/b;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/duapps/ad/entity/b$1;->b:Lcom/duapps/ad/entity/d;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 307
    const/16 v0, 0xc8

    invoke-direct {p0, v0}, Lcom/duapps/ad/entity/b$1;->a(I)V

    .line 308
    return-void

    .line 299
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 306
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
