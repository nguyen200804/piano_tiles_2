.class public Lcom/cmplay/c/a/a;
.super Ljava/lang/Object;
.source "CCrashUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/c/a/a$a;
    }
.end annotation


# static fields
.field private static i:Lcom/cmplay/c/a/a;


# instance fields
.field a:Ljava/text/SimpleDateFormat;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroid/app/AlarmManager;

.field private g:Lcom/cmplay/c/a/a$a;

.field private h:Landroid/app/PendingIntent;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmplay/c/a/a;->a:Ljava/text/SimpleDateFormat;

    .line 75
    iput-object p1, p0, Lcom/cmplay/c/a/a;->b:Landroid/content/Context;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/cmplay/i/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ccrash"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/c/a/a;->d:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cmplay/c/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getVersionCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/c/a/a;->c:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/cmplay/i/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/c/a/a;->e:Ljava/lang/String;

    .line 80
    invoke-direct {p0}, Lcom/cmplay/c/a/a;->c()V

    .line 81
    invoke-virtual {p0}, Lcom/cmplay/c/a/a;->a()V

    .line 82
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/cmplay/c/a/a;
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lcom/cmplay/c/a/a;->i:Lcom/cmplay/c/a/a;

    if-nez v0, :cond_1

    .line 65
    const-class v1, Lcom/cmplay/c/a/a;

    monitor-enter v1

    .line 66
    :try_start_0
    sget-object v0, Lcom/cmplay/c/a/a;->i:Lcom/cmplay/c/a/a;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/cmplay/c/a/a;

    invoke-direct {v0, p0}, Lcom/cmplay/c/a/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cmplay/c/a/a;->i:Lcom/cmplay/c/a/a;

    .line 69
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_1
    sget-object v0, Lcom/cmplay/c/a/a;->i:Lcom/cmplay/c/a/a;

    return-object v0

    .line 69
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/cmplay/i/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 268
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 270
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    .line 271
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "logInfoFile.txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 272
    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "diamondlog.txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 273
    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "diamondlog.txt.bak"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 274
    const/4 v3, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "oplog.txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 275
    const/4 v3, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "oplog.txt.bak"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 277
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/cmplay/c/a/a$2;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/cmplay/c/a/a$2;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 283
    return-void
.end method

