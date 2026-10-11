.class public final Lcom/mnt/impl/i/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/mnt/impl/e;->cW:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/mnt/impl/i/b;->a:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/mnt/impl/i/b;->b:Landroid/content/Context;

    .line 31
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/mnt/impl/i/b;

    invoke-direct {v0, p0, p1}, Lcom/mnt/impl/i/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    invoke-static {v0}, Lcom/mnt/impl/l/c;->a(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method

.method private a()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 43
    .line 46
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lcom/mnt/impl/i/b;->a:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 49
    const v3, 0xea60

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 50
    const v3, 0x2bf20

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 51
    sget-object v3, Lcom/mnt/impl/e;->cX:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 52
    sget-object v3, Lcom/mnt/impl/e;->cY:Ljava/lang/String;

    iget-object v4, p0, Lcom/mnt/impl/i/b;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/mnt/impl/b/k;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 55
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_2

    .line 60
    if-eqz v2, :cond_0

    .line 62
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 67
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 56
    :cond_1
    const/4 v0, 0x1

    .line 71
    :goto_1
    return v0

    .line 64
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 60
    :cond_2
    if-eqz v2, :cond_3

    .line 62
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 67
    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 68
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    :goto_3
    move v0, v1

    .line 71
    goto :goto_1

    .line 64
    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 60
    :catch_2
    move-exception v0

    move-object v0, v2

    :goto_4
    if-eqz v0, :cond_5

    .line 62
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 67
    :cond_5
    :goto_5
    if-eqz v2, :cond_4

    .line 68
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    .line 64
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 60
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_6
    if-eqz v2, :cond_6

    .line 62
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 67
    :cond_6
    :goto_7
    if-eqz v1, :cond_7

    .line 68
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    throw v0

    .line 64
    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 60
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_6

    :catch_5
    move-exception v3

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_4

    :catch_6
    move-exception v3

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_4
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 35
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 36
    invoke-direct {p0}, Lcom/mnt/impl/i/b;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method
