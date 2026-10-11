.class public Lcom/cmplay/internalpush/video/AspectRatioRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "AspectRatioRelativeLayout.java"


# static fields
.field private static a:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const v0, 0x3fe38e39

    sput v0, Lcom/cmplay/internalpush/video/AspectRatioRelativeLayout;->a:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1

    .prologue
    .line 54
    sget v0, Lcom/cmplay/internalpush/video/AspectRatioRelativeLayout;->a:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 55
    sput p1, Lcom/cmplay/internalpush/video/AspectRatioRelativeLayout;->a:F

    .line 56
    invoke-virtual {p0}, Lcom/cmplay/internalpush/video/AspectRatioRelativeLayout;->requestLayout()V

    .line 58
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v7, 0x0

    const/high16 v6, -0x80000000

    const/high16 v5, 0x40000000    # 2.0f

    .line 62
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 63
    sget v0, Lcom/cmplay/internalpush/video/AspectRatioRelativeLayout;->a:F

    cmpl-float v0, v0, v7

    if-nez v0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/cmplay/internalpush/video/AspectRatioRelativeLayout;->getMeasuredWidth()I

    move-result v1

    .line 69
    invoke-virtual {p0}, Lcom/cmplay/internalpush/video/AspectRatioRelativeLayout;->getMeasuredHeight()I

    move-result v0

    .line 70
    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    .line 71
    sget v3, Lcom/cmplay/internalpush/video/AspectRatioRelativeLayout;->a:F

    div-float v2, v3, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    .line 72
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3c23d70a    # 0.01f

    cmpg-float v3, v3, v4

    if-lez v3, :cond_0

    .line 77
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 78
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 79
    if-ne v3, v6, :cond_2

    if-eq v4, v6, :cond_3

    :cond_2
    if-ne v3, v5, :cond_5

    if-ne v4, v5, :cond_5

    .line 82
    :cond_3
    cmpl-float v2, v2, v7

    if-lez v2, :cond_4

    .line 83
    int-to-float v0, v1

    sget v2, Lcom/cmplay/internalpush/video/AspectRatioRelativeLayout;->a:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 100
    :goto_1
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 101
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 100
    invoke-super {p0, v1, v0}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    goto :goto_0

    .line 85
    :cond_4
    int-to-float v1, v0

    sget v2, Lcom/cmplay/internalpush/video/AspectRatioRelativeLayout;->a:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_1

    .line 87
    :cond_5
    if-eq v3, v5, :cond_6

    if-ne v3, v6, :cond_7

    if-nez v4, :cond_7

    .line 90
    :cond_6
    int-to-float v0, v1

    sget v2, Lcom/cmplay/internalpush/video/AspectRatioRelativeLayout;->a:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_1

    .line 91
    :cond_7
    if-eq v4, v5, :cond_8

    if-ne v4, v6, :cond_0

    if-nez v3, :cond_0

    .line 94
    :cond_8
    int-to-float v1, v0

    sget v2, Lcom/cmplay/internalpush/video/AspectRatioRelativeLayout;->a:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_1
.end method
