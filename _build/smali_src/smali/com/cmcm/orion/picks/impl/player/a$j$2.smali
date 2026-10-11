.class final Lcom/cmcm/orion/picks/impl/player/a$j$2;
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
.field final synthetic a:I

.field final synthetic b:Lcom/cmcm/orion/picks/impl/player/a$j;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/impl/player/a$j;I)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/player/a$j$2;->b:Lcom/cmcm/orion/picks/impl/player/a$j;

    iput p2, p0, Lcom/cmcm/orion/picks/impl/player/a$j$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$j$2;->b:Lcom/cmcm/orion/picks/impl/player/a$j;

    iget v1, p0, Lcom/cmcm/orion/picks/impl/player/a$j$2;->a:I

    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/impl/player/a$j;->b(Lcom/cmcm/orion/picks/impl/player/a$j;I)I

    .line 242
    return-void
.end method
