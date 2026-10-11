.class public Lcom/mnt/impl/view/BannerView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/mnt/IAdListener;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Lcom/mnt/Ad;

.field public g:Ljava/lang/String;

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public i:Z

.field public j:Lcom/mnt/impl/b;

.field public k:Lcom/mnt/MntBuild;

.field public l:Z

.field public m:Lcom/mnt/impl/dsp/c;

.field n:I

.field private o:I

.field private p:Landroid/os/Handler;

.field private q:Lcom/mnt/impl/f/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/mnt/impl/e;->jA:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mnt/impl/view/BannerView;->i:Z

    .line 62
    new-instance v0, Lcom/mnt/impl/view/b;

    invoke-direct {v0, p0}, Lcom/mnt/impl/view/b;-><init>(Lcom/mnt/impl/view/BannerView;)V

    iput-object v0, p0, Lcom/mnt/impl/view/BannerView;->p:Landroid/os/Handler;

    .line 323
    new-instance v0, Lcom/mnt/impl/view/e;

    invoke-direct {v0, p0}, Lcom/mnt/impl/view/e;-><init>(Lcom/mnt/impl/view/BannerView;)V

    iput-object v0, p0, Lcom/mnt/impl/view/BannerView;->q:Lcom/mnt/impl/f/a;

    .line 86
    iput-object p1, p0, Lcom/mnt/impl/view/BannerView;->a:Landroid/content/Context;

    .line 87
    iget-object v0, p0, Lcom/mnt/impl/view/BannerView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mnt/impl/b/k;->c(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/mnt/impl/view/BannerView;->o:I

    .line 88
    return-void
.end method

.method static synthetic a(Lcom/mnt/impl/view/BannerView;)Lcom/mnt/Ad;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mnt/impl/view/BannerView;->f:Lcom/mnt/Ad;

    return-object v0
.end method

.method static synthetic a(Lcom/mnt/impl/view/BannerView;Lcom/mnt/Ad;)Lcom/mnt/Ad;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/mnt/impl/view/BannerView;->f:Lcom/mnt/Ad;

    return-object p1
.end method

.method static synthetic a(Lcom/mnt/impl/view/BannerView;Lcom/mnt/impl/dsp/c;)Lcom/mnt/impl/dsp/c;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/mnt/impl/view/BannerView;->m:Lcom/mnt/impl/dsp/c;

    return-object p1
.end method

.method static synthetic a(Lcom/mnt/impl/view/BannerView;Landroid/webkit/WebView;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 45
    .line 2145
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mnt/impl/view/BannerView;->setOrientation(I)V

    .line 2146
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/mnt/impl/view/BannerView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2147
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/mnt/impl/view/BannerView;->a:Landroid/content/Context;

    const/high16 v3, 0x43a00000    # 320.0f

    invoke-static {v2, v3}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/mnt/impl/view/BannerView;->a:Landroid/content/Context;

    const/high16 v4, 0x42480000    # 50.0f

    invoke-static {v3, v4}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2148
    invoke-virtual {p0, v0, v1}, Lcom/mnt/impl/view/BannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2149
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2150
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2151
    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/mnt/impl/view/BannerView;Z)Z
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/mnt/impl/view/BannerView;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/mnt/impl/view/BannerView;)Lcom/mnt/IAdListener;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mnt/impl/view/BannerView;->b:Lcom/mnt/IAdListener;

    return-object v0
.end method

.method static synthetic b(Lcom/mnt/impl/view/BannerView;Lcom/mnt/Ad;)V
    .locals 5

    .prologue
    .line 45
    .line 1239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mnt/impl/view/BannerView;->h:Ljava/util/List;

    .line 1240
    iget-object v0, p0, Lcom/mnt/impl/view/BannerView;->h:Ljava/util/List;

    invoke-virtual {p1}, Lcom/mnt/Ad;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1241
    new-instance v0, Lcom/mnt/impl/g/a;

    iget-object v1, p0, Lcom/mnt/impl/view/BannerView;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/mnt/Ad;->getIcon()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mnt/impl/view/BannerView;->q:Lcom/mnt/impl/f/a;

    sget-object v4, Lcom/mnt/impl/c/a;->b:Lcom/mnt/impl/c/a;

    .line 2022
    iget v4, v4, Lcom/mnt/impl/c/a;->c:I

    .line 1241
    invoke-direct {v0, v1, v2, v3}, Lcom/mnt/impl/g/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mnt/impl/f/a;)V

    invoke-virtual {v0}, Lcom/mnt/impl/g/a;->c()V

    .line 45
    return-void
