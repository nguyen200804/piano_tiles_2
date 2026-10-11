.class public Lcom/mnt/impl/view/RectangleBannerView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/widget/ImageView;

.field public c:Lcom/mnt/IAdListener;

.field public d:Lcom/mnt/Ad;

.field public e:Lcom/mnt/impl/b;

.field public f:Ljava/lang/String;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Z

.field public i:Lcom/mnt/MntBuild;

.field public j:Z

.field public k:Lcom/mnt/impl/dsp/c;

.field l:I

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/RatingBar;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/os/Handler;

.field private r:Lcom/mnt/impl/f/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/mnt/impl/e;->jJ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mnt/impl/view/RectangleBannerView;->h:Z

    .line 61
    new-instance v0, Lcom/mnt/impl/view/f;

    invoke-direct {v0, p0}, Lcom/mnt/impl/view/f;-><init>(Lcom/mnt/impl/view/RectangleBannerView;)V

    iput-object v0, p0, Lcom/mnt/impl/view/RectangleBannerView;->q:Landroid/os/Handler;

    .line 329
    new-instance v0, Lcom/mnt/impl/view/i;

    invoke-direct {v0, p0}, Lcom/mnt/impl/view/i;-><init>(Lcom/mnt/impl/view/RectangleBannerView;)V

    iput-object v0, p0, Lcom/mnt/impl/view/RectangleBannerView;->r:Lcom/mnt/impl/f/a;

    .line 86
    iput-object p1, p0, Lcom/mnt/impl/view/RectangleBannerView;->a:Landroid/content/Context;

    .line 87
    return-void
.end method

.method static synthetic a(Lcom/mnt/impl/view/RectangleBannerView;)Lcom/mnt/Ad;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mnt/impl/view/RectangleBannerView;->d:Lcom/mnt/Ad;

    return-object v0
.end method

.method static synthetic a(Lcom/mnt/impl/view/RectangleBannerView;Lcom/mnt/Ad;)Lcom/mnt/Ad;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/mnt/impl/view/RectangleBannerView;->d:Lcom/mnt/Ad;

    return-object p1
.end method

.method static synthetic a(Lcom/mnt/impl/view/RectangleBannerView;Lcom/mnt/impl/dsp/c;)Lcom/mnt/impl/dsp/c;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/mnt/impl/view/RectangleBannerView;->k:Lcom/mnt/impl/dsp/c;

    return-object p1
.end method

.method static synthetic a(Lcom/mnt/impl/view/RectangleBannerView;Landroid/webkit/WebView;)V
    .locals 5

    .prologue
    .line 46
    .line 3144
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mnt/impl/view/RectangleBannerView;->setOrientation(I)V

    .line 3145
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/mnt/impl/view/RectangleBannerView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 3146
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/mnt/impl/view/RectangleBannerView;->a:Landroid/content/Context;

    const/high16 v3, 0x43960000    # 300.0f

    invoke-static {v2, v3}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/mnt/impl/view/RectangleBannerView;->a:Landroid/content/Context;

    const/high16 v4, 0x437a0000    # 250.0f

    invoke-static {v3, v4}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3147
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 3148
    invoke-virtual {p0, v0, v1}, Lcom/mnt/impl/view/RectangleBannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3149
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/mnt/impl/view/RectangleBannerView;Z)Z
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/mnt/impl/view/RectangleBannerView;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/mnt/impl/view/RectangleBannerView;)Lcom/mnt/IAdListener;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mnt/impl/view/RectangleBannerView;->c:Lcom/mnt/IAdListener;

    return-object v0
.end method

