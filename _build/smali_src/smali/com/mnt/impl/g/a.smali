.class public final Lcom/mnt/impl/g/a;
.super Lcom/mnt/impl/b/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mnt/impl/b/e",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/ImageView;

.field private c:Ljava/lang/String;

.field private d:Lcom/mnt/impl/f/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/mnt/impl/f/a;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/mnt/impl/b/e;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/mnt/impl/g/a;->a:Landroid/content/Context;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mnt/impl/g/a;->b:Landroid/widget/ImageView;

    .line 28
    iput-object p2, p0, Lcom/mnt/impl/g/a;->c:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/mnt/impl/g/a;->d:Lcom/mnt/impl/f/a;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/mnt/impl/b/e;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mnt/impl/g/a;->a:Landroid/content/Context;

    .line 43
    iput-object p1, p0, Lcom/mnt/impl/g/a;->b:Landroid/widget/ImageView;

    .line 44
    iput-object p2, p0, Lcom/mnt/impl/g/a;->c:Ljava/lang/String;

    .line 46
    return-void
.end method

.method private d()Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 50
    .line 52
    iget-object v0, p0, Lcom/mnt/impl/g/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/mnt/impl/g/a;->c:Ljava/lang/String;

    .line 1021
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    sget-object v4, Lcom/mnt/impl/e;->jQ:Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1022
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 54
    if-nez v1, :cond_4

    .line 56
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lcom/mnt/impl/g/a;->c:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 58
    sget-object v3, Lcom/mnt/impl/e;->jS:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 59
    const/16 v3, 0x1f40

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 60
    const/16 v3, 0x1f40

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 61
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_3

    .line 62
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 63
    :try_start_1
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 64
    iget-object v3, p0, Lcom/mnt/impl/g/a;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/mnt/impl/g/a;->c:Ljava/lang/String;

    .line 1027
    new-instance v5, Ljava/io/File;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    sget-object v6, Lcom/mnt/impl/e;->jR:Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1030
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1031
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1032
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 1033
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 71
    :goto_0
    if-eqz v1, :cond_0

    .line 72
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 79
    :cond_0
    :goto_1
    return-object v0

    .line 75
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 67
    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 71
    if-eqz v1, :cond_1

    .line 72
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_1
    :goto_3
    move-object v0, v2

    .line 68
    goto :goto_1

    .line 75
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 70
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 71
    :goto_4
    if-eqz v1, :cond_2

    .line 72
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 76
    :cond_2
    :goto_5
    throw v0

    .line 75
    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 70
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 67
    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v2

    goto :goto_0

    :cond_3
    move-object v0, v1

    move-object v1, v2

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/mnt/impl/g/a;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 18
    check-cast p1, Landroid/graphics/Bitmap;

    .line 1083
    iget-object v0, p0, Lcom/mnt/impl/g/a;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1084
    iget-object v0, p0, Lcom/mnt/impl/g/a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1086
    :cond_0
    iget-object v0, p0, Lcom/mnt/impl/g/a;->d:Lcom/mnt/impl/f/a;

    if-eqz v0, :cond_1

    .line 1087
    if-eqz p1, :cond_2

    .line 1088
    iget-object v0, p0, Lcom/mnt/impl/g/a;->d:Lcom/mnt/impl/f/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mnt/impl/f/a;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    .line 1090
    :cond_2
    iget-object v0, p0, Lcom/mnt/impl/g/a;->d:Lcom/mnt/impl/f/a;

    invoke-interface {v0}, Lcom/mnt/impl/f/a;->a()V

    goto :goto_0
.end method
