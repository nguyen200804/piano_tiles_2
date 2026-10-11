.class Lcom/jirbo/adcolony/b;
.super Lcom/jirbo/adcolony/aj;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jirbo/adcolony/b$a;
    }
.end annotation


# instance fields
.field a:Lcom/jirbo/adcolony/af;

.field b:Lcom/jirbo/adcolony/b$a;

.field c:Ljava/lang/String;

.field d:Ljava/io/File;

.field e:Ljava/lang/Object;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Z

.field i:Z

.field j:Z

.field k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field l:I

.field m:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/af;Ljava/lang/String;Lcom/jirbo/adcolony/b$a;)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jirbo/adcolony/b;-><init>(Lcom/jirbo/adcolony/af;Ljava/lang/String;Lcom/jirbo/adcolony/b$a;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method constructor <init>(Lcom/jirbo/adcolony/af;Ljava/lang/String;Lcom/jirbo/adcolony/b$a;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jirbo/adcolony/aj;-><init>(Lcom/jirbo/adcolony/af;Z)V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/b;->c:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/jirbo/adcolony/b;->c:Ljava/lang/String;

    .line 48
    if-nez p2, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/b;->c:Ljava/lang/String;

    .line 50
    :cond_0
    iput-object p3, p0, Lcom/jirbo/adcolony/b;->b:Lcom/jirbo/adcolony/b$a;

    .line 51
    if-eqz p4, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/b;->d:Ljava/io/File;

    .line 52
    :cond_1
    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;)Lcom/jirbo/adcolony/b;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/jirbo/adcolony/b;->e:Ljava/lang/Object;

    .line 57
    return-object p0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)Lcom/jirbo/adcolony/b;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/jirbo/adcolony/b;->f:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/jirbo/adcolony/b;->g:Ljava/lang/String;

    .line 64
    return-object p0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 69
    invoke-static {p0}, Lcom/jirbo/adcolony/ay;->a(Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method

.method b()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/jirbo/adcolony/b;->b:Lcom/jirbo/adcolony/b$a;

    invoke-interface {v0, p0}, Lcom/jirbo/adcolony/b$a;->a(Lcom/jirbo/adcolony/b;)V

    .line 312
    return-void
.end method

.method public run()V
    .locals 11

    .prologue
    const/16 v10, 0xa

    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v9, 0x0

    .line 75
    move v5, v0

    :goto_0
    const/4 v0, 0x3

    if-gt v5, v0, :cond_3

    .line 79
    const/4 v1, 0x0

    .line 80
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lcom/jirbo/adcolony/b;->c:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 82
    iget-object v3, p0, Lcom/jirbo/adcolony/b;->f:Ljava/lang/String;

    if-eqz v3, :cond_e

    .line 84
    sget-object v3, Lcom/jirbo/adcolony/al;->a:Lcom/jirbo/adcolony/al;

    const-string v4, "Performing POST"

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 86
    iget-object v3, p0, Lcom/jirbo/adcolony/b;->c:Ljava/lang/String;

    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v10, :cond_1e

    .line 88
    new-instance v1, Ljava/net/URL;

    iget-object v3, p0, Lcom/jirbo/adcolony/b;->c:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 89
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/jirbo/adcolony/b;->j:Z

    move-object v4, v1

    .line 92
    :goto_1
    iget-boolean v1, p0, Lcom/jirbo/adcolony/b;->j:Z

    if-eqz v1, :cond_5

    .line 94
    const-string v1, "POST"

    invoke-virtual {v4, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 103
    :goto_2
    iget-boolean v1, p0, Lcom/jirbo/adcolony/b;->j:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 106
    :goto_3
    iget-boolean v1, p0, Lcom/jirbo/adcolony/b;->j:Z

    if-eqz v1, :cond_7

    new-instance v1, Ljava/io/PrintStream;

    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 107
    :goto_4
    iget-object v3, p0, Lcom/jirbo/adcolony/b;->g:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 109
    sget-object v1, Lcom/jirbo/adcolony/al;->a:Lcom/jirbo/adcolony/al;

    const-string v3, "Post data: "

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/al;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/al;

    move-result-object v1

    iget-object v3, p0, Lcom/jirbo/adcolony/b;->g:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 111
    iget-boolean v1, p0, Lcom/jirbo/adcolony/b;->j:Z

    if-eqz v1, :cond_8

    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 114
    :goto_5
    iget-boolean v1, p0, Lcom/jirbo/adcolony/b;->j:Z

    if-eqz v1, :cond_0

    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v1

    const/16 v3, 0xc8

    if-eq v1, v3, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/jirbo/adcolony/b;->j:Z

    if-nez v1, :cond_2

    .line 115
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_2

    .line 117
    :cond_1
    iget-boolean v1, p0, Lcom/jirbo/adcolony/b;->j:Z

    if-eqz v1, :cond_9

    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    move-object v3, v1

    .line 118
    :goto_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    iget-boolean v1, p0, Lcom/jirbo/adcolony/b;->j:Z

    if-eqz v1, :cond_a

    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    :goto_7
    iput-object v0, p0, Lcom/jirbo/adcolony/b;->k:Ljava/util/Map;

    .line 122
    const/16 v0, 0x400

    new-array v4, v0, [B

    .line 123
    const/4 v0, 0x0

    const/16 v1, 0x400

    invoke-virtual {v3, v4, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    move v1, v0

    .line 124
    :goto_8
    if-eq v1, v2, :cond_c

    move v0, v2

    .line 127
    :goto_9
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v1, :cond_b

    .line 129
    aget-byte v7, v4, v0

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    .line 286
    :catch_0
    move-exception v0

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/jirbo/adcolony/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " failed:\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jirbo/adcolony/t;->c(Ljava/lang/String;)V

    .line 291
    :cond_2
    const/4 v0, 0x3

    if-ne v5, v0, :cond_1d

    .line 304
    :cond_3
    iget-object v0, p0, Lcom/jirbo/adcolony/b;->c:Ljava/lang/String;

    const-string v1, "androidads23"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    sput-boolean v9, Lcom/jirbo/adcolony/t;->g:Z

    .line 305
    :cond_4
    iput-boolean v9, p0, Lcom/jirbo/adcolony/b;->i:Z

    .line 306
    invoke-static {p0}, Lcom/jirbo/adcolony/t;->a(Lcom/jirbo/adcolony/aj;)V

    .line 307
    :goto_a
    return-void

    .line 99
    :cond_5
    :try_start_1
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 104
    :cond_6
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    goto/16 :goto_3

    .line 106
    :cond_7
    new-instance v1, Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    goto/16 :goto_4

    .line 112
    :cond_8
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    goto/16 :goto_5

    .line 117
    :cond_9
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    move-object v3, v1

    goto/16 :goto_6

    .line 120
    :cond_a
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    goto :goto_7

    .line 131
    :cond_b
    const/4 v0, 0x0

    const/16 v1, 0x400

    invoke-virtual {v3, v4, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    move v1, v0

    .line 132
    goto :goto_8

    .line 133
    :cond_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 137
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/b;->m:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 145
    :try_start_3
    iget-object v0, p0, Lcom/jirbo/adcolony/b;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/b;->l:I

    .line 147
    iget-object v0, p0, Lcom/jirbo/adcolony/b;->c:Ljava/lang/String;

    const-string v1, "androidads23"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/jirbo/adcolony/t;->Z:J

    .line 152
    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/b;->i:Z

    .line 153
    invoke-static {p0}, Lcom/jirbo/adcolony/t;->a(Lcom/jirbo/adcolony/aj;)V

    goto :goto_a

    .line 139
    :catch_1
    move-exception v0

    .line 141
    sget-object v0, Lcom/jirbo/adcolony/al;->d:Lcom/jirbo/adcolony/al;

    const-string v1, "Out of memory, disabling AdColony"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 142
    invoke-static {}, Lcom/jirbo/adcolony/f;->a()V

    goto :goto_a

    .line 160
    :cond_e
    const/16 v3, 0x7530

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 161
    iget-boolean v3, p0, Lcom/jirbo/adcolony/b;->h:Z

    if-eqz v3, :cond_f

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 163
    :cond_f
    iget-object v3, p0, Lcom/jirbo/adcolony/b;->d:Ljava/io/File;

    if-eqz v3, :cond_15

    .line 165
    iget-object v1, p0, Lcom/jirbo/adcolony/b;->a:Lcom/jirbo/adcolony/af;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/jirbo/adcolony/b;->a:Lcom/jirbo/adcolony/af;

    iget-object v1, v1, Lcom/jirbo/adcolony/af;->f:Lcom/jirbo/adcolony/d;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/jirbo/adcolony/b;->a:Lcom/jirbo/adcolony/af;

    iget-object v1, v1, Lcom/jirbo/adcolony/af;->f:Lcom/jirbo/adcolony/d;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/d;->b()V

    .line 167
    :cond_10
    iget-object v1, p0, Lcom/jirbo/adcolony/b;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 168
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 171
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/b;->l:I

    .line 174
    const/16 v0, 0x400

    new-array v7, v0, [B

    .line 175
    const/4 v0, 0x0

    const/16 v8, 0x400

    invoke-virtual {v6, v7, v0, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 176
    :cond_11
    if-eq v0, v2, :cond_14

    .line 178
    if-lez v1, :cond_13

    .line 180
    if-le v0, v1, :cond_12

    move v0, v1

    .line 181
    :cond_12
    sub-int/2addr v1, v0

    .line 184
    :cond_13
    iget v8, p0, Lcom/jirbo/adcolony/b;->l:I

    add-int/2addr v8, v0

    iput v8, p0, Lcom/jirbo/adcolony/b;->l:I

    .line 185
    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 186
    const/4 v0, 0x0

    const/16 v8, 0x400

    invoke-virtual {v6, v7, v0, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 188
    if-nez v1, :cond_11

    .line 191
    :cond_14
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 192
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 193
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 195
    sget-object v0, Lcom/jirbo/adcolony/al;->b:Lcom/jirbo/adcolony/al;

    const-string v1, "Downloaded "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/al;

    move-result-object v0

    iget-object v1, p0, Lcom/jirbo/adcolony/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/al;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/al;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 281
    :goto_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/b;->i:Z

    .line 282
    invoke-static {p0}, Lcom/jirbo/adcolony/t;->a(Lcom/jirbo/adcolony/aj;)V

    goto/16 :goto_a

    .line 199
    :cond_15
    iget-boolean v3, p0, Lcom/jirbo/adcolony/b;->h:Z

    if-eqz v3, :cond_18

    .line 201
    iget-object v3, p0, Lcom/jirbo/adcolony/b;->c:Ljava/lang/String;

    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v10, :cond_16

    .line 203
    new-instance v1, Ljava/net/URL;

    iget-object v3, p0, Lcom/jirbo/adcolony/b;->c:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 204
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/jirbo/adcolony/b;->j:Z

    .line 207
    :cond_16
    iget-boolean v3, p0, Lcom/jirbo/adcolony/b;->j:Z

    if-eqz v3, :cond_17

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v3

    .line 208
    :goto_c
    if-lez v3, :cond_18

    .line 210
    sget-object v0, Lcom/jirbo/adcolony/al;->a:Lcom/jirbo/adcolony/al;

    const-string v1, "Got HTTP response "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/al;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/al;->a(I)Lcom/jirbo/adcolony/al;

    move-result-object v0

    const-string v1, " - counting as completed submission for 3rd party tracking."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 211
    sget-object v0, Lcom/jirbo/adcolony/al;->b:Lcom/jirbo/adcolony/al;

    const-string v1, "Downloaded "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/al;

    move-result-object v0

    iget-object v1, p0, Lcom/jirbo/adcolony/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 212
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/b;->m:Ljava/lang/String;

    .line 213
    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/b;->l:I

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/b;->i:Z

    .line 215
    invoke-static {p0}, Lcom/jirbo/adcolony/t;->a(Lcom/jirbo/adcolony/aj;)V

    goto/16 :goto_a

    .line 207
    :cond_17
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    goto :goto_c

    .line 219
    :cond_18
    iget-object v3, p0, Lcom/jirbo/adcolony/b;->c:Ljava/lang/String;

    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v10, :cond_19

    .line 221
    new-instance v1, Ljava/net/URL;

    iget-object v3, p0, Lcom/jirbo/adcolony/b;->c:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 222
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/jirbo/adcolony/b;->j:Z

    .line 223
    sget-object v3, Lcom/jirbo/adcolony/al;->a:Lcom/jirbo/adcolony/al;

    const-string v4, "ADCDownload - use ssl!"

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 229
    :goto_d
    sget-object v3, Lcom/jirbo/adcolony/al;->a:Lcom/jirbo/adcolony/al;

    const-string v4, "ADCDownload - before pause"

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 232
    const-wide/16 v6, 0xbb8

    :try_start_4
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 238
    :goto_e
    :try_start_5
    sget-object v3, Lcom/jirbo/adcolony/al;->a:Lcom/jirbo/adcolony/al;

    const-string v4, "ADCDownload - getInputStream"

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 239
    iget-boolean v3, p0, Lcom/jirbo/adcolony/b;->j:Z

    if-eqz v3, :cond_1a

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    move-object v3, v0

    .line 240
    :goto_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    const/16 v0, 0x400

    new-array v6, v0, [B

    .line 243
    const/4 v0, 0x0

    const/16 v1, 0x400

    invoke-virtual {v3, v6, v0, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-result v0

    move v1, v0

    .line 246
    :goto_10
    if-eq v1, v2, :cond_1c

    move v0, v2

    .line 249
    :goto_11
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v1, :cond_1b

    .line 251
    :try_start_6
    aget-byte v7, v6, v0

    int-to-char v7, v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_11

    .line 256
    :catch_2
    move-exception v0

    .line 258
    :try_start_7
    sget-object v0, Lcom/jirbo/adcolony/al;->d:Lcom/jirbo/adcolony/al;

    const-string v1, "Out of memory, disabling AdColony"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 259
    invoke-static {}, Lcom/jirbo/adcolony/f;->a()V

    goto/16 :goto_a

    .line 227
    :cond_19
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/jirbo/adcolony/b;->j:Z

    goto :goto_d

    .line 239
    :cond_1a
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v0

    move-object v3, v0

    goto :goto_f

    .line 253
    :cond_1b
    const/4 v0, 0x0

    const/16 v1, 0x400

    :try_start_8
    invoke-virtual {v3, v6, v0, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    move-result v0

    move v1, v0

    .line 254
    goto :goto_10

    .line 263
    :cond_1c
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 267
    :try_start_a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/b;->m:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 276
    :try_start_b
    iget-object v0, p0, Lcom/jirbo/adcolony/b;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/b;->l:I

    .line 278
    sget-object v0, Lcom/jirbo/adcolony/al;->b:Lcom/jirbo/adcolony/al;

    const-string v1, "Downloaded "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/al;

    move-result-object v0

    iget-object v1, p0, Lcom/jirbo/adcolony/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    goto/16 :goto_b

    .line 269
    :catch_3
    move-exception v0

    .line 271
    sget-object v0, Lcom/jirbo/adcolony/al;->d:Lcom/jirbo/adcolony/al;

    const-string v1, "Out of memory, disabling AdColony"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 272
    invoke-static {}, Lcom/jirbo/adcolony/f;->a()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_a

    .line 295
    :cond_1d
    add-int/lit8 v0, v5, 0x1

    mul-int/lit8 v0, v0, 0xa

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    :try_start_c
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_5

    .line 301
    :goto_12
    sget-object v0, Lcom/jirbo/adcolony/al;->b:Lcom/jirbo/adcolony/al;

    const-string v1, "Trying again ("

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/al;

    move-result-object v0

    add-int/lit8 v1, v5, 0x1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->a(I)Lcom/jirbo/adcolony/al;

    move-result-object v0

    const-string v1, "/3)"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 75
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_0

    .line 234
    :catch_4
    move-exception v3

    goto/16 :goto_e

    .line 297
    :catch_5
    move-exception v0

    goto :goto_12

    :cond_1e
    move-object v4, v1

    goto/16 :goto_1
.end method
