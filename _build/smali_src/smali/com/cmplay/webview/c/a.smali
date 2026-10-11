.class public Lcom/cmplay/webview/c/a;
.super Ljava/lang/Object;
.source "SoundManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/webview/c/a$a;
    }
.end annotation


# static fields
.field private static a:Lcom/cmplay/webview/c/a;


# instance fields
.field private b:Landroid/media/SoundPool;

.field private c:Z

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/util/Timer;

.field private j:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/cmplay/webview/c/a;->a:Lcom/cmplay/webview/c/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v1, p0, Lcom/cmplay/webview/c/a;->c:Z

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cmplay/webview/c/a;->d:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cmplay/webview/c/a;->e:Ljava/util/Map;

    .line 27
    iput v1, p0, Lcom/cmplay/webview/c/a;->f:I

    .line 28
    iput v1, p0, Lcom/cmplay/webview/c/a;->g:I

    .line 29
    iput v1, p0, Lcom/cmplay/webview/c/a;->h:I

    .line 35
    return-void
.end method

.method private a(Landroid/content/res/AssetManager;)I
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 200
    const-string v2, "res/music"

    .line 203
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 204
    if-eqz v3, :cond_0

    array-length v1, v3

    if-ge v1, v8, :cond_1

    .line 217
    :cond_0
    :goto_0
    return v0

    .line 207
    :cond_1
    array-length v4, v3

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 208
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 209
    invoke-virtual {p1, v5}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 210
    if-eqz v5, :cond_2

    array-length v6, v5

    if-ge v6, v8, :cond_3

    .line 207
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 213
    :cond_3
    array-length v5, v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v5

    goto :goto_2

    .line 215
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Landroid/content/res/AssetManager;Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 221
    const/4 v0, -0x1

    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/cmplay/webview/c/a;->b:Landroid/media/SoundPool;

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 226
    :goto_0
    return v0

    .line 224
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/cmplay/webview/c/a;J)J
    .locals 1

    .prologue
    .line 18
    iput-wide p1, p0, Lcom/cmplay/webview/c/a;->j:J

    return-wide p1
.end method

.method public static declared-synchronized a()Lcom/cmplay/webview/c/a;
    .locals 2

    .prologue
    .line 38
    const-class v1, Lcom/cmplay/webview/c/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cmplay/webview/c/a;->a:Lcom/cmplay/webview/c/a;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/cmplay/webview/c/a;

    invoke-direct {v0}, Lcom/cmplay/webview/c/a;-><init>()V

    sput-object v0, Lcom/cmplay/webview/c/a;->a:Lcom/cmplay/webview/c/a;

    .line 41
    :cond_0
    sget-object v0, Lcom/cmplay/webview/c/a;->a:Lcom/cmplay/webview/c/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/cmplay/webview/c/a;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/cmplay/webview/c/a;->e:Ljava/util/Map;

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/cmplay/webview/c/a$a;)V
    .locals 17

    .prologue
    .line 128
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/cmplay/webview/c/a;->c:Z

    if-eqz v2, :cond_0

    .line 197
    :goto_0
    return-void

    .line 131
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/webview/c/a;->b:Landroid/media/SoundPool;

    if-nez v2, :cond_1

    .line 132
    new-instance v2, Landroid/media/SoundPool;

    const/16 v3, 0xc8

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cmplay/webview/c/a;->b:Landroid/media/SoundPool;

    .line 133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/webview/c/a;->b:Landroid/media/SoundPool;

    new-instance v3, Lcom/cmplay/webview/c/a$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/cmplay/webview/c/a$3;-><init>(Lcom/cmplay/webview/c/a;)V

    invoke-virtual {v2, v3}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 154
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    .line 156
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/cmplay/webview/c/a;->a(Landroid/content/res/AssetManager;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/cmplay/webview/c/a;->f:I

    .line 157
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/cmplay/webview/c/a;->h:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/cmplay/webview/c/a;->g:I

    .line 158
    const-string v2, "mys"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Total sound count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/cmplay/webview/c/a;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v2, 0x0

    .line 160
    const-string v6, "res/music"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 162
    :try_start_1
    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    move-object v4, v2

    .line 164
    :goto_1
    if-eqz v4, :cond_5

    :try_start_2
    array-length v2, v4

    if-lez v2, :cond_5

    .line 165
    array-length v7, v4

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    if-ge v3, v7, :cond_5

    aget-object v8, v4, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 167
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "/"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 168
    invoke-virtual {v5, v9}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 169
    if-eqz v10, :cond_2

    array-length v2, v10

    const/4 v11, 0x1

    if-ge v2, v11, :cond_3

    .line 165
    :cond_2
    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    .line 163
    :catch_0
    move-exception v3

    move-object v4, v2

    goto :goto_1

    .line 172
    :cond_3
    array-length v11, v10

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v11, :cond_2

    aget-object v12, v10, v2

    .line 173
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".mp3"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 174
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v13}, Lcom/cmplay/webview/c/a;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    move-result v13

    .line 176
    const/4 v14, -0x1

    if-eq v13, v14, :cond_4

    .line 177
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cmplay/webview/c/a;->d:Ljava/util/Map;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v14, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 179
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/cmplay/webview/c/a;->h:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/cmplay/webview/c/a;->h:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    .line 182
    :catch_1
    move-exception v2

    goto :goto_3

    .line 185
    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/webview/c/a;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 186
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 187
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/cmplay/webview/c/a;->b()V

    .line 188
    const-string v2, "mys"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load sound total time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/cmplay/webview/c/a;->j:J

    sub-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    if-eqz p2, :cond_6

    .line 190
    move-object/from16 v0, p0

    iget v2, v0, Lcom/cmplay/webview/c/a;->g:I

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/cmplay/webview/c/a$a;->a(I)V

    .line 192
    :cond_6
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 195
    :cond_7
    invoke-virtual {v5}, Landroid/content/res/AssetManager;->close()V

    goto/16 :goto_0

    .line 192
    :catchall_0
    move-exception v2

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 195
    :catchall_1
    move-exception v2

    invoke-virtual {v5}, Landroid/content/res/AssetManager;->close()V

    throw v2