.method static synthetic b(Lcom/mnt/impl/view/RectangleBannerView;Lcom/mnt/Ad;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 46
    .line 1250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mnt/impl/view/RectangleBannerView;->g:Ljava/util/List;

    .line 1251
    iget-object v0, p0, Lcom/mnt/impl/view/RectangleBannerView;->g:Ljava/util/List;

    invoke-virtual {p1}, Lcom/mnt/Ad;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, p1

    .line 1252
    check-cast v0, Lcom/mnt/impl/e/c;

    .line 1253
    sget-object v1, Lcom/mnt/Ad;->AD_CREATIVE_SIZE_1200x627:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mnt/impl/e/c;->getCreatives(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1254
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1255
    iget-object v1, p0, Lcom/mnt/impl/view/RectangleBannerView;->g:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1256
    new-instance v1, Lcom/mnt/impl/g/a;

    iget-object v2, p0, Lcom/mnt/impl/view/RectangleBannerView;->a:Landroid/content/Context;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/mnt/impl/view/RectangleBannerView;->r:Lcom/mnt/impl/f/a;

    sget-object v4, Lcom/mnt/impl/c/a;->b:Lcom/mnt/impl/c/a;

    .line 2022
    iget v4, v4, Lcom/mnt/impl/c/a;->c:I

    .line 1256
    invoke-direct {v1, v2, v0, v3}, Lcom/mnt/impl/g/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mnt/impl/f/a;)V

    invoke-virtual {v1}, Lcom/mnt/impl/g/a;->c()V

    .line 1257
    new-instance v0, Lcom/mnt/impl/g/a;

    iget-object v1, p0, Lcom/mnt/impl/view/RectangleBannerView;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/mnt/Ad;->getIcon()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mnt/impl/view/RectangleBannerView;->r:Lcom/mnt/impl/f/a;

    sget-object v4, Lcom/mnt/impl/c/a;->b:Lcom/mnt/impl/c/a;

    .line 3022
    iget v4, v4, Lcom/mnt/impl/c/a;->c:I

    .line 1257
    invoke-direct {v0, v1, v2, v3}, Lcom/mnt/impl/g/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mnt/impl/f/a;)V

    invoke-virtual {v0}, Lcom/mnt/impl/g/a;->c()V

    :cond_0
    :goto_0
    return-void

    .line 1259
    :cond_1
    iget-object v0, p0, Lcom/mnt/impl/view/RectangleBannerView;->c:Lcom/mnt/IAdListener;

    if-eqz v0, :cond_0

    .line 1260
    iget-object v0, p0, Lcom/mnt/impl/view/RectangleBannerView;->c:Lcom/mnt/IAdListener;

    sget-object v1, Lcom/mnt/AdError;->NO_MATERIAL:Lcom/mnt/AdError;

    invoke-interface {v0, v1}, Lcom/mnt/IAdListener;->onAdError(Lcom/mnt/AdError;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/mnt/impl/view/RectangleBannerView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mnt/impl/view/RectangleBannerView;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/mnt/impl/view/RectangleBannerView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mnt/impl/view/RectangleBannerView;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/mnt/impl/view/RectangleBannerView;)Lcom/mnt/impl/dsp/c;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mnt/impl/view/RectangleBannerView;->k:Lcom/mnt/impl/dsp/c;

    return-object v0
.end method

.method static synthetic f(Lcom/mnt/impl/view/RectangleBannerView;)V
    .locals 4

    .prologue
    .line 4090
    new-instance v0, Lcom/mnt/impl/view/a;

    invoke-direct {v0}, Lcom/mnt/impl/view/a;-><init>()V

    .line 5031
    const/4 v1, 0x1

    iput v1, v0, Lcom/mnt/impl/view/a;->b:I

    .line 4090
    iget-object v1, p0, Lcom/mnt/impl/view/RectangleBannerView;->q:Landroid/os/Handler;

    .line 5036
    iput-object v1, v0, Lcom/mnt/impl/view/a;->a:Landroid/os/Handler;

    .line 4090
    sget-object v1, Lcom/mnt/impl/b/b;->b:Lcom/mnt/impl/b/b;

    iget-object v2, p0, Lcom/mnt/impl/view/RectangleBannerView;->e:Lcom/mnt/impl/b;

    iget-object v3, p0, Lcom/mnt/impl/view/RectangleBannerView;->i:Lcom/mnt/MntBuild;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mnt/impl/view/a;->a(Lcom/mnt/impl/b/b;Lcom/mnt/impl/b;Lcom/mnt/MntBuild;)V

    .line 46
    return-void
.end method

