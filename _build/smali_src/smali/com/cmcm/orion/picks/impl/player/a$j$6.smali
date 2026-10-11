.class final Lcom/cmcm/orion/picks/impl/player/a$j$6;
.super Ljava/lang/Object;
.source "Mp4Player.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/orion/picks/impl/player/a$j;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/impl/player/a$j;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/impl/player/a$j;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/player/a$j$6;->a:Lcom/cmcm/orion/picks/impl/player/a$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$j$6;->a:Lcom/cmcm/orion/picks/impl/player/a$j;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/player/a$j$6;->a:Lcom/cmcm/orion/picks/impl/player/a$j;

    invoke-static {v1}, Lcom/cmcm/orion/picks/impl/player/a$j;->b(Lcom/cmcm/orion/picks/impl/player/a$j;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/impl/player/a$j;->d(Lcom/cmcm/orion/picks/impl/player/a$j;I)Lcom/cmcm/orion/picks/impl/player/a$i;

    move-result-object v0

    .line 306
    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/player/a$i;->b()Z

    .line 309
    :cond_0
    return-void
.end method
