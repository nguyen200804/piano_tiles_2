.class public Lcom/facebook/notifications/internal/view/c;
.super Landroid/widget/RelativeLayout;
.source "BodyView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Lcom/facebook/notifications/internal/configuration/BodyConfiguration;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final d:Lcom/facebook/notifications/internal/utilities/d;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final e:Lcom/facebook/notifications/internal/view/b;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final f:Lcom/facebook/notifications/internal/view/e;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/notifications/internal/asset/a;Lcom/facebook/notifications/internal/content/a;Lcom/facebook/notifications/internal/configuration/CardConfiguration;)V
    .locals 8
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
    const/4 v1, 0x0

    const/4 v7, -0x1

    const/4 v6, -0x2

    const v5, -0x5aa2970c

    const/4 v4, 0x0

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    iput v5, p0, Lcom/facebook/notifications/internal/view/c;->a:I

    .line 41
    const v0, 0x2facb6c8

    iput v0, p0, Lcom/facebook/notifications/internal/view/c;->b:I

    .line 51
    invoke-virtual {p4}, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->g()Lcom/facebook/notifications/internal/configuration/BodyConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/notifications/internal/view/c;->c:Lcom/facebook/notifications/internal/configuration/BodyConfiguration;

    .line 53
    invoke-virtual {p4}, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->h()Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->b()Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;

    move-result-object v0

    .line 58
    :goto_0
    sget-object v2, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;->b:Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;

    if-ne v0, v2, :cond_2

    const/16 v0, 0xc

    .line 62
    :goto_1
    new-instance v2, Lcom/facebook/notifications/internal/utilities/d;

    invoke-virtual {p4}, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->c()F

    move-result v3

    invoke-direct {v2, p1, v3, v0}, Lcom/facebook/notifications/internal/utilities/d;-><init>(Landroid/content/Context;FI)V

    iput-object v2, p0, Lcom/facebook/notifications/internal/view/c;->d:Lcom/facebook/notifications/internal/utilities/d;

    .line 64
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/c;->c:Lcom/facebook/notifications/internal/configuration/BodyConfiguration;

    if-nez v0, :cond_3

    .line 65
    new-instance v0, Lcom/facebook/notifications/internal/view/b;

    invoke-direct {v0, p1, p2, v4}, Lcom/facebook/notifications/internal/view/b;-><init>(Landroid/content/Context;Lcom/facebook/notifications/internal/asset/a;Lcom/facebook/notifications/internal/asset/Asset;)V

    iput-object v0, p0, Lcom/facebook/notifications/internal/view/c;->e:Lcom/facebook/notifications/internal/view/b;

    .line 66
    new-instance v0, Lcom/facebook/notifications/internal/view/e;

    invoke-direct {v0, p1, p3, v4}, Lcom/facebook/notifications/internal/view/e;-><init>(Landroid/content/Context;Lcom/facebook/notifications/internal/content/a;Lcom/facebook/notifications/internal/content/Content;)V

    iput-object v0, p0, Lcom/facebook/notifications/internal/view/c;->f:Lcom/facebook/notifications/internal/view/e;

    .line 93
    :cond_0
    :goto_2
    return-void

    .line 54
    :cond_1
    sget-object v0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;->b:Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;

    goto :goto_0

    :cond_2
    move v0, v1

    .line 58
    goto :goto_1

    .line 70
    :cond_3
    new-instance v0, Lcom/facebook/notifications/internal/view/b;

    iget-object v2, p0, Lcom/facebook/notifications/internal/view/c;->c:Lcom/facebook/notifications/internal/configuration/BodyConfiguration;

    invoke-virtual {v2}, Lcom/facebook/notifications/internal/configuration/BodyConfiguration;->b()Lcom/facebook/notifications/internal/asset/Asset;

    move-result-object v2

    invoke-direct {v0, p1, p2, v2}, Lcom/facebook/notifications/internal/view/b;-><init>(Landroid/content/Context;Lcom/facebook/notifications/internal/asset/a;Lcom/facebook/notifications/internal/asset/Asset;)V

    iput-object v0, p0, Lcom/facebook/notifications/internal/view/c;->e:Lcom/facebook/notifications/internal/view/b;

    .line 71
    new-instance v0, Lcom/facebook/notifications/internal/view/e;

    iget-object v2, p0, Lcom/facebook/notifications/internal/view/c;->c:Lcom/facebook/notifications/internal/configuration/BodyConfiguration;

    invoke-virtual {v2}, Lcom/facebook/notifications/internal/configuration/BodyConfiguration;->c()Lcom/facebook/notifications/internal/content/Content;

    move-result-object v2

    invoke-direct {v0, p1, p3, v2}, Lcom/facebook/notifications/internal/view/e;-><init>(Landroid/content/Context;Lcom/facebook/notifications/internal/content/a;Lcom/facebook/notifications/internal/content/Content;)V

    iput-object v0, p0, Lcom/facebook/notifications/internal/view/c;->f:Lcom/facebook/notifications/internal/view/e;

    .line 73
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/c;->e:Lcom/facebook/notifications/internal/view/b;

    invoke-virtual {v0, v5}, Lcom/facebook/notifications/internal/view/b;->setId(I)V

    .line 74
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/c;->f:Lcom/facebook/notifications/internal/view/e;

    const v2, 0x2facb6c8

    invoke-virtual {v0, v2}, Lcom/facebook/notifications/internal/view/e;->setId(I)V

    .line 76
    invoke-virtual {p0}, Lcom/facebook/notifications/internal/view/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 77
    invoke-virtual {p4}, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->d()F

    move-result v2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 79
    iget-object v2, p0, Lcom/facebook/notifications/internal/view/c;->f:Lcom/facebook/notifications/internal/view/e;

    invoke-virtual {v2, v0, v0, v0, v0}, Lcom/facebook/notifications/internal/view/e;->setPadding(IIII)V

    .line 81
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/c;->e:Lcom/facebook/notifications/internal/view/b;

    new-instance v2, Lcom/facebook/notifications/internal/view/c$1;

    invoke-direct {v2, p0, v7, v6}, Lcom/facebook/notifications/internal/view/c$1;-><init>(Lcom/facebook/notifications/internal/view/c;II)V

    invoke-virtual {p0, v0, v2}, Lcom/facebook/notifications/internal/view/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/c;->f:Lcom/facebook/notifications/internal/view/e;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Lcom/facebook/notifications/internal/view/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    invoke-virtual {p0, v1}, Lcom/facebook/notifications/internal/view/c;->setWillNotDraw(Z)V

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 91
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v4}, Lcom/facebook/notifications/internal/view/c;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_2
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/c;->d:Lcom/facebook/notifications/internal/utilities/d;

    invoke-virtual {v0, p1}, Lcom/facebook/notifications/internal/utilities/d;->a(Landroid/graphics/Canvas;)V

    .line 104
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    .line 105
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
    .line 97
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 98
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/c;->d:Lcom/facebook/notifications/internal/utilities/d;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/notifications/internal/utilities/d;->a(ZIIII)V

    .line 99
    return-void
.end method
