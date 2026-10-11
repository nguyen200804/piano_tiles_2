.class public Lcom/mnt/impl/view/AdChoicesView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Path;

.field private c:Landroid/graphics/Rect;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mnt/impl/view/AdChoicesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mnt/impl/view/AdChoicesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1042
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/mnt/impl/view/AdChoicesView;->a:Landroid/graphics/Paint;

    .line 1043
    iget-object v0, p0, Lcom/mnt/impl/view/AdChoicesView;->a:Landroid/graphics/Paint;

    sget-object v1, Lcom/mnt/impl/e;->jG:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1044
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/mnt/impl/view/AdChoicesView;->b:Landroid/graphics/Path;

    .line 39
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 63
    iget-object v0, p0, Lcom/mnt/impl/view/AdChoicesView;->a:Landroid/graphics/Paint;

    sget-object v1, Lcom/mnt/impl/e;->jH:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    iget-object v0, p0, Lcom/mnt/impl/view/AdChoicesView;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/mnt/impl/view/AdChoicesView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 65
    iget-object v0, p0, Lcom/mnt/impl/view/AdChoicesView;->a:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v0, p0, Lcom/mnt/impl/view/AdChoicesView;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/mnt/impl/view/AdChoicesView;->c:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 68
    iget-object v0, p0, Lcom/mnt/impl/view/AdChoicesView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 69
    iget-object v0, p0, Lcom/mnt/impl/view/AdChoicesView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/mnt/impl/view/AdChoicesView;->c:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/mnt/impl/view/AdChoicesView;->c:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x2

    .line 72
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 73
    iget v1, p0, Lcom/mnt/impl/view/AdChoicesView;->d:I

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    iget v2, p0, Lcom/mnt/impl/view/AdChoicesView;->e:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 74
    const/high16 v1, -0x3dcc0000    # -45.0f

    iget v2, p0, Lcom/mnt/impl/view/AdChoicesView;->d:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/mnt/impl/view/AdChoicesView;->e:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 75
    sget-object v1, Lcom/mnt/impl/e;->jI:Ljava/lang/String;

    iget-object v2, p0, Lcom/mnt/impl/view/AdChoicesView;->c:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    iget-object v3, p0, Lcom/mnt/impl/view/AdChoicesView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 76
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 77
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 49
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/mnt/impl/view/AdChoicesView;->c:Landroid/graphics/Rect;

    .line 52
    iget-object v0, p0, Lcom/mnt/impl/view/AdChoicesView;->b:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 53
    iget-object v0, p0, Lcom/mnt/impl/view/AdChoicesView;->b:Landroid/graphics/Path;

    int-to-float v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 54
    iget-object v0, p0, Lcom/mnt/impl/view/AdChoicesView;->b:Landroid/graphics/Path;

    int-to-float v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 56
    iput p1, p0, Lcom/mnt/impl/view/AdChoicesView;->d:I

    .line 57
    iput p2, p0, Lcom/mnt/impl/view/AdChoicesView;->e:I

    .line 58
    return-void
.end method