.end method

.method static synthetic c(Lcom/mnt/impl/view/BannerView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mnt/impl/view/BannerView;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/mnt/impl/view/BannerView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mnt/impl/view/BannerView;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/mnt/impl/view/BannerView;)Lcom/mnt/impl/dsp/c;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mnt/impl/view/BannerView;->m:Lcom/mnt/impl/dsp/c;

    return-object v0
.end method

.method static synthetic f(Lcom/mnt/impl/view/BannerView;)V
    .locals 4

    .prologue
    .line 3091
    new-instance v0, Lcom/mnt/impl/view/a;

    invoke-direct {v0}, Lcom/mnt/impl/view/a;-><init>()V

    .line 4031
    const/4 v1, 0x0

    iput v1, v0, Lcom/mnt/impl/view/a;->b:I

    .line 3091
    iget-object v1, p0, Lcom/mnt/impl/view/BannerView;->p:Landroid/os/Handler;

    .line 4036
    iput-object v1, v0, Lcom/mnt/impl/view/a;->a:Landroid/os/Handler;

    .line 3091
    sget-object v1, Lcom/mnt/impl/b/b;->a:Lcom/mnt/impl/b/b;

    iget-object v2, p0, Lcom/mnt/impl/view/BannerView;->j:Lcom/mnt/impl/b;

    iget-object v3, p0, Lcom/mnt/impl/view/BannerView;->k:Lcom/mnt/MntBuild;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mnt/impl/view/a;->a(Lcom/mnt/impl/b/b;Lcom/mnt/impl/b;Lcom/mnt/MntBuild;)V

    .line 45
    return-void
.end method

