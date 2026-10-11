.class final Lcom/cmcm/orion/picks/impl/player/a$l;
.super Ljava/lang/Object;
.source "Mp4Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/picks/impl/player/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "l"
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/impl/player/a;

.field private b:Landroid/os/HandlerThread;

.field private c:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Lcom/cmcm/orion/picks/impl/player/a;)V
    .locals 4

    .prologue
    .line 393
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/player/a$l;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Mp4Thread_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$l;->b:Landroid/os/HandlerThread;

    .line 395
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$l;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 396
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/player/a$l;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$l;->c:Landroid/os/Handler;

    .line 397
    return-void
.end method

.method synthetic constructor <init>(Lcom/cmcm/orion/picks/impl/player/a;B)V
    .locals 0

    .prologue
    .line 388
    invoke-direct {p0, p1}, Lcom/cmcm/orion/picks/impl/player/a$l;-><init>(Lcom/cmcm/orion/picks/impl/player/a;)V

    return-void
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/impl/player/a$l;Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 388
    .line 1412
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$l;->c:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 388
    return-void
.end method

.method static synthetic b(Lcom/cmcm/orion/picks/impl/player/a$l;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 388
    .line 1416
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$l;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 388
    return-void
.end method

.method static synthetic c(Lcom/cmcm/orion/picks/impl/player/a$l;Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 388
    .line 3400
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$l;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getId()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2404
    :goto_0
    if-eqz v0, :cond_1

    .line 2405
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_1
    return-void

    .line 3400
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2407
    :cond_1
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$l;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
