.class public Lcom/facebook/notifications/internal/view/d;
.super Landroid/widget/LinearLayout;
.source "CardView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/notifications/internal/view/d$1;
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/notifications/internal/configuration/CardConfiguration;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lcom/facebook/notifications/internal/view/g;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lcom/facebook/notifications/internal/view/c;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final d:Lcom/facebook/notifications/internal/view/a;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/notifications/internal/asset/a;Lcom/facebook/notifications/internal/content/a;Lcom/facebook/notifications/internal/view/a$a;Lcom/facebook/notifications/internal/configuration/CardConfiguration;)V
    .locals 4
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
    .param p4    # Lcom/facebook/notifications/internal/view/a$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/facebook/notifications/internal/configuration/CardConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 87
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 88
    iput-object p5, p0, Lcom/facebook/notifications/internal/view/d;->a:Lcom/facebook/notifications/internal/configuration/CardConfiguration;

    .line 90
    new-instance v0, Lcom/facebook/notifications/internal/view/g;

    iget-object v1, p0, Lcom/facebook/notifications/internal/view/d;->a:Lcom/facebook/notifications/internal/configuration/CardConfiguration;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/facebook/notifications/internal/view/g;-><init>(Landroid/content/Context;Lcom/facebook/notifications/internal/asset/a;Lcom/facebook/notifications/internal/content/a;Lcom/facebook/notifications/internal/configuration/CardConfiguration;)V

    iput-object v0, p0, Lcom/facebook/notifications/internal/view/d;->b:Lcom/facebook/notifications/internal/view/g;

    .line 91
    new-instance v0, Lcom/facebook/notifications/internal/view/c;

    iget-object v1, p0, Lcom/facebook/notifications/internal/view/d;->a:Lcom/facebook/notifications/internal/configuration/CardConfiguration;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/facebook/notifications/internal/view/c;-><init>(Landroid/content/Context;Lcom/facebook/notifications/internal/asset/a;Lcom/facebook/notifications/internal/content/a;Lcom/facebook/notifications/internal/configuration/CardConfiguration;)V

    iput-object v0, p0, Lcom/facebook/notifications/internal/view/d;->c:Lcom/facebook/notifications/internal/view/c;

    .line 92
    new-instance v0, Lcom/facebook/notifications/internal/view/a;

    iget-object v1, p0, Lcom/facebook/notifications/internal/view/d;->a:Lcom/facebook/notifications/internal/configuration/CardConfiguration;

    invoke-direct {v0, p1, p2, p4, v1}, Lcom/facebook/notifications/internal/view/a;-><init>(Landroid/content/Context;Lcom/facebook/notifications/internal/asset/a;Lcom/facebook/notifications/internal/view/a$a;Lcom/facebook/notifications/internal/configuration/CardConfiguration;)V

    iput-object v0, p0, Lcom/facebook/notifications/internal/view/d;->d:Lcom/facebook/notifications/internal/view/a;

    .line 94
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/notifications/internal/view/d;->setOrientation(I)V

    .line 95
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/notifications/internal/view/d;->setGravity(I)V

    .line 97
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/d;->b:Lcom/facebook/notifications/internal/view/g;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/notifications/internal/view/d;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/d;->c:Lcom/facebook/notifications/internal/view/c;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/notifications/internal/view/d;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/d;->d:Lcom/facebook/notifications/internal/view/a;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/notifications/internal/view/d;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/d;->a:Lcom/facebook/notifications/internal/configuration/CardConfiguration;

    invoke-virtual {v0}, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/notifications/internal/view/d;->setBackgroundColor(I)V

    .line 102
    return-void
.end method

