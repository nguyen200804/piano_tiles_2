.class Lcom/cmplay/util/crop/CropImageActivity$a;
.super Ljava/lang/Object;
.source "CropImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/util/crop/CropImageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/util/crop/CropImageActivity;


# direct methods
.method private constructor <init>(Lcom/cmplay/util/crop/CropImageActivity;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/cmplay/util/crop/CropImageActivity$a;->a:Lcom/cmplay/util/crop/CropImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cmplay/util/crop/CropImageActivity;Lcom/cmplay/util/crop/CropImageActivity$1;)V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/cmplay/util/crop/CropImageActivity$a;-><init>(Lcom/cmplay/util/crop/CropImageActivity;)V

    return-void
.end method

.method static synthetic a(Lcom/cmplay/util/crop/CropImageActivity$a;)V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/cmplay/util/crop/CropImageActivity$a;->b()V

    return-void
.end method

.method private b()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 212
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity$a;->a:Lcom/cmplay/util/crop/CropImageActivity;

    invoke-static {v0}, Lcom/cmplay/util/crop/CropImageActivity;->d(Lcom/cmplay/util/crop/CropImageActivity;)Lcom/cmplay/util/crop/e;

    move-result-object v0

    if-nez v0, :cond_0

    .line 241
    :goto_0
    return-void

    .line 216
    :cond_0
    new-instance v3, Lcom/cmplay/util/crop/c;

    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity$a;->a:Lcom/cmplay/util/crop/CropImageActivity;

    invoke-static {v0}, Lcom/cmplay/util/crop/CropImageActivity;->b(Lcom/cmplay/util/crop/CropImageActivity;)Lcom/cmplay/util/crop/CropImageView;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/cmplay/util/crop/c;-><init>(Landroid/view/View;)V

    .line 217
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity$a;->a:Lcom/cmplay/util/crop/CropImageActivity;

    invoke-static {v0}, Lcom/cmplay/util/crop/CropImageActivity;->d(Lcom/cmplay/util/crop/CropImageActivity;)Lcom/cmplay/util/crop/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/util/crop/e;->f()I

    move-result v4

    .line 218
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity$a;->a:Lcom/cmplay/util/crop/CropImageActivity;

    invoke-static {v0}, Lcom/cmplay/util/crop/CropImageActivity;->d(Lcom/cmplay/util/crop/CropImageActivity;)Lcom/cmplay/util/crop/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/util/crop/e;->e()I

    move-result v5

    .line 220
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v2, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 223
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v1, v0, 0x5

    .line 227
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity$a;->a:Lcom/cmplay/util/crop/CropImageActivity;

    invoke-static {v0}, Lcom/cmplay/util/crop/CropImageActivity;->e(Lcom/cmplay/util/crop/CropImageActivity;)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity$a;->a:Lcom/cmplay/util/crop/CropImageActivity;

    invoke-static {v0}, Lcom/cmplay/util/crop/CropImageActivity;->f(Lcom/cmplay/util/crop/CropImageActivity;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity$a;->a:Lcom/cmplay/util/crop/CropImageActivity;

    invoke-static {v0}, Lcom/cmplay/util/crop/CropImageActivity;->e(Lcom/cmplay/util/crop/CropImageActivity;)I

    move-result v0

    iget-object v7, p0, Lcom/cmplay/util/crop/CropImageActivity$a;->a:Lcom/cmplay/util/crop/CropImageActivity;

    invoke-static {v7}, Lcom/cmplay/util/crop/CropImageActivity;->f(Lcom/cmplay/util/crop/CropImageActivity;)I

    move-result v7

    if-le v0, v7, :cond_1

    .line 229
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity$a;->a:Lcom/cmplay/util/crop/CropImageActivity;

    invoke-static {v0}, Lcom/cmplay/util/crop/CropImageActivity;->f(Lcom/cmplay/util/crop/CropImageActivity;)I

    move-result v0

    mul-int/2addr v0, v1

    iget-object v7, p0, Lcom/cmplay/util/crop/CropImageActivity$a;->a:Lcom/cmplay/util/crop/CropImageActivity;

    invoke-static {v7}, Lcom/cmplay/util/crop/CropImageActivity;->e(Lcom/cmplay/util/crop/CropImageActivity;)I

    move-result v7

    div-int/2addr v0, v7

    .line 235
    :goto_1
    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    .line 236
    sub-int/2addr v5, v0

    div-int/lit8 v5, v5, 0x2

    .line 238
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v8, v4

    int-to-float v9, v5

    add-int/2addr v1, v4

    int-to-float v1, v1

    add-int/2addr v0, v5

    int-to-float v0, v0

    invoke-direct {v7, v8, v9, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 239
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity$a;->a:Lcom/cmplay/util/crop/CropImageActivity;

    invoke-static {v0}, Lcom/cmplay/util/crop/CropImageActivity;->b(Lcom/cmplay/util/crop/CropImageActivity;)Lcom/cmplay/util/crop/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/util/crop/CropImageView;->a()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity$a;->a:Lcom/cmplay/util/crop/CropImageActivity;

    invoke-static {v0}, Lcom/cmplay/util/crop/CropImageActivity;->e(Lcom/cmplay/util/crop/CropImageActivity;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity$a;->a:Lcom/cmplay/util/crop/CropImageActivity;

    invoke-static {v0}, Lcom/cmplay/util/crop/CropImageActivity;->f(Lcom/cmplay/util/crop/CropImageActivity;)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v3, v1, v6, v7, v0}, Lcom/cmplay/util/crop/c;->a(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;Z)V

    .line 240
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity$a;->a:Lcom/cmplay/util/crop/CropImageActivity;

    invoke-static {v0}, Lcom/cmplay/util/crop/CropImageActivity;->b(Lcom/cmplay/util/crop/CropImageActivity;)Lcom/cmplay/util/crop/CropImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/cmplay/util/crop/CropImageView;->a(Lcom/cmplay/util/crop/c;)V

    goto/16 :goto_0

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity$a;->a:Lcom/cmplay/util/crop/CropImageActivity;

    invoke-static {v0}, Lcom/cmplay/util/crop/CropImageActivity;->e(Lcom/cmplay/util/crop/CropImageActivity;)I

    move-result v0

    mul-int/2addr v0, v1

    iget-object v7, p0, Lcom/cmplay/util/crop/CropImageActivity$a;->a:Lcom/cmplay/util/crop/CropImageActivity;

    invoke-static {v7}, Lcom/cmplay/util/crop/CropImageActivity;->f(Lcom/cmplay/util/crop/CropImageActivity;)I

    move-result v7

    div-int/2addr v0, v7

    move v10, v1

    move v1, v0

    move v0, v10

    goto :goto_1

    :cond_2
    move v0, v2

    .line 239
    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity$a;->a:Lcom/cmplay/util/crop/CropImageActivity;

    invoke-static {v0}, Lcom/cmplay/util/crop/CropImageActivity;->c(Lcom/cmplay/util/crop/CropImageActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cmplay/util/crop/CropImageActivity$a$1;

    invoke-direct {v1, p0}, Lcom/cmplay/util/crop/CropImageActivity$a$1;-><init>(Lcom/cmplay/util/crop/CropImageActivity$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 254
    return-void
.end method
