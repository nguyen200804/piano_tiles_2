.class public Lcom/cmplay/tile2/ui/ChristmasShareActivity;
.super Landroid/app/Activity;
.source "ChristmasShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static a:I

.field private static k:I


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/graphics/Bitmap;

.field private i:Landroid/graphics/Bitmap;

.field private j:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, -0x1

    sput v0, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->a:I

    .line 58
    const/16 v0, 0x320

    sput v0, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->k:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->j:J

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 101
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cmplay/tile2/ui/ChristmasShareActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 103
    return-void
.end method

.method private c()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 163
    .line 182
    :try_start_0
    const-string v1, "res/UI/ActivityMap/bg_map.png"

    .line 183
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 184
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v2, v1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1

    .line 185
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {v1, v3, v4}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 191
    invoke-static {v2}, Lcom/cmplay/util/g;->a(Ljava/io/Closeable;)V

    .line 193
    :goto_0
    return-object v0

    .line 186
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 187
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 191
    invoke-static {v2}, Lcom/cmplay/util/g;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    invoke-static {v2}, Lcom/cmplay/util/g;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 186
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private d()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 201
    const/4 v3, 0x0

    .line 202
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd_HH-mm-ss"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/screenCap"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->e:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 205
    iget-object v1, p0, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->buildDrawingCache()V

    .line 206
    iget-object v1, p0, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->i:Landroid/graphics/Bitmap;

    .line 207
    iget-object v1, p0, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->i:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 209
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 210
    iget-object v4, p0, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->i:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :try_start_1
    const-string v1, "ChristmasShareActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filePath:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "output  done."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 219
    :goto_0
    if-eqz v2, :cond_1

    :goto_1
    return-object v0

    .line 213
    :catch_0
    move-exception v1

    move v2, v3

    .line 214
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 217
    :cond_0
    const-string v1, "ChristmasShareActivity"

    const-string v2, "bitmap  is NULL !"

    invoke-static {v1, v2}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    goto :goto_0

    .line 219
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 213
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private e()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 265
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 267
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 270
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 272
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 278
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-le v0, v1, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 280
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 281
    const/16 v1, 0x1707

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 290
    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 78
    const v0, 0x7f080029

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->b:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f08002c

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->c:Landroid/widget/ImageView;

    .line 80
    const v0, 0x7f08002b

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->d:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f080028

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->f:Landroid/widget/RelativeLayout;

    .line 82
    const v0, 0x7f08002a

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->g:Landroid/widget/EditText;

    .line 83
    const v0, 0x7f080026

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->e:Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->h:Landroid/graphics/Bitmap;

    .line 89
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->e:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->h:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    return-void
.end method

.method b()V
    .locals 2

    .prologue
    .line 93
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v0

    const-string v1, "active_share_activity"

    invoke-virtual {v0, v1}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->b:Landroid/widget/TextView;

    const-string v1, "easter_collect_share"

    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->d:Landroid/widget/TextView;

    const-string v1, "shareh5_cm_button_valentine"

    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->g:Landroid/widget/EditText;

    const-string v1, "share_xmas_sb"

    invoke-static {v1}, Lcom/cmplay/util/NativeUtil;->getLanguageTextByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 97
    const/4 v0, 0x1

    sput v0, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->a:I

    .line 98
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 130
    const-string v0, "ChristmasShareActivity"

    const-string v1, "finish"

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const/4 v0, -0x1

    sput v0, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->a:I

    .line 132
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 133
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 124
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 125
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/cmplay/h/f;->a(IILandroid/content/Intent;)V

    .line 126
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/16 v8, 0x10

    .line 224
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 227
    :pswitch_0
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v0

    const-string v1, "clk_quit_chg_cd_cover_pg"

    invoke-virtual {v0, v1}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    .line 228
    invoke-static {v8}, Lcom/cmplay/h/b;->b(I)I

    move-result v0

    .line 229
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v1

    const/16 v2, 0x18d3

    invoke-virtual {v1, v0, v2, v4, v5}, Lcom/cmplay/h/f;->a(IIII)V

    .line 230
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->finish()V

    goto :goto_0

    .line 234
    :pswitch_1
    invoke-static {}, Lcom/cmplay/h/d;->a()V

    .line 237
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-static {v0}, Lcom/cmplay/util/j;->d(Ljava/lang/String;)V

    .line 241
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->e()V

    .line 243
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->d()Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->f()V

    .line 247
    invoke-static {v8}, Lcom/cmplay/h/b;->b(I)I

    move-result v2

    .line 248
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 249
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    const/16 v3, 0x238d

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/cmplay/h/f;->a(IIII)V

    .line 251
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 252
    iget-wide v4, p0, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->j:J

    sub-long v4, v2, v4

    sget v0, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->k:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    .line 253
    iput-wide v2, p0, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->j:J

    .line 256
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    invoke-virtual {v0, v8, v1}, Lcom/cmplay/h/f;->c(ILjava/lang/String;)V

    .line 258
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v0

    const-string v1, "clk_chr_cd_share_btn"

    invoke-virtual {v0, v1}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x7f08002b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const-string v0, "ChristmasShareActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/cmplay/tile2/ui/AppActivity;->c()Landroid/app/Activity;

    move-result-object v0

    .line 65
    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->finish()V

    .line 75
    :goto_0
    return-void

    .line 69
    :cond_0
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->a()V

    .line 71
    invoke-virtual {p0}, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->b()V

    .line 73
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/cmplay/h/b;->b(I)I

    move-result v0

    .line 74
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v3, v3, v2}, Lcom/cmplay/h/f;->a(IIII)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 145
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 147
    iput-object v1, p0, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->h:Landroid/graphics/Bitmap;

    .line 148
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 152
    iput-object v1, p0, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->i:Landroid/graphics/Bitmap;

    .line 153
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 155
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 156
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 117
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->g()V

    .line 118
    invoke-static {p0}, Lcom/b/a/a/a;->a(Landroid/content/Context;)V

    .line 119
    const-string v0, "ChristmasShareActivity onPause"

    invoke-static {v0, p0}, Lcom/cmplay/util/o;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 120
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 108
    invoke-direct {p0}, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->g()V

    .line 109
    invoke-static {p0}, Lcom/b/a/a/a;->b(Landroid/content/Context;)V

    .line 110
    const-string v0, "ChristmasShareActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v0, "ChristmasShareActivity onResume "

    invoke-static {v0, p0}, Lcom/cmplay/util/o;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 112
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 137
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 139
    iget-object v1, p0, Lcom/cmplay/tile2/ui/ChristmasShareActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 140
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
