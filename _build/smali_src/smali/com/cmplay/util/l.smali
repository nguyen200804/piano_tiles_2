.class public Lcom/cmplay/util/l;
.super Ljava/lang/Object;
.source "JumpAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/util/l$a;
    }
.end annotation


# instance fields
.field private a:Landroid/animation/ValueAnimator;

.field private b:Landroid/view/View;

.field private c:I

.field private d:I

.field private e:I

.field private f:F

.field private g:I


# direct methods
.method public constructor <init>(Landroid/view/View;IIIF)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/cmplay/util/l;->g:I

    .line 27
    iput-object p1, p0, Lcom/cmplay/util/l;->b:Landroid/view/View;

    .line 28
    mul-int v0, p4, p3

    iput v0, p0, Lcom/cmplay/util/l;->d:I

    .line 29
    iput p2, p0, Lcom/cmplay/util/l;->e:I

    .line 30
    iput p5, p0, Lcom/cmplay/util/l;->f:F

    .line 31
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 46
    iget-object v0, p0, Lcom/cmplay/util/l;->a:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 50
    :cond_0
    const/16 v0, 0x14

    .line 51
    iput v0, p0, Lcom/cmplay/util/l;->c:I

    .line 52
    const/4 v1, 0x3

    new-array v1, v1, [I

    aput v2, v1, v2

    aput v0, v1, v4

    const/4 v0, 0x2

    aput v2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/util/l;->a:Landroid/animation/ValueAnimator;

    .line 53
    iget-object v0, p0, Lcom/cmplay/util/l;->a:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/cmplay/util/l;->e:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget v1, p0, Lcom/cmplay/util/l;->d:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 56
    iget-object v0, p0, Lcom/cmplay/util/l;->a:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/cmplay/util/l$a;

    iget v2, p0, Lcom/cmplay/util/l;->f:F

    invoke-direct {v1, p0, v2}, Lcom/cmplay/util/l$a;-><init>(Lcom/cmplay/util/l;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 57
    iget-object v0, p0, Lcom/cmplay/util/l;->a:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 58
    iget-object v0, p0, Lcom/cmplay/util/l;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 59
    iget-object v0, p0, Lcom/cmplay/util/l;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 60
    iget-object v0, p0, Lcom/cmplay/util/l;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 67
    iget-object v0, p0, Lcom/cmplay/util/l;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 68
    const/4 v2, -0x1

    iget v3, p0, Lcom/cmplay/util/l;->g:I

    if-ne v2, v3, :cond_0

    .line 69
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v2, p0, Lcom/cmplay/util/l;->g:I

    .line 71
    :cond_0
    iget v2, p0, Lcom/cmplay/util/l;->g:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 72
    iget-object v1, p0, Lcom/cmplay/util/l;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    return-void
.end method
