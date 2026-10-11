.class final Lcom/cmcm/orion/picks/impl/player/a$c$2;
.super Ljava/lang/Object;
.source "Mp4Player.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 554
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/player/a$c$2;->a:Lcom/cmcm/orion/picks/impl/player/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 557
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$c$2;->a:Lcom/cmcm/orion/picks/impl/player/a$c;

    iget-object v0, v0, Lcom/cmcm/orion/picks/impl/player/a$c;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a;->d(Lcom/cmcm/orion/picks/impl/player/a;)Lcom/cmcm/orion/picks/impl/player/a$j;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a$j;->c(Lcom/cmcm/orion/picks/impl/player/a$j;)Lcom/cmcm/orion/picks/impl/player/a$l;

    move-result-object v0

    new-instance v1, Lcom/cmcm/orion/picks/impl/player/a$c$2$1;

    invoke-direct {v1, p0}, Lcom/cmcm/orion/picks/impl/player/a$c$2$1;-><init>(Lcom/cmcm/orion/picks/impl/player/a$c$2;)V

    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/impl/player/a$l;->c(Lcom/cmcm/orion/picks/impl/player/a$l;Ljava/lang/Runnable;)V

    .line 563
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$c$2;->a:Lcom/cmcm/orion/picks/impl/player/a$c;

    iget-object v0, v0, Lcom/cmcm/orion/picks/impl/player/a$c;->a:Lcom/cmcm/orion/picks/impl/player/a;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/player/a$c$2;->a:Lcom/cmcm/orion/picks/impl/player/a$c;

    iget-object v1, v1, Lcom/cmcm/orion/picks/impl/player/a$c;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v1}, Lcom/cmcm/orion/picks/impl/player/a;->c(Lcom/cmcm/orion/picks/impl/player/a;)I

    move-result v1

    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/player/a$c$2;->a:Lcom/cmcm/orion/picks/impl/player/a$c;

    iget-object v2, v2, Lcom/cmcm/orion/picks/impl/player/a$c;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v2}, Lcom/cmcm/orion/picks/impl/player/a;->c(Lcom/cmcm/orion/picks/impl/player/a;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/cmcm/orion/picks/impl/player/a;->a(Lcom/cmcm/orion/picks/impl/player/a;II)V

    .line 564
    return-void
.end method
