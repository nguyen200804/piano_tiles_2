.class Lcom/duapps/ad/offerwall/ui/i$2;
.super Ljava/lang/Object;
.source "TopicBannerView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duapps/ad/offerwall/ui/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duapps/ad/offerwall/ui/i;


# direct methods
.method constructor <init>(Lcom/duapps/ad/offerwall/ui/i;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/duapps/ad/offerwall/ui/i$2;->a:Lcom/duapps/ad/offerwall/ui/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5

    .prologue
    .line 113
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/i$2;->a:Lcom/duapps/ad/offerwall/ui/i;

    iput p1, v0, Lcom/duapps/ad/offerwall/ui/i;->f:I

    .line 114
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/i$2;->a:Lcom/duapps/ad/offerwall/ui/i;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/ui/i;->d(Lcom/duapps/ad/offerwall/ui/i;)Lcom/duapps/ad/offerwall/ui/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/ui/i$a;->a()I

    move-result v0

    rem-int v1, p1, v0

    .line 115
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/duapps/ad/offerwall/ui/i$2;->a:Lcom/duapps/ad/offerwall/ui/i;

    invoke-static {v2}, Lcom/duapps/ad/offerwall/ui/i;->e(Lcom/duapps/ad/offerwall/ui/i;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_1

    .line 116
    iget-object v3, p0, Lcom/duapps/ad/offerwall/ui/i$2;->a:Lcom/duapps/ad/offerwall/ui/i;

    invoke-static {v3}, Lcom/duapps/ad/offerwall/ui/i;->e(Lcom/duapps/ad/offerwall/ui/i;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 117
    if-ne v0, v1, :cond_0

    .line 118
    sget v4, Lcom/duapps/ad/R$drawable;->duapps_ad_offer_wall_banner_indicator_bg_selected:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 115
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_0
    sget v4, Lcom/duapps/ad/R$drawable;->duapps_ad_offer_wall_banner_indicator_bg_normal:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 125
    :cond_1
    return-void
.end method
