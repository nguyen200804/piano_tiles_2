.class public Lcom/duapps/ad/banner/view/a;
.super Ljava/lang/Object;
.source "BannerZoomOutTransformer.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$PageTransformer;


# static fields
.field private static a:F

.field private static b:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const v0, 0x3f59999a    # 0.85f

    sput v0, Lcom/duapps/ad/banner/view/a;->a:F

    .line 18
    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lcom/duapps/ad/banner/view/a;->b:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 26
    const/high16 v2, -0x40800000    # -1.0f

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    .line 27
    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 28
    invoke-virtual {p1, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 46
    :goto_0
    return-void

    .line 29
    :cond_0
    cmpg-float v2, p2, v4

    if-gtz v2, :cond_2

    .line 30
    sget v2, Lcom/duapps/ad/banner/view/a;->a:F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float v3, v4, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 31
    int-to-float v1, v1

    sub-float v3, v4, v2

    mul-float/2addr v1, v3

    div-float/2addr v1, v6

    .line 32
    int-to-float v0, v0

    sub-float v3, v4, v2

    mul-float/2addr v0, v3

    div-float/2addr v0, v6

    .line 33
    cmpg-float v3, p2, v5

    if-gez v3, :cond_1

    .line 34
    div-float/2addr v1, v6

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 38
    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 39
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 40
    sget v0, Lcom/duapps/ad/banner/view/a;->b:F

    sget v1, Lcom/duapps/ad/banner/view/a;->a:F

    sub-float v1, v2, v1

    sget v2, Lcom/duapps/ad/banner/view/a;->a:F

    sub-float v2, v4, v2

    div-float/2addr v1, v2

    sget v2, Lcom/duapps/ad/banner/view/a;->b:F

    sub-float v2, v4, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 36
    :cond_1
    neg-float v0, v0

    div-float/2addr v1, v6

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    .line 43
    :cond_2
    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 44
    invoke-virtual {p1, v5}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0
.end method
