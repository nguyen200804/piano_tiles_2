.class public final Lcom/cmplay/base/util/f;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# direct methods
.method public static a(IIII)I
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 128
    int-to-float v0, p0

    int-to-float v1, p2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 129
    int-to-float v1, p1

    int-to-float v3, p3

    div-float/2addr v1, v3

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 133
    if-le v0, v2, :cond_1

    if-le v1, v2, :cond_1

    .line 134
    if-le v0, v1, :cond_0

    .line 142
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 138
    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 34
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 35
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 37
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 42
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1, v2, p1, p2}, Lcom/cmplay/base/util/f;->a(IIII)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 43
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 44
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 45
    const-string v2, "BitmapResize"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BitmapUtil.decodeBitmap  maxDisplayWidth:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  maxDisplayHeight:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " op.outWidth:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  op.outHeight:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  op.inSampleSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  bmp.getWidth():"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 47
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  bmp.getHeight():"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {v2, v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-object v1
.end method

.method public static a([BII)Landroid/graphics/Bitmap;
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 60
    const-string v0, "BitmapResize"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BitmapUtil.decodeBitmap  ################ maxDisplayWidth:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  maxDisplayHeight:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    if-nez p0, :cond_1

    move-object v0, v2

    .line 96
    :cond_0
    :goto_0
    return-object v0

    .line 63
    :cond_1
    array-length v0, p0

    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_4

    .line 65
    const-string v2, "BitmapResize"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BitmapUtil.decodeBitmap  before zoomImg  tempBitmap.getWidth():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  tempBitmap.getHeight():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 68
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 73
    if-le v3, p1, :cond_5

    .line 74
    int-to-float v2, p1

    int-to-float v7, v3

    div-float v7, v2, v7

    move v2, v6

    .line 77
    :goto_1
    if-le v4, p2, :cond_2

    .line 78
    int-to-float v2, p2

    int-to-float v5, v4

    div-float v5, v2, v5

    move v2, v6

    .line 81
    :cond_2
    if-eqz v2, :cond_0

    .line 82
    cmpl-float v2, v7, v5

    if-lez v2, :cond_3

    move v2, v5

    .line 83
    :goto_2
    const-string v8, "BitmapResize"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BitmapUtil.decodeBitmap zoomImg   wScale:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "  hScale:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "  scale:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 86
    invoke-virtual {v5, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    move v2, v1

    .line 88
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 89
    const-string v2, "BitmapResize"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BitmapUtil.decodeBitmap  after zoomImg  newBmp.getWidth():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  newBmp.getHeight():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v1

    .line 91
    goto/16 :goto_0

    :cond_3
    move v2, v7

    .line 82
    goto :goto_2

    :cond_4
    move-object v0, v2

    .line 96
    goto/16 :goto_0

    :cond_5
    move v2, v1

    move v7, v5

    goto :goto_1
.end method

.method public static a([B)Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x49

    const/16 v6, 0x47

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/16 v3, 0x46

    .line 549
    const/4 v0, 0x0

    .line 551
    aget-byte v1, p0, v4

    const/16 v2, 0x50

    if-ne v1, v2, :cond_1

    aget-byte v1, p0, v5

    const/16 v2, 0x4e

    if-ne v1, v2, :cond_1

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    if-ne v1, v6, :cond_1

    .line 552
    const-string v0, "PNG"

    .line 566
    :cond_0
    :goto_0
    return-object v0

    .line 556
    :cond_1
    const/4 v1, 0x0

    aget-byte v1, p0, v1

    if-ne v1, v6, :cond_2

    aget-byte v1, p0, v4

    if-ne v1, v7, :cond_2

    aget-byte v1, p0, v5

    if-ne v1, v3, :cond_2

    .line 557
    const-string v0, "GIF"

    goto :goto_0

    .line 561
    :cond_2
    const/4 v1, 0x6

    aget-byte v1, p0, v1

    const/16 v2, 0x4a

    if-ne v1, v2, :cond_0

    const/4 v1, 0x7

    aget-byte v1, p0, v1

    if-ne v1, v3, :cond_0

    const/16 v1, 0x8

    aget-byte v1, p0, v1

    if-ne v1, v7, :cond_0

    const/16 v1, 0x9

    aget-byte v1, p0, v1

    if-ne v1, v3, :cond_0

    .line 563
    const-string v0, "JPG"

    goto :goto_0
.end method
