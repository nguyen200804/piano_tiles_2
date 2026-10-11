.class public Lcom/duapps/ad/banner/view/BannerGradientTextView;
.super Landroid/widget/TextView;
.source "BannerGradientTextView.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Matrix;

.field private e:Landroid/graphics/LinearGradient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 62
    iget-object v0, p0, Lcom/duapps/ad/banner/view/BannerGradientTextView;->d:Landroid/graphics/Matrix;

    if-nez v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 64
    :cond_0
    iget v0, p0, Lcom/duapps/ad/banner/view/BannerGradientTextView;->b:I

    iget v1, p0, Lcom/duapps/ad/banner/view/BannerGradientTextView;->a:I

    div-int/lit8 v1, v1, 0xf

    add-int/2addr v0, v1

    iput v0, p0, Lcom/duapps/ad/banner/view/BannerGradientTextView;->b:I

    .line 65
    iget v0, p0, Lcom/duapps/ad/banner/view/BannerGradientTextView;->b:I

    iget v1, p0, Lcom/duapps/ad/banner/view/BannerGradientTextView;->a:I

    mul-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_1

    .line 66
    iget v0, p0, Lcom/duapps/ad/banner/view/BannerGradientTextView;->b:I

    iget v1, p0, Lcom/duapps/ad/banner/view/BannerGradientTextView;->a:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/duapps/ad/banner/view/BannerGradientTextView;->b:I

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/banner/view/BannerGradientTextView;->e:Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lcom/duapps/ad/banner/view/BannerGradientTextView;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 45
    if-eqz p1, :cond_0

    .line 46
    iput p1, p0, Lcom/duapps/ad/banner/view/BannerGradientTextView;->a:I

    .line 50
    :goto_0
    invoke-virtual {p0}, Lcom/duapps/ad/banner/view/BannerGradientTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/banner/view/BannerGradientTextView;->c:Landroid/graphics/Paint;

    .line 51
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Lcom/duapps/ad/banner/view/BannerGradientTextView;->a:I

    int-to-float v3, v2

    const/4 v2, 0x3

    new-array v5, v2, [I

    fill-array-data v5, :array_0

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/duapps/ad/banner/view/BannerGradientTextView;->e:Landroid/graphics/LinearGradient;

    .line 54
    iget-object v0, p0, Lcom/duapps/ad/banner/view/BannerGradientTextView;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/duapps/ad/banner/view/BannerGradientTextView;->e:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 55
    iget-object v0, p0, Lcom/duapps/ad/banner/view/BannerGradientTextView;->c:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/banner/view/BannerGradientTextView;->d:Landroid/graphics/Matrix;

    .line 57
    return-void

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/duapps/ad/banner/view/BannerGradientTextView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/duapps/ad/banner/view/BannerGradientTextView;->a:I

    goto :goto_0

    .line 51
    :array_0
    .array-data 4
        -0x2cf01
        -0xf16801
        -0xf00005
    .end array-data
.end method
