.class public abstract Lcom/facebook/FacebookButtonBase;
.super Landroid/widget/Button;
.source "FacebookButtonBase.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/view/View$OnClickListener;

.field private d:Landroid/view/View$OnClickListener;

.field private e:Z

.field private f:I

.field private g:I

.field private h:Lcom/facebook/internal/l;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "analyticsButtonCreatedEventName"    # Ljava/lang/String;
    .param p6, "analyticsButtonTappedEventName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    if-nez p4, :cond_0

    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->f()I

    move-result p4

    .line 68
    :cond_0
    if-nez p4, :cond_1

    sget p4, Lcom/facebook/R$style;->com_facebook_button:I

    .line 69
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    iput-object p5, p0, Lcom/facebook/FacebookButtonBase;->a:Ljava/lang/String;

    .line 71
    iput-object p6, p0, Lcom/facebook/FacebookButtonBase;->b:Ljava/lang/String;

    .line 72
    invoke-virtual {p0, v1}, Lcom/facebook/FacebookButtonBase;->setClickable(Z)V

    .line 73
    invoke-virtual {p0, v1}, Lcom/facebook/FacebookButtonBase;->setFocusable(Z)V

    .line 74
    return-void
.end method

.method static synthetic a(Lcom/facebook/FacebookButtonBase;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase;->d:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 225
    invoke-static {p1}, Lcom/facebook/appevents/a;->b(Landroid/content/Context;)Lcom/facebook/appevents/a;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/facebook/FacebookButtonBase;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v2}, Lcom/facebook/appevents/a;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 227
    return-void
.end method

