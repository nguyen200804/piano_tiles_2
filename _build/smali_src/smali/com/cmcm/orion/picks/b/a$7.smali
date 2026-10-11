.class Lcom/cmcm/orion/picks/b/a$7;
.super Ljava/lang/Object;
.source "BrandVideoCardAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/picks/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/b/a;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/b/a;)V
    .locals 0

    .prologue
    .line 714
    iput-object p1, p0, Lcom/cmcm/orion/picks/b/a$7;->a:Lcom/cmcm/orion/picks/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 717
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$7;->a:Lcom/cmcm/orion/picks/b/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/b/a;->n(Lcom/cmcm/orion/picks/b/a;)Lcom/cmcm/orion/picks/b/a$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$7;->a:Lcom/cmcm/orion/picks/b/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/b/a;->n(Lcom/cmcm/orion/picks/b/a;)Lcom/cmcm/orion/picks/b/a$c;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/orion/picks/b/a$7;->a:Lcom/cmcm/orion/picks/b/a;

    invoke-static {v1}, Lcom/cmcm/orion/picks/b/a;->e(Lcom/cmcm/orion/picks/b/a;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/cmcm/orion/picks/b/a$c;->a(I)V

    .line 720
    :cond_0
    return-void
.end method
