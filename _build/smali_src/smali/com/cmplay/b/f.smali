.class public Lcom/cmplay/b/f;
.super Ljava/lang/Object;
.source "ImageRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/b/f$a;
    }
.end annotation


# static fields
.field private static a:Lcom/cmplay/b/f;


# instance fields
.field private b:Ljava/util/concurrent/ExecutorService;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/cmplay/b/f;-><init>(I)V

    .line 42
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/cmplay/b/f;-><init>(ILandroid/os/Handler;)V

    .line 46
    return-void
.end method

.method public constructor <init>(ILandroid/os/Handler;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/b/f;->b:Ljava/util/concurrent/ExecutorService;

    .line 50
    iput-object p2, p0, Lcom/cmplay/b/f;->c:Landroid/os/Handler;

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/cmplay/b/f;Ljava/lang/String;Lcom/cmplay/b/a;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/cmplay/b/f;->a(Ljava/lang/String;Lcom/cmplay/b/a;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/cmplay/b/a;)Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 54
    const/4 v1, 0x0

    .line 57
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v3, p2, Lcom/cmplay/b/a;->i:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    const/16 v3, 0x2710

    :try_start_1
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 60
    const/16 v3, 0x2710

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 61
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 62
    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_3

    .line 65
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 66
    :try_start_2
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 67
    if-nez v1, :cond_0

    .line 68
    invoke-static {p1}, Lcom/cmplay/b/d;->a(Ljava/lang/String;)I

    move-result v4

    iget v5, p2, Lcom/cmplay/b/a;->a:I

    iget-object v6, p2, Lcom/cmplay/b/a;->h:Ljava/lang/String;

    const/4 v7, 0x3

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v5, v6, v7, v8}, Lcom/cmplay/g/d;->a(IILjava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 83
    :cond_0
    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 88
    :cond_1
    if-eqz v3, :cond_2

    .line 89
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    :goto_0
    move-object v0, v1

    .line 93
    :goto_1
    return-object v0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 73
    :cond_3
    :try_start_4
    invoke-static {p1}, Lcom/cmplay/b/d;->a(Ljava/lang/String;)I

    move-result v3

    iget v4, p2, Lcom/cmplay/b/a;->a:I

    iget-object v5, p2, Lcom/cmplay/b/a;->h:Ljava/lang/String;

    const/4 v6, 0x7

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v4, v5, v6, v7}, Lcom/cmplay/g/d;->a(IILjava/lang/String;ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 83
    if-eqz v0, :cond_4

    .line 84
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 88
    :cond_4
    if-eqz v2, :cond_5

    .line 89
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_5
    :goto_2
    move-object v0, v2

    .line 93
    goto :goto_1

    .line 91
    :catch_1
    move-exception v0

    .line 92
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 78
    :catch_2
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 79
    :goto_3
    :try_start_6
    invoke-static {p1}, Lcom/cmplay/b/d;->a(Ljava/lang/String;)I

    move-result v4

    iget v5, p2, Lcom/cmplay/b/a;->a:I

    iget-object v6, p2, Lcom/cmplay/b/a;->h:Ljava/lang/String;

    const/16 v7, 0x8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v6, v7, v0}, Lcom/cmplay/g/d;->a(IILjava/lang/String;ILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 83
    if-eqz v1, :cond_6

    .line 84
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 88
    :cond_6
    if-eqz v3, :cond_7

    .line 89
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_7
    :goto_4
    move-object v0, v2

    .line 93
    goto :goto_1

    .line 91
    :catch_3
    move-exception v0

    .line 92
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 83
    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_5
    if-eqz v2, :cond_8

    .line 84
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 88
    :cond_8
    if-eqz v3, :cond_9

    .line 89
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 93
    :cond_9
    :goto_6
    throw v0

    .line 91
    :catch_4
    move-exception v1

    .line 92
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 83
    :catchall_1
    move-exception v1

    move-object v3, v2

    move-object v2, v0

    move-object v0, v1

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v2, v1

    goto :goto_5

    .line 78
    :catch_5
    move-exception v1

    move-object v3, v2

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto :goto_3

    :catch_6
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_3
.end method

.method public static a()Lcom/cmplay/b/f;
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lcom/cmplay/b/f;->a:Lcom/cmplay/b/f;

    if-nez v0, :cond_1

    .line 31
    const-class v1, Lcom/cmplay/b/f;

    monitor-enter v1

    .line 32
    :try_start_0
    sget-object v0, Lcom/cmplay/b/f;->a:Lcom/cmplay/b/f;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/cmplay/b/f;

    invoke-direct {v0}, Lcom/cmplay/b/f;-><init>()V

    sput-object v0, Lcom/cmplay/b/f;->a:Lcom/cmplay/b/f;

    .line 35
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_1
    sget-object v0, Lcom/cmplay/b/f;->a:Lcom/cmplay/b/f;

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/cmplay/b/a;Lcom/cmplay/b/f$a;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/cmplay/b/f;->c:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/cmplay/b/f;->a(Ljava/lang/String;Lcom/cmplay/b/a;Lcom/cmplay/b/f$a;Landroid/os/Handler;)V

    .line 99
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/cmplay/b/a;Lcom/cmplay/b/f$a;Landroid/os/Handler;)V
    .locals 7

    .prologue
    .line 102
    iget-object v6, p0, Lcom/cmplay/b/f;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/cmplay/b/f$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/cmplay/b/f$1;-><init>(Lcom/cmplay/b/f;Ljava/lang/String;Lcom/cmplay/b/a;Landroid/os/Handler;Lcom/cmplay/b/f$a;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 117
    return-void
.end method
