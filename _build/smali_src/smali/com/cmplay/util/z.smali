.class public Lcom/cmplay/util/z;
.super Ljava/lang/Object;
.source "PictureSelector.java"

# interfaces
.implements Lcom/cmplay/h/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/util/z$a;
    }
.end annotation


# instance fields
.field private a:Lcom/cmplay/util/z$a;

.field private b:Landroid/app/Activity;

.field private c:I

.field private d:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmplay/util/z;->a:Lcom/cmplay/util/z$a;

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/cmplay/util/z;->c:I

    .line 54
    iput-object p1, p0, Lcom/cmplay/util/z;->b:Landroid/app/Activity;

    .line 55
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0x190

    .line 263
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 264
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 265
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 266
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne v1, v2, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 270
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_0

    .line 272
    invoke-static {v0, v2, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 273
    const/4 v2, 0x0

    .line 275
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 280
    if-eqz v1, :cond_0

    .line 282
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 277
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 278
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 280
    if-eqz v1, :cond_0

    .line 282
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 283
    :catch_2
    move-exception v0

    .line 284
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 280
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_2

    .line 282
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 285
    :cond_2
    :goto_3
    throw v0

    .line 283
    :catch_3
    move-exception v1

    .line 284
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 280
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 277
    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method private d()I
    .locals 1

    .prologue
    .line 148
    invoke-static {}, Lcom/cmplay/h/d;->c()I

    move-result v0

    invoke-static {v0}, Lcom/cmplay/h/b;->b(I)I

    move-result v0

    return v0
.end method

.method private e()Ljava/io/File;
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/cmplay/util/z;->b:Landroid/app/Activity;

    const-string v1, "share_CD_bg.jpg"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 235
    return-object v0
.end method

.method private f()Ljava/io/File;
    .locals 3

    .prologue
    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "piano2/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "share_CD_bg.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 243
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 245
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 247
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :cond_1
    :goto_0
    return-object v1

    .line 248
    :catch_0
    move-exception v0

    .line 249
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 186
    const-string v0, "android.permission.CAMERA"

    .line 187
    invoke-static {v0}, Lcom/cmplay/util/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/cmplay/util/z;->b()V

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/cmplay/util/z;->b:Landroid/app/Activity;

    const v2, 0xea60

    invoke-static {v1, v0, v2}, Lcom/cmplay/util/e;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v0, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 59
    packed-switch p1, :pswitch_data_0

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 61
    :pswitch_0
    if-ne p2, v0, :cond_1

    if-eqz p3, :cond_1

    .line 62
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/util/z;->d:Landroid/net/Uri;

    .line 63
    iget-object v0, p0, Lcom/cmplay/util/z;->d:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/cmplay/util/z;->a(Landroid/net/Uri;)V

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/cmplay/util/z;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 69
    :pswitch_1
    if-ne p2, v0, :cond_3

    .line 70
    invoke-direct {p0}, Lcom/cmplay/util/z;->f()Ljava/io/File;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/util/z;->d:Landroid/net/Uri;

    .line 73
    iget-object v0, p0, Lcom/cmplay/util/z;->d:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/cmplay/util/z;->a(Landroid/net/Uri;)V

    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {p0, v2, v3}, Lcom/cmplay/util/z;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_3
    invoke-virtual {p0, v2, v3}, Lcom/cmplay/util/z;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 83
    :pswitch_2
    if-ne p2, v0, :cond_5

    if-eqz p3, :cond_5

    .line 84
    invoke-direct {p0}, Lcom/cmplay/util/z;->f()Ljava/io/File;

    move-result-object v1

    .line 85
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 86
    invoke-direct {p0}, Lcom/cmplay/util/z;->e()Ljava/io/File;

    move-result-object v0

    .line 88
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/cmplay/util/z;->a(Ljava/lang/String;)V

    .line 89
    invoke-static {v1, v0}, Lcom/cmplay/util/g;->a(Ljava/io/File;Ljava/io/File;)V

    .line 90
    const/4 v0, 0x1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/cmplay/util/z;->a(ZLjava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/cmplay/util/j;->c()V

    .line 93
    iget-object v0, p0, Lcom/cmplay/util/z;->a:Lcom/cmplay/util/z$a;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/cmplay/util/z;->a:Lcom/cmplay/util/z$a;

    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/cmplay/util/z$a;->a(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 98
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/cmplay/util/z;->a(ZLjava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/cmplay/util/z;->a:Lcom/cmplay/util/z$a;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/cmplay/util/z;->a:Lcom/cmplay/util/z$a;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/cmplay/util/z$a;->a(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 105
    :cond_4
    invoke-virtual {p0, v2, v3}, Lcom/cmplay/util/z;->a(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 108
    :cond_5
    invoke-virtual {p0, v2, v3}, Lcom/cmplay/util/z;->a(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(I[Ljava/lang/String;[I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 121
    packed-switch p1, :pswitch_data_0

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 123
    :pswitch_0
    array-length v0, p3

    if-lez v0, :cond_0

    aget v0, p3, v1

    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/cmplay/util/z;->b()V

    goto :goto_0

    .line 134
    :pswitch_1
    array-length v0, p3

    if-lez v0, :cond_0

    aget v0, p3, v1

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/cmplay/util/z;->d:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/cmplay/util/z;->b(Landroid/net/Uri;)V

    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0xea60
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 174
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 175
    invoke-static {v0}, Lcom/cmplay/util/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {p0, p1}, Lcom/cmplay/util/z;->b(Landroid/net/Uri;)V

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/cmplay/util/z;->b:Landroid/app/Activity;

    const v2, 0xea61

    invoke-static {v1, v0, v2}, Lcom/cmplay/util/e;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public a(Lcom/cmplay/util/z$a;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/cmplay/util/z;->a:Lcom/cmplay/util/z$a;

    .line 418
    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 8

    .prologue
    const/16 v7, 0x18d2

    const/16 v6, 0x18d1

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 324
    iget-object v0, p0, Lcom/cmplay/util/z;->a:Lcom/cmplay/util/z$a;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/cmplay/util/z;->a:Lcom/cmplay/util/z$a;

    const/4 v1, 0x0

    invoke-interface {v0, v3, v1}, Lcom/cmplay/util/z$a;->a(ZLjava/lang/String;)V

    .line 328
    :cond_0
    invoke-direct {p0}, Lcom/cmplay/util/z;->d()I

    move-result v0

    .line 329
    if-eqz p1, :cond_1

    .line 330
    iget v1, p0, Lcom/cmplay/util/z;->c:I

    packed-switch v1, :pswitch_data_0

    .line 354
    :goto_0
    :pswitch_0
    return-void

    .line 332
    :pswitch_1
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v1

    const-string v2, "at_change_cd_cover_success_ga"

    invoke-virtual {v1, v2}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    .line 333
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v1

    invoke-virtual {v1, v0, v7, v3, v4}, Lcom/cmplay/h/f;->a(IIII)V

    goto :goto_0

    .line 336
    :pswitch_2
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v1

    const-string v2, "at_change_cd_cover_success_ca"

    invoke-virtual {v1, v2}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    .line 337
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v1

    invoke-virtual {v1, v0, v6, v3, v4}, Lcom/cmplay/h/f;->a(IIII)V

    goto :goto_0

    .line 342
    :cond_1
    iget v1, p0, Lcom/cmplay/util/z;->c:I

    packed-switch v1, :pswitch_data_1

    :pswitch_3
    goto :goto_0

    .line 344
    :pswitch_4
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v1

    const-string v2, "at_change_cd_cover_fail_ga"

    invoke-virtual {v1, v2}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    .line 345
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v1

    invoke-virtual {v1, v0, v7, v3, v5}, Lcom/cmplay/h/f;->a(IIII)V

    goto :goto_0

    .line 348
    :pswitch_5
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v1

    const-string v2, "at_change_cd_cover_fail_ca"

    invoke-virtual {v1, v2}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    .line 349
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v1

    invoke-virtual {v1, v0, v6, v3, v5}, Lcom/cmplay/h/f;->a(IIII)V

    goto :goto_0

    .line 330
    nop

    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 342
    :pswitch_data_1
    .packed-switch 0x3ea
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public b()V
    .locals 5

    .prologue
    .line 199
    :try_start_0
    invoke-direct {p0}, Lcom/cmplay/util/z;->f()Ljava/io/File;

    move-result-object v0

    .line 200
    invoke-direct {p0}, Lcom/cmplay/util/z;->d()I

    move-result v1

    .line 201
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    const-string v3, "output"

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 203
    iget-object v0, p0, Lcom/cmplay/util/z;->b:Landroid/app/Activity;

    const/16 v3, 0x3ec

    invoke-static {v0, v2, v3}, Lcom/cmplay/util/e;->a(Landroid/app/Activity;Landroid/content/Intent;I)Z

    .line 204
    const/16 v0, 0x3ec

    iput v0, p0, Lcom/cmplay/util/z;->c:I

    .line 206
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v0

    const-string v2, "clk_camera"

    invoke-virtual {v0, v2}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    .line 207
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    const/16 v2, 0x18d1

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmplay/h/f;->a(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Landroid/net/Uri;)V
    .locals 3

    .prologue
    const/16 v1, 0x190

    .line 317
    invoke-direct {p0}, Lcom/cmplay/util/z;->f()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 318
    invoke-static {p1, v0}, Lcom/cmplay/util/crop/a;->a(Landroid/net/Uri;Landroid/net/Uri;)Lcom/cmplay/util/crop/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/util/crop/a;->a()Lcom/cmplay/util/crop/a;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/cmplay/util/crop/a;->a(II)Lcom/cmplay/util/crop/a;

    move-result-object v0

    .line 319
    iget-object v1, p0, Lcom/cmplay/util/z;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/cmplay/util/crop/a;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 320
    iget-object v1, p0, Lcom/cmplay/util/z;->b:Landroid/app/Activity;

    const/16 v2, 0x3ed

    invoke-static {v1, v0, v2}, Lcom/cmplay/util/e;->a(Landroid/app/Activity;Landroid/content/Intent;I)Z

    .line 321
    return-void
.end method

.method public c()V
    .locals 5

    .prologue
    const/16 v4, 0x3ea

    .line 218
    invoke-direct {p0}, Lcom/cmplay/util/z;->f()Ljava/io/File;

    .line 219
    invoke-direct {p0}, Lcom/cmplay/util/z;->d()I

    move-result v0

    .line 221
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 222
    iget-object v2, p0, Lcom/cmplay/util/z;->b:Landroid/app/Activity;

    invoke-static {v2, v1, v4}, Lcom/cmplay/util/e;->a(Landroid/app/Activity;Landroid/content/Intent;I)Z

    .line 223
    iput v4, p0, Lcom/cmplay/util/z;->c:I

    .line 225
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v1

    const-string v2, "clk_Gallery"

    invoke-virtual {v1, v2}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    .line 226
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v1

    const/16 v2, 0x18d2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/cmplay/h/f;->a(IIII)V

    .line 227
    return-void
.end method