.end method

.method static synthetic a(Lcom/cmplay/webview/c/a;Landroid/content/Context;Lcom/cmplay/webview/c/a$a;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/cmplay/webview/c/a;->a(Landroid/content/Context;Lcom/cmplay/webview/c/a$a;)V

    return-void
.end method

.method static synthetic a(Lcom/cmplay/webview/c/a;Landroid/content/Context;[Ljava/lang/String;Lcom/cmplay/webview/c/a$a;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/cmplay/webview/c/a;->b(Landroid/content/Context;[Ljava/lang/String;Lcom/cmplay/webview/c/a$a;)V

    return-void
.end method

.method static synthetic a(Lcom/cmplay/webview/c/a;Z)Z
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/cmplay/webview/c/a;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/cmplay/webview/c/a;)I
    .locals 2

    .prologue
    .line 18
    iget v0, p0, Lcom/cmplay/webview/c/a;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/cmplay/webview/c/a;->g:I

    return v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 230
    :goto_0
    iget-boolean v0, p0, Lcom/cmplay/webview/c/a;->c:Z

    if-nez v0, :cond_0

    .line 232
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    goto :goto_0

    .line 236
    :cond_0
    return-void
.end method

.method private b(Landroid/content/Context;[Ljava/lang/String;Lcom/cmplay/webview/c/a$a;)V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 65
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lt v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/cmplay/webview/c/a;->c:Z

    if-eqz v1, :cond_1

    .line 66
    :cond_0
    if-eqz p3, :cond_1

    .line 67
    invoke-interface {p3, v0}, Lcom/cmplay/webview/c/a$a;->a(I)V

    .line 125
    :goto_0
    return-void

    .line 71
    :cond_1
    array-length v1, p2

    iput v1, p0, Lcom/cmplay/webview/c/a;->f:I

    .line 72
    iput v0, p0, Lcom/cmplay/webview/c/a;->h:I

    iput v0, p0, Lcom/cmplay/webview/c/a;->g:I

    .line 73
    iget-object v1, p0, Lcom/cmplay/webview/c/a;->b:Landroid/media/SoundPool;

    if-nez v1, :cond_2

    .line 74
    new-instance v1, Landroid/media/SoundPool;

    const/16 v2, 0xc8

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v0}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/cmplay/webview/c/a;->b:Landroid/media/SoundPool;

    .line 75
    iget-object v1, p0, Lcom/cmplay/webview/c/a;->b:Landroid/media/SoundPool;

    new-instance v2, Lcom/cmplay/webview/c/a$2;

    invoke-direct {v2, p0}, Lcom/cmplay/webview/c/a$2;-><init>(Lcom/cmplay/webview/c/a;)V

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 95
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 97
    :try_start_0
    array-length v2, p2

    :goto_1
    if-ge v0, v2, :cond_6

    aget-object v3, p2, v0

    .line 98
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 99
    if-eqz v4, :cond_3

    array-length v5, v4

    const/4 v6, 0x2

    if-ge v5, v6, :cond_4

    .line 97
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 102
    :cond_4
    const/4 v5, 0x0

    aget-object v5, v4, v5

    .line 103
    const/4 v6, 0x1

    aget-object v4, v4, v6

    .line 104
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "res/music/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".mp3"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 105
    invoke-direct {p0, v1, v4}, Lcom/cmplay/webview/c/a;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    move-result v5

    .line 106
    const-string v6, "mys"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "load "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", soundId = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v4, -0x1

    if-eq v5, v4, :cond_5

    .line 108
    iget-object v4, p0, Lcom/cmplay/webview/c/a;->d:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 123
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/AssetManager;->close()V

    throw v0

    .line 110
    :cond_5
    :try_start_1
    iget v3, p0, Lcom/cmplay/webview/c/a;->h:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/cmplay/webview/c/a;->h:I

    goto :goto_2

    .line 113
    :cond_6
    iget-object v0, p0, Lcom/cmplay/webview/c/a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 114
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    :try_start_2
    invoke-direct {p0}, Lcom/cmplay/webview/c/a;->b()V

    .line 116
    const-string v0, "mys"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load sound total time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/cmplay/webview/c/a;->j:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    if-eqz p3, :cond_7

    .line 118
    iget v0, p0, Lcom/cmplay/webview/c/a;->g:I

    invoke-interface {p3, v0}, Lcom/cmplay/webview/c/a$a;->a(I)V

    .line 120
    :cond_7
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 123
    :cond_8
    invoke-virtual {v1}, Landroid/content/res/AssetManager;->close()V

    goto/16 :goto_0

    .line 120
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method static synthetic c(Lcom/cmplay/webview/c/a;)I
    .locals 2

    .prologue
    .line 18
    iget v0, p0, Lcom/cmplay/webview/c/a;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/cmplay/webview/c/a;->h:I

    return v0
.end method

.method static synthetic d(Lcom/cmplay/webview/c/a;)I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/cmplay/webview/c/a;->g:I

    return v0
.end method

.method static synthetic e(Lcom/cmplay/webview/c/a;)I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/cmplay/webview/c/a;->h:I

    return v0
.end method

.method static synthetic f(Lcom/cmplay/webview/c/a;)I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/cmplay/webview/c/a;->f:I

    return v0
.end method

.method static synthetic g(Lcom/cmplay/webview/c/a;)Landroid/media/SoundPool;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/cmplay/webview/c/a;->b:Landroid/media/SoundPool;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;[Ljava/lang/String;Lcom/cmplay/webview/c/a$a;)V
    .locals 2

    .prologue
    .line 45
    monitor-enter p0

    .line 46
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/cmplay/webview/c/a;->c:Z

    .line 47
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    iget-object v0, p0, Lcom/cmplay/webview/c/a;->i:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/cmplay/webview/c/a;->i:Ljava/util/Timer;

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cmplay/webview/c/a$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/cmplay/webview/c/a$1;-><init>(Lcom/cmplay/webview/c/a;[Ljava/lang/String;Landroid/content/Context;Lcom/cmplay/webview/c/a$a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 62
    return-void

    .line 47
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 243
    invoke-static {p1, p2}, Lcom/cmplay/webview/c/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    iget-object v3, p0, Lcom/cmplay/webview/c/a;->d:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 245
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 246
    :goto_0
    if-eq v0, v2, :cond_2

    .line 247
    iget-object v2, p0, Lcom/cmplay/webview/c/a;->e:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 248
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 250
    :goto_1
    return v0

    :cond_0
    move v0, v2

    .line 245
    goto :goto_0

    :cond_1
    move v0, v1

    .line 248
    goto :goto_1

    :cond_2
    move v0, v1

    .line 250
    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;FI)Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 258
    invoke-static {p1, p2}, Lcom/cmplay/webview/c/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    iget-object v1, p0, Lcom/cmplay/webview/c/a;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 260
    if-eqz v0, :cond_2

    .line 261
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 262
    iget-object v0, p0, Lcom/cmplay/webview/c/a;->b:Landroid/media/SoundPool;

    const/high16 v6, 0x3f800000    # 1.0f

    move v2, p3

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    .line 263
    if-lez p4, :cond_0

    .line 264
    iget-object v1, p0, Lcom/cmplay/webview/c/a;->i:Ljava/util/Timer;

    new-instance v2, Lcom/cmplay/webview/c/a$4;

    invoke-direct {v2, p0, v0}, Lcom/cmplay/webview/c/a$4;-><init>(Lcom/cmplay/webview/c/a;I)V

    int-to-long v6, p4

    invoke-virtual {v1, v2, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 273
    :cond_0
    if-lez v0, :cond_1

    .line 275
    :goto_0
    return v4

    :cond_1
    move v4, v5

    .line 273
    goto :goto_0

    :cond_2
    move v4, v5

    .line 275
    goto :goto_0
.end method
