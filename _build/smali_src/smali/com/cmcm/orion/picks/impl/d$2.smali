.class final Lcom/cmcm/orion/picks/impl/d$2;
.super Ljava/lang/Object;
.source "BrandVCViewP.java"

# interfaces
.implements Lcom/cmcm/orion/picks/impl/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/picks/impl/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/impl/d;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/impl/d;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/d$2;->a:Lcom/cmcm/orion/picks/impl/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d$2;->a:Lcom/cmcm/orion/picks/impl/d;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/i;->a(Landroid/content/Context;)F

    move-result v0

    .line 128
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/d$2;->a:Lcom/cmcm/orion/picks/impl/d;

    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cmcm/orion/picks/impl/i;->b(Landroid/content/Context;)F

    move-result v1

    .line 129
    div-float/2addr v0, v1

    .line 130
    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d$2;->a:Lcom/cmcm/orion/picks/impl/d;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/d;->g()V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d$2;->a:Lcom/cmcm/orion/picks/impl/d;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/d;->b_()V

    goto :goto_0
.end method
