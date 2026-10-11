.class public Lcom/facebook/notifications/internal/view/g;
.super Landroid/widget/RelativeLayout;
.source "HeroView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/notifications/internal/view/g$2;
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/notifications/internal/configuration/HeroConfiguration;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final b:Lcom/facebook/notifications/internal/utilities/d;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lcom/facebook/notifications/internal/view/b;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final d:Lcom/facebook/notifications/internal/view/e;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/notifications/internal/asset/a;Lcom/facebook/notifications/internal/content/a;Lcom/facebook/notifications/internal/configuration/CardConfiguration;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/notifications/internal/asset/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/notifications/internal/content/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/notifications/internal/configuration/CardConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-virtual {p4}, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->f()Lcom/facebook/notifications/internal/configuration/HeroConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/notifications/internal/view/g;->a:Lcom/facebook/notifications/internal/configuration/HeroConfiguration;

    .line 56
    new-instance v0, Lcom/facebook/notifications/internal/utilities/d;

    invoke-virtual {p4}, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->c()F

    move-result v1

    invoke-static {p4}, Lcom/facebook/notifications/internal/view/g;->a(Lcom/facebook/notifications/internal/configuration/CardConfiguration;)I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/notifications/internal/utilities/d;-><init>(Landroid/content/Context;FI)V

    iput-object v0, p0, Lcom/facebook/notifications/internal/view/g;->b:Lcom/facebook/notifications/internal/utilities/d;

    .line 58
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/g;->a:Lcom/facebook/notifications/internal/configuration/HeroConfiguration;

    if-nez v0, :cond_1

    .line 59
    new-instance v0, Lcom/facebook/notifications/internal/view/b;

    invoke-direct {v0, p1, p2, v3}, Lcom/facebook/notifications/internal/view/b;-><init>(Landroid/content/Context;Lcom/facebook/notifications/internal/asset/a;Lcom/facebook/notifications/internal/asset/Asset;)V

    iput-object v0, p0, Lcom/facebook/notifications/internal/view/g;->c:Lcom/facebook/notifications/internal/view/b;

    .line 60
    new-instance v0, Lcom/facebook/notifications/internal/view/e;

    invoke-direct {v0, p1, p3, v3}, Lcom/facebook/notifications/internal/view/e;-><init>(Landroid/content/Context;Lcom/facebook/notifications/internal/content/a;Lcom/facebook/notifications/internal/content/Content;)V

    iput-object v0, p0, Lcom/facebook/notifications/internal/view/g;->d:Lcom/facebook/notifications/internal/view/e;

    .line 61
    iput v6, p0, Lcom/facebook/notifications/internal/view/g;->e:I

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    new-instance v0, Lcom/facebook/notifications/internal/view/b;

    iget-object v1, p0, Lcom/facebook/notifications/internal/view/g;->a:Lcom/facebook/notifications/internal/configuration/HeroConfiguration;

    invoke-virtual {v1}, Lcom/facebook/notifications/internal/configuration/HeroConfiguration;->c()Lcom/facebook/notifications/internal/asset/Asset;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/facebook/notifications/internal/view/b;-><init>(Landroid/content/Context;Lcom/facebook/notifications/internal/asset/a;Lcom/facebook/notifications/internal/asset/Asset;)V

    iput-object v0, p0, Lcom/facebook/notifications/internal/view/g;->c:Lcom/facebook/notifications/internal/view/b;

    .line 66
    new-instance v0, Lcom/facebook/notifications/internal/view/e;

    iget-object v1, p0, Lcom/facebook/notifications/internal/view/g;->a:Lcom/facebook/notifications/internal/configuration/HeroConfiguration;

    invoke-virtual {v1}, Lcom/facebook/notifications/internal/configuration/HeroConfiguration;->d()Lcom/facebook/notifications/internal/content/Content;

    move-result-object v1

    invoke-direct {v0, p1, p3, v1}, Lcom/facebook/notifications/internal/view/e;-><init>(Landroid/content/Context;Lcom/facebook/notifications/internal/content/a;Lcom/facebook/notifications/internal/content/Content;)V

    iput-object v0, p0, Lcom/facebook/notifications/internal/view/g;->d:Lcom/facebook/notifications/internal/view/e;

    .line 68
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/g;->c:Lcom/facebook/notifications/internal/view/b;

    const v1, 0x53ec9fc7

    invoke-virtual {v0, v1}, Lcom/facebook/notifications/internal/view/b;->setId(I)V

    .line 69
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/g;->d:Lcom/facebook/notifications/internal/view/e;

    const v1, -0x5a1893cb

    invoke-virtual {v0, v1}, Lcom/facebook/notifications/internal/view/e;->setId(I)V

    .line 71
    invoke-virtual {p0}, Lcom/facebook/notifications/internal/view/g;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 72
    invoke-virtual {p4}, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->d()F

    move-result v1

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/facebook/notifications/internal/view/g;->e:I

    .line 74
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/g;->c:Lcom/facebook/notifications/internal/view/b;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/notifications/internal/view/g;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/g;->d:Lcom/facebook/notifications/internal/view/e;

    new-instance v1, Lcom/facebook/notifications/internal/view/g$1;

    invoke-direct {v1, p0, v5, v4}, Lcom/facebook/notifications/internal/view/g$1;-><init>(Lcom/facebook/notifications/internal/view/g;II)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/notifications/internal/view/g;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    invoke-virtual {p0, v6}, Lcom/facebook/notifications/internal/view/g;->setWillNotDraw(Z)V

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 97
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/facebook/notifications/internal/view/g;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private static a(Lcom/facebook/notifications/internal/configuration/CardConfiguration;)I
    .locals 3
    .param p0    # Lcom/facebook/notifications/internal/configuration/CardConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->f()Lcom/facebook/notifications/internal/configuration/HeroConfiguration;

    move-result-object v0

    if-nez v0, :cond_1

    .line 103
    const/4 v0, 0x0

    .line 113
    :cond_0
    :goto_0
    return v0

    .line 106
    :cond_1
    const/4 v0, 0x3

    .line 107
    invoke-virtual {p0}, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->g()Lcom/facebook/notifications/internal/configuration/BodyConfiguration;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->h()Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->h()Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->b()Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;

    move-result-object v1

    sget-object v2, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;->b:Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;

    if-ne v1, v2, :cond_0

    .line 110
    const/16 v0, 0xf

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/notifications/internal/view/g;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/facebook/notifications/internal/view/g;->e:I

    return v0
