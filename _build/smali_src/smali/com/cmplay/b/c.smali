.class public Lcom/cmplay/b/c;
.super Ljava/lang/Object;
.source "AppCardImageLoader.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "/appcard/"

    sput-object v0, Lcom/cmplay/b/c;->a:Ljava/lang/String;

    return-void
.end method

.method private static a([B)Ljava/lang/String;
    .locals 5

    .prologue
    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 149
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 151
    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/cmplay/b/a;Ljava/lang/String;ZZ)V
    .locals 4

    .prologue
    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/cmplay/b/a;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/cmplay/b/a;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmplay/b/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    invoke-static {p1}, Lcom/cmplay/b/d;->a(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/cmplay/b/a;->a:I

    iget-object v2, p0, Lcom/cmplay/b/a;->h:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/cmplay/g/d;->a(IILjava/lang/String;I)V

    .line 40
    if-eqz p3, :cond_2

    .line 41
    invoke-static {p1}, Lcom/cmplay/b/d;->a(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/cmplay/b/a;->a:I

    iget-object v2, p0, Lcom/cmplay/b/a;->h:Ljava/lang/String;

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lcom/cmplay/g/d;->a(IILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 45
    :cond_2
    if-nez p2, :cond_3

    .line 46
    :try_start_1
    invoke-static {p1}, Lcom/cmplay/b/d;->a(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/cmplay/b/a;->a:I

    iget-object v2, p0, Lcom/cmplay/b/a;->h:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lcom/cmplay/g/d;->a(IILjava/lang/String;I)V

    goto :goto_0

    .line 50
    :cond_3
    invoke-static {}, Lcom/cmplay/b/f;->a()Lcom/cmplay/b/f;

    move-result-object v0

    new-instance v1, Lcom/cmplay/b/c$1;

    invoke-direct {v1, p0, p1}, Lcom/cmplay/b/c$1;-><init>(Lcom/cmplay/b/a;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p0, v1}, Lcom/cmplay/b/f;->a(Ljava/lang/String;Lcom/cmplay/b/a;Lcom/cmplay/b/f$a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/cmplay/b/c;->b(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-static {p0}, Lcom/cmplay/b/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v0

    .line 114
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    sget-object v0, Lcom/cmplay/b/c;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    sget-object v0, Lcom/cmplay/b/c;->a:Ljava/lang/String;

    const-string v1, ".nomedia"

    invoke-static {v0, v1}, Lcom/cmplay/webview/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmplay/b/c;->b:Ljava/lang/String;

    .line 126
    :cond_0
    sget-object v0, Lcom/cmplay/b/c;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/cmplay/b/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/cmplay/b/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v0

    .line 78
    :cond_1
    const/4 v3, 0x0

    .line 80
    :try_start_0
    invoke-static {p1}, Lcom/cmplay/b/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    .line 96
    if-eqz v3, :cond_0

    .line 97
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v1

    .line 100
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 85
    :cond_2
    :try_start_2
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    :try_start_3
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v1, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 89
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 90
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 91
    const/4 v0, 0x1

    .line 96
    if-eqz v2, :cond_0

    .line 97
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 99
    :catch_1
    move-exception v1

    .line 100
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 92
    :catch_2
    move-exception v1

    move-object v2, v3

    .line 93
    :goto_1
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 96
    if-eqz v2, :cond_0

    .line 97
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 99
    :catch_3
    move-exception v1

    .line 100
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    .line 96
    :goto_2
    if-eqz v3, :cond_3

    .line 97
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 101
    :cond_3
    :goto_3
    throw v0

    .line 99
    :catch_4
    move-exception v1

    .line 100
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 95
    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_2

    .line 92
    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 137
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 138
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/b/c;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 143
    :goto_0
    return-object v0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