.method static synthetic g(Lcom/mnt/impl/view/BannerView;)Ljava/util/List;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mnt/impl/view/BannerView;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lcom/mnt/impl/view/BannerView;)V
    .locals 13

    .prologue
    const/high16 v12, 0x41a00000    # 20.0f

    const/high16 v11, 0x40a00000    # 5.0f

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 45
    .line 4158
    invoke-virtual {p0, p0}, Lcom/mnt/impl/view/BannerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4159
    invoke-virtual {p0, v10}, Lcom/mnt/impl/view/BannerView;->setBackgroundColor(I)V

    .line 4161
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/mnt/impl/view/BannerView;->a:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4162
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/mnt/impl/view/BannerView;->a:Landroid/content/Context;

    const/high16 v3, 0x43a00000    # 320.0f

    invoke-static {v1, v3}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v3, p0, Lcom/mnt/impl/view/BannerView;->a:Landroid/content/Context;

    const/high16 v4, 0x42480000    # 50.0f

    invoke-static {v3, v4}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4163
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4164
    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 4165
    invoke-virtual {p0, v2, v0}, Lcom/mnt/impl/view/BannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4167
    iget-object v0, p0, Lcom/mnt/impl/view/BannerView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mnt/impl/b/k;->b(Landroid/content/Context;)[I

    move-result-object v0

    aget v1, v0, v8

    .line 4168
    iget-object v0, p0, Lcom/mnt/impl/view/BannerView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mnt/impl/b/k;->b(Landroid/content/Context;)[I

    move-result-object v0

    aget v0, v0, v9

    .line 4169
    iget v3, p0, Lcom/mnt/impl/view/BannerView;->o:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 4170
    iget-object v0, p0, Lcom/mnt/impl/view/BannerView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mnt/impl/b/k;->b(Landroid/content/Context;)[I

    move-result-object v0

    aget v1, v0, v9

    .line 4171
    iget-object v0, p0, Lcom/mnt/impl/view/BannerView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mnt/impl/b/k;->b(Landroid/content/Context;)[I

    move-result-object v0

    aget v0, v0, v8

    .line 4174
    :cond_0
    new-instance v3, Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/mnt/impl/view/BannerView;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 4175
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4176
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4178
    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/mnt/impl/view/BannerView;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/mnt/impl/view/BannerView;->c:Landroid/widget/ImageView;

    .line 4179
    iget-object v4, p0, Lcom/mnt/impl/view/BannerView;->c:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 4180
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v5, p0, Lcom/mnt/impl/view/BannerView;->a:Landroid/content/Context;

    const/high16 v6, 0x42200000    # 40.0f

    invoke-static {v5, v6}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;F)I

    move-result v5

    iget-object v6, p0, Lcom/mnt/impl/view/BannerView;->a:Landroid/content/Context;

    const/high16 v7, 0x42200000    # 40.0f

    invoke-static {v6, v7}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 4181
    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 4182
    iget-object v5, p0, Lcom/mnt/impl/view/BannerView;->a:Landroid/content/Context;

    invoke-static {v5, v11}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 4183
    iget-object v5, p0, Lcom/mnt/impl/view/BannerView;->a:Landroid/content/Context;

    invoke-static {v5, v11}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 4184
    iget-object v5, p0, Lcom/mnt/impl/view/BannerView;->a:Landroid/content/Context;

    invoke-static {v5, v12}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 4185
    iget-object v5, p0, Lcom/mnt/impl/view/BannerView;->a:Landroid/content/Context;

    invoke-static {v5, v11}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 4186
    iget-object v5, p0, Lcom/mnt/impl/view/BannerView;->c:Landroid/widget/ImageView;

    invoke-virtual {v3, v5, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4188
    new-instance v4, Lcom/mnt/impl/view/AdChoicesView;

    iget-object v5, p0, Lcom/mnt/impl/view/BannerView;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/mnt/impl/view/AdChoicesView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v6, p0, Lcom/mnt/impl/view/BannerView;->a:Landroid/content/Context;

    invoke-static {v6, v12}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;F)I

    move-result v6

    iget-object v7, p0, Lcom/mnt/impl/view/BannerView;->a:Landroid/content/Context;

    invoke-static {v7, v12}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4189
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4191
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/mnt/impl/view/BannerView;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4192
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4193
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    div-int/lit8 v5, v0, 0xd

    invoke-direct {v4, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4194
    div-int/lit8 v5, v1, 0x48

    div-int/lit8 v6, v1, 0x48

    invoke-virtual {v4, v5, v8, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 4195
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 4196
    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4198
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/mnt/impl/view/BannerView;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/mnt/impl/view/BannerView;->d:Landroid/widget/TextView;

    .line 4199
    iget-object v4, p0, Lcom/mnt/impl/view/BannerView;->d:Landroid/widget/TextView;

    div-int/lit8 v5, v0, 0x2d

    int-to-float v5, v5

    invoke-virtual {v4, v8, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4200
    iget-object v4, p0, Lcom/mnt/impl/view/BannerView;->d:Landroid/widget/TextView;

    invoke-static {v9}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4201
    iget-object v4, p0, Lcom/mnt/impl/view/BannerView;->d:Landroid/widget/TextView;

    sget-object v5, Lcom/mnt/impl/e;->jC:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4202
    iget-object v4, p0, Lcom/mnt/impl/view/BannerView;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 4203
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/mnt/impl/view/BannerView;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4204
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v10, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4205
    div-int/lit16 v6, v0, 0xae

    div-int/lit16 v7, v0, 0xae

    invoke-virtual {v5, v8, v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 4206
    iget-object v6, p0, Lcom/mnt/impl/view/BannerView;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4207
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4209
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/mnt/impl/view/BannerView;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/mnt/impl/view/BannerView;->e:Landroid/widget/TextView;

    .line 4210
    iget-object v4, p0, Lcom/mnt/impl/view/BannerView;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 4211
    iget-object v4, p0, Lcom/mnt/impl/view/BannerView;->e:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 4212
    iget-object v4, p0, Lcom/mnt/impl/view/BannerView;->e:Landroid/widget/TextView;

    div-int/lit8 v5, v0, 0x32

    int-to-float v5, v5

    invoke-virtual {v4, v8, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4213
    iget-object v4, p0, Lcom/mnt/impl/view/BannerView;->e:Landroid/widget/TextView;

    sget-object v5, Lcom/mnt/impl/e;->jD:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4214
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/mnt/impl/view/BannerView;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4215
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v10, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4216
    iget-object v6, p0, Lcom/mnt/impl/view/BannerView;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4217
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4219
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/mnt/impl/view/BannerView;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 4220
    sget-object v4, Lcom/mnt/impl/e;->jE:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 4221
    iget-object v4, p0, Lcom/mnt/impl/view/BannerView;->f:Lcom/mnt/Ad;

    invoke-static {v4}, Lcom/mnt/impl/e/c;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4222
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 4223
    div-int/lit8 v0, v0, 0x29

    int-to-float v0, v0

    invoke-virtual {v3, v8, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4224
    invoke-static {v9}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4225
    sget-object v0, Lcom/mnt/impl/e;->jF:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4226
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/mnt/impl/view/BannerView;->a:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4227
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    int-to-double v6, v1

    const-wide/high16 v8, 0x4012000000000000L    # 4.5

    div-double/2addr v6, v8

    double-to-int v1, v6

    invoke-direct {v4, v1, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4228
    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4230
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4231
    invoke-virtual {v2, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    return-void
.end method

.method static synthetic i(Lcom/mnt/impl/view/BannerView;)V
    .locals 4

    .prologue
    .line 45
    .line 4248
    iget-object v0, p0, Lcom/mnt/impl/view/BannerView;->f:Lcom/mnt/Ad;

    if-eqz v0, :cond_0

    .line 4249
    new-instance v0, Lcom/mnt/impl/g/a;

    iget-object v1, p0, Lcom/mnt/impl/view/BannerView;->c:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/mnt/impl/view/BannerView;->f:Lcom/mnt/Ad;

    invoke-virtual {v2}, Lcom/mnt/Ad;->getIcon()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/mnt/impl/c/a;->b:Lcom/mnt/impl/c/a;

    .line 5022
    iget v3, v3, Lcom/mnt/impl/c/a;->c:I

    .line 4249
    invoke-direct {v0, v1, v2}, Lcom/mnt/impl/g/a;-><init>(Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mnt/impl/g/a;->c()V

    .line 4250
    iget-object v0, p0, Lcom/mnt/impl/view/BannerView;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mnt/impl/view/BannerView;->f:Lcom/mnt/Ad;

    invoke-virtual {v1}, Lcom/mnt/Ad;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4251
    iget-object v0, p0, Lcom/mnt/impl/view/BannerView;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mnt/impl/view/BannerView;->f:Lcom/mnt/Ad;

    invoke-virtual {v1}, Lcom/mnt/Ad;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/mnt/impl/view/BannerView;->j:Lcom/mnt/impl/b;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/mnt/impl/view/BannerView;->j:Lcom/mnt/impl/b;

    iget-object v1, p0, Lcom/mnt/impl/view/BannerView;->f:Lcom/mnt/Ad;

    invoke-virtual {v0, v1}, Lcom/mnt/impl/b;->a(Ljava/lang/Object;)V

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/mnt/impl/view/BannerView;->b:Lcom/mnt/IAdListener;

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/mnt/impl/view/BannerView;->b:Lcom/mnt/IAdListener;

    invoke-interface {v0}, Lcom/mnt/IAdListener;->onAdClicked()V

    .line 263
    :cond_1
    return-void
.end method

.method public setAdListener(Lcom/mnt/IAdListener;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/mnt/impl/view/BannerView;->b:Lcom/mnt/IAdListener;

    .line 317
    return-void
.end method

.method public setPlacementId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 350
    iput-object p1, p0, Lcom/mnt/impl/view/BannerView;->g:Ljava/lang/String;

    .line 351
    new-instance v0, Lcom/mnt/impl/b;

    iget-object v1, p0, Lcom/mnt/impl/view/BannerView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mnt/impl/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mnt/impl/view/BannerView;->j:Lcom/mnt/impl/b;

    .line 352
    return-void
.end method
