.class Lcom/duapps/ad/h$5;
.super Ljava/lang/Object;
.source "InterstitialAd.java"

# interfaces
.implements Lcom/duapps/ad/base/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duapps/ad/h;->a(Lcom/duapps/ad/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/duapps/ad/h;


# direct methods
.method constructor <init>(Lcom/duapps/ad/h;ILandroid/view/View;)V
    .locals 0

    .prologue
    .line 485
    iput-object p1, p0, Lcom/duapps/ad/h$5;->c:Lcom/duapps/ad/h;

    iput p2, p0, Lcom/duapps/ad/h$5;->a:I

    iput-object p3, p0, Lcom/duapps/ad/h$5;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 489
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 494
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 498
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/h$5;->c:Lcom/duapps/ad/h;

    invoke-static {v0}, Lcom/duapps/ad/h;->c(Lcom/duapps/ad/h;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/h$5;->c:Lcom/duapps/ad/h;

    invoke-static {v0}, Lcom/duapps/ad/h;->f(Lcom/duapps/ad/h;)Lcom/duapps/ad/h$a;

    move-result-object v0

    sget-object v1, Lcom/duapps/ad/h$a;->b:Lcom/duapps/ad/h$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/h$5;->c:Lcom/duapps/ad/h;

    .line 505
    invoke-static {v0}, Lcom/duapps/ad/h;->c(Lcom/duapps/ad/h;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 506
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/duapps/ad/h$5;->a:I

    iget v2, p0, Lcom/duapps/ad/h$5;->a:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 507
    iget-object v1, p0, Lcom/duapps/ad/h$5;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 508
    iget-object v0, p0, Lcom/duapps/ad/h$5;->b:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/duapps/ad/h$5;->c:Lcom/duapps/ad/h;

    invoke-static {v2}, Lcom/duapps/ad/h;->c(Lcom/duapps/ad/h;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/duapps/ad/h$5;->c:Lcom/duapps/ad/h;

    invoke-static {v3}, Lcom/duapps/ad/h;->e(Lcom/duapps/ad/h;)I

    move-result v3

    invoke-static {p3, v3}, Lcom/duapps/ad/base/a/a;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 510
    :catch_0
    move-exception v0

    .line 511
    invoke-static {}, Lcom/duapps/ad/h;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Something wrong happened while icon onLoadingComplete, message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
