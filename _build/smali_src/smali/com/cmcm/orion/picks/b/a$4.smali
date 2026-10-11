.class Lcom/cmcm/orion/picks/b/a$4;
.super Ljava/lang/Object;
.source "BrandVideoCardAd.java"

# interfaces
.implements Lcom/cmcm/orion/picks/impl/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/picks/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/cmcm/orion/picks/a/a/a;

.field final synthetic c:Lcom/cmcm/orion/picks/b/a;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/b/a;Ljava/util/List;Lcom/cmcm/orion/picks/a/a/a;)V
    .locals 0

    .prologue
    .line 512
    iput-object p1, p0, Lcom/cmcm/orion/picks/b/a$4;->c:Lcom/cmcm/orion/picks/b/a;

    iput-object p2, p0, Lcom/cmcm/orion/picks/b/a$4;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/cmcm/orion/picks/b/a$4;->b:Lcom/cmcm/orion/picks/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cmcm/orion/adsdk/d;)V
    .locals 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$4;->c:Lcom/cmcm/orion/picks/b/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/picks/b/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/orion/utils/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    invoke-static {}, Lcom/cmcm/orion/picks/b/a;->o()Ljava/lang/String;

    .line 561
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$4;->c:Lcom/cmcm/orion/picks/b/a;

    iget-object v1, p0, Lcom/cmcm/orion/picks/b/a$4;->b:Lcom/cmcm/orion/picks/a/a/a;

    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/b/a;->b(Lcom/cmcm/orion/picks/b/a;Lcom/cmcm/orion/picks/a/a/a;)V

    .line 563
    :cond_0
    sget-object v0, Lcom/cmcm/orion/picks/b/a$9;->a:[I

    iget-object v1, p0, Lcom/cmcm/orion/picks/b/a$4;->c:Lcom/cmcm/orion/picks/b/a;

    invoke-static {v1}, Lcom/cmcm/orion/picks/b/a;->f(Lcom/cmcm/orion/picks/b/a;)Lcom/cmcm/orion/picks/b/a$e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmcm/orion/picks/b/a$e;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 590
    :goto_0
    return-void

    .line 565
    :pswitch_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$4;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 566
    invoke-static {}, Lcom/cmcm/orion/picks/b/a;->o()Ljava/lang/String;

    .line 567
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$4;->c:Lcom/cmcm/orion/picks/b/a;

    sget-object v1, Lcom/cmcm/orion/picks/b/a$f;->g:Lcom/cmcm/orion/picks/b/a$f;

    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/picks/b/a;Lcom/cmcm/orion/picks/b/a$f;)Lcom/cmcm/orion/picks/b/a$f;

    .line 568
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$4;->c:Lcom/cmcm/orion/picks/b/a;

    invoke-virtual {p1}, Lcom/cmcm/orion/adsdk/d;->a()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/picks/b/a;I)V

    goto :goto_0

    .line 570
    :cond_1
    invoke-static {}, Lcom/cmcm/orion/picks/b/a;->o()Ljava/lang/String;

    .line 585
    :cond_2
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$4;->c:Lcom/cmcm/orion/picks/b/a;

    iget-object v1, p0, Lcom/cmcm/orion/picks/b/a$4;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/picks/b/a;Ljava/util/List;)V

    goto :goto_0

    .line 577
    :pswitch_1
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$4;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 578
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$4;->c:Lcom/cmcm/orion/picks/b/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/b/a;->e(Lcom/cmcm/orion/picks/b/a;)I

    move-result v0

    if-lez v0, :cond_3

    .line 579
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$4;->c:Lcom/cmcm/orion/picks/b/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/b/a;->i(Lcom/cmcm/orion/picks/b/a;)V

    goto :goto_0

    .line 581
    :cond_3
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$4;->c:Lcom/cmcm/orion/picks/b/a;

    invoke-virtual {p1}, Lcom/cmcm/orion/adsdk/d;->a()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/picks/b/a;I)V

    goto :goto_0

    .line 563
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ljava/util/HashMap;Lcom/cmcm/orion/picks/impl/h;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/cmcm/orion/picks/impl/h;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 515
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$4;->c:Lcom/cmcm/orion/picks/b/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/b/a;->d(Lcom/cmcm/orion/picks/b/a;)I

    .line 516
    invoke-static {}, Lcom/cmcm/orion/picks/b/a;->o()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSuccess: already loaded "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cmcm/orion/picks/b/a$4;->c:Lcom/cmcm/orion/picks/b/a;

    invoke-static {v1}, Lcom/cmcm/orion/picks/b/a;->e(Lcom/cmcm/orion/picks/b/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ad; remain "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/orion/picks/b/a$4;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    sget-object v0, Lcom/cmcm/orion/picks/b/a$9;->a:[I

    iget-object v1, p0, Lcom/cmcm/orion/picks/b/a$4;->c:Lcom/cmcm/orion/picks/b/a;

    invoke-static {v1}, Lcom/cmcm/orion/picks/b/a;->f(Lcom/cmcm/orion/picks/b/a;)Lcom/cmcm/orion/picks/b/a$e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmcm/orion/picks/b/a$e;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 555
    :goto_0
    return-void

    .line 520
    :pswitch_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$4;->c:Lcom/cmcm/orion/picks/b/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/b/a;->g(Lcom/cmcm/orion/picks/b/a;)Lcom/cmcm/orion/picks/b/a$a;

    move-result-object v2

    .line 521
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$4;->c:Lcom/cmcm/orion/picks/b/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/picks/b/a;)Landroid/content/Context;

    move-result-object v4

    iget-object v1, p0, Lcom/cmcm/orion/picks/b/a$4;->c:Lcom/cmcm/orion/picks/b/a;

    iget-object v3, p0, Lcom/cmcm/orion/picks/b/a$4;->b:Lcom/cmcm/orion/picks/a/a/a;

    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$4;->c:Lcom/cmcm/orion/picks/b/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/b/a;->h(Lcom/cmcm/orion/picks/b/a;)Lcom/cmcm/orion/picks/impl/f;

    move-result-object v5

    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$4;->c:Lcom/cmcm/orion/picks/b/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/b/a;->c(Lcom/cmcm/orion/picks/b/a;)Ljava/lang/String;

    move-result-object v6

    .line 1026
    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move-object v0, v7

    .line 523
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/cmcm/orion/picks/b/a$4;->c:Lcom/cmcm/orion/picks/b/a;

    invoke-static {v1, v0}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/picks/b/a;Lcom/cmcm/orion/picks/impl/b;)Lcom/cmcm/orion/picks/impl/b;

    .line 524
    iget-object v1, p0, Lcom/cmcm/orion/picks/b/a$4;->c:Lcom/cmcm/orion/picks/b/a;

    invoke-static {v1, p2}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/picks/b/a;Lcom/cmcm/orion/picks/impl/h;)Lcom/cmcm/orion/picks/impl/h;

    .line 525
    if-nez v0, :cond_4

    .line 526
    invoke-static {}, Lcom/cmcm/orion/picks/b/a;->o()Ljava/lang/String;

    .line 527
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$4;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 528
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$4;->c:Lcom/cmcm/orion/picks/b/a;

    const/16 v1, 0x7d

    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/picks/b/a;I)V

    goto :goto_0

    .line 1031
    :cond_2
    invoke-virtual {v3}, Lcom/cmcm/orion/picks/a/a/a;->t()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    move-object v0, v7

    goto :goto_1

    .line 1033
    :pswitch_1
    new-instance v0, Lcom/cmcm/orion/picks/impl/d;

    invoke-direct {v0, v4, v5}, Lcom/cmcm/orion/picks/impl/d;-><init>(Landroid/content/Context;Lcom/cmcm/orion/picks/impl/f;)V

    .line 1034
    invoke-virtual {v0, v2}, Lcom/cmcm/orion/picks/impl/d;->a(Lcom/cmcm/orion/picks/b/a$a;)V

    .line 1035
    invoke-virtual {v1}, Lcom/cmcm/orion/picks/b/a;->l()Ljava/lang/String;

    move-result-object v2

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/cmcm/orion/picks/impl/d;->a(Lcom/cmcm/orion/picks/b/a;Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/a;Ljava/util/HashMap;Lcom/cmcm/orion/picks/impl/h;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v0, v7

    goto :goto_1

    .line 1040
    :pswitch_2
    new-instance v0, Lcom/cmcm/orion/picks/impl/c;

    invoke-direct {v0, v4, v5}, Lcom/cmcm/orion/picks/impl/c;-><init>(Landroid/content/Context;Lcom/cmcm/orion/picks/impl/f;)V

    .line 1041
    invoke-virtual {v0, v2}, Lcom/cmcm/orion/picks/impl/c;->a(Lcom/cmcm/orion/picks/b/a$a;)V

    .line 1042
    invoke-virtual {v1}, Lcom/cmcm/orion/picks/b/a;->l()Ljava/lang/String;

    move-result-object v2

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/cmcm/orion/picks/impl/c;->a(Lcom/cmcm/orion/picks/b/a;Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/a;Ljava/util/HashMap;Lcom/cmcm/orion/picks/impl/h;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v0, v7

    goto :goto_1

    .line 530
    :cond_3
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$4;->c:Lcom/cmcm/orion/picks/b/a;

    iget-object v1, p0, Lcom/cmcm/orion/picks/b/a$4;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/picks/b/a;Ljava/util/List;)V

    goto/16 :goto_0

    .line 533
    :cond_4
    iget-object v1, p0, Lcom/cmcm/orion/picks/b/a$4;->c:Lcom/cmcm/orion/picks/b/a;

    sget-object v2, Lcom/cmcm/orion/picks/b/a$f;->e:Lcom/cmcm/orion/picks/b/a$f;

    invoke-static {v1, v2}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/picks/b/a;Lcom/cmcm/orion/picks/b/a$f;)Lcom/cmcm/orion/picks/b/a$f;

    .line 534
    iget-object v1, p0, Lcom/cmcm/orion/picks/b/a$4;->c:Lcom/cmcm/orion/picks/b/a;

    iget-object v2, p0, Lcom/cmcm/orion/picks/b/a$4;->b:Lcom/cmcm/orion/picks/a/a/a;

    invoke-static {v1, v2}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/picks/b/a;Lcom/cmcm/orion/picks/a/a/a;)Lcom/cmcm/orion/picks/a/a/a;

    .line 536
    iget-object v1, p0, Lcom/cmcm/orion/picks/b/a$4;->c:Lcom/cmcm/orion/picks/b/a;

    iget-object v2, p0, Lcom/cmcm/orion/picks/b/a$4;->b:Lcom/cmcm/orion/picks/a/a/a;

    invoke-virtual {v2}, Lcom/cmcm/orion/picks/a/a/a;->t()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/picks/b/a;Landroid/view/View;I)V

    goto/16 :goto_0

    .line 542
    :pswitch_3
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$4;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 543
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$4;->c:Lcom/cmcm/orion/picks/b/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/b/a;->i(Lcom/cmcm/orion/picks/b/a;)V

    goto/16 :goto_0

    .line 546
    :cond_5
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$4;->c:Lcom/cmcm/orion/picks/b/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/b/a;->e(Lcom/cmcm/orion/picks/b/a;)I

    move-result v0

    iget-object v1, p0, Lcom/cmcm/orion/picks/b/a$4;->c:Lcom/cmcm/orion/picks/b/a;

    invoke-static {v1}, Lcom/cmcm/orion/picks/b/a;->j(Lcom/cmcm/orion/picks/b/a;)I

    move-result v1

    if-lt v0, v1, :cond_6

    .line 547
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$4;->c:Lcom/cmcm/orion/picks/b/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/b/a;->i(Lcom/cmcm/orion/picks/b/a;)V

    goto/16 :goto_0

    .line 550
    :cond_6
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$4;->c:Lcom/cmcm/orion/picks/b/a;

    iget-object v1, p0, Lcom/cmcm/orion/picks/b/a$4;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/picks/b/a;Ljava/util/List;)V

    goto/16 :goto_0

    .line 518
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1031
    :pswitch_data_1
    .packed-switch 0xc35c
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
