.class public Lcom/duapps/ad/base/a/b;
.super Ljava/lang/Object;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duapps/ad/base/a/b$b;,
        Lcom/duapps/ad/base/a/b$a;,
        Lcom/duapps/ad/base/a/b$c;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field private static e:Lcom/duapps/ad/base/a/b;

.field private static final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private c:Ljava/lang/Thread;

.field private d:Ljava/lang/String;

.field private final h:Landroid/os/Handler;

.field private final i:Ljava/lang/Runnable;

.field private j:Lcom/duapps/ad/base/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/duapps/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duapps/ad/base/a/b;->a:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/duapps/ad/base/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "img_download/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duapps/ad/base/a/b;->b:Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    sput-object v0, Lcom/duapps/ad/base/a/b;->e:Lcom/duapps/ad/base/a/b;

    .line 110
    new-instance v0, Lcom/duapps/ad/base/a/b$1;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/duapps/ad/base/a/b$1;-><init>(IFZ)V

    sput-object v0, Lcom/duapps/ad/base/a/b;->f:Ljava/util/HashMap;

    .line 127
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/duapps/ad/base/a/b;->g:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/base/a/b;->h:Landroid/os/Handler;

    .line 132
    new-instance v0, Lcom/duapps/ad/base/a/b$2;

    invoke-direct {v0, p0}, Lcom/duapps/ad/base/a/b$2;-><init>(Lcom/duapps/ad/base/a/b;)V

    iput-object v0, p0, Lcom/duapps/ad/base/a/b;->i:Ljava/lang/Runnable;

    .line 138
    new-instance v0, Lcom/duapps/ad/base/a/b$3;

    invoke-direct {v0, p0}, Lcom/duapps/ad/base/a/b$3;-><init>(Lcom/duapps/ad/base/a/b;)V

    iput-object v0, p0, Lcom/duapps/ad/base/a/b;->j:Lcom/duapps/ad/base/a/c;

    .line 86
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/base/a/b;->c:Ljava/lang/Thread;

    .line 87
    sget-object v0, Lcom/duapps/ad/base/a/b;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/duapps/ad/base/a/b;->d:Ljava/lang/String;

    .line 88
    return-void
.end method

