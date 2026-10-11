.class final Lcom/cmcm/orion/picks/impl/d$5;
.super Ljava/lang/Object;
.source "BrandVCViewP.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/picks/impl/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/impl/d;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/impl/d;)V
    .locals 0

    .prologue
    .line 447
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/d$5;->a:Lcom/cmcm/orion/picks/impl/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 450
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d$5;->a:Lcom/cmcm/orion/picks/impl/d;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/d;->d(Lcom/cmcm/orion/picks/impl/d;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 451
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d$5;->a:Lcom/cmcm/orion/picks/impl/d;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/d;->g(Lcom/cmcm/orion/picks/impl/d;)Lcom/cmcm/orion/picks/impl/g;

    move-result-object v0

    sget-object v1, Lcom/cmcm/orion/picks/impl/g$a;->l:Lcom/cmcm/orion/picks/impl/g$a;

    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/d$5;->a:Lcom/cmcm/orion/picks/impl/d;

    invoke-static {v2}, Lcom/cmcm/orion/picks/impl/d;->e(Lcom/cmcm/orion/picks/impl/d;)I

    move-result v2

    iget-object v3, p0, Lcom/cmcm/orion/picks/impl/d$5;->a:Lcom/cmcm/orion/picks/impl/d;

    invoke-static {v3}, Lcom/cmcm/orion/picks/impl/d;->f(Lcom/cmcm/orion/picks/impl/d;)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/cmcm/orion/picks/impl/g;->a(Lcom/cmcm/orion/picks/impl/g$a;IJ)V

    .line 452
    invoke-static {}, Lcom/cmcm/orion/picks/impl/d;->h()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStateInUiThread: seekTo = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/d$5;->a:Lcom/cmcm/orion/picks/impl/d;

    invoke-static {v1}, Lcom/cmcm/orion/picks/impl/d;->f(Lcom/cmcm/orion/picks/impl/d;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 453
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d$5;->a:Lcom/cmcm/orion/picks/impl/d;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/d;->h(Lcom/cmcm/orion/picks/impl/d;)Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/d$5;->a:Lcom/cmcm/orion/picks/impl/d;

    invoke-static {v1}, Lcom/cmcm/orion/picks/impl/d;->f(Lcom/cmcm/orion/picks/impl/d;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->c(I)V

    .line 454
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d$5;->a:Lcom/cmcm/orion/picks/impl/d;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/d;->i(Lcom/cmcm/orion/picks/impl/d;)Z

    .line 456
    :cond_0
    return-void
.end method
