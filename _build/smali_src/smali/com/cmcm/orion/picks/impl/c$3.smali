.class final Lcom/cmcm/orion/picks/impl/c$3;
.super Ljava/lang/Object;
.source "BrandVCViewL.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/picks/impl/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/impl/c;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/impl/c;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/c$3;->a:Lcom/cmcm/orion/picks/impl/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/c$3;->a:Lcom/cmcm/orion/picks/impl/c;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/c;->a(Lcom/cmcm/orion/picks/impl/c;)Lcom/cmcm/orion/picks/b/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/c$3;->a:Lcom/cmcm/orion/picks/impl/c;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/c;->a(Lcom/cmcm/orion/picks/impl/c;)Lcom/cmcm/orion/picks/b/a;

    move-result-object v0

    sget-object v1, Lcom/cmcm/orion/adsdk/b$a;->R:Lcom/cmcm/orion/adsdk/b$a;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/adsdk/b$a;IJ)V

    .line 146
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
