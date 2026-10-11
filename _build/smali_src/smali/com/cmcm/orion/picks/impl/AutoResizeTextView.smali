.class public Lcom/cmcm/orion/picks/impl/AutoResizeTextView;
.super Landroid/widget/TextView;
.source "AutoResizeTextView.java"


# instance fields
.field private a:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cmcm/orion/picks/impl/AutoResizeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cmcm/orion/picks/impl/AutoResizeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/cmcm/orion/picks/impl/AutoResizeTextView;->a:F

    .line 29
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/impl/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 40
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/impl/AutoResizeTextView;->getTextSize()F

    move-result v0

    .line 1032
    :goto_0
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/impl/AutoResizeTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/cmcm/orion/picks/impl/a$1;->b(Landroid/content/Context;)F

    move-result v2

    iget v3, p0, Lcom/cmcm/orion/picks/impl/AutoResizeTextView;->a:F

    mul-float/2addr v2, v3

    .line 43
    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/impl/AutoResizeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 45
    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onMeasure: textViewWidth = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/impl/AutoResizeTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/cmcm/orion/picks/impl/a$1;->b(Landroid/content/Context;)F

    move-result v3

    sub-float/2addr v0, v3

    .line 51
    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 59
    return-void
.end method
