.class public Lcom/cmplay/base/util/j;
.super Ljava/lang/Object;
.source "DimenUtils.java"


# static fields
.field public static a:Ljava/lang/Float;

.field public static b:Ljava/lang/Float;


# direct methods
.method public static a(Landroid/content/Context;)F
    .locals 3

    .prologue
    .line 92
    sget-object v0, Lcom/cmplay/base/util/j;->a:Ljava/lang/Float;

    if-nez v0, :cond_0

    .line 93
    invoke-static {p0}, Lcom/cmplay/base/util/j;->c(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    invoke-static {p0}, Lcom/cmplay/base/util/j;->e(Landroid/content/Context;)F

    move-result v1

    const/high16 v2, 0x44340000    # 720.0f

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/cmplay/base/util/j;->a:Ljava/lang/Float;

    .line 95
    :cond_0
    sget-object v0, Lcom/cmplay/base/util/j;->a:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method private static a(Landroid/content/Context;IFLandroid/util/DisplayMetrics;)F
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 33
    packed-switch p1, :pswitch_data_0

    .line 48
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 36
    :pswitch_1
    invoke-static {p1, p2, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    goto :goto_0

    .line 38
    :pswitch_2
    iget v0, p3, Landroid/util/DisplayMetrics;->density:F

    div-float v0, p2, v0

    goto :goto_0

    .line 40
    :pswitch_3
    iget v0, p3, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float v0, p2, v0

    goto :goto_0

    .line 42
    :pswitch_4
    invoke-static {p0}, Lcom/cmplay/base/util/j;->b(Landroid/content/Context;)F

    move-result v0

    mul-float/2addr v0, p2

    invoke-static {v1, v0, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    goto :goto_0

    .line 44
    :pswitch_5
    invoke-static {p0}, Lcom/cmplay/base/util/j;->b(Landroid/content/Context;)F

    move-result v0

    mul-float/2addr v0, p2

    goto :goto_0

    .line 46
    :pswitch_6
    invoke-static {p0}, Lcom/cmplay/base/util/j;->a(Landroid/content/Context;)F

    move-result v0

    mul-float/2addr v0, p2

    invoke-static {v1, v0, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    goto :goto_0

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;F)I
    .locals 2

    .prologue
    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {p0, v0, p1, v1}, Lcom/cmplay/base/util/j;->a(Landroid/content/Context;IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static b(Landroid/content/Context;)F
    .locals 3

    .prologue
    .line 99
    sget-object v0, Lcom/cmplay/base/util/j;->b:Ljava/lang/Float;

    if-nez v0, :cond_0

    .line 100
    invoke-static {p0}, Lcom/cmplay/base/util/j;->d(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    .line 101
    invoke-static {p0}, Lcom/cmplay/base/util/j;->e(Landroid/content/Context;)F

    move-result v1

    const/high16 v2, 0x44a00000    # 1280.0f

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 100
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/cmplay/base/util/j;->b:Ljava/lang/Float;

    .line 103
    :cond_0
    sget-object v0, Lcom/cmplay/base/util/j;->b:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 108
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static d(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 113
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public static e(Landroid/content/Context;)F
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public static f(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method
