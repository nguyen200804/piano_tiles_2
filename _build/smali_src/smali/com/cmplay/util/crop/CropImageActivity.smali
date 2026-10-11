.class public Lcom/cmplay/util/crop/CropImageActivity;
.super Lcom/cmplay/util/crop/d;
.source "CropImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/util/crop/CropImageActivity$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/net/Uri;

.field private h:Landroid/net/Uri;

.field private i:Z

.field private j:I

.field private k:Lcom/cmplay/util/crop/e;

.field private l:Lcom/cmplay/util/crop/CropImageView;

.field private m:Lcom/cmplay/util/crop/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/cmplay/util/crop/d;-><init>()V

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity;->a:Landroid/os/Handler;

    .line 209
    return-void
.end method

.method private a(Landroid/net/Uri;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 147
    .line 148
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 149
    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 151
    :try_start_0
    invoke-virtual {p0}, Lcom/cmplay/util/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 152
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    invoke-static {v1}, Lcom/cmplay/util/crop/b;->a(Ljava/io/Closeable;)V

    .line 157
    invoke-direct {p0}, Lcom/cmplay/util/crop/CropImageActivity;->d()I

    move-result v1

    .line 159
    :goto_0
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v3, v0

    if-gt v3, v1, :cond_0

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v3, v0

    if-le v3, v1, :cond_1

    .line 160
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/cmplay/util/crop/b;->a(Ljava/io/Closeable;)V

    throw v0

    .line 162
    :cond_1
    return v0
.end method

.method private a(Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 314
    invoke-direct {p0}, Lcom/cmplay/util/crop/CropImageActivity;->h()V

    .line 319
    :try_start_0
    invoke-virtual {p0}, Lcom/cmplay/util/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/cmplay/util/crop/CropImageActivity;->g:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 320
    const/4 v2, 0x0

    :try_start_1
    invoke-static {v7, v2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v3

    .line 321
    invoke-virtual {v3}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v8

    .line 322
    invoke-virtual {v3}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v9

    .line 324
    iget v2, p0, Lcom/cmplay/util/crop/CropImageActivity;->f:I

    if-eqz v2, :cond_1

    .line 326
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 327
    iget v4, p0, Lcom/cmplay/util/crop/CropImageActivity;->f:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 329
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 330
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 333
    iget v2, v4, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v2, v0

    if-gez v2, :cond_5

    int-to-float v2, v8

    :goto_0
    iget v5, v4, Landroid/graphics/RectF;->top:F

    cmpg-float v5, v5, v0

    if-gez v5, :cond_0

    int-to-float v0, v9

    :cond_0
    invoke-virtual {v4, v2, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 334
    new-instance p1, Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget v2, v4, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v5, v4, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-direct {p1, v0, v2, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 338
    :cond_1
    :try_start_2
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {v3, p1, v0}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 339
    :try_start_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-gt v1, p2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v1, p3, :cond_4

    .line 340
    :cond_2
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 341
    iget v1, p0, Lcom/cmplay/util/crop/CropImageActivity;->f:I

    if-eqz v1, :cond_3

    .line 342
    iget v1, p0, Lcom/cmplay/util/crop/CropImageActivity;->f:I

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 344
    :cond_3
    int-to-float v1, p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, p3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 345
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 360
    :cond_4
    invoke-static {v7}, Lcom/cmplay/util/crop/b;->a(Ljava/io/Closeable;)V

    .line 362
    :goto_1
    return-object v0

    :cond_5
    move v2, v0

    .line 333
    goto :goto_0

    .line 347
    :catch_0
    move-exception v0

    .line 349
    :goto_2
    :try_start_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rectangle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is outside of the image ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/cmplay/util/crop/CropImageActivity;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 353
    :catch_1
    move-exception v0

    move-object v2, v7

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 354
    :goto_3
    :try_start_5
    const-string v3, "Error cropping image: "

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/cmplay/util/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Lcom/cmplay/util/crop/CropImageActivity;->finish()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 360
    invoke-static {v2}, Lcom/cmplay/util/crop/b;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .line 356
    :catch_2
    move-exception v0

    move-object v7, v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 357
    :goto_4
    :try_start_6
    const-string v2, "OOM cropping image: "

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmplay/util/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-direct {p0, v1}, Lcom/cmplay/util/crop/CropImageActivity;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 360
    invoke-static {v7}, Lcom/cmplay/util/crop/b;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v7, v1

    :goto_5
    invoke-static {v7}, Lcom/cmplay/util/crop/b;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v7, v2

    goto :goto_5

    .line 356
    :catch_3
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_4

    .line 353
    :catch_6
    move-exception v0

    move-object v2, v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_3

    :catch_7
    move-exception v0

    move-object v2, v7

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_3

    :catch_8
    move-exception v1

    move-object v2, v7

    goto :goto_3

    .line 347
    :catch_9
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto/16 :goto_2
.end method

.method static synthetic a(Lcom/cmplay/util/crop/CropImageActivity;Lcom/cmplay/util/crop/c;)Lcom/cmplay/util/crop/c;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/cmplay/util/crop/CropImageActivity;->m:Lcom/cmplay/util/crop/c;

    return-object p1
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 298
    if-eqz p1, :cond_0

    .line 300
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/cmplay/util/crop/CropImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cmplay/util/crop/CropImageActivity$5;

    invoke-direct {v2, p0, p1}, Lcom/cmplay/util/crop/CropImageActivity$5;-><init>(Lcom/cmplay/util/crop/CropImageActivity;Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/cmplay/util/crop/CropImageActivity;->a:Landroid/os/Handler;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/cmplay/util/crop/b;->a(Lcom/cmplay/util/crop/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    .line 310
    :goto_0
    return-void

    .line 308
    :cond_0
    invoke-virtual {p0}, Lcom/cmplay/util/crop/CropImageActivity;->finish()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/cmplay/util/crop/CropImageActivity;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/cmplay/util/crop/CropImageActivity;->g()V

    return-void
.end method

.method static synthetic a(Lcom/cmplay/util/crop/CropImageActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/cmplay/util/crop/CropImageActivity;->b(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 429
    const/16 v0, 0x194

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "error"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/util/crop/CropImageActivity;->setResult(ILandroid/content/Intent;)V

    .line 430
    return-void
.end method

.method static synthetic b(Lcom/cmplay/util/crop/CropImageActivity;)Lcom/cmplay/util/crop/CropImageView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity;->l:Lcom/cmplay/util/crop/CropImageView;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 86
    const v0, 0x7f080039

    invoke-virtual {p0, v0}, Lcom/cmplay/util/crop/CropImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmplay/util/crop/CropImageView;

    iput-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity;->l:Lcom/cmplay/util/crop/CropImageView;

    .line 87
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity;->l:Lcom/cmplay/util/crop/CropImageView;

    iput-object p0, v0, Lcom/cmplay/util/crop/CropImageView;->c:Landroid/content/Context;

    .line 88
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity;->l:Lcom/cmplay/util/crop/CropImageView;

    new-instance v1, Lcom/cmplay/util/crop/CropImageActivity$1;

    invoke-direct {v1, p0}, Lcom/cmplay/util/crop/CropImageActivity$1;-><init>(Lcom/cmplay/util/crop/CropImageActivity;)V

    invoke-virtual {v0, v1}, Lcom/cmplay/util/crop/CropImageView;->a(Lcom/cmplay/util/crop/ImageViewTouchBase$a;)V

    .line 96
    const v0, 0x7f0800ab

    invoke-virtual {p0, v0}, Lcom/cmplay/util/crop/CropImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/cmplay/util/crop/CropImageActivity$2;

    invoke-direct {v1, p0}, Lcom/cmplay/util/crop/CropImageActivity$2;-><init>(Lcom/cmplay/util/crop/CropImageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v0, 0x7f0800ac

    invoke-virtual {p0, v0}, Lcom/cmplay/util/crop/CropImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/cmplay/util/crop/CropImageActivity$3;

    invoke-direct {v1, p0}, Lcom/cmplay/util/crop/CropImageActivity$3;-><init>(Lcom/cmplay/util/crop/CropImageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    return-void
.end method

.method private b(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 374
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity;->h:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 375
    const/4 v1, 0x0

    .line 377
    :try_start_0
    invoke-virtual {p0}, Lcom/cmplay/util/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/cmplay/util/crop/CropImageActivity;->h:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    .line 378
    if-eqz v1, :cond_0

    .line 379
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    :cond_0
    invoke-static {v1}, Lcom/cmplay/util/crop/b;->a(Ljava/io/Closeable;)V

    .line 388
    :goto_0
    invoke-virtual {p0}, Lcom/cmplay/util/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/util/crop/CropImageActivity;->g:Landroid/net/Uri;

    invoke-static {p0, v0, v1}, Lcom/cmplay/util/crop/b;->a(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/util/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/util/crop/CropImageActivity;->h:Landroid/net/Uri;

    invoke-static {p0, v1, v2}, Lcom/cmplay/util/crop/b;->a(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/util/crop/b;->a(Ljava/io/File;Ljava/io/File;)Z

    .line 393
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity;->h:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/cmplay/util/crop/CropImageActivity;->b(Landroid/net/Uri;)V

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity;->a:Landroid/os/Handler;

    new-instance v1, Lcom/cmplay/util/crop/CropImageActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/cmplay/util/crop/CropImageActivity$6;-><init>(Lcom/cmplay/util/crop/CropImageActivity;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 404
    invoke-virtual {p0}, Lcom/cmplay/util/crop/CropImageActivity;->finish()V

    .line 405
    return-void

    .line 381
    :catch_0
    move-exception v0

    .line 382
    :try_start_1
    invoke-direct {p0, v0}, Lcom/cmplay/util/crop/CropImageActivity;->a(Ljava/lang/Throwable;)V

    .line 383
    const-string v0, "Cannot open file: "

    iget-object v2, p0, Lcom/cmplay/util/crop/CropImageActivity;->h:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cmplay/util/c;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 385
    invoke-static {v1}, Lcom/cmplay/util/crop/b;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/cmplay/util/crop/b;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method private b(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 425
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "output"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/util/crop/CropImageActivity;->setResult(ILandroid/content/Intent;)V

    .line 426
    return-void
.end method

.method static synthetic c(Lcom/cmplay/util/crop/CropImageActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity;->a:Landroid/os/Handler;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-virtual {p0}, Lcom/cmplay/util/crop/CropImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 113
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_0

    .line 116
    const-string v3, "aspect_x"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/cmplay/util/crop/CropImageActivity;->b:I

    .line 117
    const-string v3, "aspect_y"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/cmplay/util/crop/CropImageActivity;->c:I

    .line 118
    const-string v3, "max_x"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/cmplay/util/crop/CropImageActivity;->d:I

    .line 119
    const-string v3, "max_y"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/cmplay/util/crop/CropImageActivity;->e:I

    .line 120
    const-string v3, "output"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity;->h:Landroid/net/Uri;

    .line 123
    :cond_0
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity;->g:Landroid/net/Uri;

    .line 124
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity;->g:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {p0}, Lcom/cmplay/util/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/cmplay/util/crop/CropImageActivity;->g:Landroid/net/Uri;

    invoke-static {p0, v0, v2}, Lcom/cmplay/util/crop/b;->a(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/util/crop/b;->a(Ljava/io/File;)I

    move-result v0

    iput v0, p0, Lcom/cmplay/util/crop/CropImageActivity;->f:I

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity;->g:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/cmplay/util/crop/CropImageActivity;->a(Landroid/net/Uri;)I

    move-result v0

    iput v0, p0, Lcom/cmplay/util/crop/CropImageActivity;->j:I

    .line 130
    invoke-virtual {p0}, Lcom/cmplay/util/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/cmplay/util/crop/CropImageActivity;->g:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 131
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 132
    iget v2, p0, Lcom/cmplay/util/crop/CropImageActivity;->j:I

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 133
    new-instance v2, Lcom/cmplay/util/crop/e;

    const/4 v3, 0x0

    invoke-static {v1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v3, p0, Lcom/cmplay/util/crop/CropImageActivity;->f:I

    invoke-direct {v2, v0, v3}, Lcom/cmplay/util/crop/e;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v2, p0, Lcom/cmplay/util/crop/CropImageActivity;->k:Lcom/cmplay/util/crop/e;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-static {v1}, Lcom/cmplay/util/crop/b;->a(Ljava/io/Closeable;)V

    .line 144
    :cond_1
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    :try_start_1
    const-string v2, "Error reading image"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmplay/util/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-direct {p0, v0}, Lcom/cmplay/util/crop/CropImageActivity;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    invoke-static {v1}, Lcom/cmplay/util/crop/b;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 137
    :catch_1
    move-exception v0

    .line 138
    :try_start_2
    const-string v2, "OOM reading image: "

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmplay/util/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-direct {p0, v0}, Lcom/cmplay/util/crop/CropImageActivity;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    invoke-static {v1}, Lcom/cmplay/util/crop/b;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/cmplay/util/crop/b;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method private d()I
    .locals 2

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/cmplay/util/crop/CropImageActivity;->e()I

    move-result v0

    .line 167
    if-nez v0, :cond_0

    .line 168
    const/16 v0, 0x400

    .line 170
    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x800

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/cmplay/util/crop/CropImageActivity;)Lcom/cmplay/util/crop/e;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity;->k:Lcom/cmplay/util/crop/e;

    return-object v0
.end method

.method private e()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 176
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 177
    const/16 v1, 0xd33

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES10;->glGetIntegerv(I[II)V

    .line 178
    aget v0, v0, v2

    return v0
.end method

.method static synthetic e(Lcom/cmplay/util/crop/CropImageActivity;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/cmplay/util/crop/CropImageActivity;->b:I

    return v0
.end method

.method static synthetic f(Lcom/cmplay/util/crop/CropImageActivity;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/cmplay/util/crop/CropImageActivity;->c:I

    return v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/cmplay/util/crop/CropImageActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity;->l:Lcom/cmplay/util/crop/CropImageView;

    iget-object v1, p0, Lcom/cmplay/util/crop/CropImageActivity;->k:Lcom/cmplay/util/crop/e;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/util/crop/CropImageView;->a(Lcom/cmplay/util/crop/e;Z)V

    .line 186
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/cmplay/util/crop/CropImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cmplay/util/crop/CropImageActivity$4;

    invoke-direct {v2, p0}, Lcom/cmplay/util/crop/CropImageActivity$4;-><init>(Lcom/cmplay/util/crop/CropImageActivity;)V

    iget-object v3, p0, Lcom/cmplay/util/crop/CropImageActivity;->a:Landroid/os/Handler;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/cmplay/util/crop/b;->a(Lcom/cmplay/util/crop/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/cmplay/util/crop/CropImageActivity;)Lcom/cmplay/util/crop/c;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity;->m:Lcom/cmplay/util/crop/c;

    return-object v0
.end method

.method private g()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x1

    .line 258
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity;->m:Lcom/cmplay/util/crop/c;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cmplay/util/crop/CropImageActivity;->i:Z

    if-eqz v0, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    iput-boolean v4, p0, Lcom/cmplay/util/crop/CropImageActivity;->i:Z

    .line 264
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity;->m:Lcom/cmplay/util/crop/c;

    iget v1, p0, Lcom/cmplay/util/crop/CropImageActivity;->j:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/cmplay/util/crop/c;->a(F)Landroid/graphics/Rect;

    move-result-object v2

    .line 265
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 266
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 270
    iget v3, p0, Lcom/cmplay/util/crop/CropImageActivity;->d:I

    if-lez v3, :cond_3

    iget v3, p0, Lcom/cmplay/util/crop/CropImageActivity;->e:I

    if-lez v3, :cond_3

    iget v3, p0, Lcom/cmplay/util/crop/CropImageActivity;->d:I

    if-gt v1, v3, :cond_2

    iget v3, p0, Lcom/cmplay/util/crop/CropImageActivity;->e:I

    if-le v0, v3, :cond_3

    .line 271
    :cond_2
    int-to-float v1, v1

    int-to-float v0, v0

    div-float v3, v1, v0

    .line 272
    iget v0, p0, Lcom/cmplay/util/crop/CropImageActivity;->d:I

    int-to-float v0, v0

    iget v1, p0, Lcom/cmplay/util/crop/CropImageActivity;->e:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    .line 273
    iget v0, p0, Lcom/cmplay/util/crop/CropImageActivity;->e:I

    .line 274
    iget v1, p0, Lcom/cmplay/util/crop/CropImageActivity;->e:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    add-float/2addr v1, v5

    float-to-int v1, v1

    .line 282
    :cond_3
    :goto_1
    :try_start_0
    invoke-direct {p0, v2, v1, v0}, Lcom/cmplay/util/crop/CropImageActivity;->a(Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 289
    if-eqz v0, :cond_4

    .line 290
    iget-object v1, p0, Lcom/cmplay/util/crop/CropImageActivity;->l:Lcom/cmplay/util/crop/CropImageView;

    new-instance v2, Lcom/cmplay/util/crop/e;

    iget v3, p0, Lcom/cmplay/util/crop/CropImageActivity;->f:I

    invoke-direct {v2, v0, v3}, Lcom/cmplay/util/crop/e;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v1, v2, v4}, Lcom/cmplay/util/crop/CropImageView;->a(Lcom/cmplay/util/crop/e;Z)V

    .line 291
    iget-object v1, p0, Lcom/cmplay/util/crop/CropImageActivity;->l:Lcom/cmplay/util/crop/CropImageView;

    invoke-virtual {v1, v4, v4}, Lcom/cmplay/util/crop/CropImageView;->a(ZZ)V

    .line 292
    iget-object v1, p0, Lcom/cmplay/util/crop/CropImageActivity;->l:Lcom/cmplay/util/crop/CropImageView;

    iget-object v1, v1, Lcom/cmplay/util/crop/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 294
    :cond_4
    invoke-direct {p0, v0}, Lcom/cmplay/util/crop/CropImageActivity;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 276
    :cond_5
    iget v1, p0, Lcom/cmplay/util/crop/CropImageActivity;->d:I

    .line 277
    iget v0, p0, Lcom/cmplay/util/crop/CropImageActivity;->d:I

    int-to-float v0, v0

    div-float/2addr v0, v3

    add-float/2addr v0, v5

    float-to-int v0, v0

    goto :goto_1

    .line 283
    :catch_0
    move-exception v0

    .line 284
    invoke-direct {p0, v0}, Lcom/cmplay/util/crop/CropImageActivity;->a(Ljava/lang/Throwable;)V

    .line 285
    invoke-virtual {p0}, Lcom/cmplay/util/crop/CropImageActivity;->finish()V

    goto :goto_0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity;->l:Lcom/cmplay/util/crop/CropImageView;

    invoke-virtual {v0}, Lcom/cmplay/util/crop/CropImageView;->b()V

    .line 367
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity;->k:Lcom/cmplay/util/crop/e;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity;->k:Lcom/cmplay/util/crop/e;

    invoke-virtual {v0}, Lcom/cmplay/util/crop/e;->g()V

    .line 370
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 371
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/cmplay/util/crop/d$b;)V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/cmplay/util/crop/d;->a(Lcom/cmplay/util/crop/d$b;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 421
    iget-boolean v0, p0, Lcom/cmplay/util/crop/CropImageActivity;->i:Z

    return v0
.end method

.method public bridge synthetic b(Lcom/cmplay/util/crop/d$b;)V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/cmplay/util/crop/d;->b(Lcom/cmplay/util/crop/d$b;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/cmplay/util/crop/d;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cmplay/util/crop/CropImageActivity;->requestWindowFeature(I)Z

    .line 74
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/cmplay/util/crop/CropImageActivity;->setContentView(I)V

    .line 75
    invoke-direct {p0}, Lcom/cmplay/util/crop/CropImageActivity;->b()V

    .line 77
    invoke-direct {p0}, Lcom/cmplay/util/crop/CropImageActivity;->c()V

    .line 78
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity;->k:Lcom/cmplay/util/crop/e;

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/cmplay/util/crop/CropImageActivity;->finish()V

    .line 83
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/cmplay/util/crop/CropImageActivity;->f()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 409
    invoke-super {p0}, Lcom/cmplay/util/crop/d;->onDestroy()V

    .line 410
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity;->k:Lcom/cmplay/util/crop/e;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/cmplay/util/crop/CropImageActivity;->k:Lcom/cmplay/util/crop/e;

    invoke-virtual {v0}, Lcom/cmplay/util/crop/e;->g()V

    .line 413
    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x0

    return v0
.end method
