.class abstract Lcom/cmcm/orion/picks/impl/player/a$i;
.super Ljava/lang/Object;
.source "Mp4Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/picks/impl/player/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "i"
.end annotation


# instance fields
.field final synthetic b:Lcom/cmcm/orion/picks/impl/player/a;


# direct methods
.method private constructor <init>(Lcom/cmcm/orion/picks/impl/player/a;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/player/a$i;->b:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cmcm/orion/picks/impl/player/a;B)V
    .locals 0

    .prologue
    .line 420
    invoke-direct {p0, p1}, Lcom/cmcm/orion/picks/impl/player/a$i;-><init>(Lcom/cmcm/orion/picks/impl/player/a;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$i;->b:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a;->d(Lcom/cmcm/orion/picks/impl/player/a;)Lcom/cmcm/orion/picks/impl/player/a$j;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/cmcm/orion/picks/impl/player/a$j;->e(Lcom/cmcm/orion/picks/impl/player/a$j;I)V

    .line 429
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$i;->b:Lcom/cmcm/orion/picks/impl/player/a;

    .line 1116
    new-instance v1, Lcom/cmcm/orion/picks/impl/player/a$1;

    invoke-direct {v1, v0, p1}, Lcom/cmcm/orion/picks/impl/player/a$1;-><init>(Lcom/cmcm/orion/picks/impl/player/a;I)V

    invoke-static {v1}, Lcom/cmcm/orion/utils/e;->b(Ljava/lang/Runnable;)V

    .line 431
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 432
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$i;->b:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a;->d(Lcom/cmcm/orion/picks/impl/player/a;)Lcom/cmcm/orion/picks/impl/player/a$j;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/impl/player/a$j;->a(Z)V

    .line 438
    :goto_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 439
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/impl/player/a$i;->c()V

    .line 441
    :cond_0
    return-void

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$i;->b:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a;->d(Lcom/cmcm/orion/picks/impl/player/a;)Lcom/cmcm/orion/picks/impl/player/a$j;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/impl/player/a$j;->a(Z)V

    goto :goto_0
.end method

.method public abstract a()Z
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$i;->b:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a;->d(Lcom/cmcm/orion/picks/impl/player/a;)Lcom/cmcm/orion/picks/impl/player/a$j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$i;->b:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a;->d(Lcom/cmcm/orion/picks/impl/player/a;)Lcom/cmcm/orion/picks/impl/player/a$j;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/cmcm/orion/picks/impl/player/a$j;->a(Lcom/cmcm/orion/picks/impl/player/a$j;I)V

    .line 447
    :cond_0
    return-void
.end method

.method public abstract b()Z
.end method

.method public final declared-synchronized c()V
    .locals 2

    .prologue
    .line 450
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$i;->b:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a;->e(Lcom/cmcm/orion/picks/impl/player/a;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$i;->b:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a;->e(Lcom/cmcm/orion/picks/impl/player/a;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 452
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$i;->b:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a;->e(Lcom/cmcm/orion/picks/impl/player/a;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 453
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$i;->b:Lcom/cmcm/orion/picks/impl/player/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/impl/player/a;->a(Lcom/cmcm/orion/picks/impl/player/a;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 454
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$i;->b:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a;->d(Lcom/cmcm/orion/picks/impl/player/a;)Lcom/cmcm/orion/picks/impl/player/a$j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/player/a$j;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    :cond_0
    monitor-exit p0

    return-void

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
