.class public Lcom/duapps/ad/offerwall/ui/OfferWallAct;
.super Landroid/support/v4/app/FragmentActivity;
.source "OfferWallAct.java"

# interfaces
.implements Lcom/duapps/ad/offerwall/ui/h$a;


# instance fields
.field a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private b:Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;

.field private c:Landroid/support/v4/view/ViewPager;

.field private d:Lcom/duapps/ad/offerwall/ui/g;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;

.field private h:I

.field private i:I

.field private j:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->i:I

    .line 108
    new-instance v0, Lcom/duapps/ad/offerwall/ui/OfferWallAct$2;

    invoke-direct {v0, p0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct$2;-><init>(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)V

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic a(Lcom/duapps/ad/offerwall/ui/OfferWallAct;I)I
    .locals 0

    .prologue
    .line 24
    iput p1, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->i:I

    return p1
.end method

.method static synthetic a(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->f()V

    return-void
.end method

.method private a(I)Z
    .locals 4

    .prologue
    .line 244
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e991687    # 0.299f

    mul-float/2addr v0, v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f1645a2    # 0.587f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3de978d5    # 0.114f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 245
    const-string v1, "OfferWallAct"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLightColor...g : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const/high16 v1, 0x43400000    # 192.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->i:I

    return v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    const-string v1, "pid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->h:I

    .line 73
    iget v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->h:I

    invoke-static {v0}, Lcom/duapps/ad/c/b/c;->a(I)V

    .line 77
    return-void

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must be put pid in bundle data, Otherwise OfferWall cannot be work."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic c(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)Lcom/duapps/ad/offerwall/ui/g;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->d:Lcom/duapps/ad/offerwall/ui/g;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 80
    sget v0, Lcom/duapps/ad/R$id;->duapps_ad_offer_wall_header_container:I

    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->g:Landroid/view/View;

    .line 81
    sget v0, Lcom/duapps/ad/R$id;->duapps_ad_offer_wall_header_title_tv:I

    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->f:Landroid/widget/TextView;

    .line 82
    sget v0, Lcom/duapps/ad/R$id;->duapps_ad_offer_wall_header_back_iv:I

    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->e:Landroid/widget/ImageView;

    .line 84
    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "display_home_as_up"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->e:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->e:Landroid/widget/ImageView;

    new-instance v1, Lcom/duapps/ad/offerwall/ui/OfferWallAct$1;

    invoke-direct {v1, p0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct$1;-><init>(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->e:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 99
    sget v0, Lcom/duapps/ad/R$id;->pager_sliding_tab:I

    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->b:Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;

    .line 100
    sget v0, Lcom/duapps/ad/R$id;->tab_view_pager:I

    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->c:Landroid/support/v4/view/ViewPager;

    .line 101
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->c:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 102
    new-instance v0, Lcom/duapps/ad/offerwall/ui/g;

    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget v2, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->h:I

    invoke-direct {v0, p0, v1, v2}, Lcom/duapps/ad/offerwall/ui/g;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;I)V

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->d:Lcom/duapps/ad/offerwall/ui/g;

    .line 103
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->c:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->d:Lcom/duapps/ad/offerwall/ui/g;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 104
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->b:Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->c:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->a:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->a(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 105
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->c:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->i:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 106
    return-void
.end method

.method private e()V
    .locals 5

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_TITLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    :goto_0
    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_TAB_INDICATOR_COLOR"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "KEY_TAB_BACKGROUND_COLOR"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "KEY_TAB_TEXT_COLOR"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 187
    const-string v3, "^#?([a-f]|[A-F]|[0-9]){3}(([a-f]|[A-F]|[0-9]){3})?$"

    .line 188
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 189
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 190
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 191
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 192
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 201
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 202
    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 203
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 204
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 213
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 214
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 215
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 216
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 225
    :goto_3
    iget-object v3, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->b:Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;

    invoke-virtual {v3, v0}, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->a(I)V

    .line 226
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->b:Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;

    invoke-virtual {v0, v2}, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->b(I)V

    .line 227
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->b:Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;

    invoke-virtual {v0, v1}, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->setBackgroundColor(I)V

    .line 228
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 229
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 230
    invoke-direct {p0, v1}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->a(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 231
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->e:Landroid/widget/ImageView;

    sget v1, Lcom/duapps/ad/R$drawable;->duapps_ad_offer_wall_back_dark:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 235
    :goto_4
    return-void

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_TITLE_ID"

    sget v2, Lcom/duapps/ad/R$string;->duapps_ad_offer_wall_title_v2:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->f:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    const-string v0, "OfferWallAct"

    const-string v1, "String res is not found."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 194
    :cond_1
    const-string v0, "OfferWallAct"

    const-string v1, "KEY_TAB_INDICATOR_COLOR is wrong."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 198
    :cond_2
    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/duapps/ad/R$color;->default_style_color_blue:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto/16 :goto_1

    .line 206
    :cond_3
    const-string v0, "OfferWallAct"

    const-string v1, "KEY_TAB_BACKGROUND_COLOR is wrong."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 210
    :cond_4
    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/duapps/ad/R$color;->default_style_color_white:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto/16 :goto_2

    .line 218
    :cond_5
    const-string v0, "OfferWallAct"

    const-string v1, "KEY_TAB_TEXT_COLOR is wrong."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 222
    :cond_6
    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/duapps/ad/R$color;->default_style_color_black:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto/16 :goto_3

    .line 233
    :cond_7
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->e:Landroid/widget/ImageView;

    sget v1, Lcom/duapps/ad/R$drawable;->duapps_ad_offer_wall_back_light:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4
.end method

.method private f()V
    .locals 4

    .prologue
    .line 264
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->d:Lcom/duapps/ad/offerwall/ui/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/duapps/ad/offerwall/ui/g;->a(I)Lcom/duapps/ad/offerwall/ui/h;

    move-result-object v0

    .line 265
    instance-of v1, v0, Lcom/duapps/ad/offerwall/ui/f;

    if-eqz v1, :cond_0

    .line 266
    check-cast v0, Lcom/duapps/ad/offerwall/ui/f;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/ui/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->j:J

    sub-long/2addr v0, v2

    .line 268
    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->h:I

    invoke-static {v2, v3, v0, v1}, Lcom/duapps/ad/stats/c;->b(Landroid/content/Context;IJ)V

    .line 271
    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 275
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 276
    invoke-direct {p0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->f()V

    .line 277
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 53
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->requestWindowFeature(I)Z

    .line 55
    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->setRequestedOrientation(I)V

    .line 56
    sget v1, Lcom/duapps/ad/R$layout;->duapps_ad_offer_wall_layout2:I

    invoke-virtual {p0, v1}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->setContentView(I)V

    .line 58
    invoke-direct {p0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->b()V

    .line 59
    invoke-direct {p0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->c()V

    .line 60
    invoke-direct {p0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->d()V

    .line 61
    invoke-direct {p0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->e()V

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->j:J

    .line 64
    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/duapps/ad/c/b/c;->a(Landroid/content/Context;)Z

    move-result v1

    .line 65
    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->h:I

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {v2, v3, v0}, Lcom/duapps/ad/stats/c;->a(Landroid/content/Context;II)V

    .line 66
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 256
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 257
    invoke-static {p0}, Lcom/duapps/ad/c/b/c;->a(Landroid/app/Activity;)V

    .line 258
    return-void
.end method