.method static synthetic a(Lcom/facebook/FacebookButtonBase;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/facebook/FacebookButtonBase;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/FacebookButtonBase;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase;->c:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 230
    invoke-static {p1}, Lcom/facebook/appevents/a;->b(Landroid/content/Context;)Lcom/facebook/appevents/a;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/facebook/FacebookButtonBase;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v2}, Lcom/facebook/appevents/a;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 232
    return-void
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 240
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    :goto_0
    return-void

    .line 244
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100d4

    aput v1, v0, v2

    .line 247
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, p2, v0, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 253
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 255
    if-eqz v0, :cond_1

    .line 256
    invoke-virtual {p0, v0}, Lcom/facebook/FacebookButtonBase;->setBackgroundResource(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 258
    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/FacebookButtonBase;->setBackgroundColor(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 265
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 262
    :cond_2
    :try_start_2
    sget v0, Lcom/facebook/R$color;->com_facebook_blue:I

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/FacebookButtonBase;->setBackgroundColor(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private c(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    .prologue
    .line 275
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 282
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, p2, v0, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 288
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/facebook/FacebookButtonBase;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 293
    const/4 v0, 0x4

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/FacebookButtonBase;->setCompoundDrawablePadding(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 298
    return-void

    .line 296
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 275
    nop

    :array_0
    .array-data 4
        0x101016f
        0x101016d
        0x1010170
        0x101016e
        0x1010171
    .end array-data
.end method

.method private d(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    .prologue
    .line 305
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 311
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, p2, v0, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 317
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/facebook/FacebookButtonBase;->setPadding(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 325
    return-void

    .line 323
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 305
    :array_0
    .array-data 4
        0x10100d6
        0x10100d7
        0x10100d8
        0x10100d9
    .end array-data
.end method

.method private e(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 332
    new-array v0, v3, [I

    const v1, 0x1010098

    aput v1, v0, v2

    .line 335
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, p2, v0, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 341
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/FacebookButtonBase;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 345
    new-array v0, v3, [I

    const v1, 0x10100af

    aput v1, v0, v2

    .line 348
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, p2, v0, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 354
    const/4 v0, 0x0

    const/16 v2, 0x11

    :try_start_1
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/FacebookButtonBase;->setGravity(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 356
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 358
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 363
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, p2, v0, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 369
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v0, v2}, Lcom/facebook/FacebookButtonBase;->setTextSize(IF)V

    .line 370
    const/4 v0, 0x1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/FacebookButtonBase;->setTypeface(Landroid/graphics/Typeface;)V

    .line 371
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/FacebookButtonBase;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 373
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 375
    return-void

    .line 343
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 356
    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 373
    :catchall_2
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 358
    nop

    :array_0
    .array-data 4
        0x1010095
        0x1010097
        0x101014f
    .end array-data
.end method

.method private g()V
    .locals 1

    .prologue
    .line 380
    new-instance v0, Lcom/facebook/FacebookButtonBase$1;

    invoke-direct {v0, p0}, Lcom/facebook/FacebookButtonBase$1;-><init>(Lcom/facebook/FacebookButtonBase;)V

    invoke-super {p0, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    return-void
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected a(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 208
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 209
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->d(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 210
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->e(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 211
    invoke-direct {p0}, Lcom/facebook/FacebookButtonBase;->g()V

    .line 212
    return-void
.end method

.method protected a(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/facebook/FacebookButtonBase;->d:Landroid/view/View$OnClickListener;

    .line 222
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase;->c:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase;->c:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 218
    :cond_0
    return-void
.end method

.method public b()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase;->h:Lcom/facebook/internal/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/FacebookButtonBase;->h:Lcom/facebook/internal/l;

    invoke-virtual {v0}, Lcom/facebook/internal/l;->b()Landroid/support/v4/app/Fragment;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase;->h:Lcom/facebook/internal/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/FacebookButtonBase;->h:Lcom/facebook/internal/l;

    invoke-virtual {v0}, Lcom/facebook/internal/l;->a()Landroid/app/Fragment;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->a()I

    move-result v0

    return v0
.end method

.method protected e()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 184
    :goto_0
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_0

    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    .line 185
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 188
    :cond_0
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 189
    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 191
    :cond_1
    new-instance v0, Lcom/facebook/i;

    const-string v1, "Unable to get Activity."

    invoke-direct {v0, v1}, Lcom/facebook/i;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected f()I
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public getCompoundPaddingLeft()I
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/facebook/FacebookButtonBase;->e:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/FacebookButtonBase;->f:I

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingLeft()I

    move-result v0

    goto :goto_0
.end method

.method public getCompoundPaddingRight()I
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/facebook/FacebookButtonBase;->e:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/FacebookButtonBase;->g:I

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingRight()I

    move-result v0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 135
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/FacebookButtonBase;->a(Landroid/content/Context;)V

    .line 138
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 142
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getGravity()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    .line 143
    :goto_0
    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getCompoundPaddingLeft()I

    move-result v0

    .line 152
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getCompoundPaddingRight()I

    move-result v3

    .line 153
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getCompoundDrawablePadding()I

    move-result v4

    .line 154
    add-int/2addr v4, v0

    .line 155
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getWidth()I

    move-result v5

    sub-int v4, v5, v4

    sub-int/2addr v4, v3

    .line 156
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/facebook/FacebookButtonBase;->a(Ljava/lang/String;)I

    move-result v5

    .line 157
    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 158
    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getPaddingLeft()I

    move-result v5

    sub-int v5, v0, v5

    div-int/lit8 v5, v5, 0x2

    .line 159
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 160
    sub-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/FacebookButtonBase;->f:I

    .line 161
    add-int v0, v3, v4

    iput v0, p0, Lcom/facebook/FacebookButtonBase;->g:I

    .line 162
    iput-boolean v1, p0, Lcom/facebook/FacebookButtonBase;->e:Z

    .line 164
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 165
    iput-boolean v2, p0, Lcom/facebook/FacebookButtonBase;->e:Z

    .line 166
    return-void

    :cond_1
    move v0, v2

    .line 142
    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/facebook/FacebookButtonBase;->c:Landroid/view/View$OnClickListener;

    .line 121
    return-void
.end method
