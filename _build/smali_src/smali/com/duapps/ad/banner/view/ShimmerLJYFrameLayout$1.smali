.class Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$1;
.super Ljava/lang/Object;
.source "ShimmerLJYFrameLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->d()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;


# direct methods
.method constructor <init>(Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;)V
    .locals 0

    .prologue
    .line 682
    iput-object p1, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$1;->a:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 685
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$1;->a:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;

    invoke-static {v0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->a(Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;)Z

    move-result v0

    .line 686
    iget-object v1, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$1;->a:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;

    invoke-static {v1}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->b(Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;)V

    .line 687
    iget-object v1, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$1;->a:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;

    invoke-static {v1}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->c(Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$1;->a:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;

    invoke-virtual {v0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->b()V

    .line 690
    :cond_1
    return-void
.end method
