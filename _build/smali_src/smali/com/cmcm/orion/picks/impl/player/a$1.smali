.class final Lcom/cmcm/orion/picks/impl/player/a$1;
.super Ljava/lang/Object;
.source "Mp4Player.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/picks/impl/player/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/cmcm/orion/picks/impl/player/a;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/impl/player/a;I)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/player/a$1;->b:Lcom/cmcm/orion/picks/impl/player/a;

    iput p2, p0, Lcom/cmcm/orion/picks/impl/player/a$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$1;->b:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a;->a(Lcom/cmcm/orion/picks/impl/player/a;)Lcom/cmcm/orion/picks/impl/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$1;->b:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a;->a(Lcom/cmcm/orion/picks/impl/player/a;)Lcom/cmcm/orion/picks/impl/a$a;

    move-result-object v0

    iget v1, p0, Lcom/cmcm/orion/picks/impl/player/a$1;->a:I

    invoke-interface {v0, v1}, Lcom/cmcm/orion/picks/impl/a$a;->a(I)V

    .line 122
    :cond_0
    return-void
.end method
