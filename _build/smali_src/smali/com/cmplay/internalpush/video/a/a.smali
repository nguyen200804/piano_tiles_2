.class public Lcom/cmplay/internalpush/video/a/a;
.super Ljava/lang/Object;
.source "VideoDownloadTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/internalpush/video/a/a$a;
    }
.end annotation


# static fields
.field private static j:Lcom/cmplay/internalpush/video/a/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private final c:Ljava/util/Deque;
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

.field private d:Ljava/io/File;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Lcom/cmplay/internalpush/video/a/a$a;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/cmplay/internalpush/video/a/b$a;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "InnerPushVideoCache"

    iput-object v0, p0, Lcom/cmplay/internalpush/video/a/a;->a:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/cmplay/internalpush/video/a/a;->c:Ljava/util/Deque;

    .line 42
    iput-boolean v1, p0, Lcom/cmplay/internalpush/video/a/a;->e:Z

    .line 44
    iput-boolean v1, p0, Lcom/cmplay/internalpush/video/a/a;->f:Z

    .line 45
    iput-boolean v1, p0, Lcom/cmplay/internalpush/video/a/a;->g:Z

    .line 46
    iput-object v2, p0, Lcom/cmplay/internalpush/video/a/a;->h:Lcom/cmplay/internalpush/video/a/a$a;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmplay/internalpush/video/a/a;->i:Ljava/util/ArrayList;

    .line 50
    iput-object v2, p0, Lcom/cmplay/internalpush/video/a/a;->k:Lcom/cmplay/internalpush/video/a/b$a;

    .line 52
    return-void
.end method

.method public static a()Lcom/cmplay/internalpush/video/a/a;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/cmplay/internalpush/video/a/a;->j:Lcom/cmplay/internalpush/video/a/a;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/cmplay/internalpush/video/a/a;

    invoke-direct {v0}, Lcom/cmplay/internalpush/video/a/a;-><init>()V

    sput-object v0, Lcom/cmplay/internalpush/video/a/a;->j:Lcom/cmplay/internalpush/video/a/a;

    .line 57
    :cond_0
    sget-object v0, Lcom/cmplay/internalpush/video/a/a;->j:Lcom/cmplay/internalpush/video/a/a;

    return-object v0
.end method

.method static synthetic a(Lcom/cmplay/internalpush/video/a/a;)Lcom/cmplay/internalpush/video/a/b$a;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/cmplay/internalpush/video/a/a;->k:Lcom/cmplay/internalpush/video/a/b$a;

    return-object v0
.end method

