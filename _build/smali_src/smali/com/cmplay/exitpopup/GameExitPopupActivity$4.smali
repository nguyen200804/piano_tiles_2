.class Lcom/cmplay/exitpopup/GameExitPopupActivity$4;
.super Ljava/lang/Object;
.source "GameExitPopupActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/exitpopup/GameExitPopupActivity;->a(Landroid/view/View;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/cmplay/exitpopup/GameExitPopupActivity;


# direct methods
.method constructor <init>(Lcom/cmplay/exitpopup/GameExitPopupActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity$4;->b:Lcom/cmplay/exitpopup/GameExitPopupActivity;

    iput-object p2, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity$4;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 286
    const-string v0, "zzb_pop_exit"

    const-string v1, "\u52a8\u753b\u7ed3\u675f"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity$4;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity$4;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity$4;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 291
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 282
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 277
    const-string v0, "zzb_pop_exit"

    const-string v1, "\u52a8\u753b\u5f00\u59cb"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    return-void
.end method