.method static synthetic a(Lcom/duapps/ad/base/a/b;Ljava/lang/String;Lcom/duapps/ad/base/a/c;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/duapps/ad/base/a/b;->a(Ljava/lang/String;Lcom/duapps/ad/base/a/c;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 512
    sget-object v1, Lcom/duapps/ad/base/a/b;->f:Ljava/util/HashMap;

    monitor-enter v1

    .line 513
    :try_start_0
    sget-object v0, Lcom/duapps/ad/base/a/b;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 514
    if-eqz v0, :cond_1

    .line 517
    sget-object v2, Lcom/duapps/ad/base/a/b;->f:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    sget-object v2, Lcom/duapps/ad/base/a/b;->f:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    monitor-exit v1

    .line 536
    :cond_0
    :goto_0
    return-object v0

    .line 521
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    sget-object v0, Lcom/duapps/ad/base/a/b;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 525
    if-eqz v0, :cond_2

    .line 526
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 527
    if-nez v0, :cond_0

    .line 532
    sget-object v0, Lcom/duapps/ad/base/a/b;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 521
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;Lcom/duapps/ad/base/a/c;)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 306
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 310
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 312
    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 313
    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 315
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 316
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 317
    :try_start_1
    invoke-static {p1}, Lcom/duapps/ad/base/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 319
    invoke-virtual {v1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 320
    invoke-virtual {v1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "dashi_default_head_middle.gif"

    .line 321
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_11
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-eqz v4, :cond_1

    .line 358
    if-eqz v2, :cond_0

    .line 360
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 370
    :cond_0
    :goto_0
    return-object v0

    .line 363
    :catch_0
    move-exception v1

    .line 365
    const-string v2, "ImageDownloader"

    const-string v3, "Unexpected exeption!"

    invoke-static {v2, v3, v1}, Lcom/duapps/ad/base/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 328
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v4

    .line 334
    if-eqz v2, :cond_4

    .line 335
    new-instance v1, Lcom/duapps/ad/base/a/b$c;

    invoke-direct {v1, v2}, Lcom/duapps/ad/base/a/b$c;-><init>(Ljava/io/InputStream;)V

    .line 336
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 337
    if-eqz v1, :cond_4

    .line 340
    if-eqz v3, :cond_2

    .line 341
    const-string v6, "ImageDownloader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "try to save bitmap, url : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mDownloadPath : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/duapps/ad/base/a/b;->d:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", path : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", lastModityTime  : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v6, p0, Lcom/duapps/ad/base/a/b;->d:Ljava/lang/String;

    invoke-static {v6, v3, v1, v4, v5}, Lcom/duapps/ad/base/a/d;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;J)Z
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_13
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_12
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_11
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 358
    :cond_2
    if-eqz v2, :cond_3

    .line 360
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_f
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_1
    move-object v0, v1

    .line 366
    goto :goto_0

    .line 363
    :catch_1
    move-exception v0

    .line 365
    const-string v2, "ImageDownloader"

    const-string v3, "Unexpected exeption!"

    invoke-static {v2, v3, v0}, Lcom/duapps/ad/base/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 358
    :cond_4
    if-eqz v2, :cond_0

    .line 360
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 361
    :catch_2
    move-exception v1

    goto :goto_0

    .line 363
    :catch_3
    move-exception v1

    .line 365
    const-string v2, "ImageDownloader"

    const-string v3, "Unexpected exeption!"

    invoke-static {v2, v3, v1}, Lcom/duapps/ad/base/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 349
    :catch_4
    move-exception v1

    move-object v2, v0

    .line 350
    :goto_2
    :try_start_6
    const-string v3, "ImageDownloader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/duapps/ad/base/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 358
    if-eqz v2, :cond_0

    .line 360
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_0

    .line 361
    :catch_5
    move-exception v1

    goto/16 :goto_0

    .line 363
    :catch_6
    move-exception v1

    .line 365
    const-string v2, "ImageDownloader"

    const-string v3, "Unexpected exeption!"

    invoke-static {v2, v3, v1}, Lcom/duapps/ad/base/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 351
    :catch_7
    move-exception v1

    move-object v2, v0

    .line 358
    :goto_3
    if-eqz v2, :cond_0

    .line 360
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_9

    goto/16 :goto_0

    .line 361
    :catch_8
    move-exception v1

    goto/16 :goto_0

    .line 363
    :catch_9
    move-exception v1

    .line 365
    const-string v2, "ImageDownloader"

    const-string v3, "Unexpected exeption!"

    invoke-static {v2, v3, v1}, Lcom/duapps/ad/base/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 353
    :catch_a
    move-exception v1

    move-object v2, v0

    .line 358
    :goto_4
    if-eqz v2, :cond_0

    .line 360
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_c

    goto/16 :goto_0

    .line 361
    :catch_b
    move-exception v1

    goto/16 :goto_0

    .line 363
    :catch_c
    move-exception v1

    .line 365
    const-string v2, "ImageDownloader"

    const-string v3, "Unexpected exeption!"

    invoke-static {v2, v3, v1}, Lcom/duapps/ad/base/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 358
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_5
    if-eqz v2, :cond_5

    .line 360
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_10
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_d

    .line 366
    :cond_5
    :goto_6
    throw v0

    .line 363
    :catch_d
    move-exception v1

    .line 365
    const-string v2, "ImageDownloader"

    const-string v3, "Unexpected exeption!"

    invoke-static {v2, v3, v1}, Lcom/duapps/ad/base/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 361
    :catch_e
    move-exception v1

    goto/16 :goto_0

    :catch_f
    move-exception v0

    goto/16 :goto_1

    :catch_10
    move-exception v1

    goto :goto_6

    .line 358
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 353
    :catch_11
    move-exception v1

    goto :goto_4

    .line 351
    :catch_12
    move-exception v1

    goto :goto_3

    .line 349
    :catch_13
    move-exception v1

    goto :goto_2
.end method

.method static synthetic a(Landroid/widget/ImageView;)Lcom/duapps/ad/base/a/b$a;
    .locals 1

    .prologue
    .line 64
    invoke-static {p0}, Lcom/duapps/ad/base/a/b;->b(Landroid/widget/ImageView;)Lcom/duapps/ad/base/a/b$a;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lcom/duapps/ad/base/a/b;
    .locals 2

    .prologue
    .line 91
    sget-object v0, Lcom/duapps/ad/base/a/b;->e:Lcom/duapps/ad/base/a/b;

    if-nez v0, :cond_1

    .line 92
    const-class v1, Lcom/duapps/ad/base/a/b;

    monitor-enter v1

    .line 93
    :try_start_0
    sget-object v0, Lcom/duapps/ad/base/a/b;->e:Lcom/duapps/ad/base/a/b;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/duapps/ad/base/a/b;

    invoke-direct {v0}, Lcom/duapps/ad/base/a/b;-><init>()V

    sput-object v0, Lcom/duapps/ad/base/a/b;->e:Lcom/duapps/ad/base/a/b;

    .line 96
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_1
    sget-object v0, Lcom/duapps/ad/base/a/b;->e:Lcom/duapps/ad/base/a/b;

    return-object v0

    .line 96
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/duapps/ad/base/a/b;)Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/duapps/ad/base/a/b;->c:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic a(Lcom/duapps/ad/base/a/b;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/duapps/ad/base/a/b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 499
    if-eqz p2, :cond_0

    .line 500
    sget-object v1, Lcom/duapps/ad/base/a/b;->f:Ljava/util/HashMap;

    monitor-enter v1

    .line 501
    :try_start_0
    sget-object v0, Lcom/duapps/ad/base/a/b;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    monitor-exit v1

    .line 504
    :cond_0
    return-void

    .line 502
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static b(Landroid/widget/ImageView;)Lcom/duapps/ad/base/a/b$a;
    .locals 2

    .prologue
    .line 295
    if-eqz p0, :cond_0

    .line 296
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 297
    instance-of v1, v0, Lcom/duapps/ad/base/a/b$b;

    if-eqz v1, :cond_0

    .line 298
    check-cast v0, Lcom/duapps/ad/base/a/b$b;

    .line 299
    invoke-virtual {v0}, Lcom/duapps/ad/base/a/b$b;->a()Lcom/duapps/ad/base/a/b$a;

    move-result-object v0

    .line 302
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 559
    const-string v0, "[^a-zA-Z0-9]"

    .line 561
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 562
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 563
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;Landroid/widget/ImageView;Lcom/duapps/ad/base/a/c;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 243
    invoke-static {p1, p2}, Lcom/duapps/ad/base/a/b;->b(Ljava/lang/String;Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    :try_start_0
    new-instance v0, Lcom/duapps/ad/base/a/b$a;

    invoke-direct {v0, p0, p2, p3}, Lcom/duapps/ad/base/a/b$a;-><init>(Lcom/duapps/ad/base/a/b;Landroid/widget/ImageView;Lcom/duapps/ad/base/a/c;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 250
    :goto_0
    if-nez v1, :cond_0

    .line 251
    const/4 v0, 0x5

    invoke-interface {p3, p1, p2, v0}, Lcom/duapps/ad/base/a/c;->a(Ljava/lang/String;Landroid/view/View;I)V

    .line 264
    :goto_1
    return-void

    .line 247
    :catch_0
    move-exception v0

    .line 248
    const-string v1, "ImageDownloader"

    const-string v3, "Some bad things happened when create AsyncTask"

    invoke-static {v1, v3, v0}, Lcom/duapps/ad/base/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v2

    goto :goto_0

    .line 254
    :cond_0
    new-instance v0, Lcom/duapps/ad/base/a/b$b;

    invoke-direct {v0, v2, v1}, Lcom/duapps/ad/base/a/b$b;-><init>(Landroid/graphics/Bitmap;Lcom/duapps/ad/base/a/b$a;)V

    .line 255
    if-eqz p2, :cond_1

    .line 256
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 258
    :cond_1
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 259
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v2}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 260
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/duapps/ad/base/a/b$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 262
    :cond_2
    const/4 v0, 0x4

    invoke-interface {p3, p1, p2, v0}, Lcom/duapps/ad/base/a/c;->a(Ljava/lang/String;Landroid/view/View;I)V

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;Landroid/widget/ImageView;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 274
    invoke-static {p1}, Lcom/duapps/ad/base/a/b;->b(Landroid/widget/ImageView;)Lcom/duapps/ad/base/a/b$a;

    move-result-object v1

    .line 276
    if-eqz v1, :cond_1

    .line 277
    invoke-static {v1}, Lcom/duapps/ad/base/a/b$a;->a(Lcom/duapps/ad/base/a/b$a;)Ljava/lang/String;

    move-result-object v2

    .line 278
    if-eqz v2, :cond_0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 279
    :cond_0
    invoke-virtual {v1, v0}, Lcom/duapps/ad/base/a/b$a;->cancel(Z)Z

    .line 285
    :cond_1
    :goto_0
    return v0

    .line 282
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/duapps/ad/base/a/b;->g:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 553
    iget-object v0, p0, Lcom/duapps/ad/base/a/b;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/duapps/ad/base/a/b;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 554
    iget-object v0, p0, Lcom/duapps/ad/base/a/b;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/duapps/ad/base/a/b;->i:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 555
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/duapps/ad/base/a/b;->j:Lcom/duapps/ad/base/a/c;

    invoke-virtual {p0, p1, p2, v0}, Lcom/duapps/ad/base/a/b;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/duapps/ad/base/a/c;)V

    .line 162
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/duapps/ad/base/a/c;)V
    .locals 6

    .prologue
    const v5, 0x106000d

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 174
    const-string v2, "ImageDownloader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get image for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", with url : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    if-nez p3, :cond_0

    .line 176
    iget-object p3, p0, Lcom/duapps/ad/base/a/b;->j:Lcom/duapps/ad/base/a/c;

    .line 179
    :cond_0
    invoke-interface {p3, p1, p2}, Lcom/duapps/ad/base/a/c;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 181
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    const-string v0, "ImageDownloader"

    const-string v1, "The url is illegal."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const/4 v0, 0x2

    invoke-interface {p3, p1, p2, v0}, Lcom/duapps/ad/base/a/c;->a(Ljava/lang/String;Landroid/view/View;I)V

    .line 236
    :goto_0
    return-void

    .line 187
    :cond_1
    if-nez p2, :cond_2

    .line 188
    const-string v0, "ImageDownloader"

    const-string v1, "The ImageView is illegal."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const/4 v0, 0x3

    invoke-interface {p3, p1, p2, v0}, Lcom/duapps/ad/base/a/c;->a(Ljava/lang/String;Landroid/view/View;I)V

    goto :goto_0

    .line 193
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_3

    .line 194
    const-string v1, "ImageDownloader"

    const-string v2, "The sdk version is less than 11, and we don\'t support downloading pictures at this level."

    invoke-static {v1, v2}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-interface {p3, p1, p2, v0}, Lcom/duapps/ad/base/a/c;->a(Ljava/lang/String;Landroid/view/View;I)V

    goto :goto_0

    .line 199
    :cond_3
    invoke-direct {p0}, Lcom/duapps/ad/base/a/b;->d()V

    .line 200
    invoke-static {p1}, Lcom/duapps/ad/base/a/b;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 202
    if-nez v2, :cond_7

    .line 203
    invoke-static {p1}, Lcom/duapps/ad/base/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 205
    iget-object v4, p0, Lcom/duapps/ad/base/a/b;->d:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/duapps/ad/base/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/duapps/ad/base/a/b;->d:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/duapps/ad/base/a/d;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 207
    if-nez v2, :cond_5

    .line 208
    iget-object v4, p0, Lcom/duapps/ad/base/a/b;->d:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/duapps/ad/base/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_4
    :goto_1
    if-eqz v0, :cond_6

    .line 215
    invoke-direct {p0, p1, p2, p3}, Lcom/duapps/ad/base/a/b;->b(Ljava/lang/String;Landroid/widget/ImageView;Lcom/duapps/ad/base/a/c;)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 210
    goto :goto_1

    .line 217
    :cond_6
    invoke-direct {p0, p1, v2}, Lcom/duapps/ad/base/a/b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 219
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 220
    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 221
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    invoke-interface {p3, p1, p2, v2}, Lcom/duapps/ad/base/a/c;->a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 226
    :cond_7
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 227
    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 228
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    invoke-interface {p3, p1, p2, v2}, Lcom/duapps/ad/base/a/c;->a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 545
    sget-object v0, Lcom/duapps/ad/base/a/b;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 546
    sget-object v0, Lcom/duapps/ad/base/a/b;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 547
    return-void
.end method
