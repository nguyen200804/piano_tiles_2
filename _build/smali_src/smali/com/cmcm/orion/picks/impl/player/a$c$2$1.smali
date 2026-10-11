.class final Lcom/cmcm/orion/picks/impl/player/a$c$2$1;
.super Ljava/lang/Object;
.source "Mp4Player.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/orion/picks/impl/player/a$c$2;->onCompletion(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/impl/player/a$c$2;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/impl/player/a$c$2;)V
    .locals 0

    .prologue
    .line 557
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/player/a$c$2$1;->a:Lcom/cmcm/orion/picks/impl/player/a$c$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$c$2$1;->a:Lcom/cmcm/orion/picks/impl/player/a$c$2;

    iget-object v0, v0, Lcom/cmcm/orion/picks/impl/player/a$c$2;->a:Lcom/cmcm/orion/picks/impl/player/a$c;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/impl/player/a$c;->a(I)V

    .line 561
    return-void
.end method