.method private static a([FLcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;)[F
    .locals 9
    .param p0    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 54
    const/high16 v0, 0x43c80000    # 400.0f

    aget v1, p0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 55
    const/high16 v0, 0x442f0000    # 700.0f

    aget v2, p0, v7

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 57
    sget-object v2, Lcom/facebook/notifications/internal/view/d$1;->a:[I

    invoke-virtual {p1}, Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 71
    :goto_0
    new-array v2, v8, [F

    aput v1, v2, v6

    aput v0, v2, v7

    move-object v0, v2

    :goto_1
    return-object v0

    .line 58
    :pswitch_0
    new-array v0, v8, [F

    fill-array-data v0, :array_0

    goto :goto_1

    .line 60
    :pswitch_1
    float-to-double v2, v1

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v2, v4

    double-to-float v1, v2

    .line 61
    float-to-double v2, v0

    const-wide v4, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v2, v4

    double-to-float v0, v2

    .line 62
    goto :goto_0

    .line 64
    :pswitch_2
    float-to-double v2, v1

    const-wide v4, 0x3fea8f5c28f5c28fL    # 0.83

    mul-double/2addr v2, v4

    double-to-float v1, v2

    .line 65
    float-to-double v2, v0

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v2, v4

    double-to-float v0, v2

    .line 66
    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 58
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 106
    invoke-virtual {p0}, Lcom/facebook/notifications/internal/view/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 107
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 108
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 110
    const/4 v3, 0x2

    new-array v3, v3, [F

    int-to-float v4, v1

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v4, v5

    aput v4, v3, v6

    int-to-float v2, v2

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v4

    aput v2, v3, v7

    .line 114
    iget-object v2, p0, Lcom/facebook/notifications/internal/view/d;->a:Lcom/facebook/notifications/internal/configuration/CardConfiguration;

    invoke-virtual {v2}, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->b()Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/facebook/notifications/internal/view/d;->a([FLcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;)[F

    move-result-object v2

    .line 115
    aget v3, v2, v6

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    aput v3, v2, v6

    .line 116
    aget v3, v2, v7

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v3

    aput v0, v2, v7

    .line 118
    int-to-float v0, v1

    aget v1, v2, v6

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 120
    invoke-virtual {p0, v0, v6, v0, v6}, Lcom/facebook/notifications/internal/view/d;->setPadding(IIII)V

    .line 122
    const v1, 0x7fffffff

    .line 123
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/d;->a:Lcom/facebook/notifications/internal/configuration/CardConfiguration;

    invoke-virtual {v0}, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->f()Lcom/facebook/notifications/internal/configuration/HeroConfiguration;

    move-result-object v3

    .line 125
    const/high16 v0, 0x3f800000    # 1.0f

    .line 126
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/facebook/notifications/internal/configuration/HeroConfiguration;->b()F

    move-result v4

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/facebook/notifications/internal/view/d;->b:Lcom/facebook/notifications/internal/view/g;

    invoke-virtual {v1}, Lcom/facebook/notifications/internal/view/g;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v3, -0x2

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 129
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 131
    iget-object v1, p0, Lcom/facebook/notifications/internal/view/d;->b:Lcom/facebook/notifications/internal/view/g;

    invoke-virtual {v1}, Lcom/facebook/notifications/internal/view/g;->getMeasuredHeight()I

    move-result v1

    .line 137
    :goto_0
    iget-object v3, p0, Lcom/facebook/notifications/internal/view/d;->b:Lcom/facebook/notifications/internal/view/g;

    invoke-virtual {v3}, Lcom/facebook/notifications/internal/view/g;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 145
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 147
    iget-object v3, p0, Lcom/facebook/notifications/internal/view/d;->c:Lcom/facebook/notifications/internal/view/c;

    invoke-virtual {v3}, Lcom/facebook/notifications/internal/view/c;->getMeasuredHeight()I

    move-result v3

    .line 148
    iget-object v4, p0, Lcom/facebook/notifications/internal/view/d;->d:Lcom/facebook/notifications/internal/view/a;

    invoke-virtual {v4}, Lcom/facebook/notifications/internal/view/a;->getMeasuredHeight()I

    move-result v4

    .line 150
    aget v2, v2, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 151
    sub-int/2addr v2, v3

    sub-int/2addr v2, v4

    .line 153
    int-to-float v2, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 154
    iget-object v2, p0, Lcom/facebook/notifications/internal/view/d;->b:Lcom/facebook/notifications/internal/view/g;

    invoke-virtual {v2}, Lcom/facebook/notifications/internal/view/g;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 158
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 159
    return-void

    .line 133
    :cond_1
    invoke-virtual {v3}, Lcom/facebook/notifications/internal/configuration/HeroConfiguration;->b()F

    move-result v0

    goto :goto_0
.end method
