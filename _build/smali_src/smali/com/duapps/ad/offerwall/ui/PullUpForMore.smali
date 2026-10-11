.class public Lcom/duapps/ad/offerwall/ui/PullUpForMore;
.super Landroid/widget/RelativeLayout;
.source "PullUpForMore.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;

.field private c:I

.field private d:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/duapps/ad/offerwall/ui/PullUpForMore;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->c:I

    .line 39
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 79
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->d:Landroid/content/res/Resources;

    sget v2, Lcom/duapps/ad/R$string;->duapps_ad_offer_wall_pull_refresh:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/duapps/ad/R$anim;->duapps_ad_offer_wall_indeterminate_rotate:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->b:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 88
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->d:Landroid/content/res/Resources;

    sget v2, Lcom/duapps/ad/R$string;->duapps_ad_offer_wall_footer_loading:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 93
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->d:Landroid/content/res/Resources;

    sget v2, Lcom/duapps/ad/R$string;->duapps_ad_offer_wall_footer_end:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    return-void
.end method

.method private e()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->c:I

    return v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 50
    iput p1, p0, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->c:I

    .line 52
    iget v0, p0, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->c:I

    packed-switch v0, :pswitch_data_0

    .line 71
    :goto_0
    return-void

    .line 54
    :pswitch_0
    invoke-direct {p0}, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->b()V

    goto :goto_0

    .line 59
    :pswitch_1
    invoke-direct {p0}, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->c()V

    goto :goto_0

    .line 63
    :pswitch_2
    invoke-direct {p0}, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->d()V

    goto :goto_0

    .line 66
    :pswitch_3
    invoke-direct {p0}, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->e()V

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 43
    sget v0, Lcom/duapps/ad/R$id;->duapps_ad_offer_wall_more_footer_tip:I

    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->a:Landroid/widget/TextView;

    .line 44
    sget v0, Lcom/duapps/ad/R$id;->duapps_ad_offer_wall_more_footer_pb:I

    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->b:Landroid/widget/ImageView;

    .line 46
    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->d:Landroid/content/res/Resources;

    .line 47
    return-void
.end method
