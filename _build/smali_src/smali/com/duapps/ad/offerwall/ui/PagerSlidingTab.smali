.class public Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;
.super Landroid/widget/HorizontalScrollView;
.source "PagerSlidingTab.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duapps/ad/offerwall/ui/PagerSlidingTab$a;
    }
.end annotation


# instance fields
.field a:I

.field public b:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/support/v4/view/ViewPager;

.field private e:I

.field private f:I

.field private g:F

.field private h:Landroid/graphics/Paint;

.field private i:Landroid/graphics/Paint;

.field private j:Z

.field private k:I

.field private l:I

.field private m:Z

.field private n:I

.field private o:I

.field private p:I

.field private q:Landroid/widget/LinearLayout$LayoutParams;

.field private final r:Lcom/duapps/ad/offerwall/ui/PagerSlidingTab$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 29
    iput v1, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->f:I

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->g:F

    .line 33
    iput-boolean v1, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->j:Z

    .line 34
    const v0, -0xeb971e

    iput v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->k:I

    .line 35
    const v0, -0xcccccd

    iput v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->l:I

    .line 36
    iput-boolean v1, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->m:Z

    .line 37
    const/16 v0, 0x34

    iput v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->n:I

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->o:I

    .line 39
    iput v1, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->p:I

    .line 40
    iput v1, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->a:I

    .line 42
    new-instance v0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab$a;-><init>(Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;Lcom/duapps/ad/offerwall/ui/PagerSlidingTab$1;)V

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->r:Lcom/duapps/ad/offerwall/ui/PagerSlidingTab$a;

    .line 47
    invoke-direct {p0, p1}, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->a(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput v1, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->f:I

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->g:F

    .line 33
    iput-boolean v1, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->j:Z

    .line 34
    const v0, -0xeb971e

    iput v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->k:I

    .line 35
    const v0, -0xcccccd

    iput v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->l:I

    .line 36
    iput-boolean v1, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->m:Z

    .line 37
    const/16 v0, 0x34

    iput v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->n:I

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->o:I

    .line 39
    iput v1, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->p:I

    .line 40
    iput v1, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->a:I

    .line 42
    new-instance v0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab$a;-><init>(Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;Lcom/duapps/ad/offerwall/ui/PagerSlidingTab$1;)V

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->r:Lcom/duapps/ad/offerwall/ui/PagerSlidingTab$a;

    .line 52
    invoke-direct {p0, p1}, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->a(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput v1, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->f:I

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->g:F

    .line 33
    iput-boolean v1, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->j:Z

    .line 34
    const v0, -0xeb971e

    iput v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->k:I

    .line 35
    const v0, -0xcccccd

    iput v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->l:I

    .line 36
    iput-boolean v1, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->m:Z

    .line 37
    const/16 v0, 0x34

    iput v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->n:I

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->o:I

    .line 39
    iput v1, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->p:I

    .line 40
    iput v1, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->a:I

    .line 42
    new-instance v0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab$a;-><init>(Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;Lcom/duapps/ad/offerwall/ui/PagerSlidingTab$1;)V

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->r:Lcom/duapps/ad/offerwall/ui/PagerSlidingTab$a;

    .line 57
    invoke-direct {p0, p1}, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->a(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;F)F
    .locals 0

    .prologue
    .line 24
    iput p1, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->g:F

    return p1
.end method

.method static synthetic a(Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;I)I
    .locals 0

    .prologue
    .line 24
    iput p1, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->f:I

    return p1
.end method

.method static synthetic a(Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->d:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 81
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 83
    iget v3, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->f:I

    if-ne v1, v3, :cond_0

    .line 84
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 85
    iget v3, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->k:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 88
    iget v3, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->l:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 91
    :cond_1
    return-void
.end method

.method private a(II)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 258
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int v3, v0, p2

    move v1, v2

    .line 259
    :goto_0
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 261
    if-ne v1, p1, :cond_0

    .line 262
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 263
    iget v4, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->k:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 259
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 265
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 266
    iget v4, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->l:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 270
    :cond_1
    if-gtz p1, :cond_2

    if-lez p2, :cond_4

    .line 271
    :cond_2
    iget v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->n:I

    sub-int v0, v3, v0

    .line 274
    :goto_2
    iget v1, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->p:I

    if-eq v0, v1, :cond_3

    .line 275
    iput v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->p:I

    .line 276
    invoke-virtual {p0, v0, v2}, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->scrollTo(II)V

    .line 279
    :cond_3
    return-void

    :cond_4
    move v0, v3

    goto :goto_2
.end method

.method private a(ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 135
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 136
    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 137
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 139
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v0, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 141
    const/4 v0, 0x7

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 143
    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/duapps/ad/R$layout;->duapps_ad_offer_wall_slidetab_text:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 144
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    const/16 v1, 0xd2

    .line 146
    iget v4, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->e:I

    if-lez v4, :cond_0

    .line 147
    iget v1, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->e:I

    div-int v1, v2, v1

    .line 149
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 150
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 151
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 152
    iget v1, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->f:I

    if-ne v1, p1, :cond_1

    .line 153
    iget v1, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->k:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    :goto_0
    new-instance v1, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab$1;

    invoke-direct {v1, p0, p1}, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab$1;-><init>(Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    return-void

    .line 155
    :cond_1
    iget v1, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->l:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 94
    invoke-virtual {p0, v2}, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->setHorizontalScrollBarEnabled(Z)V

    .line 95
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->q:Landroid/widget/LinearLayout$LayoutParams;

    .line 96
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->c:Landroid/widget/LinearLayout;

    .line 97
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 98
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->c:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->addView(Landroid/view/View;)V

    .line 101
    invoke-virtual {p0, v2}, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->setScrollContainer(Z)V

    .line 102
    invoke-virtual {p0, v2}, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->setWillNotDraw(Z)V

    .line 103
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->h:Landroid/graphics/Paint;

    .line 104
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 105
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 107
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->i:Landroid/graphics/Paint;

    .line 108
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 109
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->i:Landroid/graphics/Paint;

    iget v1, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->o:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 110
    return-void
.end method

.method static synthetic a(Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;II)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->a(II)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 66
    iput p1, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->k:I

    .line 67
    invoke-direct {p0}, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->a()V

    .line 68
    return-void
.end method

.method public a(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 113
    iput-object p1, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->d:Landroid/support/v4/view/ViewPager;

    .line 114
    iput-object p2, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->b:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 116
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->r:Lcom/duapps/ad/offerwall/ui/PagerSlidingTab$a;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 122
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 123
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->e:I

    move v0, v1

    .line 125
    :goto_0
    iget v2, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->e:I

    if-ge v0, v2, :cond_2

    .line 126
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, ""

    :cond_1
    invoke-direct {p0, v0, v2}, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->a(ILjava/lang/String;)V

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 131
    iput-boolean v1, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->j:Z

    .line 132
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 76
    iput p1, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->l:I

    .line 77
    invoke-direct {p0}, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->a()V

    .line 78
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 172
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 174
    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->e:I

    if-nez v0, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->getHeight()I

    move-result v0

    .line 181
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->h:Landroid/graphics/Paint;

    iget v2, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->k:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 183
    iget v1, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->f:I

    iput v1, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->a:I

    .line 185
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->c:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->f:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 186
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    .line 187
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v3, v2

    .line 191
    iget v2, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->g:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    iget v2, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->f:I

    iget v4, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->e:I

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_2

    .line 193
    iget-object v2, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->c:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->f:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 194
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    .line 195
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    .line 197
    iget v5, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->g:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->g:F

    sub-float v5, v6, v5

    mul-float/2addr v1, v5

    add-float/2addr v1, v4

    .line 199
    iget v4, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->g:F

    mul-float/2addr v2, v4

    iget v4, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->g:F

    sub-float v4, v6, v4

    mul-float/2addr v3, v4

    add-float/2addr v3, v2

    .line 203
    :cond_2
    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v2, v4}, Lcom/duapps/ad/c/b/c;->a(Landroid/content/Context;F)I

    move-result v2

    sub-int v2, v0, v2

    int-to-float v2, v2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 226
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 228
    iget-boolean v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->m:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->getMeasuredWidth()I

    move-result v3

    move v0, v1

    move v2, v1

    .line 234
    :goto_1
    iget v4, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->e:I

    if-ge v0, v4, :cond_2

    .line 235
    iget-object v4, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v2, v4

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 238
    :cond_2
    iget-boolean v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->j:Z

    if-nez v0, :cond_0

    if-lez v2, :cond_0

    if-lez v3, :cond_0

    .line 240
    if-gt v2, v3, :cond_3

    .line 241
    :goto_2
    iget v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->e:I

    if-ge v1, v0, :cond_3

    .line 242
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->q:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 246
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->j:Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    return v0
.end method
