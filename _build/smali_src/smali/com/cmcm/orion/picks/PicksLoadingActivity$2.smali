.class final Lcom/cmcm/orion/picks/PicksLoadingActivity$2;
.super Ljava/lang/Object;
.source "PicksLoadingActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/orion/picks/PicksLoadingActivity;->a(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/PicksLoadingActivity;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/PicksLoadingActivity;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/cmcm/orion/picks/PicksLoadingActivity$2;->a:Lcom/cmcm/orion/picks/PicksLoadingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 208
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/cmcm/orion/picks/PicksLoadingActivity;->b(I)I

    .line 209
    invoke-static {}, Lcom/cmcm/orion/picks/PicksLoadingActivity;->c()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "attrAnimation status ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cmcm/orion/picks/PicksLoadingActivity;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    invoke-static {}, Lcom/cmcm/orion/picks/PicksLoadingActivity;->b()Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    invoke-static {}, Lcom/cmcm/orion/picks/PicksLoadingActivity;->b()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-static {}, Lcom/cmcm/orion/picks/PicksLoadingActivity;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 213
    :cond_0
    return-void
.end method
