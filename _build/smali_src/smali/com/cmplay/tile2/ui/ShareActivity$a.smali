.class Lcom/cmplay/tile2/ui/ShareActivity$a;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/tile2/ui/ShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/tile2/ui/ShareActivity;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/cmplay/tile2/ui/ShareActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 467
    iput-object p1, p0, Lcom/cmplay/tile2/ui/ShareActivity$a;->a:Lcom/cmplay/tile2/ui/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 468
    iput-object p2, p0, Lcom/cmplay/tile2/ui/ShareActivity$a;->b:Landroid/view/View;

    .line 469
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 499
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 478
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity$a;->b:Landroid/view/View;

    if-nez v0, :cond_1

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity$a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 486
    :sswitch_0
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity$a;->a:Lcom/cmplay/tile2/ui/ShareActivity;

    invoke-static {v0}, Lcom/cmplay/tile2/ui/ShareActivity;->e(Lcom/cmplay/tile2/ui/ShareActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity$a;->a:Lcom/cmplay/tile2/ui/ShareActivity;

    iget-object v1, p0, Lcom/cmplay/tile2/ui/ShareActivity$a;->a:Lcom/cmplay/tile2/ui/ShareActivity;

    invoke-static {v1}, Lcom/cmplay/tile2/ui/ShareActivity;->b(Lcom/cmplay/tile2/ui/ShareActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/tile2/ui/ShareActivity;->a(Lcom/cmplay/tile2/ui/ShareActivity;Landroid/view/View;)V

    goto :goto_0

    .line 481
    :sswitch_1
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity$a;->a:Lcom/cmplay/tile2/ui/ShareActivity;

    invoke-static {v0}, Lcom/cmplay/tile2/ui/ShareActivity;->e(Lcom/cmplay/tile2/ui/ShareActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity$a;->a:Lcom/cmplay/tile2/ui/ShareActivity;

    iget-object v1, p0, Lcom/cmplay/tile2/ui/ShareActivity$a;->a:Lcom/cmplay/tile2/ui/ShareActivity;

    invoke-static {v1}, Lcom/cmplay/tile2/ui/ShareActivity;->a(Lcom/cmplay/tile2/ui/ShareActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/tile2/ui/ShareActivity;->a(Lcom/cmplay/tile2/ui/ShareActivity;Landroid/view/View;)V

    goto :goto_0

    .line 491
    :sswitch_2
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity$a;->a:Lcom/cmplay/tile2/ui/ShareActivity;

    iget-object v1, p0, Lcom/cmplay/tile2/ui/ShareActivity$a;->a:Lcom/cmplay/tile2/ui/ShareActivity;

    invoke-static {v1}, Lcom/cmplay/tile2/ui/ShareActivity;->f(Lcom/cmplay/tile2/ui/ShareActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/tile2/ui/ShareActivity;->a(Lcom/cmplay/tile2/ui/ShareActivity;Landroid/view/View;)V

    goto :goto_0

    .line 479
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080040 -> :sswitch_0
        0x7f080041 -> :sswitch_1
        0x7f08004c -> :sswitch_2
    .end sparse-switch
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 504
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 474
    return-void
.end method
