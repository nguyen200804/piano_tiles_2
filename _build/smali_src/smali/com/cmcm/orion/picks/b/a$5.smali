.class Lcom/cmcm/orion/picks/b/a$5;
.super Ljava/lang/Object;
.source "BrandVideoCardAd.java"

# interfaces
.implements Lcom/cmcm/orion/picks/b/a$a;


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
    .line 646
    iput-object p1, p0, Lcom/cmcm/orion/picks/b/a$5;->a:Lcom/cmcm/orion/picks/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 649
    invoke-static {}, Lcom/cmcm/orion/picks/b/a;->o()Ljava/lang/String;

    .line 650
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$5;->a:Lcom/cmcm/orion/picks/b/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/b/a;->k(Lcom/cmcm/orion/picks/b/a;)Z

    .line 651
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$5;->a:Lcom/cmcm/orion/picks/b/a;

    sget-object v1, Lcom/cmcm/orion/adsdk/b$a;->M:Lcom/cmcm/orion/adsdk/b$a;

    sget v2, Lcom/cmcm/orion/picks/impl/e;->b:I

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/adsdk/b$a;IJ)V

    .line 652
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$5;->a:Lcom/cmcm/orion/picks/b/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/b/a;->l(Lcom/cmcm/orion/picks/b/a;)Lcom/cmcm/orion/picks/b/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$5;->a:Lcom/cmcm/orion/picks/b/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/b/a;->l(Lcom/cmcm/orion/picks/b/a;)Lcom/cmcm/orion/picks/b/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/cmcm/orion/picks/b/a$a;->a()V

    .line 655
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 668
    invoke-static {}, Lcom/cmcm/orion/picks/b/a;->o()Ljava/lang/String;

    .line 669
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$5;->a:Lcom/cmcm/orion/picks/b/a;

    sget-object v1, Lcom/cmcm/orion/adsdk/b$a;->N:Lcom/cmcm/orion/adsdk/b$a;

    sget v2, Lcom/cmcm/orion/picks/impl/e;->d:I

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/adsdk/b$a;IJ)V

    .line 670
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$5;->a:Lcom/cmcm/orion/picks/b/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/b/a;->l(Lcom/cmcm/orion/picks/b/a;)Lcom/cmcm/orion/picks/b/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$5;->a:Lcom/cmcm/orion/picks/b/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/b/a;->l(Lcom/cmcm/orion/picks/b/a;)Lcom/cmcm/orion/picks/b/a$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cmcm/orion/picks/b/a$a;->a(Ljava/lang/String;)V

    .line 673
    :cond_0
    return-void
.end method

.method public b()V
    .locals 6

    .prologue
    .line 659
    invoke-static {}, Lcom/cmcm/orion/picks/b/a;->o()Ljava/lang/String;

    .line 660
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$5;->a:Lcom/cmcm/orion/picks/b/a;

    sget-object v1, Lcom/cmcm/orion/adsdk/b$a;->P:Lcom/cmcm/orion/adsdk/b$a;

    sget v2, Lcom/cmcm/orion/picks/impl/e;->e:I

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/adsdk/b$a;IJ)V

    .line 661
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$5;->a:Lcom/cmcm/orion/picks/b/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/b/a;->l(Lcom/cmcm/orion/picks/b/a;)Lcom/cmcm/orion/picks/b/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$5;->a:Lcom/cmcm/orion/picks/b/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/b/a;->l(Lcom/cmcm/orion/picks/b/a;)Lcom/cmcm/orion/picks/b/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/cmcm/orion/picks/b/a$a;->b()V

    .line 664
    :cond_0
    return-void
.end method

.method public c()V
    .locals 6

    .prologue
    .line 677
    invoke-static {}, Lcom/cmcm/orion/picks/b/a;->o()Ljava/lang/String;

    .line 678
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$5;->a:Lcom/cmcm/orion/picks/b/a;

    sget-object v1, Lcom/cmcm/orion/adsdk/b$a;->O:Lcom/cmcm/orion/adsdk/b$a;

    sget v2, Lcom/cmcm/orion/picks/impl/e;->h:I

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/adsdk/b$a;IJ)V

    .line 679
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$5;->a:Lcom/cmcm/orion/picks/b/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/b/a;->l(Lcom/cmcm/orion/picks/b/a;)Lcom/cmcm/orion/picks/b/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$5;->a:Lcom/cmcm/orion/picks/b/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/b/a;->l(Lcom/cmcm/orion/picks/b/a;)Lcom/cmcm/orion/picks/b/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/cmcm/orion/picks/b/a$a;->c()V

    .line 682
    :cond_0
    return-void
.end method

.method public d()V
    .locals 6

    .prologue
    .line 686
    invoke-static {}, Lcom/cmcm/orion/picks/b/a;->o()Ljava/lang/String;

    .line 687
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$5;->a:Lcom/cmcm/orion/picks/b/a;

    sget-object v1, Lcom/cmcm/orion/adsdk/b$a;->Q:Lcom/cmcm/orion/adsdk/b$a;

    sget v2, Lcom/cmcm/orion/picks/impl/e;->c:I

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/adsdk/b$a;IJ)V

    .line 688
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$5;->a:Lcom/cmcm/orion/picks/b/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/b/a;->l(Lcom/cmcm/orion/picks/b/a;)Lcom/cmcm/orion/picks/b/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$5;->a:Lcom/cmcm/orion/picks/b/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/b/a;->l(Lcom/cmcm/orion/picks/b/a;)Lcom/cmcm/orion/picks/b/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/cmcm/orion/picks/b/a$a;->d()V

    .line 691
    :cond_0
    return-void
.end method
