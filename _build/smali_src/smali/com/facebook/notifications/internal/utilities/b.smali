.class public Lcom/facebook/notifications/internal/utilities/b;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/notifications/internal/utilities/b$1;,
        Lcom/facebook/notifications/internal/utilities/b$a;
    }
.end annotation


# static fields
.field private static final C:Ljava/lang/String;


# instance fields
.field protected A:I

.field protected B:I

.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:Z

.field protected e:I

.field protected f:I

.field protected g:[I

.field protected h:[I

.field protected i:I

.field protected j:I

.field protected k:I

.field protected l:Z

.field protected m:I

.field protected n:Ljava/nio/ByteBuffer;

.field protected o:[B

.field protected p:I

.field protected q:[S

.field protected r:[B

.field protected s:[B

.field protected t:[B

.field protected u:[I

.field protected v:[I

.field protected w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/notifications/internal/utilities/b$a;",
            ">;"
        }
    .end annotation
.end field

.field protected x:Lcom/facebook/notifications/internal/utilities/b$a;

.field protected y:Landroid/graphics/Bitmap;

.field protected z:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/facebook/notifications/internal/utilities/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/notifications/internal/utilities/b;->C:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/notifications/internal/utilities/b;->f:I

    .line 113
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/notifications/internal/utilities/b;->o:[B

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/notifications/internal/utilities/b;->p:I

    .line 133
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 2

    .prologue
    .line 164
    const/4 v0, -0x1

    .line 165
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/facebook/notifications/internal/utilities/b;->B:I

    if-ge p1, v1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/facebook/notifications/internal/utilities/b;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/notifications/internal/utilities/b$a;

    iget v0, v0, Lcom/facebook/notifications/internal/utilities/b$a;->i:I

    .line 168
    :cond_0
    return v0
.end method

.method public a([B)I
    .locals 2

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/facebook/notifications/internal/utilities/b;->g()V

    .line 304
    if-eqz p1, :cond_1

    .line 306
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/notifications/internal/utilities/b;->n:Ljava/nio/ByteBuffer;

    .line 307
    iget-object v0, p0, Lcom/facebook/notifications/internal/utilities/b;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 308
    iget-object v0, p0, Lcom/facebook/notifications/internal/utilities/b;->n:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 310
    invoke-virtual {p0}, Lcom/facebook/notifications/internal/utilities/b;->k()V

    .line 311
    invoke-virtual {p0}, Lcom/facebook/notifications/internal/utilities/b;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/facebook/notifications/internal/utilities/b;->j()V

    .line 313
    iget v0, p0, Lcom/facebook/notifications/internal/utilities/b;->B:I

    if-gez v0, :cond_0

    .line 314
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/notifications/internal/utilities/b;->a:I

    .line 321
    :cond_0
    :goto_0
    iget v0, p0, Lcom/facebook/notifications/internal/utilities/b;->a:I

    return v0

    .line 318
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/notifications/internal/utilities/b;->a:I

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 154
    iget v0, p0, Lcom/facebook/notifications/internal/utilities/b;->A:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/facebook/notifications/internal/utilities/b;->B:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/notifications/internal/utilities/b;->A:I

    .line 155
    return-void
.end method

.method protected a(Lcom/facebook/notifications/internal/utilities/b$a;[B)V
    .locals 23

    .prologue
    .line 427
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 429
    if-eqz p1, :cond_0

    .line 431
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/notifications/internal/utilities/b;->n:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p1

    iget v2, v0, Lcom/facebook/notifications/internal/utilities/b$a;->j:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 434
    :cond_0
    const/4 v15, -0x1

    .line 435
    if-nez p1, :cond_6

    move-object/from16 v0, p0

    iget v1, v0, Lcom/facebook/notifications/internal/utilities/b;->b:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/facebook/notifications/internal/utilities/b;->c:I

    mul-int/2addr v1, v2

    move/from16 v16, v1

    .line 438
    :goto_0
    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    array-length v1, v0

    move/from16 v0, v16

    if-ge v1, v0, :cond_2

    .line 439
    :cond_1
    move/from16 v0, v16

    new-array v0, v0, [B

    move-object/from16 p2, v0

    .line 441
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/notifications/internal/utilities/b;->q:[S

    if-nez v1, :cond_3

    .line 442
    const/16 v1, 0x1000

    new-array v1, v1, [S

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/facebook/notifications/internal/utilities/b;->q:[S

    .line 444
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/notifications/internal/utilities/b;->r:[B

    if-nez v1, :cond_4

    .line 445
    const/16 v1, 0x1000

    new-array v1, v1, [B

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/facebook/notifications/internal/utilities/b;->r:[B

    .line 447
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/notifications/internal/utilities/b;->s:[B

    if-nez v1, :cond_5

    .line 448
    const/16 v1, 0x1001

    new-array v1, v1, [B

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/facebook/notifications/internal/utilities/b;->s:[B

    .line 452
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/notifications/internal/utilities/b;->h()I

    move-result v17

    .line 453
    const/4 v1, 0x1

    shl-int v18, v1, v17

    .line 454
    add-int/lit8 v19, v18, 0x1

    .line 455
    add-int/lit8 v11, v18, 0x2

    .line 457
    add-int/lit8 v3, v17, 0x1

    .line 458
    const/4 v1, 0x1

    shl-int/2addr v1, v3

    add-int/lit8 v4, v1, -0x1

    .line 459
    const/4 v1, 0x0

    :goto_1
    move/from16 v0, v18

    if-ge v1, v0, :cond_7

    .line 460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/notifications/internal/utilities/b;->q:[S

    const/4 v5, 0x0

    aput-short v5, v2, v1

    .line 461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/notifications/internal/utilities/b;->r:[B

    int-to-byte v5, v1

    aput-byte v5, v2, v1

    .line 459
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 435
    :cond_6
    move-object/from16 v0, p1

    iget v1, v0, Lcom/facebook/notifications/internal/utilities/b$a;->c:I

    move-object/from16 v0, p1

    iget v2, v0, Lcom/facebook/notifications/internal/utilities/b$a;->d:I

    mul-int/2addr v1, v2

    move/from16 v16, v1

    goto :goto_0

    .line 465
    :cond_7
    const/4 v12, 0x0

    .line 466
    const/4 v1, 0x0

    move v5, v12

    move v6, v12

    move v7, v12

    move v14, v1

    move v2, v12

    move v8, v12

    move v10, v15

    move v1, v12

    :goto_2
    move/from16 v0, v16

    if-ge v14, v0, :cond_8

    .line 467
    if-nez v5, :cond_12

    .line 468
    if-ge v8, v3, :cond_b

    .line 470
    if-nez v2, :cond_a

    .line 472
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/notifications/internal/utilities/b;->i()I

    move-result v2

    .line 473
    if-gtz v2, :cond_9

    :cond_8
    move v1, v12

    .line 536
    :goto_3
    move/from16 v0, v16

    if-ge v1, v0, :cond_10

    .line 537
    const/4 v2, 0x0

    aput-byte v2, p2, v1

    .line 536
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 476
    :cond_9
    const/4 v1, 0x0

    .line 478
    :cond_a
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/facebook/notifications/internal/utilities/b;->o:[B

    aget-byte v9, v9, v1

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v8

    add-int/2addr v7, v9

    .line 479
    add-int/lit8 v8, v8, 0x8

    .line 480
    add-int/lit8 v1, v1, 0x1

    .line 481
    add-int/lit8 v2, v2, -0x1

    .line 482
    goto :goto_2

    .line 485
    :cond_b
    and-int v9, v7, v4

    .line 486
    shr-int/2addr v7, v3

    .line 487
    sub-int/2addr v8, v3

    .line 489
    if-gt v9, v11, :cond_8

    move/from16 v0, v19

    if-eq v9, v0, :cond_8

    .line 492
    move/from16 v0, v18

    if-ne v9, v0, :cond_c

    .line 494
    add-int/lit8 v3, v17, 0x1

    .line 495
    const/4 v4, 0x1

    shl-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    .line 496
    add-int/lit8 v11, v18, 0x2

    move v10, v15

    .line 498
    goto :goto_2

    .line 500
    :cond_c
    if-ne v10, v15, :cond_d

    .line 501
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/notifications/internal/utilities/b;->s:[B

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/notifications/internal/utilities/b;->r:[B

    aget-byte v13, v13, v9

    aput-byte v13, v10, v5

    move v5, v6

    move v10, v9

    move v6, v9

    .line 504
    goto :goto_2

    .line 507
    :cond_d
    if-ne v9, v11, :cond_11

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/notifications/internal/utilities/b;->s:[B

    move-object/from16 v20, v0

    add-int/lit8 v13, v5, 0x1

    int-to-byte v6, v6

    aput-byte v6, v20, v5

    move v6, v10

    .line 511
    :goto_4
    move/from16 v0, v18

    if-le v6, v0, :cond_e

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/notifications/internal/utilities/b;->s:[B

    move-object/from16 v20, v0

    add-int/lit8 v5, v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/notifications/internal/utilities/b;->r:[B

    move-object/from16 v21, v0

    aget-byte v21, v21, v6

    aput-byte v21, v20, v13

    .line 513
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/notifications/internal/utilities/b;->q:[S

    aget-short v6, v13, v6

    move v13, v5

    goto :goto_4

    .line 515
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/notifications/internal/utilities/b;->r:[B

    aget-byte v5, v5, v6

    and-int/lit16 v6, v5, 0xff

    .line 517
    const/16 v5, 0x1000

    if-ge v11, v5, :cond_8

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/notifications/internal/utilities/b;->s:[B

    move-object/from16 v20, v0

    add-int/lit8 v5, v13, 0x1

    int-to-byte v0, v6

    move/from16 v21, v0

    aput-byte v21, v20, v13

    .line 521
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/notifications/internal/utilities/b;->q:[S

    int-to-short v10, v10

    aput-short v10, v13, v11

    .line 522
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/notifications/internal/utilities/b;->r:[B

    int-to-byte v13, v6

    aput-byte v13, v10, v11

    .line 523
    add-int/lit8 v10, v11, 0x1

    .line 524
    and-int v11, v10, v4

    if-nez v11, :cond_f

    const/16 v11, 0x1000

    if-ge v10, v11, :cond_f

    .line 525
    add-int/lit8 v3, v3, 0x1

    .line 526
    add-int/2addr v4, v10

    :cond_f
    move/from16 v22, v5

    move v5, v7

    move v7, v9

    move v9, v4

    move v4, v6

    move v6, v8

    move v8, v3

    move/from16 v3, v22

    .line 531
    :goto_5
    add-int/lit8 v11, v3, -0x1

    .line 532
    add-int/lit8 v3, v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/notifications/internal/utilities/b;->s:[B

    aget-byte v13, v13, v11

    aput-byte v13, p2, v12

    .line 533
    add-int/lit8 v12, v14, 0x1

    move v14, v12

    move v12, v3

    move v3, v8

    move v8, v6

    move v6, v4

    move v4, v9

    move/from16 v22, v7

    move v7, v5

    move v5, v11

    move v11, v10

    move/from16 v10, v22

    goto/16 :goto_2

    .line 539
    :cond_10
    return-void

    :cond_11
    move v13, v5

    move v6, v9

    goto :goto_4

    :cond_12
    move v9, v4

    move v4, v6

    move v6, v8

    move v8, v3

    move v3, v5

    move v5, v7

    move v7, v10

    move v10, v11

    goto :goto_5
.end method

.method public b()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/facebook/notifications/internal/utilities/b;->B:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/facebook/notifications/internal/utilities/b;->A:I

    if-gez v0, :cond_1

    .line 176
    :cond_0
    const/4 v0, -0x1

    .line 179
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/facebook/notifications/internal/utilities/b;->A:I

    invoke-virtual {p0, v0}, Lcom/facebook/notifications/internal/utilities/b;->a(I)I

    move-result v0

    goto :goto_0
.end method

.method protected b(I)V
    .locals 12

    .prologue
    .line 328
    iget-object v0, p0, Lcom/facebook/notifications/internal/utilities/b;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/facebook/notifications/internal/utilities/b$a;

    .line 329
    const/4 v0, 0x0

    .line 330
    add-int/lit8 v1, p1, -0x1

    .line 331
    if-ltz v1, :cond_b

    .line 332
    iget-object v0, p0, Lcom/facebook/notifications/internal/utilities/b;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/notifications/internal/utilities/b$a;

    move-object v9, v0

    .line 336
    :goto_0
    iget-object v1, p0, Lcom/facebook/notifications/internal/utilities/b;->u:[I

    .line 339
    if-eqz v9, :cond_4

    iget v0, v9, Lcom/facebook/notifications/internal/utilities/b$a;->g:I

    if-lez v0, :cond_4

    .line 340
    iget v0, v9, Lcom/facebook/notifications/internal/utilities/b$a;->g:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/facebook/notifications/internal/utilities/b;->z:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/facebook/notifications/internal/utilities/b;->z:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget v3, p0, Lcom/facebook/notifications/internal/utilities/b;->b:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/facebook/notifications/internal/utilities/b;->b:I

    iget v7, p0, Lcom/facebook/notifications/internal/utilities/b;->c:I

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 344
    :cond_0
    iget v0, v9, Lcom/facebook/notifications/internal/utilities/b$a;->g:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 346
    const/4 v0, 0x0

    .line 347
    iget-boolean v2, v8, Lcom/facebook/notifications/internal/utilities/b$a;->f:Z

    if-nez v2, :cond_1

    .line 348
    iget v0, p0, Lcom/facebook/notifications/internal/utilities/b;->j:I

    .line 350
    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget v3, v9, Lcom/facebook/notifications/internal/utilities/b$a;->d:I

    if-ge v2, v3, :cond_3

    .line 351
    iget v3, v9, Lcom/facebook/notifications/internal/utilities/b$a;->b:I

    add-int/2addr v3, v2

    iget v4, p0, Lcom/facebook/notifications/internal/utilities/b;->b:I

    mul-int/2addr v3, v4

    iget v4, v9, Lcom/facebook/notifications/internal/utilities/b$a;->a:I

    add-int/2addr v3, v4

    .line 352
    iget v4, v9, Lcom/facebook/notifications/internal/utilities/b$a;->c:I

    add-int/2addr v4, v3

    .line 353
    :goto_2
    if-ge v3, v4, :cond_2

    .line 354
    aput v0, v1, v3

    .line 353
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 350
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 358
    :cond_3
    iget v0, v9, Lcom/facebook/notifications/internal/utilities/b$a;->g:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/facebook/notifications/internal/utilities/b;->y:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 360
    iget-object v0, p0, Lcom/facebook/notifications/internal/utilities/b;->y:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget v3, p0, Lcom/facebook/notifications/internal/utilities/b;->b:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/facebook/notifications/internal/utilities/b;->b:I

    iget v7, p0, Lcom/facebook/notifications/internal/utilities/b;->c:I

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 365
    :cond_4
    iget-object v0, p0, Lcom/facebook/notifications/internal/utilities/b;->t:[B

    invoke-virtual {p0, v8, v0}, Lcom/facebook/notifications/internal/utilities/b;->a(Lcom/facebook/notifications/internal/utilities/b$a;[B)V

    .line 368
    const/4 v4, 0x1

    .line 369
    const/16 v3, 0x8

    .line 370
    const/4 v2, 0x0

    .line 371
    const/4 v0, 0x0

    :goto_3
    iget v5, v8, Lcom/facebook/notifications/internal/utilities/b$a;->d:I

    if-ge v0, v5, :cond_9

    .line 373
    iget-boolean v5, v8, Lcom/facebook/notifications/internal/utilities/b$a;->e:Z

    if-eqz v5, :cond_a

    .line 374
    iget v5, v8, Lcom/facebook/notifications/internal/utilities/b$a;->d:I

    if-lt v2, v5, :cond_5

    .line 375
    add-int/lit8 v4, v4, 0x1

    .line 376
    packed-switch v4, :pswitch_data_0

    .line 393
    :cond_5
    :goto_4
    add-int v5, v2, v3

    move v11, v2

    move v2, v5

    move v5, v11

    .line 395
    :goto_5
    iget v6, v8, Lcom/facebook/notifications/internal/utilities/b$a;->b:I

    add-int/2addr v5, v6

    .line 396
    iget v6, p0, Lcom/facebook/notifications/internal/utilities/b;->c:I

    if-ge v5, v6, :cond_8

    .line 397
    iget v6, p0, Lcom/facebook/notifications/internal/utilities/b;->b:I

    mul-int/2addr v6, v5

    .line 398
    iget v5, v8, Lcom/facebook/notifications/internal/utilities/b$a;->a:I

    add-int v7, v6, v5

    .line 399
    iget v5, v8, Lcom/facebook/notifications/internal/utilities/b$a;->c:I

    add-int/2addr v5, v7

    .line 400
    iget v9, p0, Lcom/facebook/notifications/internal/utilities/b;->b:I

    add-int/2addr v9, v6

    if-ge v9, v5, :cond_6

    .line 401
    iget v5, p0, Lcom/facebook/notifications/internal/utilities/b;->b:I

    add-int/2addr v5, v6

    .line 403
    :cond_6
    iget v6, v8, Lcom/facebook/notifications/internal/utilities/b$a;->c:I

    mul-int/2addr v6, v0

    move v9, v7

    .line 404
    :goto_6
    if-ge v9, v5, :cond_8

    .line 406
    iget-object v10, p0, Lcom/facebook/notifications/internal/utilities/b;->t:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, v10, v6

    and-int/lit16 v6, v6, 0xff

    .line 407
    iget-object v10, p0, Lcom/facebook/notifications/internal/utilities/b;->h:[I

    aget v6, v10, v6

    .line 408
    if-eqz v6, :cond_7

    .line 409
    aput v6, v1, v9

    .line 411
    :cond_7
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    move v6, v7

    .line 412
    goto :goto_6

    .line 378
    :pswitch_0
    const/4 v2, 0x4

    .line 379
    goto :goto_4

    .line 381
    :pswitch_1
    const/4 v2, 0x2

    .line 382
    const/4 v3, 0x4

    .line 383
    goto :goto_4

    .line 385
    :pswitch_2
    const/4 v2, 0x1

    .line 386
    const/4 v3, 0x2

    .line 387
    goto :goto_4

    .line 371
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 417
    :cond_9
    iget-object v2, p0, Lcom/facebook/notifications/internal/utilities/b;->z:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/facebook/notifications/internal/utilities/b;->v:[I

    const/4 v4, 0x0

    iget v5, p0, Lcom/facebook/notifications/internal/utilities/b;->b:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/facebook/notifications/internal/utilities/b;->b:I

    iget v9, p0, Lcom/facebook/notifications/internal/utilities/b;->c:I

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 418
    iget-object v2, p0, Lcom/facebook/notifications/internal/utilities/b;->y:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/facebook/notifications/internal/utilities/b;->v:[I

    const/4 v4, 0x0

    iget v5, p0, Lcom/facebook/notifications/internal/utilities/b;->b:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/facebook/notifications/internal/utilities/b;->b:I

    iget v9, p0, Lcom/facebook/notifications/internal/utilities/b;->c:I

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 420
    iget-object v0, p0, Lcom/facebook/notifications/internal/utilities/b;->z:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget v3, p0, Lcom/facebook/notifications/internal/utilities/b;->b:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/facebook/notifications/internal/utilities/b;->b:I

    iget v7, p0, Lcom/facebook/notifications/internal/utilities/b;->c:I

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 421
    return-void

    :cond_a
    move v5, v0

    goto :goto_5

    :cond_b
    move-object v9, v0

    goto/16 :goto_0

    .line 376
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public c()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/facebook/notifications/internal/utilities/b;->b:I

    return v0
.end method

.method protected c(I)[I
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 604
    mul-int/lit8 v0, p1, 0x3

    .line 605
    const/4 v1, 0x0

    .line 606
    new-array v4, v0, [B

    .line 609
    :try_start_0
    iget-object v0, p0, Lcom/facebook/notifications/internal/utilities/b;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 611
    const/16 v0, 0x100

    new-array v0, v0, [I
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 614
    :goto_0
    if-ge v2, p1, :cond_0

    .line 615
    add-int/lit8 v3, v1, 0x1

    :try_start_1
    aget-byte v1, v4, v1

    and-int/lit16 v5, v1, 0xff

    .line 616
    add-int/lit8 v6, v3, 0x1

    aget-byte v1, v4, v3

    and-int/lit16 v7, v1, 0xff

    .line 617
    add-int/lit8 v1, v6, 0x1

    aget-byte v3, v4, v6

    and-int/lit16 v6, v3, 0xff

    .line 618
    add-int/lit8 v3, v2, 0x1

    const/high16 v8, -0x1000000

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v5, v8

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v5, v7

    or-int/2addr v5, v6

    aput v5, v0, v2
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v3

    .line 619
    goto :goto_0

    .line 620
    :catch_0
    move-exception v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    .line 621
    :goto_1
    sget-object v2, Lcom/facebook/notifications/internal/utilities/b;->C:Ljava/lang/String;

    const-string v3, "Format Error Reading Color Table"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 622
    const/4 v1, 0x1

    iput v1, p0, Lcom/facebook/notifications/internal/utilities/b;->a:I

    .line 625
    :cond_0
    return-object v0

    .line 620
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public d()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/facebook/notifications/internal/utilities/b;->c:I

    return v0
.end method

.method public e()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 223
    iget v0, p0, Lcom/facebook/notifications/internal/utilities/b;->B:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/facebook/notifications/internal/utilities/b;->A:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/notifications/internal/utilities/b;->z:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v3

    .line 257
    :goto_0
    return-object v0

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/facebook/notifications/internal/utilities/b;->w:Ljava/util/ArrayList;

    iget v1, p0, Lcom/facebook/notifications/internal/utilities/b;->A:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/notifications/internal/utilities/b$a;

    .line 230
    iget-object v1, v0, Lcom/facebook/notifications/internal/utilities/b$a;->k:[I

    if-nez v1, :cond_3

    .line 231
    iget-object v1, p0, Lcom/facebook/notifications/internal/utilities/b;->g:[I

    iput-object v1, p0, Lcom/facebook/notifications/internal/utilities/b;->h:[I

    .line 240
    :cond_2
    :goto_1
    iget-boolean v1, v0, Lcom/facebook/notifications/internal/utilities/b$a;->f:Z

    if-eqz v1, :cond_6

    .line 241
    iget-object v1, p0, Lcom/facebook/notifications/internal/utilities/b;->h:[I

    iget v4, v0, Lcom/facebook/notifications/internal/utilities/b$a;->h:I

    aget v1, v1, v4

    .line 242
    iget-object v4, p0, Lcom/facebook/notifications/internal/utilities/b;->h:[I

    iget v5, v0, Lcom/facebook/notifications/internal/utilities/b$a;->h:I

    aput v2, v4, v5

    .line 244
    :goto_2
    iget-object v2, p0, Lcom/facebook/notifications/internal/utilities/b;->h:[I

    if-nez v2, :cond_4

    .line 245
    sget-object v0, Lcom/facebook/notifications/internal/utilities/b;->C:Ljava/lang/String;

    const-string v1, "No Valid Color Table"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/notifications/internal/utilities/b;->a:I

    move-object v0, v3

    .line 247
    goto :goto_0

    .line 233
    :cond_3
    iget-object v1, v0, Lcom/facebook/notifications/internal/utilities/b$a;->k:[I

    iput-object v1, p0, Lcom/facebook/notifications/internal/utilities/b;->h:[I

    .line 234
    iget v1, p0, Lcom/facebook/notifications/internal/utilities/b;->i:I

    iget v4, v0, Lcom/facebook/notifications/internal/utilities/b$a;->h:I

    if-ne v1, v4, :cond_2

    .line 235
    iput v2, p0, Lcom/facebook/notifications/internal/utilities/b;->j:I

    goto :goto_1

    .line 250
    :cond_4
    iget v2, p0, Lcom/facebook/notifications/internal/utilities/b;->A:I

    invoke-virtual {p0, v2}, Lcom/facebook/notifications/internal/utilities/b;->b(I)V

    .line 253
    iget-boolean v2, v0, Lcom/facebook/notifications/internal/utilities/b$a;->f:Z

    if-eqz v2, :cond_5

    .line 254
    iget-object v2, p0, Lcom/facebook/notifications/internal/utilities/b;->h:[I

    iget v0, v0, Lcom/facebook/notifications/internal/utilities/b$a;->h:I

    aput v1, v2, v0

    .line 257
    :cond_5
    iget-object v0, p0, Lcom/facebook/notifications/internal/utilities/b;->z:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_2
.end method

.method protected f()Z
    .locals 1

    .prologue
    .line 545
    iget v0, p0, Lcom/facebook/notifications/internal/utilities/b;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected g()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 552
    iput v0, p0, Lcom/facebook/notifications/internal/utilities/b;->a:I

    .line 553
    iput v0, p0, Lcom/facebook/notifications/internal/utilities/b;->B:I

    .line 554
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/notifications/internal/utilities/b;->A:I

    .line 555
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/notifications/internal/utilities/b;->w:Ljava/util/ArrayList;

    .line 556
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/notifications/internal/utilities/b;->g:[I

    .line 557
    return-void
.end method

.method protected h()I
    .locals 2

    .prologue
    .line 563
    const/4 v0, 0x0

    .line 565
    :try_start_0
    iget-object v1, p0, Lcom/facebook/notifications/internal/utilities/b;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 569
    :goto_0
    return v0

    .line 566
    :catch_0
    move-exception v1

    .line 567
    const/4 v1, 0x1

    iput v1, p0, Lcom/facebook/notifications/internal/utilities/b;->a:I

    goto :goto_0
.end method

.method protected i()I
    .locals 4

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/facebook/notifications/internal/utilities/b;->h()I

    move-result v0

    iput v0, p0, Lcom/facebook/notifications/internal/utilities/b;->p:I

    .line 579
    const/4 v0, 0x0

    .line 580
    iget v1, p0, Lcom/facebook/notifications/internal/utilities/b;->p:I

    if-lez v1, :cond_0

    .line 583
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/facebook/notifications/internal/utilities/b;->p:I

    if-ge v0, v1, :cond_0

    .line 584
    iget v1, p0, Lcom/facebook/notifications/internal/utilities/b;->p:I

    sub-int/2addr v1, v0

    .line 585
    iget-object v2, p0, Lcom/facebook/notifications/internal/utilities/b;->n:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/facebook/notifications/internal/utilities/b;->o:[B

    invoke-virtual {v2, v3, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    add-int/2addr v0, v1

    goto :goto_0

    .line 589
    :catch_0
    move-exception v1

    .line 590
    sget-object v2, Lcom/facebook/notifications/internal/utilities/b;->C:Ljava/lang/String;

    const-string v3, "Error Reading Block"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 591
    const/4 v1, 0x1

    iput v1, p0, Lcom/facebook/notifications/internal/utilities/b;->a:I

    .line 594
    :cond_0
    return v0
.end method

.method protected j()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 633
    move v0, v3

    .line 634
    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/facebook/notifications/internal/utilities/b;->f()Z

    move-result v2

    if-nez v2, :cond_2

    .line 635
    invoke-virtual {p0}, Lcom/facebook/notifications/internal/utilities/b;->h()I

    move-result v2

    .line 636
    sparse-switch v2, :sswitch_data_0

    .line 675
    iput v1, p0, Lcom/facebook/notifications/internal/utilities/b;->a:I

    goto :goto_0

    .line 638
    :sswitch_0
    invoke-virtual {p0}, Lcom/facebook/notifications/internal/utilities/b;->m()V

    goto :goto_0

    .line 641
    :sswitch_1
    invoke-virtual {p0}, Lcom/facebook/notifications/internal/utilities/b;->h()I

    move-result v2

    .line 642
    sparse-switch v2, :sswitch_data_1

    .line 667
    invoke-virtual {p0}, Lcom/facebook/notifications/internal/utilities/b;->q()V

    goto :goto_0

    .line 645
    :sswitch_2
    new-instance v2, Lcom/facebook/notifications/internal/utilities/b$a;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/facebook/notifications/internal/utilities/b$a;-><init>(Lcom/facebook/notifications/internal/utilities/b$1;)V

    iput-object v2, p0, Lcom/facebook/notifications/internal/utilities/b;->x:Lcom/facebook/notifications/internal/utilities/b$a;

    .line 646
    invoke-virtual {p0}, Lcom/facebook/notifications/internal/utilities/b;->l()V

    goto :goto_0

    .line 649
    :sswitch_3
    invoke-virtual {p0}, Lcom/facebook/notifications/internal/utilities/b;->i()I

    .line 650
    const-string v2, ""

    move-object v4, v2

    move v2, v3

    .line 651
    :goto_1
    const/16 v5, 0xb

    if-ge v2, v5, :cond_0

    .line 652
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/notifications/internal/utilities/b;->o:[B

    aget-byte v5, v5, v2

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 651
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 654
    :cond_0
    const-string v2, "NETSCAPE2.0"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 655
    invoke-virtual {p0}, Lcom/facebook/notifications/internal/utilities/b;->o()V

    goto :goto_0

    .line 657
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/notifications/internal/utilities/b;->q()V

    goto :goto_0

    .line 661
    :sswitch_4
    invoke-virtual {p0}, Lcom/facebook/notifications/internal/utilities/b;->q()V

    goto :goto_0

    .line 664
    :sswitch_5
    invoke-virtual {p0}, Lcom/facebook/notifications/internal/utilities/b;->q()V

    goto :goto_0

    :sswitch_6
    move v0, v1

    .line 672
    goto :goto_0

    .line 678
    :cond_2
    return-void

    .line 636
    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_1
        0x2c -> :sswitch_0
        0x3b -> :sswitch_6
    .end sparse-switch

    .line 642
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_5
        0xf9 -> :sswitch_2
        0xfe -> :sswitch_4
        0xff -> :sswitch_3
    .end sparse-switch
.end method

.method protected k()V
    .locals 3

    .prologue
    .line 684
    const-string v1, ""

    .line 685
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    .line 686
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/notifications/internal/utilities/b;->h()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 685
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 688
    :cond_0
    const-string v0, "GIF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 689
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/notifications/internal/utilities/b;->a:I

    .line 697
    :cond_1
    :goto_1
    return-void

    .line 692
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/notifications/internal/utilities/b;->n()V

    .line 693
    iget-boolean v0, p0, Lcom/facebook/notifications/internal/utilities/b;->d:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/notifications/internal/utilities/b;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 694
    iget v0, p0, Lcom/facebook/notifications/internal/utilities/b;->e:I

    invoke-virtual {p0, v0}, Lcom/facebook/notifications/internal/utilities/b;->c(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/notifications/internal/utilities/b;->g:[I

    .line 695
    iget-object v0, p0, Lcom/facebook/notifications/internal/utilities/b;->g:[I

    iget v1, p0, Lcom/facebook/notifications/internal/utilities/b;->i:I

    aget v0, v0, v1

    iput v0, p0, Lcom/facebook/notifications/internal/utilities/b;->j:I

    goto :goto_1
.end method

.method protected l()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 703
    invoke-virtual {p0}, Lcom/facebook/notifications/internal/utilities/b;->h()I

    .line 704
    invoke-virtual {p0}, Lcom/facebook/notifications/internal/utilities/b;->h()I

    move-result v1

    .line 705
    iget-object v2, p0, Lcom/facebook/notifications/internal/utilities/b;->x:Lcom/facebook/notifications/internal/utilities/b$a;

    and-int/lit8 v3, v1, 0x1c

    shr-int/lit8 v3, v3, 0x2

    iput v3, v2, Lcom/facebook/notifications/internal/utilities/b$a;->g:I

    .line 706
    iget-object v2, p0, Lcom/facebook/notifications/internal/utilities/b;->x:Lcom/facebook/notifications/internal/utilities/b$a;

    iget v2, v2, Lcom/facebook/notifications/internal/utilities/b$a;->g:I

    if-nez v2, :cond_0

    .line 707
    iget-object v2, p0, Lcom/facebook/notifications/internal/utilities/b;->x:Lcom/facebook/notifications/internal/utilities/b$a;

    iput v0, v2, Lcom/facebook/notifications/internal/utilities/b$a;->g:I

    .line 709
    :cond_0
    iget-object v2, p0, Lcom/facebook/notifications/internal/utilities/b;->x:Lcom/facebook/notifications/internal/utilities/b$a;

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :goto_0
    iput-boolean v0, v2, Lcom/facebook/notifications/internal/utilities/b$a;->f:Z

    .line 710
    iget-object v0, p0, Lcom/facebook/notifications/internal/utilities/b;->x:Lcom/facebook/notifications/internal/utilities/b$a;

    invoke-virtual {p0}, Lcom/facebook/notifications/internal/utilities/b;->p()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    iput v1, v0, Lcom/facebook/notifications/internal/utilities/b$a;->i:I

    .line 711
    iget-object v0, p0, Lcom/facebook/notifications/internal/utilities/b;->x:Lcom/facebook/notifications/internal/utilities/b$a;

    invoke-virtual {p0}, Lcom/facebook/notifications/internal/utilities/b;->h()I

    move-result v1

    iput v1, v0, Lcom/facebook/notifications/internal/utilities/b$a;->h:I

    .line 712
    invoke-virtual {p0}, Lcom/facebook/notifications/internal/utilities/b;->h()I

    .line 713
    return-void

    .line 709
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected m()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 719
    iget-object v0, p0, Lcom/facebook/notifications/internal/utilities/b;->x:Lcom/facebook/notifications/internal/utilities/b$a;

    invoke-virtual {p0}, Lcom/facebook/notifications/internal/utilities/b;->p()I

    move-result v3

    iput v3, v0, Lcom/facebook/notifications/internal/utilities/b$a;->a:I

    .line 720
    iget-object v0, p0, Lcom/facebook/notifications/internal/utilities/b;->x:Lcom/facebook/notifications/internal/utilities/b$a;

    invoke-virtual {p0}, Lcom/facebook/notifications/internal/utilities/b;->p()I

    move-result v3

    iput v3, v0, Lcom/facebook/notifications/internal/utilities/b$a;->b:I

    .line 721
    iget-object v0, p0, Lcom/facebook/notifications/internal/utilities/b;->x:Lcom/facebook/notifications/internal/utilities/b$a;

    invoke-virtual {p0}, Lcom/facebook/notifications/internal/utilities/b;->p()I

    move-result v3

    iput v3, v0, Lcom/facebook/notifications/internal/utilities/b$a;->c:I

    .line 722
    iget-object v0, p0, Lcom/facebook/notifications/internal/utilities/b;->x:Lcom/facebook/notifications/internal/utilities/b$a;

    invoke-virtual {p0}, Lcom/facebook/notifications/internal/utilities/b;->p()I

    move-result v3

    iput v3, v0, Lcom/facebook/notifications/internal/utilities/b$a;->d:I

    .line 724
    invoke-virtual {p0}, Lcom/facebook/notifications/internal/utilities/b;->h()I

    move-result v3

    .line 725
    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/notifications/internal/utilities/b;->l:Z

    .line 726
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    and-int/lit8 v0, v3, 0x7

    add-int/lit8 v0, v0, 0x1

    int-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v0, v4

    iput v0, p0, Lcom/facebook/notifications/internal/utilities/b;->m:I

    .line 730
    iget-object v0, p0, Lcom/facebook/notifications/internal/utilities/b;->x:Lcom/facebook/notifications/internal/utilities/b$a;

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_1

    :goto_1
    iput-boolean v1, v0, Lcom/facebook/notifications/internal/utilities/b$a;->e:Z

    .line 731
    iget-boolean v0, p0, Lcom/facebook/notifications/internal/utilities/b;->l:Z

    if-eqz v0, :cond_2

    .line 732
    iget-object v0, p0, Lcom/facebook/notifications/internal/utilities/b;->x:Lcom/facebook/notifications/internal/utilities/b$a;

    iget v1, p0, Lcom/facebook/notifications/internal/utilities/b;->m:I

    invoke-virtual {p0, v1}, Lcom/facebook/notifications/internal/utilities/b;->c(I)[I

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/notifications/internal/utilities/b$a;->k:[I

    .line 737
    :goto_2
    iget-object v0, p0, Lcom/facebook/notifications/internal/utilities/b;->x:Lcom/facebook/notifications/internal/utilities/b$a;

    iget-object v1, p0, Lcom/facebook/notifications/internal/utilities/b;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iput v1, v0, Lcom/facebook/notifications/internal/utilities/b$a;->j:I

    .line 739
    iget-object v0, p0, Lcom/facebook/notifications/internal/utilities/b;->t:[B

    invoke-virtual {p0, v8, v0}, Lcom/facebook/notifications/internal/utilities/b;->a(Lcom/facebook/notifications/internal/utilities/b$a;[B)V

    .line 740
    invoke-virtual {p0}, Lcom/facebook/notifications/internal/utilities/b;->q()V

    .line 741
    invoke-virtual {p0}, Lcom/facebook/notifications/internal/utilities/b;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 747
    :goto_3
    return-void

    :cond_0
    move v0, v2

    .line 725
    goto :goto_0

    :cond_1
    move v1, v2

    .line 730
    goto :goto_1

    .line 734
    :cond_2
    iget-object v0, p0, Lcom/facebook/notifications/internal/utilities/b;->x:Lcom/facebook/notifications/internal/utilities/b$a;

    iput-object v8, v0, Lcom/facebook/notifications/internal/utilities/b$a;->k:[I

    goto :goto_2

    .line 745
    :cond_3
    iget v0, p0, Lcom/facebook/notifications/internal/utilities/b;->B:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/notifications/internal/utilities/b;->B:I

    .line 746
    iget-object v0, p0, Lcom/facebook/notifications/internal/utilities/b;->w:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/facebook/notifications/internal/utilities/b;->x:Lcom/facebook/notifications/internal/utilities/b$a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method protected n()V
    .locals 3

    .prologue
    .line 754
    invoke-virtual {p0}, Lcom/facebook/notifications/internal/utilities/b;->p()I

    move-result v0

    iput v0, p0, Lcom/facebook/notifications/internal/utilities/b;->b:I

    .line 755
    invoke-virtual {p0}, Lcom/facebook/notifications/internal/utilities/b;->p()I

    move-result v0

    iput v0, p0, Lcom/facebook/notifications/internal/utilities/b;->c:I

    .line 757
    invoke-virtual {p0}, Lcom/facebook/notifications/internal/utilities/b;->h()I

    move-result v1

    .line 758
    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/notifications/internal/utilities/b;->d:Z

    .line 761
    const/4 v0, 0x2

    and-int/lit8 v1, v1, 0x7

    shl-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/notifications/internal/utilities/b;->e:I

    .line 762
    invoke-virtual {p0}, Lcom/facebook/notifications/internal/utilities/b;->h()I

    move-result v0

    iput v0, p0, Lcom/facebook/notifications/internal/utilities/b;->i:I

    .line 763
    invoke-virtual {p0}, Lcom/facebook/notifications/internal/utilities/b;->h()I

    move-result v0

    iput v0, p0, Lcom/facebook/notifications/internal/utilities/b;->k:I

    .line 766
    iget v0, p0, Lcom/facebook/notifications/internal/utilities/b;->b:I

    iget v1, p0, Lcom/facebook/notifications/internal/utilities/b;->c:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/notifications/internal/utilities/b;->t:[B

    .line 767
    iget v0, p0, Lcom/facebook/notifications/internal/utilities/b;->b:I

    iget v1, p0, Lcom/facebook/notifications/internal/utilities/b;->c:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/facebook/notifications/internal/utilities/b;->u:[I

    .line 768
    iget v0, p0, Lcom/facebook/notifications/internal/utilities/b;->b:I

    iget v1, p0, Lcom/facebook/notifications/internal/utilities/b;->c:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/facebook/notifications/internal/utilities/b;->v:[I

    .line 770
    iget v0, p0, Lcom/facebook/notifications/internal/utilities/b;->b:I

    iget v1, p0, Lcom/facebook/notifications/internal/utilities/b;->c:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/notifications/internal/utilities/b;->y:Landroid/graphics/Bitmap;

    .line 771
    iget v0, p0, Lcom/facebook/notifications/internal/utilities/b;->b:I

    iget v1, p0, Lcom/facebook/notifications/internal/utilities/b;->c:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/notifications/internal/utilities/b;->z:Landroid/graphics/Bitmap;

    .line 772
    return-void

    .line 758
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected o()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 779
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/notifications/internal/utilities/b;->i()I

    .line 780
    iget-object v0, p0, Lcom/facebook/notifications/internal/utilities/b;->o:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-ne v0, v3, :cond_1

    .line 782
    iget-object v0, p0, Lcom/facebook/notifications/internal/utilities/b;->o:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    .line 783
    iget-object v1, p0, Lcom/facebook/notifications/internal/utilities/b;->o:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 784
    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/notifications/internal/utilities/b;->f:I

    .line 786
    :cond_1
    iget v0, p0, Lcom/facebook/notifications/internal/utilities/b;->p:I

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/facebook/notifications/internal/utilities/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    :cond_2
    return-void
.end method

.method protected p()I
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lcom/facebook/notifications/internal/utilities/b;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method protected q()V
    .locals 1

    .prologue
    .line 802
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/notifications/internal/utilities/b;->i()I

    .line 803
    iget v0, p0, Lcom/facebook/notifications/internal/utilities/b;->p:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/notifications/internal/utilities/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 804
    :cond_1
    return-void
.end method
