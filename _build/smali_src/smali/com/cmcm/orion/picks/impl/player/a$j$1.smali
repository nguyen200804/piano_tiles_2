.class final Lcom/cmcm/orion/picks/impl/player/a$j$1;
.super Ljava/lang/Object;
.source "Mp4Player.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/picks/impl/player/a$j;
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
    .line 210
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/player/a$j$1;->a:Lcom/cmcm/orion/picks/impl/player/a$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$j$1;->a:Lcom/cmcm/orion/picks/impl/player/a$j;

    iget-object v0, v0, Lcom/cmcm/orion/picks/impl/player/a$j;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a;->c(Lcom/cmcm/orion/picks/impl/player/a;)I

    move-result v0

    .line 214
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/player/a$j$1;->a:Lcom/cmcm/orion/picks/impl/player/a$j;

    iget-object v1, v1, Lcom/cmcm/orion/picks/impl/player/a$j;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/player/a;->c()I

    move-result v1

    .line 215
    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/player/a$j$1;->a:Lcom/cmcm/orion/picks/impl/player/a$j;

    iget-object v2, v2, Lcom/cmcm/orion/picks/impl/player/a$j;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v2, v0, v1}, Lcom/cmcm/orion/picks/impl/player/a;->a(Lcom/cmcm/orion/picks/impl/player/a;II)V

    .line 217
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$j$1;->a:Lcom/cmcm/orion/picks/impl/player/a$j;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a$j;->b(Lcom/cmcm/orion/picks/impl/player/a$j;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 218
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$j$1;->a:Lcom/cmcm/orion/picks/impl/player/a$j;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a$j;->c(Lcom/cmcm/orion/picks/impl/player/a$j;)Lcom/cmcm/orion/picks/impl/player/a$l;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/cmcm/orion/picks/impl/player/a$l;->a(Lcom/cmcm/orion/picks/impl/player/a$l;Ljava/lang/Runnable;)V

    .line 222
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$j$1;->a:Lcom/cmcm/orion/picks/impl/player/a$j;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a$j;->c(Lcom/cmcm/orion/picks/impl/player/a$j;)Lcom/cmcm/orion/picks/impl/player/a$l;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/cmcm/orion/picks/impl/player/a$l;->b(Lcom/cmcm/orion/picks/impl/player/a$l;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
