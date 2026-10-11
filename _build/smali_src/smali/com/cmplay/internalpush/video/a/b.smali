.class public Lcom/cmplay/internalpush/video/a/b;
.super Landroid/os/AsyncTask;
.source "VideoDownloaderTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/internalpush/video/a/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/cmplay/internalpush/video/a/b;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Lcom/cmplay/internalpush/video/a/b$a;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/cmplay/internalpush/video/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:J

.field private h:J

.field private i:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/Deque;Lcom/cmplay/internalpush/video/a/b$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Deque",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/cmplay/internalpush/video/a/b;",
            ">;>;",
            "Lcom/cmplay/internalpush/video/a/b$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cmplay/internalpush/video/a/b;->g:J

    .line 51
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/cmplay/internalpush/video/a/b;->h:J

    .line 63
    iput-object p1, p0, Lcom/cmplay/internalpush/video/a/b;->e:Ljava/util/ArrayList;

    .line 64
    iput-object p3, p0, Lcom/cmplay/internalpush/video/a/b;->b:Lcom/cmplay/internalpush/video/a/b$a;

    .line 65
    iput-object p2, p0, Lcom/cmplay/internalpush/video/a/b;->a:Ljava/util/Deque;

    .line 66
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cmplay/internalpush/video/a/b;->c:Ljava/lang/ref/WeakReference;

    .line 67
    iget-object v0, p0, Lcom/cmplay/internalpush/video/a/b;->a:Ljava/util/Deque;

    iget-object v1, p0, Lcom/cmplay/internalpush/video/a/b;->c:Ljava/lang/ref/WeakReference;

    invoke-interface {v0, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 14

    .prologue
    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v4, 0x0

    .line 80
    invoke-static {}, Lcom/cmplay/base/util/g;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cmplay/internalpush/video/a/b;->g:J

    .line 81
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lt v0, v6, :cond_0

    aget-object v0, p1, v4

    if-eqz v0, :cond_0

    aget-object v0, p1, v5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 164
    :goto_0
    return-object v0

    .line 86
    :cond_1
    aget-object v1, p1, v4

    .line 87
    aget-object v4, p1, v5

    .line 89
    const-string v0, ""

    .line 90
    array-length v5, p1

    if-le v5, v6, :cond_2

    .line 91
    aget-object v0, p1, v6

    .line 94
    :cond_2
    iput-object v1, p0, Lcom/cmplay/internalpush/video/a/b;->f:Ljava/lang/String;

    .line 96
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5f00\u59cb\u4e0b\u8f7d----"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 99
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    iput-object v4, p0, Lcom/cmplay/internalpush/video/a/b;->d:Ljava/lang/String;

    .line 102
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 103
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 104
    invoke-static {v1}, Lcom/cmplay/internalpush/video/a/c;->a(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v4

    .line 105
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :try_start_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 109
    const/16 v7, 0xc8

    if-lt v1, v7, :cond_3

    const/16 v7, 0x12c

    if-lt v1, v7, :cond_4

    .line 111
    :cond_3
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 156
    :try_start_2
    const-string v1, "close\u8d44\u6e90----"

    invoke-static {v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 158
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 159
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 163
    const-string v0, "\u7f51\u7edc\u5f02\u5e38----4"

    invoke-static {v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 164
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 114
    :cond_4
    :try_start_3
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    int-to-long v8, v1

    .line 115
    const-wide/32 v10, 0x1400000

    cmp-long v1, v8, v10

    if-lez v1, :cond_5

    .line 116
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 156
    :try_start_4
    const-string v1, "close\u8d44\u6e90----"

    invoke-static {v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 158
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 159
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 120
    :cond_5
    :try_start_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 122
    iget-object v1, p0, Lcom/cmplay/internalpush/video/a/b;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 123
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 124
    invoke-virtual {v7, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v1, "video_size_save"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string v1, "videoFileName"

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v0, "contentLength"

    invoke-virtual {v7, v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 128
    iget-object v0, p0, Lcom/cmplay/internalpush/video/a/b;->i:Landroid/content/Context;

    if-eqz v0, :cond_6

    .line 129
    iget-object v0, p0, Lcom/cmplay/internalpush/video/a/b;->i:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 130
    const-string v0, "zzb_video"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u53d1\u9001 \u957f\u5ea6 ="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_6
    iget-wide v0, p0, Lcom/cmplay/internalpush/video/a/b;->h:J

    const-wide/16 v10, -0x1

    cmp-long v0, v0, v10

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lcom/cmplay/internalpush/video/a/b;->h:J

    cmp-long v0, v8, v0

    if-ltz v0, :cond_7

    .line 135
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    .line 156
    :try_start_6
    const-string v1, "close\u8d44\u6e90----"

    invoke-static {v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 158
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 159
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 138
    :cond_7
    const/16 v0, 0x1000

    :try_start_7
    new-array v7, v0, [B

    move-wide v0, v2

    .line 142
    :goto_1
    invoke-virtual {v6, v7}, Ljava/io/InputStream;->read([B)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_8

    .line 143
    int-to-long v12, v10

    add-long/2addr v0, v12

    .line 144
    const/4 v11, 0x0

    invoke-virtual {v5, v7, v11, v10}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 156
    :catchall_0
    move-exception v0

    :try_start_8
    const-string v1, "close\u8d44\u6e90----"

    invoke-static {v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 158
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 159
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 147
    :cond_8
    :try_start_9
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    .line 149
    cmp-long v2, v8, v2

    if-eqz v2, :cond_9

    cmp-long v0, v0, v8

    if-gez v0, :cond_a

    .line 150
    :cond_9
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v0

    .line 156
    :try_start_a
    const-string v1, "close\u8d44\u6e90----"

    invoke-static {v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 158
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 159
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_0

    .line 152
    :cond_a
    :try_start_b
    const-string v0, "\u8bf7\u6c42\u903b\u8f91\u8d70\u5b8c ---"

    invoke-static {v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 154
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v0

    .line 156
    :try_start_c
    const-string v1, "close\u8d44\u6e90----"

    invoke-static {v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 158
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 159
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_0
.end method

.method public a(JLandroid/content/Context;)V
    .locals 1

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/cmplay/internalpush/video/a/b;->h:J

    .line 59
    iput-object p3, p0, Lcom/cmplay/internalpush/video/a/b;->i:Landroid/content/Context;

    .line 60
    return-void
.end method

.method public a(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 4

    .prologue
    .line 171
    iget-wide v0, p0, Lcom/cmplay/internalpush/video/a/b;->g:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/cmplay/internalpush/video/a/b;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u4e0b\u8f7d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cmplay/base/util/g;->a(JLjava/lang/String;)V

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0b\u8f7d\u8fd4\u56de0\u4e3a\u6210\u529f\uff0c\u5b9e\u9645="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/cmplay/internalpush/video/a/b;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/cmplay/internalpush/video/a/b;->a:Ljava/util/Deque;

    iget-object v1, p0, Lcom/cmplay/internalpush/video/a/b;->c:Ljava/lang/ref/WeakReference;

    invoke-interface {v0, v1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 180
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/cmplay/internalpush/video/a/b;->b:Lcom/cmplay/internalpush/video/a/b$a;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/cmplay/internalpush/video/a/b;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/cmplay/internalpush/video/a/b$a;->a(ILjava/lang/String;)V

    .line 194
    :goto_0
    return-void

    .line 184
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/cmplay/internalpush/video/a/b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 185
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/cmplay/internalpush/video/a/b;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/video/a/b;->a(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/cmplay/internalpush/video/a/b;->b:Lcom/cmplay/internalpush/video/a/b$a;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6587\u4ef6\u672a\u4e0b\u8f7d\u6210\u529f! errorCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/cmplay/internalpush/video/a/b$a;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5220\u9664\u6587\u4ef6\u5f02\u5e38: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/internalpush/video/a/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cmplay/internalpush/video/a/b;->a([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/cmplay/internalpush/video/a/b;->a(Ljava/lang/Integer;)V

    return-void
.end method
