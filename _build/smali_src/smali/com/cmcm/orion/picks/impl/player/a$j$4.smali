.class final Lcom/cmcm/orion/picks/impl/player/a$j$4;
.super Ljava/lang/Object;
.source "Mp4Player.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/orion/picks/impl/player/a$j;->a(Landroid/view/Surface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/Surface;

.field final synthetic b:Lcom/cmcm/orion/picks/impl/player/a$j;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/impl/player/a$j;Landroid/view/Surface;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/player/a$j$4;->b:Lcom/cmcm/orion/picks/impl/player/a$j;

    iput-object p2, p0, Lcom/cmcm/orion/picks/impl/player/a$j$4;->a:Landroid/view/Surface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$j$4;->b:Lcom/cmcm/orion/picks/impl/player/a$j;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/player/a$j$4;->a:Landroid/view/Surface;

    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/impl/player/a$j;->a(Lcom/cmcm/orion/picks/impl/player/a$j;Landroid/view/Surface;)Landroid/view/Surface;

    .line 265
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$j$4;->b:Lcom/cmcm/orion/picks/impl/player/a$j;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a$j;->d(Lcom/cmcm/orion/picks/impl/player/a$j;)Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$j$4;->b:Lcom/cmcm/orion/picks/impl/player/a$j;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/impl/player/a$j;->a(Lcom/cmcm/orion/picks/impl/player/a$j;I)V

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$j$4;->b:Lcom/cmcm/orion/picks/impl/player/a$j;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/player/a$j;->b()V

    goto :goto_0
.end method
