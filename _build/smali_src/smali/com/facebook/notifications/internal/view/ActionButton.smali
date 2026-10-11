.class public Lcom/facebook/notifications/internal/view/ActionButton;
.super Landroid/widget/Button;
.source "ActionButton.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/notifications/internal/view/ActionButton$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/notifications/internal/configuration/ActionConfiguration;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lcom/facebook/notifications/internal/view/ActionButton$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/notifications/internal/configuration/ActionConfiguration;Lcom/facebook/notifications/internal/view/ActionButton$a;F)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "config"    # Lcom/facebook/notifications/internal/configuration/ActionConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "t"    # Lcom/facebook/notifications/internal/view/ActionButton$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "cornerRadius"    # F

    .prologue
    .line 54
    const/4 v0, 0x0

    const v1, 0x101032b

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    iput-object p2, p0, Lcom/facebook/notifications/internal/view/ActionButton;->a:Lcom/facebook/notifications/internal/configuration/ActionConfiguration;

    .line 57
    iput-object p3, p0, Lcom/facebook/notifications/internal/view/ActionButton;->b:Lcom/facebook/notifications/internal/view/ActionButton$a;

    .line 59
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/ActionButton;->a:Lcom/facebook/notifications/internal/configuration/ActionConfiguration;

    invoke-virtual {v0}, Lcom/facebook/notifications/internal/configuration/ActionConfiguration;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/notifications/internal/view/ActionButton;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/ActionButton;->a:Lcom/facebook/notifications/internal/configuration/ActionConfiguration;

    invoke-virtual {v0}, Lcom/facebook/notifications/internal/configuration/ActionConfiguration;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/notifications/internal/view/ActionButton;->setTextColor(I)V

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/notifications/internal/view/ActionButton;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 62
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/facebook/notifications/internal/view/ActionButton;->setPadding(IIII)V

    .line 64
    invoke-virtual {p0}, Lcom/facebook/notifications/internal/view/ActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 65
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/ActionButton;->a:Lcom/facebook/notifications/internal/configuration/ActionConfiguration;

    invoke-virtual {v0}, Lcom/facebook/notifications/internal/configuration/ActionConfiguration;->a()I

    move-result v5

    .line 67
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/ActionButton;->a:Lcom/facebook/notifications/internal/configuration/ActionConfiguration;

    invoke-virtual {v0}, Lcom/facebook/notifications/internal/configuration/ActionConfiguration;->c()F

    move-result v0

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 69
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 70
    invoke-static {v5, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 71
    const/4 v1, 0x2

    aget v2, v0, v1

    float-to-double v6, v2

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v8

    double-to-float v2, v6

    aput v2, v0, v1

    .line 73
    shr-int/lit8 v1, v5, 0x18

    invoke-static {v1, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v10

    .line 75
    new-instance v0, Lcom/facebook/notifications/internal/view/ActionButton$1;

    move-object v1, p0

    move v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/notifications/internal/view/ActionButton$1;-><init>(Lcom/facebook/notifications/internal/view/ActionButton;FLandroid/util/DisplayMetrics;II)V

    .line 82
    new-instance v5, Lcom/facebook/notifications/internal/view/ActionButton$2;

    move-object v6, p0

    move v7, p4

    move-object v8, v3

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/facebook/notifications/internal/view/ActionButton$2;-><init>(Lcom/facebook/notifications/internal/view/ActionButton;FLandroid/util/DisplayMetrics;II)V

    .line 89
    new-instance v1, Lcom/facebook/notifications/internal/utilities/e;

    invoke-direct {v1}, Lcom/facebook/notifications/internal/utilities/e;-><init>()V

    .line 90
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x10100a7

    aput v4, v2, v3

    invoke-virtual {v1, v2, v5}, Lcom/facebook/notifications/internal/utilities/e;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 91
    sget-object v2, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v1, v2, v0}, Lcom/facebook/notifications/internal/utilities/e;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 93
    invoke-virtual {p0, v1}, Lcom/facebook/notifications/internal/view/ActionButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/notifications/internal/view/ActionButton;->setWillNotDraw(Z)V

    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 98
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/notifications/internal/view/ActionButton;->setLayerType(ILandroid/graphics/Paint;)V

    .line 100
    :cond_0
    return-void

    .line 69
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic a(Lcom/facebook/notifications/internal/view/ActionButton;)Lcom/facebook/notifications/internal/configuration/ActionConfiguration;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/ActionButton;->a:Lcom/facebook/notifications/internal/configuration/ActionConfiguration;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/facebook/notifications/internal/configuration/ActionConfiguration;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/ActionButton;->a:Lcom/facebook/notifications/internal/configuration/ActionConfiguration;

    return-object v0
.end method

.method public b()Lcom/facebook/notifications/internal/view/ActionButton$a;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/ActionButton;->b:Lcom/facebook/notifications/internal/view/ActionButton$a;

    return-object v0
.end method