.method static synthetic a(Lcom/cmplay/c/a/a;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/cmplay/c/a/a;->d()V

    return-void
.end method

.method private a(Ljava/io/File;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 206
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 207
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cmplay/c/a/a;->a:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v0, "crash"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "src zip file name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const-string v0, "crash"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zip file name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".dog"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-direct {p0, p1, v0, v1}, Lcom/cmplay/c/a/a;->a(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 216
    const-string v2, "http://dump.p2.cmcm.com/dump?f="

    invoke-static {v1, v2}, Lcom/cmplay/c/a/a;->c(Ljava/io/File;Ljava/lang/String;)J

    move-result-wide v2

    .line 217
    const-string v4, "crash"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "upload zip file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 219
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 220
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 228
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 231
    :cond_0
    :goto_1
    return-void

    .line 222
    :cond_1
    const-string v0, "crash"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uploading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 226
    :cond_2
    const-string v0, "crash"

    const-string v2, "CCrashUpdater::pack zip file failed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    invoke-static {p0, p1, p2, p3, p4}, Lcom/cmplay/c/a/a;->b(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    const/16 v0, 0x4e20

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 505
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 506
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 507
    invoke-virtual {p0, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 508
    invoke-virtual {p0, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 509
    invoke-virtual {p0, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 510
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 511
    const-string v0, "accept"

    const-string v1, "*/*"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string v0, "Connection"

    const-string v1, "Keep-Alive"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-string v0, "Content-Type"

    const-string v1, "binary/octet-stream"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip, deflate"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const-string v0, "User-Agent"

    invoke-static {}, Lcom/cmplay/c/a/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 517
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 518
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 519
    const-string v2, "%s-%s,%s;q=0.8"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    aput-object v1, v3, v4

    const/4 v1, 0x2

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 520
    const-string v1, "Accept-Language"

    invoke-virtual {p0, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    return-void
.end method

.method private a(Ljava/io/File;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 198
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 199
    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    aget-object v1, v1, v0

    const-string v2, "dmp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 418
    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    .line 419
    const/4 v2, 0x0

    .line 422
    :try_start_0
    invoke-virtual {p3}, Ljava/io/File;->createNewFile()Z

    .line 423
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    :try_start_1
    invoke-static {p1, v1}, Lcom/cmplay/c/a/a;->a(Ljava/io/File;Ljava/util/zip/ZipOutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-nez v2, :cond_1

    .line 437
    if-eqz v1, :cond_0

    .line 438
    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 443
    :cond_0
    :goto_0
    return v0

    .line 429
    :cond_1
    :try_start_3
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 430
    invoke-static {p2, v1}, Lcom/cmplay/c/a/a;->a(Ljava/io/File;Ljava/util/zip/ZipOutputStream;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 437
    :cond_2
    if-eqz v1, :cond_3

    .line 438
    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 443
    :cond_3
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 432
    :catch_0
    move-exception v1

    move-object v1, v2

    .line 437
    :goto_2
    if-eqz v1, :cond_0

    .line 438
    :try_start_5
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 440
    :catch_1
    move-exception v1

    goto :goto_0

    .line 436
    :catchall_0
    move-exception v0

    .line 437
    :goto_3
    if-eqz v2, :cond_4

    .line 438
    :try_start_6
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 440
    :cond_4
    :goto_4
    throw v0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_4

    .line 436
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 432
    :catch_5
    move-exception v2

    goto :goto_2
.end method

.method private static a(Ljava/io/File;Ljava/util/zip/ZipOutputStream;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 379
    const/4 v2, 0x0

    .line 382
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    :try_start_1
    new-instance v2, Ljava/util/zip/ZipEntry;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p1, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 387
    const/16 v2, 0x1000

    :try_start_2
    new-array v2, v2, [B

    .line 389
    :goto_0
    const/4 v4, 0x0

    array-length v5, v2

    invoke-virtual {v3, v2, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 390
    const/4 v5, 0x0

    invoke-virtual {p1, v2, v5, v4}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 393
    :catch_0
    move-exception v2

    move-object v6, v2

    move v2, v0

    move-object v0, v6

    .line 394
    :goto_1
    :try_start_3
    const-string v4, "crash"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 399
    if-eqz v3, :cond_0

    .line 400
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 407
    :cond_0
    :goto_2
    if-eqz v2, :cond_1

    .line 408
    :try_start_5
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :cond_1
    :goto_3
    move v0, v1

    .line 414
    :goto_4
    return v0

    .line 392
    :cond_2
    :try_start_6
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->flush()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 399
    if-eqz v3, :cond_3

    .line 400
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 408
    :cond_3
    :goto_5
    :try_start_8
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_4

    .line 410
    :catch_1
    move-exception v1

    .line 411
    const-string v2, "crash"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 402
    :catch_2
    move-exception v1

    .line 403
    const-string v2, "crash"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 402
    :catch_3
    move-exception v0

    .line 403
    const-string v3, "crash"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 410
    :catch_4
    move-exception v0

    .line 411
    const-string v2, "crash"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 398
    :catchall_0
    move-exception v0

    move-object v3, v2

    .line 399
    :goto_6
    if-eqz v3, :cond_4

    .line 400
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 407
    :cond_4
    :goto_7
    if-eqz v1, :cond_5

    .line 408
    :try_start_a
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 412
    :cond_5
    :goto_8
    throw v0

    .line 402
    :catch_5
    move-exception v2

    .line 403
    const-string v3, "crash"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 410
    :catch_6
    move-exception v1

    .line 411
    const-string v2, "crash"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 398
    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v1

    move-object v6, v1

    move v1, v0

    move-object v0, v6

    goto :goto_6

    :catchall_3
    move-exception v0

    move v1, v2

    goto :goto_6

    .line 393
    :catch_7
    move-exception v0

    move-object v3, v2

    move v2, v1

    goto :goto_1

    :catch_8
    move-exception v0

    move v2, v1

    goto :goto_1
.end method

.method private static a([Ljava/lang/String;Ljava/io/File;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 347
    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v0, v1

    .line 375
    :cond_1
    :goto_0
    return v0

    .line 352
    :cond_2
    const/4 v0, 0x0

    .line 354
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 355
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    :try_start_1
    array-length v4, p0

    move v3, v1

    move v0, v1

    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v5, p0, v3

    .line 358
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 360
    invoke-static {v6, v2}, Lcom/cmplay/c/a/a;->a(Ljava/io/File;Ljava/util/zip/ZipOutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-eqz v5, :cond_3

    .line 361
    const/4 v0, 0x1

    .line 357
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 370
    :cond_4
    if-eqz v2, :cond_1

    .line 371
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 373
    :catch_0
    move-exception v1

    goto :goto_0

    .line 365
    :catch_1
    move-exception v2

    .line 370
    :goto_2
    if-eqz v0, :cond_5

    .line 371
    :try_start_3
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_5
    :goto_3
    move v0, v1

    .line 373
    goto :goto_0

    .line 369
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 370
    :goto_4
    if-eqz v2, :cond_6

    .line 371
    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 373
    :cond_6
    :goto_5
    throw v0

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_5

    .line 369
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 365
    :catch_4
    move-exception v0

    move-object v0, v2

    goto :goto_2
.end method

.method private b()V
    .locals 8

    .prologue
    const-wide/32 v6, 0x1b7740

    const/4 v4, 0x0

    .line 85
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 86
    const-string v1, "tiles2_ccrash_delay_task_action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    iget-object v1, p0, Lcom/cmplay/c/a/a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    iget-object v1, p0, Lcom/cmplay/c/a/a;->b:Landroid/content/Context;

    const/high16 v2, 0x8000000

    invoke-static {v1, v4, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/c/a/a;->h:Landroid/app/PendingIntent;

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/cmplay/c/a/a;->f:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v6

    iget-object v1, p0, Lcom/cmplay/c/a/a;->h:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 97
    :goto_0
    return-void

    .line 92
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 93
    iget-object v0, p0, Lcom/cmplay/c/a/a;->f:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v6

    iget-object v1, p0, Lcom/cmplay/c/a/a;->h:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/cmplay/c/a/a;->f:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v6

    iget-object v1, p0, Lcom/cmplay/c/a/a;->h:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/cmplay/c/a/a;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/cmplay/c/a/a;->b()V

    return-void
.end method

.method private b(Ljava/io/File;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 251
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 253
    if-eqz v1, :cond_1

    .line 254
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 255
    if-eqz v3, :cond_0

    .line 256
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\."

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 257
    if-eqz v4, :cond_0

    array-length v5, v4

    if-le v5, v6, :cond_0

    aget-object v4, v4, v6

    const-string v5, "zip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 258
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 254
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    :cond_1
    return-void
.end method

.method private b(Ljava/io/File;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 234
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 236
    if-eqz v1, :cond_2

    .line 237
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 238
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 239
    if-eqz v3, :cond_1

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 240
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 241
    const-string v4, ""

    invoke-direct {p0, v3, v4}, Lcom/cmplay/c/a/a;->b(Ljava/io/File;Ljava/lang/String;)V

    .line 243
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 237
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :cond_2
    return-void
.end method

.method private static b(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 289
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getVersionCode()Ljava/lang/String;

    move-result-object v1

    .line 292
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getModel()Ljava/lang/String;

    move-result-object v2

    .line 293
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getDevice()Ljava/lang/String;

    move-result-object v0

    .line 294
    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 295
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getBrand()Ljava/lang/String;

    move-result-object v0

    .line 296
    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 298
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 299
    const-string p3, "unknownuser"

    .line 301
    :cond_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 302
    const-string p4, "unknownsocal"

    .line 304
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 305
    const-string p2, "debugtype"

    .line 308
    :cond_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 309
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    .line 310
    if-nez v0, :cond_3

    const-string v0, ""

    .line 311
    :cond_3
    const-string v5, "key_language_selected"

    const-string v6, "en"

    invoke-static {v5, v6}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 312
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "-"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "-"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    :try_start_0
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 330
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-static {p1, v1}, Lcom/cmplay/c/a/a;->a([Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 332
    const-string v0, "http://54.173.50.222/api/crash/upload?f="

    invoke-static {v1, v0}, Lcom/cmplay/c/a/a;->c(Ljava/io/File;Ljava/lang/String;)J

    move-result-wide v2

    .line 333
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    .line 334
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/cmplay/util/NativeUtil;->onDebugInfoUploadRes(I)V

    .line 341
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 342
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 344
    :cond_4
    :goto_1
    return-void

    .line 336
    :cond_5
    invoke-static {v7}, Lcom/cmplay/util/NativeUtil;->onDebugInfoUploadRes(I)V

    goto :goto_0

    .line 339
    :cond_6
    invoke-static {v7}, Lcom/cmplay/util/NativeUtil;->onDebugInfoUploadRes(I)V

    goto :goto_0

    .line 326
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static c(Ljava/io/File;Ljava/lang/String;)J
    .locals 13

    .prologue
    const-wide/16 v2, -0x1

    const/4 v6, 0x0

    .line 448
    if-nez p0, :cond_0

    move-wide v0, v2

    .line 499
    :goto_0
    return-wide v0

    .line 455
    :cond_0
    const-wide/16 v4, 0x0

    .line 458
    :try_start_0
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    :try_start_1
    const-string v1, "POST"

    invoke-static {v0, v1}, Lcom/cmplay/c/a/a;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    .line 462
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 463
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v8

    .line 466
    const/16 v7, 0x2000

    :try_start_3
    new-array v7, v7, [B

    .line 468
    :goto_1
    const/4 v9, 0x0

    array-length v10, v7

    invoke-virtual {v1, v7, v9, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    .line 469
    const/4 v10, 0x0

    invoke-virtual {v8, v7, v10, v9}, Ljava/io/OutputStream;->write([BII)V

    .line 470
    int-to-long v10, v9

    add-long/2addr v4, v10

    goto :goto_1

    .line 472
    :cond_1
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 473
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 474
    :try_start_4
    const-string v6, ""

    .line 476
    :goto_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 477
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-result-object v6

    goto :goto_2

    .line 483
    :cond_2
    if-eqz v8, :cond_3

    .line 485
    :try_start_5
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 488
    :cond_3
    :goto_3
    if-eqz v7, :cond_4

    .line 490
    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 493
    :cond_4
    :goto_4
    if-eqz v1, :cond_5

    .line 495
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 498
    :cond_5
    :goto_5
    if-eqz v0, :cond_6

    .line 499
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    move-wide v0, v4

    goto/16 :goto_0

    .line 480
    :catch_0
    move-exception v0

    move-object v0, v6

    move-object v1, v6

    move-object v4, v6

    .line 483
    :goto_6
    if-eqz v4, :cond_7

    .line 485
    :try_start_8
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 488
    :cond_7
    :goto_7
    if-eqz v1, :cond_8

    .line 490
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 493
    :cond_8
    :goto_8
    if-eqz v0, :cond_9

    .line 495
    :try_start_a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 498
    :cond_9
    :goto_9
    if-eqz v6, :cond_a

    .line 499
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    move-wide v0, v2

    goto/16 :goto_0

    .line 483
    :catchall_0
    move-exception v0

    move-object v1, v6

    move-object v7, v6

    move-object v8, v6

    :goto_a
    if-eqz v8, :cond_b

    .line 485
    :try_start_b
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 488
    :cond_b
    :goto_b
    if-eqz v7, :cond_c

    .line 490
    :try_start_c
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 493
    :cond_c
    :goto_c
    if-eqz v1, :cond_d

    .line 495
    :try_start_d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 498
    :cond_d
    :goto_d
    if-eqz v6, :cond_e

    .line 499
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_e
    throw v0

    .line 486
    :catch_1
    move-exception v2

    goto :goto_3

    .line 491
    :catch_2
    move-exception v2

    goto :goto_4

    .line 496
    :catch_3
    move-exception v1

    goto :goto_5

    .line 486
    :catch_4
    move-exception v4

    goto :goto_7

    .line 491
    :catch_5
    move-exception v1

    goto :goto_8

    .line 496
    :catch_6
    move-exception v0

    goto :goto_9

    .line 486
    :catch_7
    move-exception v2

    goto :goto_b

    .line 491
    :catch_8
    move-exception v2

    goto :goto_c

    .line 496
    :catch_9
    move-exception v1

    goto :goto_d

    .line 483
    :catchall_1
    move-exception v1

    move-object v7, v6

    move-object v8, v6

    move-object v12, v0

    move-object v0, v1

    move-object v1, v6

    move-object v6, v12

    goto :goto_a

    :catchall_2
    move-exception v2

    move-object v7, v6

    move-object v8, v6

    move-object v6, v0

    move-object v0, v2

    goto :goto_a

    :catchall_3
    move-exception v2

    move-object v7, v6

    move-object v6, v0

    move-object v0, v2

    goto :goto_a

    :catchall_4
    move-exception v2

    move-object v6, v0

    move-object v0, v2

    goto :goto_a

    .line 480
    :catch_a
    move-exception v1

    move-object v1, v6

    move-object v4, v6

    move-object v12, v6

    move-object v6, v0

    move-object v0, v12

    goto :goto_6

    :catch_b
    move-exception v4

    move-object v4, v6

    move-object v12, v0

    move-object v0, v1

    move-object v1, v6

    move-object v6, v12

    goto :goto_6

    :catch_c
    move-exception v4

    move-object v4, v8

    move-object v12, v0

    move-object v0, v1

    move-object v1, v6

    move-object v6, v12

    goto :goto_6

    :catch_d
    move-exception v4

    move-object v6, v0

    move-object v4, v8

    move-object v0, v1

    move-object v1, v7

    goto :goto_6
.end method

.method private c()V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/cmplay/c/a/a;->g:Lcom/cmplay/c/a/a$a;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/cmplay/c/a/a$a;

    invoke-direct {v0, p0}, Lcom/cmplay/c/a/a$a;-><init>(Lcom/cmplay/c/a/a;)V

    iput-object v0, p0, Lcom/cmplay/c/a/a;->g:Lcom/cmplay/c/a/a$a;

    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 109
    const-string v1, "tiles2_ccrash_delay_task_action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/cmplay/c/a/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/cmplay/c/a/a;->g:Lcom/cmplay/c/a/a$a;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/cmplay/c/a/a;->f:Landroid/app/AlarmManager;

    if-nez v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/cmplay/c/a/a;->b:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/cmplay/c/a/a;->f:Landroid/app/AlarmManager;

    .line 115
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/cmplay/c/a/a;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/cmplay/c/a/a;->e()V

    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/cmplay/c/a/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/util/t;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Lcom/cmplay/c/a/a$1;

    invoke-direct {v0, p0}, Lcom/cmplay/c/a/a$1;-><init>(Lcom/cmplay/c/a/a;)V

    invoke-static {v0}, Lcom/cmplay/util/a/a;->a(Ljava/lang/Runnable;)V

    .line 138
    :cond_0
    return-void
.end method

.method private e()V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getVersionCode()Ljava/lang/String;

    move-result-object v2

    .line 143
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/cmplay/c/a/a;->d:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v2}, Lcom/cmplay/c/a/a;->b(Ljava/io/File;Ljava/lang/String;)V

    .line 146
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/cmplay/c/a/a;->c:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-direct {p0, v0}, Lcom/cmplay/c/a/a;->b(Ljava/io/File;)V

    .line 149
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 151
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getModel()Ljava/lang/String;

    move-result-object v4

    .line 152
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getDevice()Ljava/lang/String;

    move-result-object v0

    .line 153
    const-string v5, "-"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 154
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getBrand()Ljava/lang/String;

    move-result-object v0

    .line 155
    const-string v6, "-"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 157
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 158
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    .line 159
    if-nez v0, :cond_0

    const-string v0, ""

    .line 160
    :cond_0
    const-string v8, "key_language_selected"

    const-string v9, "en"

    invoke-static {v8, v9}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 161
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    :try_start_0
    const-string v2, " "

    const-string v4, ""

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    const-string v2, "utf-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 175
    if-eqz v3, :cond_4

    .line 176
    array-length v5, v3

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_4

    aget-object v6, v3, v2

    .line 177
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 179
    if-eqz v7, :cond_3

    array-length v0, v7

    if-lez v0, :cond_3

    .line 180
    array-length v8, v7

    move v0, v1

    :goto_1
    if-ge v0, v8, :cond_3

    aget-object v9, v7, v0

    .line 182
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "@"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 183
    invoke-direct {p0, v9}, Lcom/cmplay/c/a/a;->a(Ljava/io/File;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 184
    invoke-direct {p0, v9, v10}, Lcom/cmplay/c/a/a;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 180
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 189
    :cond_2
    invoke-direct {p0, v6}, Lcom/cmplay/c/a/a;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 190
    invoke-direct {p0, v6, v4}, Lcom/cmplay/c/a/a;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 176
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 195
    :cond_4
    return-void
.end method

.method private static f()Ljava/lang/String;
    .locals 6

    .prologue
    .line 524
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    .line 525
    invoke-static {v0}, Lcom/cmplay/kinfoc/report/c;->g(Landroid/content/Context;)Lcom/cmplay/kinfoc/report/a;

    move-result-object v0

    .line 526
    iget-object v1, v0, Lcom/cmplay/kinfoc/report/a;->t:Ljava/lang/String;

    .line 527
    iget v2, v0, Lcom/cmplay/kinfoc/report/a;->D:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 528
    iget-object v0, v0, Lcom/cmplay/kinfoc/report/a;->b:Ljava/lang/String;

    .line 529
    const-string v3, "mt=%s;os=%s;cv=%s"

    .line 530
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v1, 0x2

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/cmplay/c/a/a;->d()V

    .line 101
    invoke-direct {p0}, Lcom/cmplay/c/a/a;->b()V

    .line 102
    return-void
.end method
