.class Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;
.super Ljava/lang/Object;
.source "ShimmerLJYFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$b;

.field public b:F

.field public c:F

.field public d:I

.field public e:I

.field public f:F

.field public g:F

.field public h:F

.field public i:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$1;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 2

    .prologue
    .line 67
    iget v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->d:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->d:I

    :goto_0
    return v0

    :cond_0
    int-to-float v0, p1

    iget v1, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->g:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public a()[I
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/16 v2, 0xff

    .line 80
    invoke-static {v4, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    const/16 v0, 0x64

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .line 81
    sget-object v0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$3;->a:[I

    iget-object v3, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->i:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;

    invoke-virtual {v3}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 84
    const/4 v0, 0x4

    new-array v0, v0, [I

    aput v1, v0, v4

    const/4 v3, 0x1

    aput v2, v0, v3

    const/4 v3, 0x2

    aput v2, v0, v3

    aput v1, v0, v5

    .line 86
    :goto_0
    return-object v0

    :pswitch_0
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 86
    :array_0
    .array-data 4
        -0x1000000
        -0x1000000
        0x0
    .end array-data
.end method

.method public b(I)I
    .locals 2

    .prologue
    .line 71
    iget v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->e:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->e:I

    :goto_0
    return v0

    :cond_0
    int-to-float v0, p1

    iget v1, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->h:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public b()[F
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 96
    sget-object v0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$3;->a:[I

    iget-object v1, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->i:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;

    invoke-virtual {v1}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 99
    const/4 v0, 0x4

    new-array v0, v0, [F

    iget v1, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->f:F

    sub-float v1, v4, v1

    iget v2, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->c:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v5

    .line 100
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, v0, v6

    iget v1, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->f:F

    sub-float v1, v4, v1

    div-float/2addr v1, v5

    .line 101
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, v0, v7

    const/4 v1, 0x2

    iget v2, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->f:F

    add-float/2addr v2, v4

    div-float/2addr v2, v5

    .line 102
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->f:F

    add-float/2addr v2, v4

    iget v3, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->c:F

    add-float/2addr v2, v3

    div-float/2addr v2, v5

    .line 103
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v0, v1

    .line 110
    :goto_0
    return-object v0

    .line 107
    :pswitch_0
    const/4 v0, 0x3

    new-array v0, v0, [F

    aput v3, v0, v6

    iget v1, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->f:F

    .line 109
    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v0, v7

    const/4 v1, 0x2

    iget v2, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->f:F

    iget v3, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->c:F

    add-float/2addr v2, v3

    .line 110
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v0, v1

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
