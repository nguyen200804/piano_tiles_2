.class Lcom/cmplay/tile2/ui/view/a$1;
.super Ljava/lang/Object;
.source "ADLoadingTipsView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/tile2/ui/view/a;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/tile2/ui/view/a;


# direct methods
.method constructor <init>(Lcom/cmplay/tile2/ui/view/a;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/cmplay/tile2/ui/view/a$1;->a:Lcom/cmplay/tile2/ui/view/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/a$1;->a:Lcom/cmplay/tile2/ui/view/a;

    invoke-static {v0}, Lcom/cmplay/tile2/ui/view/a;->a(Lcom/cmplay/tile2/ui/view/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/a$1;->a:Lcom/cmplay/tile2/ui/view/a;

    invoke-static {v0}, Lcom/cmplay/tile2/ui/view/a;->b(Lcom/cmplay/tile2/ui/view/a;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 87
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 92
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 81
    return-void
.end method
