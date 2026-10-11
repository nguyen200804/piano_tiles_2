.class Lcom/cmplay/tile2/ui/LoveShareActivity$a;
.super Landroid/support/v4/view/PagerAdapter;
.source "LoveShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/tile2/ui/LoveShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/cmplay/tile2/ui/LoveShareActivity;


# direct methods
.method constructor <init>(Lcom/cmplay/tile2/ui/LoveShareActivity;)V
    .locals 2

    .prologue
    .line 494
    iput-object p1, p0, Lcom/cmplay/tile2/ui/LoveShareActivity$a;->b:Lcom/cmplay/tile2/ui/LoveShareActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 501
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity$a;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method a(I)Landroid/widget/EditText;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 529
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity$a;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity$a;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 542
    :goto_0
    return-object v0

    .line 532
    :cond_0
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/cmplay/tile2/ui/LoveShareActivity$a;->b:Lcom/cmplay/tile2/ui/LoveShareActivity;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 533
    iget-object v1, p0, Lcom/cmplay/tile2/ui/LoveShareActivity$a;->b:Lcom/cmplay/tile2/ui/LoveShareActivity;

    invoke-virtual {v1}, Lcom/cmplay/tile2/ui/LoveShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/tile2/ui/LoveShareActivity$a;->b:Lcom/cmplay/tile2/ui/LoveShareActivity;

    iget-object v3, p0, Lcom/cmplay/tile2/ui/LoveShareActivity$a;->b:Lcom/cmplay/tile2/ui/LoveShareActivity;

    invoke-static {v3}, Lcom/cmplay/tile2/ui/LoveShareActivity;->d(Lcom/cmplay/tile2/ui/LoveShareActivity;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/cmplay/tile2/ui/LoveShareActivity;->a(Lcom/cmplay/tile2/ui/LoveShareActivity;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 534
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 535
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 536
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 537
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 538
    invoke-virtual {v0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 539
    iget-object v1, p0, Lcom/cmplay/tile2/ui/LoveShareActivity$a;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 546
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity$a;->b:Lcom/cmplay/tile2/ui/LoveShareActivity;

    invoke-static {v0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->e(Lcom/cmplay/tile2/ui/LoveShareActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 547
    iget-object v1, p0, Lcom/cmplay/tile2/ui/LoveShareActivity$a;->a:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 548
    if-eqz v0, :cond_0

    .line 549
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 551
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 514
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity$a;->a:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 515
    if-eqz v0, :cond_0

    .line 516
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 517
    iget-object v1, p0, Lcom/cmplay/tile2/ui/LoveShareActivity$a;->b:Lcom/cmplay/tile2/ui/LoveShareActivity;

    invoke-static {v1}, Lcom/cmplay/tile2/ui/LoveShareActivity;->b(Lcom/cmplay/tile2/ui/LoveShareActivity;)[Ljava/lang/String;

    move-result-object v1

    aput-object v0, v1, p2

    .line 519
    :cond_0
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 520
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity$a;->b:Lcom/cmplay/tile2/ui/LoveShareActivity;

    invoke-static {v0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->b(Lcom/cmplay/tile2/ui/LoveShareActivity;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 505
    iget-object v0, p0, Lcom/cmplay/tile2/ui/LoveShareActivity$a;->b:Lcom/cmplay/tile2/ui/LoveShareActivity;

    invoke-static {v0}, Lcom/cmplay/tile2/ui/LoveShareActivity;->b(Lcom/cmplay/tile2/ui/LoveShareActivity;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    .line 506
    invoke-virtual {p0, p2}, Lcom/cmplay/tile2/ui/LoveShareActivity$a;->a(I)Landroid/widget/EditText;

    move-result-object v1

    .line 507
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 508
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 509
    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 524
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
