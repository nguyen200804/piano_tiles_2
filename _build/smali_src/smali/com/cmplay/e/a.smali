.class public Lcom/cmplay/e/a;
.super Ljava/lang/Object;
.source "MessageBoxImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/e/a$a;
    }
.end annotation


# static fields
.field private static a:Lcom/cmplay/e/a;


# instance fields
.field private b:Ljava/util/concurrent/ExecutorService;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/cmplay/e/a;-><init>(I)V

    .line 43
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/cmplay/e/a;-><init>(ILandroid/os/Handler;)V

    .line 47
    return-void
.end method

.method public constructor <init>(ILandroid/os/Handler;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/e/a;->b:Ljava/util/concurrent/ExecutorService;

    .line 51
    iput-object p2, p0, Lcom/cmplay/e/a;->c:Landroid/os/Handler;

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/cmplay/e/a;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/cmplay/e/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 55
    const/4 v2, 0x0

    .line 58
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    const/16 v3, 0x2710

    :try_start_1
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 61
    const/16 v3, 0x2710

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 62
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 63
    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_2

    .line 66
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 67
    :try_start_2
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    .line 75
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 80
    :cond_0
    if-eqz v2, :cond_1

    .line 81
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_0
    move-object v0, v1

    .line 85
    :goto_1
    return-object v0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 75
    :cond_2
    if-eqz v0, :cond_3

    .line 76
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 80
    :cond_3
    if-eqz v1, :cond_4

    .line 81
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    :goto_2
    move-object v0, v1

    .line 85
    goto :goto_1

    .line 83
    :catch_1
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 72
    :catch_2
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    .line 75
    :goto_3
    if-eqz v0, :cond_5

    .line 76
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 80
    :cond_5
    if-eqz v2, :cond_6

    .line 81
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_6
    :goto_4
    move-object v0, v1

    .line 85
    goto :goto_1

    .line 83
    :catch_3
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 75
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_5
    if-eqz v1, :cond_7

    .line 76
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 80
    :cond_7
    if-eqz v2, :cond_8

    .line 81
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 85
    :cond_8
    :goto_6
    throw v0

    .line 83
    :catch_4
    move-exception v1

    .line 84
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 75
    :catchall_1
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_5

    .line 72
    :catch_5
    move-exception v2

    move-object v2, v1

    goto :goto_3

    :catch_6
    move-exception v3

    goto :goto_3
.end method

.method public static a()Lcom/cmplay/e/a;
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lcom/cmplay/e/a;->a:Lcom/cmplay/e/a;

    if-nez v0, :cond_1

    .line 32
    const-class v1, Lcom/cmplay/e/a;

    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lcom/cmplay/e/a;->a:Lcom/cmplay/e/a;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/cmplay/e/a;

    invoke-direct {v0}, Lcom/cmplay/e/a;-><init>()V

    sput-object v0, Lcom/cmplay/e/a;->a:Lcom/cmplay/e/a;

    .line 36
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_1
    sget-object v0, Lcom/cmplay/e/a;->a:Lcom/cmplay/e/a;

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/cmplay/e/a$a;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/cmplay/e/a;->c:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2, v0}, Lcom/cmplay/e/a;->a(Ljava/lang/String;Lcom/cmplay/e/a$a;Landroid/os/Handler;)V

    .line 91
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/cmplay/e/a$a;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/cmplay/e/a;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/cmplay/e/a$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/cmplay/e/a$1;-><init>(Lcom/cmplay/e/a;Ljava/lang/String;Landroid/os/Handler;Lcom/cmplay/e/a$a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 113
    return-void
.end method
