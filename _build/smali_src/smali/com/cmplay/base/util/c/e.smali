.class public Lcom/cmplay/base/util/c/e;
.super Ljava/lang/Object;
.source "LoaderImpl.java"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Lcom/cmplay/base/util/c/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cmplay/base/util/c/f",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmplay/base/util/c/e;->c:Z

    .line 44
    iput-object p1, p0, Lcom/cmplay/base/util/c/e;->a:Ljava/util/Map;

    .line 45
    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 192
    .line 193
    invoke-static {p2}, Lcom/cmplay/base/util/c/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 194
    if-nez v1, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-object v0

    .line 197
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/cmplay/base/util/c/e;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 200
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    invoke-static {p1}, Lcom/cmplay/base/util/j;->c(Landroid/content/Context;)I

    move-result v2

    invoke-static {p1}, Lcom/cmplay/base/util/j;->d(Landroid/content/Context;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/cmplay/base/util/f;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 211
    :catch_0
    move-exception v1

    .line 212
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 219
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    const/4 v0, 0x0

    .line 227
    :goto_0
    return-object v0

    .line 222
    :cond_0
    invoke-static {p0}, Lcom/cmplay/base/util/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    if-nez v0, :cond_1

    .line 224
    const-string v0, ""

    .line 226
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 151
    const/4 v1, 0x0

    .line 152
    iget-object v0, p0, Lcom/cmplay/base/util/c/e;->b:Lcom/cmplay/base/util/c/f;

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/cmplay/base/util/c/e;->b:Lcom/cmplay/base/util/c/f;

    invoke-virtual {v0, p2}, Lcom/cmplay/base/util/c/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 154
    if-eqz v0, :cond_3

    .line 155
    const-string v1, "cache \u4e2d\u83b7\u53d6"

    invoke-static {v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 182
    :cond_0
    :goto_0
    return-object v0

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/cmplay/base/util/c/e;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 160
    iget-object v2, p0, Lcom/cmplay/base/util/c/e;->a:Ljava/util/Map;

    monitor-enter v2

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/cmplay/base/util/c/e;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 162
    if-eqz v0, :cond_2

    .line 163
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 164
    monitor-exit v2

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 170
    :cond_3
    :goto_1
    iget-boolean v1, p0, Lcom/cmplay/base/util/c/e;->c:Z

    if-eqz v1, :cond_0

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/cmplay/base/util/c/e;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_0

    .line 173
    const-string v1, "sd\u5361  \u4e2d\u83b7\u53d6"

    invoke-static {v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/cmplay/base/util/c/e;->b:Lcom/cmplay/base/util/c/f;

    if-eqz v1, :cond_4

    .line 175
    iget-object v1, p0, Lcom/cmplay/base/util/c/e;->b:Lcom/cmplay/base/util/c/f;

    invoke-virtual {v1, p2, v0}, Lcom/cmplay/base/util/c/f;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 177
    :cond_4
    iget-object v1, p0, Lcom/cmplay/base/util/c/e;->a:Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method public declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 87
    monitor-enter p0

    .line 89
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 91
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 93
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 96
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 97
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 99
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_0

    .line 100
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 136
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 140
    const/4 v0, 0x0

    :goto_1
    monitor-exit p0

    return-object v0

    .line 102
    :cond_0
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 104
    const-string v1, "GIF"

    invoke-static {v3}, Lcom/cmplay/base/util/f;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    const/4 v1, 0x0

    array-length v4, v3

    invoke-static {v3, v1, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 111
    :goto_2
    if-eqz p3, :cond_1

    .line 113
    iget-object v4, p0, Lcom/cmplay/base/util/c/e;->b:Lcom/cmplay/base/util/c/f;

    if-eqz v4, :cond_3

    .line 114
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5b58\u5165\uff1abitmap="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 115
    iget-object v4, p0, Lcom/cmplay/base/util/c/e;->b:Lcom/cmplay/base/util/c/f;

    invoke-virtual {v4, p2, v1}, Lcom/cmplay/base/util/c/f;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :goto_3
    iget-boolean v4, p0, Lcom/cmplay/base/util/c/e;->c:Z

    if-eqz v4, :cond_1

    .line 121
    invoke-static {p2}, Lcom/cmplay/base/util/c/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 122
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/cmplay/base/util/c/e;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 123
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 124
    const-string v4, "GIF"

    invoke-static {v3}, Lcom/cmplay/base/util/f;->a([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 126
    invoke-virtual {v5, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 135
    :cond_1
    :goto_4
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 136
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v0, v1

    .line 133
    goto :goto_1

    .line 109
    :cond_2
    :try_start_6
    invoke-static {p1}, Lcom/cmplay/base/util/j;->c(Landroid/content/Context;)I

    move-result v1

    invoke-static {p1}, Lcom/cmplay/base/util/j;->d(Landroid/content/Context;)I

    move-result v4

    invoke-static {v3, v1, v4}, Lcom/cmplay/base/util/f;->a([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_2

    .line 117
    :cond_3
    iget-object v4, p0, Lcom/cmplay/base/util/c/e;->a:Ljava/util/Map;

    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-direct {v5, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, p2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 129
    :cond_4
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 87
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 50
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    .line 51
    const/high16 v1, 0x100000

    mul-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x8

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cache:-----"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-int/lit16 v2, v1, 0x400

    div-int/lit16 v2, v2, 0x400

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 53
    new-instance v0, Lcom/cmplay/base/util/c/e$1;

    invoke-direct {v0, p0, v1}, Lcom/cmplay/base/util/c/e$1;-><init>(Lcom/cmplay/base/util/c/e;I)V

    iput-object v0, p0, Lcom/cmplay/base/util/c/e;->b:Lcom/cmplay/base/util/c/f;

    .line 59
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/cmplay/base/util/c/e;->d:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/cmplay/base/util/c/e;->c:Z

    .line 68
    return-void
.end method
