.class final Lcom/cmcm/orion/picks/impl/player/a$c$1;
.super Ljava/lang/Object;
.source "Mp4Player.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/orion/picks/impl/player/a$c;->a()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/impl/player/a$c;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/impl/player/a$c;)V
    .locals 0

    .prologue
    .line 531
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/player/a$c$1;->a:Lcom/cmcm/orion/picks/impl/player/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 536
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$c$1;->a:Lcom/cmcm/orion/picks/impl/player/a$c;

    iget-object v0, v0, Lcom/cmcm/orion/picks/impl/player/a$c;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a;->d(Lcom/cmcm/orion/picks/impl/player/a;)Lcom/cmcm/orion/picks/impl/player/a$j;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a$j;->c(Lcom/cmcm/orion/picks/impl/player/a$j;)Lcom/cmcm/orion/picks/impl/player/a$l;

    move-result-object v0

    new-instance v1, Lcom/cmcm/orion/picks/impl/player/a$c$1$1;

    invoke-direct {v1, p0}, Lcom/cmcm/orion/picks/impl/player/a$c$1$1;-><init>(Lcom/cmcm/orion/picks/impl/player/a$c$1;)V

    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/impl/player/a$l;->c(Lcom/cmcm/orion/picks/impl/player/a$l;Ljava/lang/Runnable;)V

    .line 544
    :try_start_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$c$1;->a:Lcom/cmcm/orion/picks/impl/player/a$c;

    iget-object v0, v0, Lcom/cmcm/orion/picks/impl/player/a$c;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a;->k(Lcom/cmcm/orion/picks/impl/player/a;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$c$1;->a:Lcom/cmcm/orion/picks/impl/player/a$c;

    iget-object v0, v0, Lcom/cmcm/orion/picks/impl/player/a$c;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a;->k(Lcom/cmcm/orion/picks/impl/player/a;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 547
    :catch_0
    move-exception v0

    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "media player onError: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
