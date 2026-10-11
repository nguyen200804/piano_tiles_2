.class public Lcom/duapps/ad/c/b/c;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/duapps/ad/c/b/c;->a:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x4bt
        0x61t
        0x6at
        0x44t
        0x37t
        0x41t
        0x5at
        0x63t
        0x46t
        0x32t
        0x51t
        0x6et
        0x50t
        0x72t
        0x35t
        0x66t
        0x77t
        0x69t
        0x48t
        0x52t
        0x4et
        0x79t
        0x67t
        0x6dt
        0x75t
        0x70t
        0x55t
        0x54t
        0x49t
        0x58t
        0x78t
        0x36t
        0x39t
        0x42t
        0x57t
        0x62t
        0x2dt
        0x68t
        0x4dt
        0x43t
        0x47t
        0x4at
        0x6ft
        0x5ft
        0x56t
        0x38t
        0x45t
        0x73t
        0x6bt
        0x7at
        0x31t
        0x59t
        0x64t
        0x76t
        0x4ct
        0x33t
        0x34t
        0x6ct
        0x65t
        0x74t
        0x71t
        0x53t
        0x4ft
    .end array-data
.end method

.method public static a(Landroid/content/Context;F)I
    .locals 2

    .prologue
    .line 471
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 472
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 530
    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 533
    :goto_0
    return-object v0

    .line 531
    :catch_0
    move-exception v0

    .line 533
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 56
    array-length v1, v1

    rem-int/lit8 v1, v1, 0x3

    :goto_0
    if-lez v1, :cond_0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 60
    array-length v1, v2

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    new-array v3, v1, [B

    move v1, v0

    .line 62
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_1

    .line 63
    sget-object v4, Lcom/duapps/ad/c/b/c;->a:[B

    aget-byte v5, v2, v1

    and-int/lit16 v5, v5, 0xfc

    shr-int/lit8 v5, v5, 0x2

    aget-byte v4, v4, v5

    aput-byte v4, v3, v0

    .line 64
    add-int/lit8 v4, v0, 0x1

    sget-object v5, Lcom/duapps/ad/c/b/c;->a:[B

    aget-byte v6, v2, v1

    and-int/lit8 v6, v6, 0x3

    shl-int/lit8 v6, v6, 0x4

    add-int/lit8 v7, v1, 0x1

    aget-byte v7, v2, v7

    and-int/lit16 v7, v7, 0xf0

    shr-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 65
    add-int/lit8 v4, v0, 0x2

    sget-object v5, Lcom/duapps/ad/c/b/c;->a:[B

    add-int/lit8 v6, v1, 0x1

    aget-byte v6, v2, v6

    and-int/lit8 v6, v6, 0xf

    shl-int/lit8 v6, v6, 0x2

    add-int/lit8 v7, v1, 0x2

    aget-byte v7, v2, v7

    and-int/lit16 v7, v7, 0xc0

    shr-int/lit8 v7, v7, 0x6

    add-int/2addr v6, v7

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 67
    add-int/lit8 v4, v0, 0x3

    sget-object v5, Lcom/duapps/ad/c/b/c;->a:[B

    add-int/lit8 v6, v1, 0x2

    aget-byte v6, v2, v6

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 68
    add-int/lit8 v1, v1, 0x3

    .line 62
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 70
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 493
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    const-string v0, ""

    .line 498
    :goto_0
    return-object v0

    .line 496
    :cond_0
    invoke-static {p0}, Lcom/duapps/ad/c/b/c;->i(Ljava/lang/String;)[B

    move-result-object v0

    .line 497
    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/duapps/ad/c/b/a;->a([BI)J

    move-result-wide v2

    .line 498
    new-instance v1, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v0, v4, v2, v3}, Lcom/duapps/ad/c/b/a;->a([B[BJ)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0xa

    .line 290
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 294
    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v1, v0

    .line 295
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 5

    .prologue
    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 229
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 230
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 231
    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 233
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 513
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 516
    :goto_0
    return-object v0

    .line 514
    :catch_0
    move-exception v0

    .line 516
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 521
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 522
    invoke-static {v0, p1, p2}, Lcom/duapps/ad/c/b/c;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 525
    :goto_0
    return-object v0

    .line 523
    :catch_0
    move-exception v0

    .line 525
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(I)V
    .locals 3

    .prologue
    .line 255
    if-gtz p0, :cond_0

    .line 256
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "your sid("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is invalid, Please check it "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_0
    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 338
    if-nez p0, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    const v0, 0x1020002

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 343
    invoke-static {v0}, Lcom/duapps/ad/c/b/c;->a(Landroid/view/View;)V

    .line 344
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 345
    if-eqz v0, :cond_0

    .line 346
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 349
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 352
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    .prologue
    .line 547
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 548
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 552
    :goto_0
    return-void

    .line 550
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public static a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 357
    if-nez p0, :cond_1

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    :try_start_0
    const-class v0, Landroid/view/View;

    .line 365
    const-string v1, "mParent"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 366
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 367
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 376
    :goto_1
    const/16 v0, 0x8

    :try_start_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 377
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 379
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 380
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 383
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 384
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 385
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 386
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 387
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 388
    instance-of v0, p0, Landroid/widget/AdapterView;

    if-nez v0, :cond_3

    .line 389
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    :cond_3
    instance-of v0, p0, Landroid/widget/AdapterView;

    if-eqz v0, :cond_4

    .line 392
    check-cast p0, Landroid/widget/AdapterView;

    .line 393
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    .line 394
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 395
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 396
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 397
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    goto :goto_0

    .line 408
    :catch_0
    move-exception v0

    goto :goto_0

    .line 398
    :cond_4
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 399
    check-cast p0, Landroid/view/ViewGroup;

    .line 400
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 401
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_6

    .line 402
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 403
    if-eqz v2, :cond_5

    .line 404
    invoke-static {v2}, Lcom/duapps/ad/c/b/c;->a(Landroid/view/View;)V

    .line 401
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 406
    :cond_6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 372
    :catch_1
    move-exception v0

    goto :goto_1

    .line 371
    :catch_2
    move-exception v0

    goto :goto_1

    .line 370
    :catch_3
    move-exception v0

    goto :goto_1

    .line 369
    :catch_4
    move-exception v0

    goto :goto_1

    .line 368
    :catch_5
    move-exception v0

    goto :goto_1
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 239
    if-nez p0, :cond_0

    .line 247
    :goto_0
    return-void

    .line 243
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 196
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 102
    if-nez v0, :cond_0

    .line 106
    :goto_0
    return v1

    .line 105
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 74
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v0

    .line 77
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 80
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    const/4 v0, 0x1

    goto :goto_0

    .line 82
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static b([B)Ljava/lang/String;
    .locals 6

    .prologue
    .line 581
    const-string v1, ""

    .line 583
    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 584
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 585
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 586
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 588
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 583
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    .line 590
    :cond_1
    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 427
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 428
    invoke-static {p0}, Lcom/duapps/ad/base/m;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 431
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 433
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_2

    .line 435
    const/4 v0, 0x1

    .line 436
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 437
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 436
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 440
    :catch_0
    move-exception v0

    move v0, v1

    .line 441
    :goto_1
    const-string v1, "Utils"

    const-string v3, "Something unexpected happened when get priority browsers."

    invoke-static {v1, v3}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    :cond_0
    :goto_2
    if-nez v0, :cond_1

    .line 446
    const-string v0, "com.UCMobile"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    const-string v0, "com.UCMobile.intl"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    const-string v0, "com.uc.browser.en"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    const-string v0, "com.android.chrome"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    const-string v0, "com.opera.browser"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    const-string v0, "com.opera.mini.native"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    const-string v0, "com.baidu.browser.inter"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    const-string v0, "com.baidu.browser.inter.mini"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    const-string v0, "org.mozilla.firefox"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    const-string v0, "org.mozilla.firefox_beta"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    const-string v0, "cn.mozilla.firefox"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    const-string v0, "com.tencent.mtt.intl"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    const-string v0, "com.tencent.mtt"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    const-string v0, "com.qihoo.browser"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    const-string v0, "com.ksmobile.cb"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    const-string v0, "sogou.mobile.explorer"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    const-string v0, "mobi.mgeek.TunnyBrowser"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    :cond_1
    return-object v2

    .line 440
    :catch_1
    move-exception v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 90
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    .line 92
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 306
    const-string v0, "com.facebook.ads.NativeAd"

    invoke-static {v0}, Lcom/duapps/ad/c/b/c;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;)[B
    .locals 3

    .prologue
    .line 266
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 267
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 273
    :goto_0
    return-object v0

    .line 269
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 270
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 271
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 272
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 273
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 538
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 543
    :goto_0
    return-object v0

    .line 540
    :catch_0
    move-exception v0

    .line 541
    const-string v1, "HttpParamsHelper"

    const-string v2, "Failed to get the getAndroidId info."

    invoke-static {v1, v2, v0}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 543
    const-string v0, ""

    goto :goto_0
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 312
    const-string v0, "com.google.android.gms.ads.formats.NativeContentAd"

    invoke-static {v0}, Lcom/duapps/ad/c/b/c;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 316
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 320
    :cond_0
    :goto_0
    return v0

    .line 319
    :cond_1
    invoke-static {p0}, Lcom/duapps/ad/c/b/c;->d(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 320
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 324
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    :goto_0
    return-object v0

    .line 328
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 329
    :catch_0
    move-exception v1

    .line 330
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 331
    :catch_1
    move-exception v1

    .line 332
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 485
    const-string v0, "mobulaRD"

    const-string v1, "postback"

    invoke-static {p0, v0, v1}, Lcom/duapps/ad/c/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 489
    const-string v0, "onlineSt"

    const-string v1, "stOnline"

    invoke-static {p0, v0, v1}, Lcom/duapps/ad/c/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 561
    .line 563
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 565
    :try_start_0
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 566
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 567
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/duapps/ad/c/b/c;->b([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 571
    :goto_0
    return-object v0

    .line 568
    :catch_0
    move-exception v0

    .line 569
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 601
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 602
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 603
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 605
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 606
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 607
    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 608
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-byte v4, v1, v0

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 606
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 610
    :cond_0
    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 615
    :catch_0
    move-exception v0

    .line 616
    const-string v0, ""

    .line 618
    :goto_2
    return-object v0

    .line 614
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_2

    .line 617
    :catch_1
    move-exception v0

    .line 618
    const-string v0, ""

    goto :goto_2
.end method

.method private static i(Ljava/lang/String;)[B
    .locals 4

    .prologue
    .line 502
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    .line 503
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 504
    mul-int/lit8 v2, v0, 0x2

    .line 505
    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 506
    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 503
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 508
    :cond_0
    return-object v1
.end method
