.class public Lorg/cocos2dx/lib/Cocos2dxBitmap;
.super Ljava/lang/Object;
.source "Cocos2dxBitmap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;
    }
.end annotation


# static fields
.field private static final HORIZONTALALIGN_CENTER:I = 0x3

.field private static final HORIZONTALALIGN_LEFT:I = 0x1

.field private static final HORIZONTALALIGN_RIGHT:I = 0x2

.field private static final VERTICALALIGN_BOTTOM:I = 0x2

.field private static final VERTICALALIGN_CENTER:I = 0x3

.field private static final VERTICALALIGN_TOP:I = 0x1

.field private static sContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    return-void
.end method

.method private static computeTextProperty(Ljava/lang/String;IILandroid/graphics/Paint;)Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;
    .locals 10
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v3, 0x0

    .line 240
    invoke-virtual {p3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 241
    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v0, v1, v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v4, v0

    .line 244
    invoke-static {p0, p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->splitString(Ljava/lang/String;IILandroid/graphics/Paint;)[Ljava/lang/String;

    move-result-object v5

    .line 247
    if-eqz p1, :cond_0

    .line 261
    .end local p1    # "width":I
    :goto_0
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;

    invoke-direct {v0, p1, v4, v5}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;-><init>(II[Ljava/lang/String;)V

    return-object v0

    .line 252
    .restart local p1    # "width":I
    :cond_0
    array-length v6, v5

    move v2, v3

    move v1, v3

    :goto_1
    if-ge v2, v6, :cond_2

    aget-object v0, v5, v2

    .line 253
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p3, v0, v3, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v0, v8

    .line 255
    if-le v0, v1, :cond_1

    .line 252
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    move p1, v1

    goto :goto_0
.end method

.method private static computeX(Ljava/lang/String;II)I
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I
    .param p2, "horizontalAlignment"    # I

    .prologue
    .line 266
    const/4 v0, 0x0

    .line 268
    packed-switch p2, :pswitch_data_0

    move p1, v0

    .line 280
    .end local p1    # "maxWidth":I
    :goto_0
    :pswitch_0
    return p1

    .line 270
    .restart local p1    # "maxWidth":I
    :pswitch_1
    div-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static computeY(Landroid/graphics/Paint$FontMetricsInt;III)I
    .locals 2
    .param p0, "fontMetricsInt"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p1, "constrainHeight"    # I
    .param p2, "totalHeight"    # I
    .param p3, "verticalAlignment"    # I

    .prologue
    .line 286
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v0, v0

    .line 288
    if-le p1, p2, :cond_0

    .line 289
    packed-switch p3, :pswitch_data_0

    .line 305
    :cond_0
    :goto_0
    return v0

    .line 291
    :pswitch_0
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v0, v0

    .line 292
    goto :goto_0

    .line 294
    :pswitch_1
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v0, v0

    sub-int v1, p1, p2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 296
    goto :goto_0

    .line 298
    :pswitch_2
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v0, v0

    sub-int v1, p1, p2

    add-int/2addr v0, v1

    .line 299
    goto :goto_0

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static createTextBitmap(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 21
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "fontSize"    # I
    .param p3, "alignment"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 96
    const/16 v3, 0xff

    const/16 v4, 0xff

    const/16 v5, 0xff

    const/16 v6, 0xff

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xff

    const/16 v17, 0xff

    const/16 v18, 0xff

    const/16 v19, 0xff

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-static/range {v0 .. v20}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->createTextBitmapShadowStroke(Ljava/lang/String;Ljava/lang/String;IIIIIIIIZFFFFZIIIIF)Z

    .line 101
    return-void
.end method

.method public static createTextBitmapShadowStroke(Ljava/lang/String;Ljava/lang/String;IIIIIIIIZFFFFZIIIIF)Z
    .locals 20
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "fontSize"    # I
    .param p3, "fontTintR"    # I
    .param p4, "fontTintG"    # I
    .param p5, "fontTintB"    # I
    .param p6, "fontTintA"    # I
    .param p7, "alignment"    # I
    .param p8, "width"    # I
    .param p9, "height"    # I
    .param p10, "shadow"    # Z
    .param p11, "shadowDX"    # F
    .param p12, "shadowDY"    # F
    .param p13, "shadowBlur"    # F
    .param p14, "shadowOpacity"    # F
    .param p15, "stroke"    # Z
    .param p16, "strokeR"    # I
    .param p17, "strokeG"    # I
    .param p18, "strokeB"    # I
    .param p19, "strokeA"    # I
    .param p20, "strokeSize"    # F

    .prologue
    .line 110
    and-int/lit8 v6, p7, 0xf

    .line 111
    shr-int/lit8 v4, p7, 0x4

    and-int/lit8 v5, v4, 0xf

    .line 113
    invoke-static/range {p0 .. p0}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->refactorString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 114
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v6}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->newPaint(Ljava/lang/String;II)Landroid/graphics/Paint;

    move-result-object v7

    .line 117
    if-eqz p8, :cond_0

    .line 119
    const/4 v4, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v7, v0, v4, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v4

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v4, v8

    .line 120
    move/from16 v0, p8

    if-le v4, v0, :cond_0

    .line 122
    const-string v4, "createTextBitmapShadowStroke warning:"

    const-string v5, "the input width is less than the width of the pString\'s first word\n"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v4, 0x0

    .line 195
    :goto_0
    return v4

    .line 129
    :cond_0
    move/from16 v0, p6

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 131
    move-object/from16 v0, p0

    move/from16 v1, p8

    move/from16 v2, p9

    invoke-static {v0, v1, v2, v7}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->computeTextProperty(Ljava/lang/String;IILandroid/graphics/Paint;)Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;

    move-result-object v8

    .line 132
    if-nez p9, :cond_2

    invoke-static {v8}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->access$000(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)I

    move-result v4

    .line 135
    :goto_1
    const/4 v9, 0x0

    .line 136
    const/4 v10, 0x0

    .line 137
    const/4 v11, 0x0

    .line 138
    const/4 v12, 0x0

    .line 140
    invoke-static {v8}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->access$100(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)I

    move-result v13

    if-eqz v13, :cond_1

    if-nez v4, :cond_3

    .line 142
    :cond_1
    const-string v4, "createTextBitmapShadowStroke warning:"

    const-string v5, "textProperty MaxWidth is 0 or bitMapTotalHeight is 0\n"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    move/from16 v4, p9

    .line 132
    goto :goto_1

    .line 147
    :cond_3
    invoke-static {v8}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->access$100(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)I

    move-result v13

    float-to-int v9, v9

    add-int/2addr v9, v13

    float-to-int v10, v10

    add-int/2addr v4, v10

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v4, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 150
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 153
    invoke-virtual {v7}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    .line 156
    if-eqz p15, :cond_4

    .line 158
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v6}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->newPaint(Ljava/lang/String;II)Landroid/graphics/Paint;

    move-result-object v13

    .line 159
    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 160
    move/from16 v0, p20

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 161
    move/from16 v0, p19

    move/from16 v1, p16

    move/from16 v2, p17

    move/from16 v3, p18

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 164
    invoke-static {v8}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->access$000(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)I

    move-result v14

    move/from16 v0, p9

    invoke-static {v4, v0, v14, v5}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->computeY(Landroid/graphics/Paint$FontMetricsInt;III)I

    move-result v5

    .line 165
    invoke-static {v8}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->access$200(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)[Ljava/lang/String;

    move-result-object v14

    .line 167
    array-length v15, v14

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v15, :cond_5

    aget-object v16, v14, v4

    .line 169
    invoke-static {v8}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->access$100(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)I

    move-result v17

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v0, v1, v6}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->computeX(Ljava/lang/String;II)I

    move-result v17

    .line 170
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v18, v18, v11

    int-to-float v0, v5

    move/from16 v19, v0

    add-float v19, v19, v12

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v10, v0, v1, v2, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 171
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v11

    int-to-float v0, v5

    move/from16 v18, v0

    add-float v18, v18, v12

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v10, v0, v1, v2, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 172
    invoke-static {v8}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->access$300(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)I

    move-result v16

    add-int v5, v5, v16

    .line 167
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 180
    :cond_4
    invoke-static {v8}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->access$000(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)I

    move-result v13

    move/from16 v0, p9

    invoke-static {v4, v0, v13, v5}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->computeY(Landroid/graphics/Paint$FontMetricsInt;III)I

    move-result v5

    .line 182
    invoke-static {v8}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->access$200(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)[Ljava/lang/String;

    move-result-object v13

    .line 184
    array-length v14, v13

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v14, :cond_5

    aget-object v15, v13, v4

    .line 186
    invoke-static {v8}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->access$100(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)I

    move-result v16

    move/from16 v0, v16

    invoke-static {v15, v0, v6}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->computeX(Ljava/lang/String;II)I

    move-result v16

    .line 187
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v16, v16, v11

    int-to-float v0, v5

    move/from16 v17, v0

    add-float v17, v17, v12

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v15, v0, v1, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 188
    invoke-static {v8}, Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;->access$300(Lorg/cocos2dx/lib/Cocos2dxBitmap$TextProperty;)I

    move-result v15

    add-int/2addr v5, v15

    .line 184
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 193
    :cond_5
    invoke-static {v9}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->initNativeObject(Landroid/graphics/Bitmap;)V

    .line 195
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method private static divideStringWithMaxWidth(Ljava/lang/String;ILandroid/graphics/Paint;)Ljava/util/LinkedList;
    .locals 8
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/graphics/Paint;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 368
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 371
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 374
    const/4 v0, 0x1

    move v1, v2

    :goto_0
    if-gt v0, v3, :cond_4

    .line 375
    invoke-virtual {p2, p0, v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v5

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    .line 377
    if-lt v5, p1, :cond_3

    .line 378
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 381
    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    if-le v6, v1, :cond_0

    .line 383
    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 384
    add-int/lit8 v0, v6, 0x1

    .line 397
    :goto_1
    if-ge v0, v3, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x20

    if-ne v1, v5, :cond_2

    .line 398
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 387
    :cond_0
    if-le v5, p1, :cond_1

    add-int/lit8 v5, v1, 0x1

    if-eq v0, v5, :cond_1

    .line 388
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 390
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 392
    :cond_1
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move v1, v0

    .line 374
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 406
    :cond_4
    if-ge v1, v3, :cond_5

    .line 407
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 410
    :cond_5
    return-object v4
.end method

.method private static getFontSizeAccordingHeight(I)I
    .locals 9
    .param p0, "height"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 468
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 469
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 471
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move v0, v2

    move v3, v1

    .line 475
    :goto_0
    if-nez v0, :cond_1

    .line 477
    int-to-float v6, v3

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 478
    const-string v6, "SghMNy"

    .line 479
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v6, v2, v7, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 481
    add-int/lit8 v3, v3, 0x1

    .line 483
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int v6, p0, v6

    const/4 v7, 0x2

    if-gt v6, v7, :cond_0

    move v0, v1

    .line 486
    :cond_0
    const-string v6, "font size"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "incr size:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 488
    :cond_1
    return v3
.end method

.method private static getPixels(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 455
    if-eqz p0, :cond_0

    .line 456
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 458
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 459
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 460
    invoke-virtual {p0, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 464
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getStringWithEllipsis(Ljava/lang/String;FF)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "width"    # F
    .param p2, "fontSize"    # F

    .prologue
    .line 493
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    const-string v0, ""

    .line 501
    :goto_0
    return-object v0

    .line 497
    :cond_0
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 498
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 499
    invoke-virtual {v0, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 501
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p0, v0, p1, v1}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static initNativeObject(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 445
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->getPixels(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 446
    if-nez v0, :cond_0

    .line 452
    :goto_0
    return-void

    .line 450
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2, v0}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->nativeInitBitmapDC(II[B)V

    goto :goto_0
.end method

.method private static native nativeInitBitmapDC(II[B)V
.end method

.method private static newPaint(Ljava/lang/String;II)Landroid/graphics/Paint;
    .locals 5
    .param p0, "fontName"    # Ljava/lang/String;
    .param p1, "fontSize"    # I
    .param p2, "horizontalAlignment"    # I

    .prologue
    const/4 v4, 0x0

    .line 200
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 201
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 202
    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 203
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 206
    const-string v1, ".ttf"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    :try_start_0
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxBitmap;->sContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxTypefaces;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 210
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 231
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 235
    :goto_1
    return-object v0

    .line 211
    :catch_0
    move-exception v1

    .line 212
    const-string v1, "Cocos2dxBitmap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error to create ttf type face: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-static {p0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    .line 219
    :cond_0
    invoke-static {p0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    .line 224
    :pswitch_0
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_1

    .line 227
    :pswitch_1
    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_1

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static refactorString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 415
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 416
    const-string v0, " "

    .line 441
    :goto_0
    return-object v0

    .line 423
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 424
    const/4 v1, 0x0

    .line 425
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    move v5, v0

    move v0, v1

    move v1, v5

    .line 426
    :goto_1
    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 427
    if-eqz v1, :cond_1

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    .line 428
    :cond_1
    const-string v3, " "

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    add-int/lit8 v0, v1, 0x2

    .line 434
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-gt v0, v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ne v1, v3, :cond_4

    .line 441
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 431
    :cond_3
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 438
    :cond_4
    const-string v1, "\n"

    invoke-virtual {v2, v1, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_1
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxBitmap;->sContext:Landroid/content/Context;

    .line 73
    return-void
.end method

.method private static splitString(Ljava/lang/String;IILandroid/graphics/Paint;)[Ljava/lang/String;
    .locals 8
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v1, 0x0

    .line 314
    const-string v0, "\\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 316
    invoke-virtual {p3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    .line 317
    iget v3, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v2, v3, v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 318
    div-int v2, p2, v2

    .line 320
    if-eqz p1, :cond_5

    .line 321
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 322
    array-length v4, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 327
    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 329
    if-le v6, p1, :cond_1

    .line 330
    invoke-static {v5, p1, p3}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->divideStringWithMaxWidth(Ljava/lang/String;ILandroid/graphics/Paint;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 337
    :goto_1
    if-lez v2, :cond_2

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-lt v5, v2, :cond_2

    .line 343
    :cond_0
    if-lez v2, :cond_3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v2, :cond_3

    .line 344
    :goto_2
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v2, :cond_3

    .line 345
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_2

    .line 333
    :cond_1
    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 322
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 349
    :cond_3
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 350
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 363
    :cond_4
    :goto_3
    return-object v0

    .line 351
    :cond_5
    if-eqz p2, :cond_4

    array-length v3, v0

    if-le v3, v2, :cond_4

    .line 353
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 354
    :goto_4
    if-ge v1, v2, :cond_6

    .line 355
    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 357
    :cond_6
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 358
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_3
.end method