.method static synthetic g(Lcom/mnt/impl/view/RectangleBannerView;)Ljava/util/List;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mnt/impl/view/RectangleBannerView;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lcom/mnt/impl/view/RectangleBannerView;)V
    .locals 12

    .prologue
    .line 46
    .line 5156
    invoke-virtual {p0, p0}, Lcom/mnt/impl/view/RectangleBannerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5157
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mnt/impl/view/RectangleBannerView;->setOrientation(I)V

    .line 5158
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mnt/impl/view/RectangleBannerView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 5159
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/mnt/impl/view/RectangleBannerView;->a:Landroid/content/Context;

    const/high16 v3, 0x43960000    # 300.0f

    invoke-static {v2, v3}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/mnt/impl/view/RectangleBannerView;->a:Landroid/content/Context;

    const/high16 v4, 0x437a0000    # 250.0f

    invoke-static {v3, v4}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5160
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 5161
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 5162
    invoke-virtual {p0, v0, v1}, Lcom/mnt/impl/view/RectangleBannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5164
    iget-object v1, p0, Lcom/mnt/impl/view/RectangleBannerView;->a:Landroid/content/Context;

    const/high16 v2, 0x43960000    # 300.0f

    invoke-static {v1, v2}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;F)I

    move-result v1

    .line 5165
    iget-object v2, p0, Lcom/mnt/impl/view/RectangleBannerView;->a:Landroid/content/Context;

    const/high16 v3, 0x437a0000    # 250.0f

    invoke-static {v2, v3}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;F)I

    move-result v2

    .line 5167
    new-instance v3, Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/mnt/impl/view/RectangleBannerView;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 5168
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    int-to-double v6, v2

    const-wide v8, 0x3ffa666666666666L    # 1.65

    div-double/2addr v6, v8

    double-to-int v5, v6

    invoke-direct {v4, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5169
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5171
    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/mnt/impl/view/RectangleBannerView;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/mnt/impl/view/RectangleBannerView;->b:Landroid/widget/ImageView;

    .line 5172
    iget-object v4, p0, Lcom/mnt/impl/view/RectangleBannerView;->b:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 5173
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5174
    iget-object v5, p0, Lcom/mnt/impl/view/RectangleBannerView;->b:Landroid/widget/ImageView;

    invoke-virtual {v3, v5, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5176
    new-instance v4, Lcom/mnt/impl/view/AdChoicesView;

    iget-object v5, p0, Lcom/mnt/impl/view/RectangleBannerView;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/mnt/impl/view/AdChoicesView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v6, p0, Lcom/mnt/impl/view/RectangleBannerView;->a:Landroid/content/Context;

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-static {v6, v7}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;F)I

    move-result v6

    iget-object v7, p0, Lcom/mnt/impl/view/RectangleBannerView;->a:Landroid/content/Context;

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-static {v7, v8}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5178
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5180
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/mnt/impl/view/RectangleBannerView;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 5181
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 5182
    div-int/lit8 v4, v1, 0x34

    .line 5183
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 5184
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5185
    invoke-virtual {v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5187
    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/mnt/impl/view/RectangleBannerView;->a:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/mnt/impl/view/RectangleBannerView;->m:Landroid/widget/ImageView;

    .line 5188
    iget-object v5, p0, Lcom/mnt/impl/view/RectangleBannerView;->m:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 5189
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    int-to-double v6, v2

    const-wide v8, 0x4016851eb851eb85L    # 5.63

    div-double/2addr v6, v8

    double-to-int v6, v6

    int-to-double v8, v2

    const-wide v10, 0x4016851eb851eb85L    # 5.63

    div-double/2addr v8, v10

    double-to-int v7, v8

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5190
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 5191
    const/16 v6, 0x10

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 5192
    iget-object v6, p0, Lcom/mnt/impl/view/RectangleBannerView;->m:Landroid/widget/ImageView;

    invoke-virtual {v3, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5194
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/mnt/impl/view/RectangleBannerView;->a:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 5195
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 5196
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5197
    invoke-virtual {v3, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5199
    new-instance v3, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/mnt/impl/view/RectangleBannerView;->a:Landroid/content/Context;

    invoke-direct {v3, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mnt/impl/view/RectangleBannerView;->o:Landroid/widget/TextView;

    .line 5200
    iget-object v3, p0, Lcom/mnt/impl/view/RectangleBannerView;->o:Landroid/widget/TextView;

    const/16 v6, 0x10

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 5201
    iget-object v3, p0, Lcom/mnt/impl/view/RectangleBannerView;->o:Landroid/widget/TextView;

    const/4 v6, 0x0

    div-int/lit8 v7, v2, 0x14

    int-to-float v7, v7

    invoke-virtual {v3, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5202
    iget-object v3, p0, Lcom/mnt/impl/view/RectangleBannerView;->o:Landroid/widget/TextView;

    const/4 v6, 0x1

    invoke-static {v6}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 5203
    iget-object v3, p0, Lcom/mnt/impl/view/RectangleBannerView;->o:Landroid/widget/TextView;

    sget-object v6, Lcom/mnt/impl/e;->jL:Ljava/lang/String;

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5204
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5205
    iget-object v6, p0, Lcom/mnt/impl/view/RectangleBannerView;->o:Landroid/widget/TextView;

    invoke-virtual {v5, v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5207
    new-instance v3, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/mnt/impl/view/RectangleBannerView;->a:Landroid/content/Context;

    invoke-direct {v3, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mnt/impl/view/RectangleBannerView;->p:Landroid/widget/TextView;

    .line 5208
    iget-object v3, p0, Lcom/mnt/impl/view/RectangleBannerView;->p:Landroid/widget/TextView;

    const/16 v6, 0x10

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 5209
    iget-object v3, p0, Lcom/mnt/impl/view/RectangleBannerView;->p:Landroid/widget/TextView;

    sget-object v6, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 5210
    iget-object v3, p0, Lcom/mnt/impl/view/RectangleBannerView;->p:Landroid/widget/TextView;

    const/4 v6, 0x0

    div-int/lit8 v7, v2, 0x14

    int-to-float v7, v7

    invoke-virtual {v3, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5211
    iget-object v3, p0, Lcom/mnt/impl/view/RectangleBannerView;->p:Landroid/widget/TextView;

    sget-object v6, Lcom/mnt/impl/e;->jM:Ljava/lang/String;

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5212
    iget-object v3, p0, Lcom/mnt/impl/view/RectangleBannerView;->p:Landroid/widget/TextView;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 5213
    iget-object v3, p0, Lcom/mnt/impl/view/RectangleBannerView;->p:Landroid/widget/TextView;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 5214
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5215
    const/4 v6, 0x0

    div-int/lit8 v7, v2, 0x1e

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 5216
    iget-object v6, p0, Lcom/mnt/impl/view/RectangleBannerView;->p:Landroid/widget/TextView;

    invoke-virtual {v5, v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5218
    new-instance v3, Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/mnt/impl/view/RectangleBannerView;->a:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 5219
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    int-to-double v8, v2

    const-wide v10, 0x4042c00000000000L    # 37.5

    div-double/2addr v8, v10

    double-to-int v8, v8

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 5220
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5221
    invoke-virtual {v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5223
    new-instance v0, Landroid/widget/RatingBar;

    iget-object v5, p0, Lcom/mnt/impl/view/RectangleBannerView;->a:Landroid/content/Context;

    const/4 v6, 0x0

    const v7, 0x101007d

    invoke-direct {v0, v5, v6, v7}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/mnt/impl/view/RectangleBannerView;->n:Landroid/widget/RatingBar;

    .line 5224
    iget-object v0, p0, Lcom/mnt/impl/view/RectangleBannerView;->n:Landroid/widget/RatingBar;

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Landroid/widget/RatingBar;->setNumStars(I)V

    .line 5225
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v0, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5226
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 5227
    const/16 v5, 0xf

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 5228
    iget-object v5, p0, Lcom/mnt/impl/view/RectangleBannerView;->n:Landroid/widget/RatingBar;

    invoke-virtual {v3, v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5230
    new-instance v0, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/mnt/impl/view/RectangleBannerView;->a:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 5231
    sget-object v5, Lcom/mnt/impl/e;->jN:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 5232
    iget-object v5, p0, Lcom/mnt/impl/view/RectangleBannerView;->d:Lcom/mnt/Ad;

    invoke-static {v5}, Lcom/mnt/impl/e/c;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5233
    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 5234
    const/4 v5, 0x0

    int-to-double v6, v2

    const-wide v8, 0x40304ccccccccccdL    # 16.3

    div-double/2addr v6, v8

    double-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v0, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5235
    const/4 v5, 0x1

    invoke-static {v5}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 5236
    sget-object v5, Lcom/mnt/impl/e;->jO:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5237
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    int-to-double v6, v1

    const-wide v8, 0x400aa3d70a3d70a4L    # 3.33

    div-double/2addr v6, v8

    double-to-int v1, v6

    div-int/lit8 v2, v2, 0x8

    invoke-direct {v5, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5238
    const/16 v1, 0xb

    const/4 v2, -0x1

    invoke-virtual {v5, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 5239
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v2, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 5240
    invoke-virtual {v3, v0, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5242
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    return-void
.end method

.method static synthetic i(Lcom/mnt/impl/view/RectangleBannerView;)V
    .locals 5

    .prologue
    .line 46
    .line 5266
    iget-object v0, p0, Lcom/mnt/impl/view/RectangleBannerView;->d:Lcom/mnt/Ad;

    check-cast v0, Lcom/mnt/impl/e/c;

    .line 5268
    new-instance v1, Lcom/mnt/impl/g/a;

    iget-object v2, p0, Lcom/mnt/impl/view/RectangleBannerView;->m:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/mnt/impl/view/RectangleBannerView;->d:Lcom/mnt/Ad;

    invoke-virtual {v3}, Lcom/mnt/Ad;->getIcon()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/mnt/impl/c/a;->b:Lcom/mnt/impl/c/a;

    .line 6022
    iget v4, v4, Lcom/mnt/impl/c/a;->c:I

    .line 5268
    invoke-direct {v1, v2, v3}, Lcom/mnt/impl/g/a;-><init>(Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mnt/impl/g/a;->c()V

    .line 5269
    new-instance v1, Lcom/mnt/impl/g/a;

    iget-object v2, p0, Lcom/mnt/impl/view/RectangleBannerView;->b:Landroid/widget/ImageView;

    sget-object v3, Lcom/mnt/Ad;->AD_CREATIVE_SIZE_1200x627:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/mnt/impl/e/c;->getCreatives(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v3, Lcom/mnt/impl/c/a;->b:Lcom/mnt/impl/c/a;

    .line 7022
    iget v3, v3, Lcom/mnt/impl/c/a;->c:I

    .line 5269
    invoke-direct {v1, v2, v0}, Lcom/mnt/impl/g/a;-><init>(Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mnt/impl/g/a;->c()V

    .line 5270
    iget-object v0, p0, Lcom/mnt/impl/view/RectangleBannerView;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mnt/impl/view/RectangleBannerView;->d:Lcom/mnt/Ad;

    invoke-virtual {v1}, Lcom/mnt/Ad;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5271
    iget-object v0, p0, Lcom/mnt/impl/view/RectangleBannerView;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mnt/impl/view/RectangleBannerView;->d:Lcom/mnt/Ad;

    invoke-virtual {v1}, Lcom/mnt/Ad;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5272
    iget-object v0, p0, Lcom/mnt/impl/view/RectangleBannerView;->n:Landroid/widget/RatingBar;

    iget-object v1, p0, Lcom/mnt/impl/view/RectangleBannerView;->d:Lcom/mnt/Ad;

    invoke-virtual {v1}, Lcom/mnt/Ad;->getStoreRating()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 46
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/mnt/impl/view/RectangleBannerView;->e:Lcom/mnt/impl/b;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/mnt/impl/view/RectangleBannerView;->e:Lcom/mnt/impl/b;

    iget-object v1, p0, Lcom/mnt/impl/view/RectangleBannerView;->d:Lcom/mnt/Ad;

    invoke-virtual {v0, v1}, Lcom/mnt/impl/b;->a(Ljava/lang/Object;)V

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/mnt/impl/view/RectangleBannerView;->c:Lcom/mnt/IAdListener;

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/mnt/impl/view/RectangleBannerView;->c:Lcom/mnt/IAdListener;

    invoke-interface {v0}, Lcom/mnt/IAdListener;->onAdClicked()V

    .line 362
    :cond_1
    return-void
.end method

.method public setAdListener(Lcom/mnt/IAdListener;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/mnt/impl/view/RectangleBannerView;->c:Lcom/mnt/IAdListener;

    .line 323
    return-void
.end method

.method public setPlacementId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 365
    iput-object p1, p0, Lcom/mnt/impl/view/RectangleBannerView;->f:Ljava/lang/String;

    .line 366
    new-instance v0, Lcom/mnt/impl/b;

    iget-object v1, p0, Lcom/mnt/impl/view/RectangleBannerView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mnt/impl/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mnt/impl/view/RectangleBannerView;->e:Lcom/mnt/impl/b;

    .line 367
    return-void
.end method
