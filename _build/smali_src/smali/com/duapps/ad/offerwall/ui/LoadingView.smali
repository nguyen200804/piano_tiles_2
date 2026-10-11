.class public Lcom/duapps/ad/offerwall/ui/LoadingView;
.super Landroid/widget/LinearLayout;
.source "LoadingView.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/duapps/ad/offerwall/ui/LoadingView;->c:I

    return v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    iput p1, p0, Lcom/duapps/ad/offerwall/ui/LoadingView;->c:I

    .line 43
    packed-switch p1, :pswitch_data_0

    .line 63
    :goto_0
    return-void

    .line 45
    :pswitch_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/LoadingView;->setVisibility(I)V

    goto :goto_0

    .line 48
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/duapps/ad/offerwall/ui/LoadingView;->setVisibility(I)V

    .line 49
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/LoadingView;->a:Landroid/widget/ImageView;

    sget v1, Lcom/duapps/ad/R$drawable;->duapps_ad_offer_wall_indeterminate_loading:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 50
    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/LoadingView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/duapps/ad/R$anim;->duapps_ad_offer_wall_indeterminate_rotate:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/LoadingView;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 52
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/LoadingView;->b:Landroid/widget/TextView;

    sget v1, Lcom/duapps/ad/R$string;->duapps_ad_offer_wall_loading:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 55
    :pswitch_2
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/LoadingView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 56
    invoke-virtual {p0, v1}, Lcom/duapps/ad/offerwall/ui/LoadingView;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/LoadingView;->a:Landroid/widget/ImageView;

    sget v1, Lcom/duapps/ad/R$drawable;->duapps_ad_offer_wall_loading_retry:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/LoadingView;->b:Landroid/widget/TextView;

    sget v1, Lcom/duapps/ad/R$string;->duapps_ad_offer_wall_retry:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 33
    sget v0, Lcom/duapps/ad/R$id;->duapps_ad_offer_wall_loading_iv:I

    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/LoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/LoadingView;->a:Landroid/widget/ImageView;

    .line 34
    sget v0, Lcom/duapps/ad/R$id;->duapps_ad_offer_wall_loading_tip_tv:I

    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/LoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/LoadingView;->b:Landroid/widget/TextView;

    .line 35
    return-void
.end method
