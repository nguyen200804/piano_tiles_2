.class Lcom/duapps/ad/offerwall/ui/i$a;
.super Landroid/support/v4/view/PagerAdapter;
.source "TopicBannerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duapps/ad/offerwall/ui/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/duapps/ad/offerwall/ui/i;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/entity/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/duapps/ad/offerwall/ui/i;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 146
    iput-object p1, p0, Lcom/duapps/ad/offerwall/ui/i$a;->a:Lcom/duapps/ad/offerwall/ui/i;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/i$a;->c:Ljava/util/List;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/i$a;->d:Ljava/util/List;

    .line 147
    iput-object p2, p0, Lcom/duapps/ad/offerwall/ui/i$a;->b:Landroid/content/Context;

    .line 148
    return-void
.end method

.method private b()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 151
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/i$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/a/a;

    .line 152
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/i$a;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/duapps/ad/R$layout;->duapps_ad_offer_wall_topic_banner_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 153
    sget v1, Lcom/duapps/ad/R$id;->banner_title:I

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 154
    sget v2, Lcom/duapps/ad/R$id;->banner_desc:I

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 155
    sget v3, Lcom/duapps/ad/R$id;->banner_btn:I

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 156
    invoke-interface {v0}, Lcom/duapps/ad/entity/a/a;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    invoke-interface {v0}, Lcom/duapps/ad/entity/a/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    invoke-interface {v0}, Lcom/duapps/ad/entity/a/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    sget v1, Lcom/duapps/ad/R$id;->banner_icon:I

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 161
    sget v2, Lcom/duapps/ad/R$id;->banner_img:I

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 162
    sget v3, Lcom/duapps/ad/R$id;->media_view:I

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/duapps/ad/DuAdMediaView;

    .line 163
    invoke-static {}, Lcom/duapps/ad/c/b/c;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    instance-of v4, v0, Lcom/duapps/ad/entity/d;

    if-eqz v4, :cond_0

    move v4, v5

    .line 166
    :goto_1
    sget v9, Lcom/duapps/ad/R$drawable;->ad_icon_bg:I

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 167
    invoke-static {}, Lcom/duapps/ad/base/a/b;->a()Lcom/duapps/ad/base/a/b;

    move-result-object v9

    invoke-interface {v0}, Lcom/duapps/ad/entity/a/a;->e()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v1}, Lcom/duapps/ad/base/a/b;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 169
    if-eqz v4, :cond_1

    .line 170
    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 171
    invoke-virtual {v3, v6}, Lcom/duapps/ad/DuAdMediaView;->setVisibility(I)V

    .line 172
    invoke-virtual {v3, v5}, Lcom/duapps/ad/DuAdMediaView;->a(Z)V

    .line 173
    invoke-virtual {v3, v0}, Lcom/duapps/ad/DuAdMediaView;->a(Lcom/duapps/ad/entity/a/a;)V

    .line 174
    invoke-interface {v0, v8}, Lcom/duapps/ad/entity/a/a;->a(Landroid/view/View;)V

    .line 175
    invoke-interface {v0}, Lcom/duapps/ad/entity/a/a;->k()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/NativeAd;

    .line 176
    new-instance v1, Lcom/facebook/ads/AdChoicesView;

    iget-object v2, p0, Lcom/duapps/ad/offerwall/ui/i$a;->b:Landroid/content/Context;

    invoke-direct {v1, v2, v0, v5}, Lcom/facebook/ads/AdChoicesView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAd;Z)V

    .line 177
    sget v0, Lcom/duapps/ad/R$id;->banner_fb_adchoices_view:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 187
    :goto_2
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/i$a;->d:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    move v4, v6

    .line 163
    goto :goto_1

    .line 179
    :cond_1
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 180
    invoke-virtual {v3, v11}, Lcom/duapps/ad/DuAdMediaView;->setVisibility(I)V

    .line 181
    sget v1, Lcom/duapps/ad/R$drawable;->ad_image_bg:I

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 182
    invoke-static {}, Lcom/duapps/ad/base/a/b;->a()Lcom/duapps/ad/base/a/b;

    move-result-object v1

    invoke-interface {v0}, Lcom/duapps/ad/entity/a/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lcom/duapps/ad/base/a/b;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 183
    sget v0, Lcom/duapps/ad/R$id;->banner_fb_adchoices_view:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 185
    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 189
    :cond_2
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/i$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(I)Lcom/duapps/ad/entity/a/a;
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/i$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 277
    const/4 v0, 0x0

    .line 278
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/i$a;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/i$a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/a/a;

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/entity/a/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 220
    iput-object p1, p0, Lcom/duapps/ad/offerwall/ui/i$a;->c:Ljava/util/List;

    .line 221
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/i$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 222
    invoke-direct {p0}, Lcom/duapps/ad/offerwall/ui/i$a;->b()V

    .line 223
    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/i$a;->notifyDataSetChanged()V

    .line 224
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/i$a;->a()I

    move-result v0

    .line 268
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 269
    const/16 v0, 0x7d0

    .line 271
    :cond_0
    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/i$a;->a()I

    move-result v0

    rem-int v0, p2, v0

    .line 199
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/i$a;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 200
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 201
    if-eqz v1, :cond_0

    .line 202
    check-cast v1, Landroid/view/ViewGroup;

    .line 203
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 206
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 207
    return-object v0
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 212
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 5

    .prologue
    .line 228
    invoke-super {p0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 230
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/i$a;->a:Lcom/duapps/ad/offerwall/ui/i;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/ui/i;->e(Lcom/duapps/ad/offerwall/ui/i;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 232
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/i$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 233
    const/4 v0, 0x1

    if-le v1, v0, :cond_0

    .line 234
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 235
    iget-object v2, p0, Lcom/duapps/ad/offerwall/ui/i$a;->b:Landroid/content/Context;

    sget v3, Lcom/duapps/ad/R$layout;->duapps_ad_offer_wall_topic_banner_indicator:I

    iget-object v4, p0, Lcom/duapps/ad/offerwall/ui/i$a;->a:Lcom/duapps/ad/offerwall/ui/i;

    invoke-static {v4}, Lcom/duapps/ad/offerwall/ui/i;->e(Lcom/duapps/ad/offerwall/ui/i;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/i$a;->a:Lcom/duapps/ad/offerwall/ui/i;

    iget v0, v0, Lcom/duapps/ad/offerwall/ui/i;->f:I

    if-nez v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/i$a;->a:Lcom/duapps/ad/offerwall/ui/i;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/ui/i;->a(Lcom/duapps/ad/offerwall/ui/i;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    const/16 v2, 0x3e8

    rem-int v1, v2, v1

    rsub-int v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 244
    :goto_1
    return-void

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/i$a;->a:Lcom/duapps/ad/offerwall/ui/i;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/ui/i;->a(Lcom/duapps/ad/offerwall/ui/i;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/i$a;->a:Lcom/duapps/ad/offerwall/ui/i;

    iget v1, v1, Lcom/duapps/ad/offerwall/ui/i;->f:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/i$a;->a:Lcom/duapps/ad/offerwall/ui/i;

    iget v0, v0, Lcom/duapps/ad/offerwall/ui/i;->f:I

    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/i$a;->a(I)Lcom/duapps/ad/entity/a/a;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/i$a;->a:Lcom/duapps/ad/offerwall/ui/i;

    invoke-virtual {v1, v0}, Lcom/duapps/ad/offerwall/ui/i;->a(Lcom/duapps/ad/entity/a/a;)V

    .line 253
    return-void
.end method