.method static synthetic b(Lcom/cmplay/internalpush/video/a/a;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/cmplay/internalpush/video/a/a;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/cmplay/internalpush/video/a/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/cmplay/internalpush/video/a/a;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/cmplay/internalpush/video/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Lcom/cmplay/internalpush/video/a/b$a;)V
    .locals 10

    .prologue
    .line 319
    new-instance v6, Lcom/cmplay/internalpush/video/a/b;

    iget-object v7, p0, Lcom/cmplay/internalpush/video/a/a;->i:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/cmplay/internalpush/video/a/a;->c:Ljava/util/Deque;

    new-instance v0, Lcom/cmplay/internalpush/video/a/a$3;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/cmplay/internalpush/video/a/a$3;-><init>(Lcom/cmplay/internalpush/video/a/a;ILjava/lang/String;Ljava/lang/String;Lcom/cmplay/internalpush/video/a/b$a;)V

    invoke-direct {v6, v7, v8, v0}, Lcom/cmplay/internalpush/video/a/b;-><init>(Ljava/util/ArrayList;Ljava/util/Deque;Lcom/cmplay/internalpush/video/a/b$a;)V

    .line 337
    :try_start_0
    iget-boolean v0, p0, Lcom/cmplay/internalpush/video/a/a;->e:Z

    if-eqz v0, :cond_0

    .line 338
    invoke-static {}, Lcom/cmplay/internalpush/a/b;->a()J

    move-result-wide v0

    .line 339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sd \u5361 memSize ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v4, 0x400

    div-long v4, v0, v4

    const-wide/16 v8, 0x400

    div-long/2addr v4, v8

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/cmplay/internalpush/video/a/a;->b:Landroid/content/Context;

    invoke-virtual {v6, v0, v1, v2}, Lcom/cmplay/internalpush/video/a/b;->a(JLandroid/content/Context;)V

    .line 354
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0, p3}, Lcom/cmplay/internalpush/video/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-static {v6, v0}, Lcom/cmplay/internalpush/a/a;->a(Landroid/os/AsyncTask;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 358
    :goto_1
    return-void

    .line 341
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/cmplay/internalpush/video/a/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/internalpush/a/b;->a(Landroid/content/Context;)J

    move-result-wide v0

    .line 342
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5185\u5b58 memSize ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v4, 0x400

    div-long v4, v0, v4

    const-wide/16 v8, 0x400

    div-long/2addr v4, v8

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 344
    :catch_0
    move-exception v0

    .line 345
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 355
    :catch_1
    move-exception v0

    .line 356
    const/4 v0, -0x1

    const-string v1, "AsyncTasks Execute excption"

    invoke-interface {p4, v0, v1}, Lcom/cmplay/internalpush/video/a/b$a;->a(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public declared-synchronized a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/cmplay/internalpush/video/b/a;Lcom/cmplay/internalpush/video/a/b$a;)V
    .locals 15

    .prologue
    .line 248
    monitor-enter p0

    if-nez p4, :cond_0

    .line 249
    :try_start_0
    const-string v4, "video url is null"

    invoke-static {v4}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 250
    const/4 v4, 0x1

    const-string v5, "video url is null"

    move-object/from16 v0, p11

    invoke-interface {v0, v4, v5}, Lcom/cmplay/internalpush/video/a/b$a;->a(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    :goto_0
    monitor-exit p0

    return-void

    .line 254
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/cmplay/internalpush/video/a/a;->i:Ljava/util/ArrayList;

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 255
    const-string v4, "video url is contains"

    invoke-static {v4}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 248
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 258
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/cmplay/internalpush/video/a/a;->i:Ljava/util/ArrayList;

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    move-object/from16 v0, p5

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/video/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 263
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 265
    const-wide/16 v6, 0x0

    move-object/from16 v0, p5

    invoke-static {v0, v6, v7}, Lcom/cmplay/internalpush/a/e;->a(Ljava/lang/String;J)J

    move-result-wide v6

    .line 266
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "requestedSize ----------= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    cmp-long v8, v8, v10

    if-ltz v8, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v8, v8, v6

    if-gez v8, :cond_5

    .line 269
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u6e05\u7406\u6389\uff0c\u672c\u5730\u5927\u5c0f\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", \u7ebf\u4e0a\u5927\u5c0f: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_3

    .line 286
    :cond_3
    iget-object v5, p0, Lcom/cmplay/internalpush/video/a/a;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/cmplay/base/util/m;->c(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 288
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/cmplay/internalpush/video/a/a;->i:Ljava/util/ArrayList;

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 290
    iget-object v5, p0, Lcom/cmplay/internalpush/video/a/a;->i:Ljava/util/ArrayList;

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 291
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u6ca1\u7f51 remove :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 293
    :cond_4
    const/16 v5, 0x8

    move-object/from16 v0, p11

    invoke-interface {v0, v5, v4}, Lcom/cmplay/internalpush/video/a/b$a;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 275
    :cond_5
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/cmplay/internalpush/video/a/a;->i:Ljava/util/ArrayList;

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 277
    iget-object v5, p0, Lcom/cmplay/internalpush/video/a/a;->i:Ljava/util/ArrayList;

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 278
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 280
    :cond_6
    const-string v5, "file exists"

    invoke-static {v5}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 281
    const/16 v5, 0x3e8

    move-object/from16 v0, p11

    invoke-interface {v0, v5, v4}, Lcom/cmplay/internalpush/video/a/b$a;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 299
    :cond_7
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v4

    const/4 v5, 0x4

    const/4 v6, 0x6

    const-string v10, ""

    const/4 v11, 0x0

    iget-object v7, p0, Lcom/cmplay/internalpush/video/a/a;->b:Landroid/content/Context;

    invoke-static {v7}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->p()I

    move-result v12

    move-wide/from16 v0, p8

    long-to-int v7, v0

    int-to-long v13, v7

    move-object/from16 v7, p3

    move-wide/from16 v8, p1

    invoke-virtual/range {v4 .. v14}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    .line 300
    sget-boolean v4, Lcom/cmplay/internalpush/video/e;->d:Z

    if-eqz v4, :cond_9

    .line 301
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/cmplay/internalpush/video/a/a;->k:Lcom/cmplay/internalpush/video/a/b$a;

    .line 303
    iget-boolean v4, p0, Lcom/cmplay/internalpush/video/a/a;->g:Z

    if-nez v4, :cond_8

    .line 304
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 305
    new-instance v5, Lcom/cmplay/internalpush/video/a/a$a;

    invoke-direct {v5, p0}, Lcom/cmplay/internalpush/video/a/a$a;-><init>(Lcom/cmplay/internalpush/video/a/a;)V

    iput-object v5, p0, Lcom/cmplay/internalpush/video/a/a;->h:Lcom/cmplay/internalpush/video/a/a$a;

    .line 306
    const-string v5, "com.innerpushvideo.down_notify"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 307
    const-string v5, "video_size_save"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 308
    iget-object v5, p0, Lcom/cmplay/internalpush/video/a/a;->b:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmplay/internalpush/video/a/a;->h:Lcom/cmplay/internalpush/video/a/a$a;

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 309
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/cmplay/internalpush/video/a/a;->g:Z

    .line 311
    :cond_8
    invoke-static/range {p4 .. p7}, Lcom/cmplay/internalpush/video/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 313
    :cond_9
    const/4 v4, 0x3

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p11

    invoke-virtual {p0, v4, v0, v1, v2}, Lcom/cmplay/internalpush/video/a/a;->a(ILjava/lang/String;Ljava/lang/String;Lcom/cmplay/internalpush/video/a/b$a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 62
    if-nez p1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iput-boolean v3, p0, Lcom/cmplay/internalpush/video/a/a;->f:Z

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/internalpush/video/a/a;->b:Landroid/content/Context;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmplay/internalpush/video/a/a;->e:Z

    .line 69
    iget-object v0, p0, Lcom/cmplay/internalpush/video/a/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 70
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/cmplay/internalpush/video/a/a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmplay/internalpush/video/a/a;->d:Ljava/io/File;

    .line 72
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-le v0, v1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/cmplay/internalpush/video/a/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 76
    new-instance v1, Ljava/io/File;

    const-string v2, "InnerPushVideoCache"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/cmplay/internalpush/video/a/a;->d:Ljava/io/File;

    .line 77
    iput-boolean v3, p0, Lcom/cmplay/internalpush/video/a/a;->e:Z

    .line 78
    iget-object v0, p0, Lcom/cmplay/internalpush/video/a/a;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "InnerPushVideoCache dirs create ok"

    invoke-static {v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    const-string v0, "serviceDownVideo -----"

    invoke-static {v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/cmplay/internalpush/video/a/a;->b:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 240
    :goto_0
    monitor-exit p0

    return-void

    .line 219
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/cmplay/internalpush/video/a/a;->f:Z

    if-nez v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/cmplay/internalpush/video/a/a;->b:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/video/a/a;->a(Landroid/content/Context;)V

    .line 223
    :cond_1
    invoke-static {}, Lcom/cmplay/base/util/q;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u662fservice\u8fdb\u7a0b\u4e0b\u8f7d"

    :goto_1
    invoke-static {v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 225
    const/4 v0, 0x3

    new-instance v1, Lcom/cmplay/internalpush/video/a/a$2;

    invoke-direct {v1, p0, p1}, Lcom/cmplay/internalpush/video/a/a$2;-><init>(Lcom/cmplay/internalpush/video/a/a;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/cmplay/internalpush/video/a/a;->a(ILjava/lang/String;Ljava/lang/String;Lcom/cmplay/internalpush/video/a/b$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 223
    :cond_2
    :try_start_2
    const-string v0, "\u4e0d\u662fservice\u8fdb\u7a0b\u4e0b\u8f7d"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    invoke-static {}, Lcom/cmplay/base/util/g;->b()J

    move-result-wide v2

    .line 97
    iget-object v0, p0, Lcom/cmplay/internalpush/video/a/a;->d:Ljava/io/File;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/cmplay/internalpush/video/a/a;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_3

    .line 101
    const-string v0, "not directory \u4e0d\u662f\u76ee\u5f55"

    invoke-static {v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 164
    :cond_2
    :goto_1
    const-string v0, "cleanCacheVideoFile()"

    invoke-static {v2, v3, v0}, Lcom/cmplay/base/util/g;->a(JLjava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/cmplay/internalpush/video/a/a;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InnerPushVideoCache"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 106
    iget-object v0, p0, Lcom/cmplay/internalpush/video/a/a;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    move-object v1, v0

    .line 119
    :goto_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 122
    array-length v5, v1

    .line 123
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v5, :cond_7

    .line 124
    aget-object v6, v1, v0

    .line 125
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 126
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 127
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v6

    .line 129
    invoke-static {v7}, Lcom/cmplay/internalpush/a/e;->a(Ljava/lang/String;)V

    .line 130
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u65b0\u6570\u636e\u4e0d\u5305\u542b\uff0c\u5e72\u6389\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 131
    if-nez v6, :cond_4

    .line 132
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u6ca1\u5e72\u6389------\uff1a"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 123
    :cond_4
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 108
    :cond_5
    new-instance v0, Lcom/cmplay/internalpush/video/a/a$1;

    invoke-direct {v0, p0}, Lcom/cmplay/internalpush/video/a/a$1;-><init>(Lcom/cmplay/internalpush/video/a/a;)V

    .line 115
    iget-object v1, p0, Lcom/cmplay/internalpush/video/a/a;->d:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    .line 136
    :cond_6
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 159
    :catch_0
    move-exception v0

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6587\u4ef6\u5220\u9664error "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 141
    :cond_7
    :try_start_1
    invoke-static {}, Lcom/cmplay/internalpush/a/e;->a()Ljava/util/Set;

    move-result-object v0

    .line 142
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 143
    if-eqz v0, :cond_9

    .line 144
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 145
    const-string v6, "innerpush_"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 147
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 153
    :cond_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 154
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 155
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u6e05\u7406\u6389\u7684\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 156
    invoke-static {v0}, Lcom/cmplay/internalpush/a/e;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/cmplay/internalpush/video/a/a;->d:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmplay/internalpush/video/a/a;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