.end method

.method static synthetic b(Lcom/facebook/notifications/internal/view/g;)Lcom/facebook/notifications/internal/configuration/HeroConfiguration;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/g;->a:Lcom/facebook/notifications/internal/configuration/HeroConfiguration;

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/g;->b:Lcom/facebook/notifications/internal/utilities/d;

    invoke-virtual {v0, p1}, Lcom/facebook/notifications/internal/utilities/d;->a(Landroid/graphics/Canvas;)V

    .line 140
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    .line 141
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 133
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 134
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/g;->b:Lcom/facebook/notifications/internal/utilities/d;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/notifications/internal/utilities/d;->a(ZIIII)V

    .line 135
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/g;->c:Lcom/facebook/notifications/internal/view/b;

    invoke-virtual {v0}, Lcom/facebook/notifications/internal/view/b;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 119
    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 121
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 123
    iget-object v1, p0, Lcom/facebook/notifications/internal/view/g;->c:Lcom/facebook/notifications/internal/view/b;

    invoke-virtual {v1}, Lcom/facebook/notifications/internal/view/b;->getMeasuredHeight()I

    move-result v1

    .line 124
    iget-object v2, p0, Lcom/facebook/notifications/internal/view/g;->d:Lcom/facebook/notifications/internal/view/e;

    invoke-virtual {v2}, Lcom/facebook/notifications/internal/view/e;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lcom/facebook/notifications/internal/view/g;->e:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 126
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 128
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 129
    return-void
.end method
