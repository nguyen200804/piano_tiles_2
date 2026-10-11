.class Lcom/duapps/ad/offerwall/ui/PagerSlidingTab$a;
.super Ljava/lang/Object;
.source "PagerSlidingTab.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;


# direct methods
.method private constructor <init>(Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab$a;->a:Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;Lcom/duapps/ad/offerwall/ui/PagerSlidingTab$1;)V
    .locals 0

    .prologue
    .line 281
    invoke-direct {p0, p1}, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab$a;-><init>(Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;)V

    return-void
.end method

.method private a(F)I
    .locals 4

    .prologue
    .line 299
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3

    .prologue
    .line 304
    if-nez p1, :cond_0

    .line 305
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab$a;->a:Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab$a;->a:Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;

    invoke-static {v1}, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->a(Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->a(Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;II)V

    .line 306
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab$a;->a:Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab$a;->a:Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;

    invoke-static {v1}, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->a(Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    iput v1, v0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->a:I

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab$a;->a:Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;

    iget-object v0, v0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->b:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab$a;->a:Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;

    iget-object v0, v0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->b:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 312
    :cond_1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3

    .prologue
    .line 287
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab$a;->a:Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;

    invoke-static {v0, p1}, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->a(Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;I)I

    .line 288
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab$a;->a:Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;

    invoke-static {v0, p2}, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->a(Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;F)F

    .line 290
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab$a;->a:Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->invalidate()V

    .line 291
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab$a;->a:Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;

    invoke-direct {p0, p2}, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab$a;->a(F)I

    move-result v1

    add-int/2addr v1, p1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->a(Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;II)V

    .line 293
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab$a;->a:Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;

    iget-object v0, v0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->b:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab$a;->a:Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;

    iget-object v0, v0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->b:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 296
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab$a;->a:Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;

    iget-object v0, v0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->b:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab$a;->a:Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;

    iget-object v0, v0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->b:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 319
    :cond_0
    return-void
.end method
