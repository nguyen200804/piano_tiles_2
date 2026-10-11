.class Lcom/cmplay/base/util/webview/encode/Base64$Decoder;
.super Lcom/cmplay/base/util/webview/encode/Base64$Coder;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/base/util/webview/encode/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Decoder"
.end annotation


# static fields
.field private static final DECODE:[I

.field private static final DECODE_WEBSAFE:[I

.field private static final EQUALS:I = -0x2

.field private static final SKIP:I = -0x1


# instance fields
.field private final alphabet:[I

.field private state:I

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x100

    .line 189
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/cmplay/base/util/webview/encode/Base64$Decoder;->DECODE:[I

    .line 205
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/cmplay/base/util/webview/encode/Base64$Decoder;->DECODE_WEBSAFE:[I

    return-void

    .line 189
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3e
        -0x1
        -0x1
        -0x1
        0x3f
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 205
    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3e
        -0x1
        -0x1
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        0x3f
        -0x1
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "output"    # [B

    .prologue
    const/4 v1, 0x0

    .line 233
    invoke-direct {p0}, Lcom/cmplay/base/util/webview/encode/Base64$Coder;-><init>()V

    .line 234
    iput-object p2, p0, Lcom/cmplay/base/util/webview/encode/Base64$Decoder;->output:[B

    .line 236
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_0

    sget-object v0, Lcom/cmplay/base/util/webview/encode/Base64$Decoder;->DECODE:[I

    :goto_0
    iput-object v0, p0, Lcom/cmplay/base/util/webview/encode/Base64$Decoder;->alphabet:[I

    .line 237
    iput v1, p0, Lcom/cmplay/base/util/webview/encode/Base64$Decoder;->state:I

    .line 238
    iput v1, p0, Lcom/cmplay/base/util/webview/encode/Base64$Decoder;->value:I

    .line 239
    return-void

    .line 236
    :cond_0
    sget-object v0, Lcom/cmplay/base/util/webview/encode/Base64$Decoder;->DECODE_WEBSAFE:[I

    goto :goto_0
.end method


# virtual methods
.method public maxOutputSize(I)I
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 246
    mul-int/lit8 v0, p1, 0x3

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public process([BIIZ)Z
    .locals 9
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "finish"    # Z

    .prologue
    .line 256
    iget v0, p0, Lcom/cmplay/base/util/webview/encode/Base64$Decoder;->state:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 257
    const/4 v0, 0x0

    .line 429
    .end local p2    # "offset":I
    :goto_0
    return v0

    .line 260
    .restart local p2    # "offset":I
    :cond_0
    add-int/2addr p3, p2

    .line 267
    iget v3, p0, Lcom/cmplay/base/util/webview/encode/Base64$Decoder;->state:I

    .line 268
    iget v1, p0, Lcom/cmplay/base/util/webview/encode/Base64$Decoder;->value:I

    .line 269
    const/4 v0, 0x0

    .line 270
    iget-object v4, p0, Lcom/cmplay/base/util/webview/encode/Base64$Decoder;->output:[B

    .line 271
    iget-object v5, p0, Lcom/cmplay/base/util/webview/encode/Base64$Decoder;->alphabet:[I

    move v2, p2

    .line 273
    .end local p2    # "offset":I
    :goto_1
    if-ge v2, p3, :cond_c

    .line 288
    if-nez v3, :cond_2

    .line 289
    :goto_2
    add-int/lit8 v6, v2, 0x4

    if-gt v6, p3, :cond_1

    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    aget v1, v5, v1

    shl-int/lit8 v1, v1, 0x12

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    aget v6, v5, v6

    shl-int/lit8 v6, v6, 0xc

    or-int/2addr v1, v6

    add-int/lit8 v6, v2, 0x2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    aget v6, v5, v6

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v1, v6

    add-int/lit8 v6, v2, 0x3

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    aget v6, v5, v6

    or-int/2addr v1, v6

    if-ltz v1, :cond_1

    .line 292
    add-int/lit8 v6, v0, 0x2

    int-to-byte v7, v1

    aput-byte v7, v4, v6

    .line 293
    add-int/lit8 v6, v0, 0x1

    shr-int/lit8 v7, v1, 0x8

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    .line 294
    shr-int/lit8 v6, v1, 0x10

    int-to-byte v6, v6

    aput-byte v6, v4, v0

    .line 295
    add-int/lit8 v0, v0, 0x3

    .line 296
    add-int/lit8 v2, v2, 0x4

    goto :goto_2

    .line 298
    :cond_1
    if-lt v2, p3, :cond_2

    move v2, v1

    .line 385
    :goto_3
    if-nez p4, :cond_b

    .line 388
    iput v3, p0, Lcom/cmplay/base/util/webview/encode/Base64$Decoder;->state:I

    .line 389
    iput v2, p0, Lcom/cmplay/base/util/webview/encode/Base64$Decoder;->value:I

    .line 390
    iput v0, p0, Lcom/cmplay/base/util/webview/encode/Base64$Decoder;->op:I

    .line 391
    const/4 v0, 0x1

    goto :goto_0

    .line 307
    :cond_2
    add-int/lit8 p2, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    aget v2, v5, v2

    .line 309
    packed-switch v3, :pswitch_data_0

    :cond_3
    move v2, v3

    :goto_4
    move v3, v2

    move v2, p2

    .line 383
    goto :goto_1

    .line 311
    :pswitch_0
    if-ltz v2, :cond_4

    .line 313
    add-int/lit8 v1, v3, 0x1

    move v8, v2

    move v2, v1

    move v1, v8

    goto :goto_4

    .line 314
    :cond_4
    const/4 v6, -0x1

    if-eq v2, v6, :cond_3

    .line 315
    const/4 v0, 0x6

    iput v0, p0, Lcom/cmplay/base/util/webview/encode/Base64$Decoder;->state:I

    .line 316
    const/4 v0, 0x0

    goto :goto_0

    .line 321
    :pswitch_1
    if-ltz v2, :cond_5

    .line 322
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v2

    .line 323
    add-int/lit8 v2, v3, 0x1

    goto :goto_4

    .line 324
    :cond_5
    const/4 v6, -0x1

    if-eq v2, v6, :cond_3

    .line 325
    const/4 v0, 0x6

    iput v0, p0, Lcom/cmplay/base/util/webview/encode/Base64$Decoder;->state:I

    .line 326
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 331
    :pswitch_2
    if-ltz v2, :cond_6

    .line 332
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v2

    .line 333
    add-int/lit8 v2, v3, 0x1

    goto :goto_4

    .line 334
    :cond_6
    const/4 v6, -0x2

    if-ne v2, v6, :cond_7

    .line 337
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x4

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    .line 338
    const/4 v0, 0x4

    move v8, v2

    move v2, v0

    move v0, v8

    goto :goto_4

    .line 339
    :cond_7
    const/4 v6, -0x1

    if-eq v2, v6, :cond_3

    .line 340
    const/4 v0, 0x6

    iput v0, p0, Lcom/cmplay/base/util/webview/encode/Base64$Decoder;->state:I

    .line 341
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 346
    :pswitch_3
    if-ltz v2, :cond_8

    .line 348
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v2

    .line 349
    add-int/lit8 v2, v0, 0x2

    int-to-byte v3, v1

    aput-byte v3, v4, v2

    .line 350
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v4, v2

    .line 351
    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v4, v0

    .line 352
    add-int/lit8 v0, v0, 0x3

    .line 353
    const/4 v2, 0x0

    goto :goto_4

    .line 354
    :cond_8
    const/4 v6, -0x2

    if-ne v2, v6, :cond_9

    .line 357
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x2

    int-to-byte v3, v3

    aput-byte v3, v4, v2

    .line 358
    shr-int/lit8 v2, v1, 0xa

    int-to-byte v2, v2

    aput-byte v2, v4, v0

    .line 359
    add-int/lit8 v0, v0, 0x2

    .line 360
    const/4 v2, 0x5

    goto :goto_4

    .line 361
    :cond_9
    const/4 v6, -0x1

    if-eq v2, v6, :cond_3

    .line 362
    const/4 v0, 0x6

    iput v0, p0, Lcom/cmplay/base/util/webview/encode/Base64$Decoder;->state:I

    .line 363
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 368
    :pswitch_4
    const/4 v6, -0x2

    if-ne v2, v6, :cond_a

    .line 369
    add-int/lit8 v2, v3, 0x1

    goto :goto_4

    .line 370
    :cond_a
    const/4 v6, -0x1

    if-eq v2, v6, :cond_3

    .line 371
    const/4 v0, 0x6

    iput v0, p0, Lcom/cmplay/base/util/webview/encode/Base64$Decoder;->state:I

    .line 372
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 377
    :pswitch_5
    const/4 v6, -0x1

    if-eq v2, v6, :cond_3

    .line 378
    const/4 v0, 0x6

    iput v0, p0, Lcom/cmplay/base/util/webview/encode/Base64$Decoder;->state:I

    .line 379
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 397
    :cond_b
    packed-switch v3, :pswitch_data_1

    .line 427
    :goto_5
    :pswitch_6
    iput v3, p0, Lcom/cmplay/base/util/webview/encode/Base64$Decoder;->state:I

    .line 428
    iput v0, p0, Lcom/cmplay/base/util/webview/encode/Base64$Decoder;->op:I

    .line 429
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 404
    :pswitch_7
    const/4 v0, 0x6

    iput v0, p0, Lcom/cmplay/base/util/webview/encode/Base64$Decoder;->state:I

    .line 405
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 409
    :pswitch_8
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    aput-byte v2, v4, v0

    move v0, v1

    .line 410
    goto :goto_5

    .line 414
    :pswitch_9
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v5, v2, 0xa

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    .line 415
    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    aput-byte v2, v4, v1

    goto :goto_5

    .line 419
    :pswitch_a
    const/4 v0, 0x6

    iput v0, p0, Lcom/cmplay/base/util/webview/encode/Base64$Decoder;->state:I

    .line 420
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_c
    move v2, v1

    goto/16 :goto_3

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 397
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
