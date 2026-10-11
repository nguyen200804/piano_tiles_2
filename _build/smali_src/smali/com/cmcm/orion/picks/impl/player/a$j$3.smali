.class final Lcom/cmcm/orion/picks/impl/player/a$j$3;
.super Ljava/lang/Object;
.source "Mp4Player.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/orion/picks/impl/player/a$j;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/cmcm/orion/picks/impl/player/a$j;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/impl/player/a$j;I)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/player/a$j$3;->b:Lcom/cmcm/orion/picks/impl/player/a$j;

    iput p2, p0, Lcom/cmcm/orion/picks/impl/player/a$j$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$j$3;->b:Lcom/cmcm/orion/picks/impl/player/a$j;

    iget v1, p0, Lcom/cmcm/orion/picks/impl/player/a$j$3;->a:I

    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/impl/player/a$j;->c(Lcom/cmcm/orion/picks/impl/player/a$j;I)I

    .line 255
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$j$3;->b:Lcom/cmcm/orion/picks/impl/player/a$j;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/player/a$j;->b()V

    .line 256
    return-void
.end method
