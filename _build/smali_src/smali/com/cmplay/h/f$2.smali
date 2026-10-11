.class Lcom/cmplay/h/f$2;
.super Ljava/lang/Object;
.source "ShareHelper.java"

# interfaces
.implements Lcom/cmplay/util/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/h/f;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/h/f;


# direct methods
.method constructor <init>(Lcom/cmplay/h/f;)V
    .locals 0

    .prologue
    .line 568
    iput-object p1, p0, Lcom/cmplay/h/f$2;->a:Lcom/cmplay/h/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 571
    const-string v0, "key_share_h5_url"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 572
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 573
    const-string v0, "key_share_bannner_url"

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 574
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 575
    const-string v0, "http://board.cmcm.com/beta/tmp/001-1.png"

    .line 577
    :cond_0
    const-string v2, "Presale_share"

    invoke-static {v2}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 582
    const/16 v3, 0x13

    .line 583
    new-instance v4, Lcom/cmplay/h/e;

    invoke-direct {v4}, Lcom/cmplay/h/e;-><init>()V

    .line 584
    invoke-virtual {v4, v2}, Lcom/cmplay/h/e;->b(Ljava/lang/String;)V

    .line 585
    invoke-virtual {v4, v1}, Lcom/cmplay/h/e;->a(Ljava/lang/String;)V

    .line 586
    invoke-virtual {v4, v0}, Lcom/cmplay/h/e;->e(Ljava/lang/String;)V

    .line 587
    invoke-virtual {v4, v3}, Lcom/cmplay/h/e;->c(I)V

    .line 588
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    const v1, 0x7f050026

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/cmplay/h/e;->d(Ljava/lang/String;)V

    .line 591
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 592
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->isFacebookInstalled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 593
    invoke-virtual {v4, v5}, Lcom/cmplay/h/e;->b(I)V

    .line 594
    iget-object v1, p0, Lcom/cmplay/h/f$2;->a:Lcom/cmplay/h/f;

    invoke-virtual {v1, v0, v4, v5}, Lcom/cmplay/h/f;->a(Landroid/app/Activity;Lcom/cmplay/h/e;I)Z

    .line 602
    :cond_1
    :goto_0
    return-void

    .line 597
    :cond_2
    const/4 v1, 0x5

    invoke-virtual {v4, v1}, Lcom/cmplay/h/e;->b(I)V

    .line 598
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Lcom/cmplay/h/e;->c(Ljava/lang/String;)V

    .line 599
    iget-object v1, p0, Lcom/cmplay/h/f$2;->a:Lcom/cmplay/h/f;

    invoke-virtual {v1, v0, v4}, Lcom/cmplay/h/f;->e(Landroid/app/Activity;Lcom/cmplay/h/e;)V

    goto :goto_0
.end method
