.class Lcom/cmplay/util/crop/e;
.super Ljava/lang/Object;
.source "RotateBitmap.java"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/cmplay/util/crop/e;->a:Landroid/graphics/Bitmap;

    .line 32
    rem-int/lit16 v0, p2, 0x168

    iput v0, p0, Lcom/cmplay/util/crop/e;->b:I

    .line 33
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/cmplay/util/crop/e;->b:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/cmplay/util/crop/e;->b:I

    .line 37
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cmplay/util/crop/e;->a:Landroid/graphics/Bitmap;

    .line 49
    return-void
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cmplay/util/crop/e;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public c()Landroid/graphics/Matrix;
    .locals 3

    .prologue
    .line 53
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 54
    iget-object v1, p0, Lcom/cmplay/util/crop/e;->a:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/cmplay/util/crop/e;->b:I

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/cmplay/util/crop/e;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 59
    iget-object v2, p0, Lcom/cmplay/util/crop/e;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 60
    neg-int v1, v1

    int-to-float v1, v1

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 61
    iget v1, p0, Lcom/cmplay/util/crop/e;->b:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 62
    invoke-virtual {p0}, Lcom/cmplay/util/crop/e;->f()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/cmplay/util/crop/e;->e()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 64
    :cond_0
    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/cmplay/util/crop/e;->b:I

    div-int/lit8 v0, v0, 0x5a

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cmplay/util/crop/e;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 76
    :goto_0
    return v0

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/cmplay/util/crop/e;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/cmplay/util/crop/e;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/cmplay/util/crop/e;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/cmplay/util/crop/e;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 85
    :goto_0
    return v0

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/cmplay/util/crop/e;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/cmplay/util/crop/e;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/cmplay/util/crop/e;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/cmplay/util/crop/e;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/cmplay/util/crop/e;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmplay/util/crop/e;->a:Landroid/graphics/Bitmap;

    .line 94
    :cond_0
    return-void
.end method
