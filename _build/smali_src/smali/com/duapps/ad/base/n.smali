.class public Lcom/duapps/ad/base/n;
.super Ljava/lang/Object;
.source "ToolCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duapps/ad/base/n$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static e:Lcom/duapps/ad/base/n;


# instance fields
.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "http://api.mobula.sdk.duapps.col/adunion/slot/getDlAd?"

    sput-object v0, Lcom/duapps/ad/base/n;->a:Ljava/lang/String;

    .line 62
    const-string v0, "http://api.mobula.sdk.duapps.col/adunion/rtb/getInmobiAd?"

    sput-object v0, Lcom/duapps/ad/base/n;->b:Ljava/lang/String;

    .line 63
    const-string v0, "http://api.mobula.sdk.duapps.col/adunion/rtb/fetchAd?"

    sput-object v0, Lcom/duapps/ad/base/n;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lcom/duapps/ad/base/n;->d:Landroid/content/Context;

    .line 159
    invoke-direct {p0}, Lcom/duapps/ad/base/n;->c()V

    .line 160
    return-void
.end method

.method static synthetic a(Lcom/duapps/ad/base/n;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/duapps/ad/base/n;->d:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/duapps/ad/base/n;
    .locals 3

    .prologue
    .line 150
    const-class v1, Lcom/duapps/ad/base/n;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/duapps/ad/base/n;->e:Lcom/duapps/ad/base/n;

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Lcom/duapps/ad/base/n;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/duapps/ad/base/n;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/duapps/ad/base/n;->e:Lcom/duapps/ad/base/n;

    .line 154
    :cond_0
    sget-object v0, Lcom/duapps/ad/base/n;->e:Lcom/duapps/ad/base/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/duapps/ad/base/s;I)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/duapps/ad/base/s",
            "<",
            "Lcom/duapps/ad/entity/AdModel;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 497
    invoke-interface/range {p6 .. p6}, Lcom/duapps/ad/base/s;->a()V

    .line 498
    iget-object v1, p0, Lcom/duapps/ad/base/n;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/duapps/ad/base/p;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 499
    iget-object v1, p0, Lcom/duapps/ad/base/n;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 502
    iget-object v1, p0, Lcom/duapps/ad/base/n;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/duapps/ad/c/b/c;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 503
    const/16 v1, 0x3e8

    sget-object v2, Lcom/duapps/ad/a;->a:Lcom/duapps/ad/a;

    invoke-virtual {v2}, Lcom/duapps/ad/a;->b()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-interface {v0, v1, v2}, Lcom/duapps/ad/base/s;->a(ILjava/lang/String;)V

    .line 616
    :goto_0
    return-void

    .line 507
    :cond_0
    invoke-static {}, Lcom/duapps/ad/base/t;->a()Lcom/duapps/ad/base/t;

    move-result-object v12

    new-instance v1, Lcom/duapps/ad/base/n$3;

    move-object v2, p0

    move/from16 v5, p3

    move v6, p1

    move-object v7, p2

    move/from16 v8, p7

    move-object/from16 v9, p4

    move-object/from16 v11, p6

    invoke-direct/range {v1 .. v11}, Lcom/duapps/ad/base/n$3;-><init>(Lcom/duapps/ad/base/n;Ljava/lang/String;Landroid/util/DisplayMetrics;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/duapps/ad/base/s;)V

    invoke-virtual {v12, v1}, Lcom/duapps/ad/base/t;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/duapps/ad/base/s;Ljava/lang/String;I)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/duapps/ad/base/s",
            "<",
            "Lcom/duapps/ad/entity/AdModel;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 358
    invoke-interface/range {p6 .. p6}, Lcom/duapps/ad/base/s;->a()V

    .line 359
    iget-object v1, p0, Lcom/duapps/ad/base/n;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/duapps/ad/base/p;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 361
    iget-object v1, p0, Lcom/duapps/ad/base/n;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/duapps/ad/c/b/c;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 362
    const/16 v1, 0x3e8

    sget-object v2, Lcom/duapps/ad/a;->a:Lcom/duapps/ad/a;

    invoke-virtual {v2}, Lcom/duapps/ad/a;->b()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-interface {v0, v1, v2}, Lcom/duapps/ad/base/s;->a(ILjava/lang/String;)V

    .line 492
    :goto_0
    return-void

    .line 365
    :cond_0
    invoke-static {}, Lcom/duapps/ad/base/t;->a()Lcom/duapps/ad/base/t;

    move-result-object v12

    new-instance v1, Lcom/duapps/ad/base/n$2;

    move-object v2, p0

    move/from16 v4, p8

    move/from16 v5, p3

    move v6, p1

    move-object v7, p2

    move-object/from16 v8, p7

    move-object/from16 v9, p4

    move-object/from16 v11, p6

    invoke-direct/range {v1 .. v11}, Lcom/duapps/ad/base/n$2;-><init>(Lcom/duapps/ad/base/n;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/duapps/ad/base/s;)V

    invoke-virtual {v12, v1}, Lcom/duapps/ad/base/t;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/duapps/ad/base/s;Ljava/lang/String;ILjava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/duapps/ad/base/s",
            "<",
            "Lcom/duapps/ad/entity/AdModel;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 189
    invoke-interface/range {p6 .. p6}, Lcom/duapps/ad/base/s;->a()V

    .line 190
    iget-object v1, p0, Lcom/duapps/ad/base/n;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/duapps/ad/base/p;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 193
    iget-object v1, p0, Lcom/duapps/ad/base/n;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/duapps/ad/c/b/c;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    const/16 v1, 0x3e8

    sget-object v2, Lcom/duapps/ad/a;->a:Lcom/duapps/ad/a;

    invoke-virtual {v2}, Lcom/duapps/ad/a;->b()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-interface {v0, v1, v2}, Lcom/duapps/ad/base/s;->a(ILjava/lang/String;)V

    .line 349
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-static {}, Lcom/duapps/ad/base/t;->a()Lcom/duapps/ad/base/t;

    move-result-object v13

    new-instance v1, Lcom/duapps/ad/base/n$1;

    move-object v2, p0

    move/from16 v4, p8

    move/from16 v5, p3

    move v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p4

    move-object/from16 v12, p6

    invoke-direct/range {v1 .. v12}, Lcom/duapps/ad/base/n$1;-><init>(Lcom/duapps/ad/base/n;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/duapps/ad/base/s;)V

    invoke-virtual {v13, v1}, Lcom/duapps/ad/base/t;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/duapps/ad/base/n;->b:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 6

    .prologue
    .line 164
    :try_start_0
    const-string v0, "ts<?"

    .line 165
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x6ddd00

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 168
    iget-object v1, p0, Lcom/duapps/ad/base/n;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/duapps/ad/base/n;->d:Landroid/content/Context;

    const/4 v3, 0x3

    .line 169
    invoke-static {v2, v3}, Lcom/duapps/ad/stats/DuAdCacheProvider;->a(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "ts<?"

    .line 168
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    const-string v1, "ToolboxCacheManager"

    const-string v2, "mDatabase initCacheDatabase() del exception: "

    invoke-static {v1, v2, v0}, Lcom/duapps/ad/base/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/lang/String;)Lcom/duapps/ad/base/n$a;
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 759
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "data"

    aput-object v0, v2, v1

    const-string v0, "ts"

    aput-object v0, v2, v4

    .line 764
    const-string v3, "key=?"

    .line 765
    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v1

    .line 769
    new-instance v7, Lcom/duapps/ad/base/n$a;

    invoke-direct {v7}, Lcom/duapps/ad/base/n$a;-><init>()V

    .line 770
    iput-object p1, v7, Lcom/duapps/ad/base/n$a;->a:Ljava/lang/String;

    .line 773
    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/base/n;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/base/n;->d:Landroid/content/Context;

    const/4 v5, 0x3

    .line 774
    invoke-static {v1, v5}, Lcom/duapps/ad/stats/DuAdCacheProvider;->a(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    const/4 v5, 0x0

    .line 773
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 782
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/duapps/ad/base/n$a;->b:Ljava/lang/String;

    .line 784
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v7, Lcom/duapps/ad/base/n$a;->c:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 789
    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 790
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 793
    :cond_1
    :goto_0
    return-object v7

    .line 786
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 787
    :goto_1
    :try_start_2
    const-string v2, "ToolboxCacheManager"

    const-string v3, "getCacheEntry() exception: "

    invoke-static {v2, v3, v0}, Lcom/duapps/ad/base/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 789
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 790
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 789
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_2
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 790
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 789
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 786
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public a()V
    .locals 5

    .prologue
    .line 1196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    sub-long/2addr v0, v2

    .line 1201
    :try_start_0
    const-string v2, "ctime<?"

    .line 1202
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 1203
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 1206
    iget-object v0, p0, Lcom/duapps/ad/base/n;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/base/n;->d:Landroid/content/Context;

    const/4 v4, 0x5

    .line 1207
    invoke-static {v1, v4}, Lcom/duapps/ad/stats/DuAdCacheProvider;->a(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 1206
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1213
    :goto_0
    return-void

    .line 1210
    :catch_0
    move-exception v0

    .line 1211
    const-string v1, "ToolboxCacheManager"

    const-string v2, "clearTriggerPreParseData error: "

    invoke-static {v1, v2, v0}, Lcom/duapps/ad/base/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(IILcom/duapps/ad/base/s;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/duapps/ad/base/s",
            "<",
            "Lcom/duapps/ad/entity/AdModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 626
    const-string v2, "native"

    sget-object v4, Lcom/duapps/ad/base/n;->a:Ljava/lang/String;

    const-string v5, "native_"

    const-string v7, "normal"

    const/16 v8, 0x14

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v9}, Lcom/duapps/ad/base/n;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/duapps/ad/base/s;Ljava/lang/String;ILjava/lang/String;)V

    .line 628
    return-void
.end method

.method public a(IILcom/duapps/ad/base/s;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/duapps/ad/base/s",
            "<",
            "Lcom/duapps/ad/entity/AdModel;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 638
    const-string v2, "online"

    sget-object v4, Lcom/duapps/ad/base/n;->c:Ljava/lang/String;

    const-string v5, "online_"

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/duapps/ad/base/n;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/duapps/ad/base/s;I)V

    .line 640
    return-void
.end method

.method public a(IILcom/duapps/ad/base/s;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/duapps/ad/base/s",
            "<",
            "Lcom/duapps/ad/entity/AdModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 620
    const-string v2, "native"

    sget-object v4, Lcom/duapps/ad/base/n;->a:Ljava/lang/String;

    const-string v5, "native_"

    const-string v7, "normal"

    const/16 v8, 0x9

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-object v6, p3

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/duapps/ad/base/n;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/duapps/ad/base/s;Ljava/lang/String;ILjava/lang/String;)V

    .line 622
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Lcom/duapps/ad/base/s;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/duapps/ad/base/s",
            "<",
            "Lcom/duapps/ad/inmobi/IMDataModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 644
    invoke-interface {p4}, Lcom/duapps/ad/base/s;->a()V

    .line 645
    const-string v0, "native"

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/duapps/ad/base/n;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/base/n;->d:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/duapps/ad/base/m;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    .line 647
    if-nez v0, :cond_0

    .line 648
    const/16 v0, 0x3ea

    const-string v1, "This url is request too frequently."

    invoke-interface {p4, v0, v1}, Lcom/duapps/ad/base/s;->a(ILjava/lang/String;)V

    .line 650
    const-string v0, "ToolboxCacheManager"

    const-string v1, "This url is request too frequently."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    :goto_0
    return-void

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/base/n;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/p;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 654
    iget-object v0, p0, Lcom/duapps/ad/base/n;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/c/b/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 655
    const/16 v0, 0x3e8

    sget-object v1, Lcom/duapps/ad/a;->a:Lcom/duapps/ad/a;

    invoke-virtual {v1}, Lcom/duapps/ad/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v0, v1}, Lcom/duapps/ad/base/s;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 659
    :cond_1
    invoke-static {}, Lcom/duapps/ad/base/t;->a()Lcom/duapps/ad/base/t;

    move-result-object v7

    new-instance v0, Lcom/duapps/ad/base/n$4;

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/duapps/ad/base/n$4;-><init>(Lcom/duapps/ad/base/n;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/duapps/ad/base/s;)V

    invoke-virtual {v7, v0}, Lcom/duapps/ad/base/t;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method a(Lcom/duapps/ad/base/n$a;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 797
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 798
    const-string v1, "key"

    iget-object v2, p1, Lcom/duapps/ad/base/n$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    const-string v1, "data"

    iget-object v2, p1, Lcom/duapps/ad/base/n$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    const-string v1, "ts"

    iget-wide v2, p1, Lcom/duapps/ad/base/n$a;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 802
    const-string v1, "key=?"

    .line 803
    new-array v2, v6, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/duapps/ad/base/n$a;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 807
    :try_start_0
    iget-object v3, p0, Lcom/duapps/ad/base/n;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/duapps/ad/base/n;->d:Landroid/content/Context;

    const/4 v5, 0x3

    .line 808
    invoke-static {v4, v5}, Lcom/duapps/ad/stats/DuAdCacheProvider;->a(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v4

    .line 807
    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 810
    if-ge v1, v6, :cond_0

    .line 811
    iget-object v1, p0, Lcom/duapps/ad/base/n;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/duapps/ad/base/n;->d:Landroid/content/Context;

    const/4 v3, 0x3

    .line 812
    invoke-static {v2, v3}, Lcom/duapps/ad/stats/DuAdCacheProvider;->a(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 811
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 817
    :cond_0
    :goto_0
    return-void

    .line 814
    :catch_0
    move-exception v0

    .line 815
    const-string v1, "ToolboxCacheManager"

    const-string v2, "cacheDabase saveCacheEntry() exception: "

    invoke-static {v1, v2, v0}, Lcom/duapps/ad/base/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/duapps/ad/entity/AdModel;)V
    .locals 2

    .prologue
    .line 963
    invoke-static {}, Lcom/duapps/ad/base/t;->a()Lcom/duapps/ad/base/t;

    move-result-object v0

    new-instance v1, Lcom/duapps/ad/base/n$5;

    invoke-direct {v1, p0, p1}, Lcom/duapps/ad/base/n$5;-><init>(Lcom/duapps/ad/base/n;Lcom/duapps/ad/entity/AdModel;)V

    invoke-virtual {v0, v1}, Lcom/duapps/ad/base/t;->a(Ljava/lang/Runnable;)V

    .line 988
    return-void
.end method

.method public a(Lcom/duapps/ad/stats/f;)V
    .locals 6

    .prologue
    .line 820
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 847
    :cond_0
    :goto_0
    return-void

    .line 825
    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 826
    const-string v1, "pkgName"

    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    const-string v1, "ctime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 828
    const-string v1, "cdata"

    invoke-static {p1}, Lcom/duapps/ad/stats/f;->a(Lcom/duapps/ad/stats/f;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    const-string v1, "pkgName=?"

    .line 831
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 832
    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 835
    iget-object v3, p0, Lcom/duapps/ad/base/n;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/duapps/ad/base/n;->d:Landroid/content/Context;

    const/4 v5, 0x2

    .line 836
    invoke-static {v4, v5}, Lcom/duapps/ad/stats/DuAdCacheProvider;->a(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v4

    .line 835
    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 838
    if-nez v1, :cond_0

    .line 839
    const-string v1, "status"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 841
    iget-object v1, p0, Lcom/duapps/ad/base/n;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/duapps/ad/base/n;->d:Landroid/content/Context;

    const/4 v3, 0x2

    .line 842
    invoke-static {v2, v3}, Lcom/duapps/ad/stats/DuAdCacheProvider;->a(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 841
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 844
    :catch_0
    move-exception v0

    .line 845
    const-string v1, "ToolboxCacheManager"

    const-string v2, "updateOrInsertValidClickTime() exception: "

    invoke-static {v1, v2, v0}, Lcom/duapps/ad/base/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Lcom/duapps/ad/stats/f;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 853
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 891
    :goto_0
    return-object v6

    .line 856
    :cond_0
    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "cdata"

    aput-object v0, v2, v7

    const-string v0, "ctime"

    aput-object v0, v2, v9

    .line 861
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v4, 0x5265c00

    sub-long/2addr v0, v4

    .line 864
    const-string v3, "pkgName=? AND ctime>= ?"

    .line 866
    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v7

    .line 868
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 876
    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/base/n;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/base/n;->d:Landroid/content/Context;

    const/4 v5, 0x2

    .line 877
    invoke-static {v1, v5}, Lcom/duapps/ad/stats/DuAdCacheProvider;->a(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    const/4 v5, 0x0

    .line 876
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 879
    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 880
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 881
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/duapps/ad/stats/f;->a(Lorg/json/JSONObject;)Lcom/duapps/ad/stats/f;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    move-object v0, v6

    .line 886
    :goto_1
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 887
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_2
    move-object v6, v0

    .line 891
    goto :goto_0

    .line 883
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 884
    :goto_3
    :try_start_2
    const-string v2, "ToolboxCacheManager"

    const-string v3, "getValidClickTimeRecord exception: "

    invoke-static {v2, v3, v0}, Lcom/duapps/ad/base/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 886
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 887
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto :goto_2

    .line 886
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_4
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 887
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 886
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 883
    :catch_1
    move-exception v0

    goto :goto_3

    :cond_3
    move-object v0, v6

    goto :goto_2

    :cond_4
    move-object v0, v6

    goto :goto_1
.end method

.method public b(IILcom/duapps/ad/base/s;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/duapps/ad/base/s",
            "<",
            "Lcom/duapps/ad/entity/AdModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1217
    const-string v2, "native"

    sget-object v4, Lcom/duapps/ad/base/n;->a:Ljava/lang/String;

    const-string v5, "native_"

    const-string v7, "high"

    const/16 v8, 0x14

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v9}, Lcom/duapps/ad/base/n;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/duapps/ad/base/s;Ljava/lang/String;ILjava/lang/String;)V

    .line 1219
    return-void
.end method

.method public b(IILcom/duapps/ad/base/s;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/duapps/ad/base/s",
            "<",
            "Lcom/duapps/ad/entity/AdModel;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 742
    const-string v2, "offerwall"

    sget-object v4, Lcom/duapps/ad/base/n;->a:Ljava/lang/String;

    const-string v5, "native_"

    const-string v7, "normal"

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-object v6, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/duapps/ad/base/n;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/duapps/ad/base/s;Ljava/lang/String;I)V

    .line 744
    return-void
.end method

.method public b(Lcom/duapps/ad/stats/f;)V
    .locals 6

    .prologue
    .line 1040
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1074
    :cond_0
    :goto_0
    return-void

    .line 1045
    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1046
    const-string v1, "ad_id"

    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->f()Lcom/duapps/ad/entity/AdData;

    move-result-object v2

    iget-wide v2, v2, Lcom/duapps/ad/entity/AdData;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1047
    const-string v1, "pkgName"

    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    const-string v1, "data"

    invoke-static {p1}, Lcom/duapps/ad/stats/f;->a(Lcom/duapps/ad/stats/f;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    const-string v1, "ctime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1053
    const-string v1, "pkgName=?"

    .line 1054
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 1055
    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1058
    iget-object v3, p0, Lcom/duapps/ad/base/n;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/duapps/ad/base/n;->d:Landroid/content/Context;

    const/4 v5, 0x5

    .line 1059
    invoke-static {v4, v5}, Lcom/duapps/ad/stats/DuAdCacheProvider;->a(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v4

    .line 1058
    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1062
    if-nez v1, :cond_0

    .line 1064
    iget-object v1, p0, Lcom/duapps/ad/base/n;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/duapps/ad/base/n;->d:Landroid/content/Context;

    const/4 v3, 0x5

    .line 1065
    invoke-static {v2, v3}, Lcom/duapps/ad/stats/DuAdCacheProvider;->a(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 1064
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1067
    const-string v0, "ToolboxCacheManager"

    const-string v1, "update or insert triggerPreParse data success"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1069
    :catch_0
    move-exception v0

    .line 1070
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1071
    const-string v1, "ToolboxCacheManager"

    const-string v2, "update or insert triggerPreParse data error: "

    invoke-static {v1, v2, v0}, Lcom/duapps/ad/base/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 897
    const-string v0, "pkgName=?"

    .line 898
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 902
    :try_start_0
    iget-object v2, p0, Lcom/duapps/ad/base/n;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/duapps/ad/base/n;->d:Landroid/content/Context;

    const/4 v4, 0x2

    .line 903
    invoke-static {v3, v4}, Lcom/duapps/ad/stats/DuAdCacheProvider;->a(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    .line 902
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 908
    :goto_0
    return-void

    .line 905
    :catch_0
    move-exception v0

    .line 906
    const-string v1, "ToolboxCacheManager"

    const-string v2, "clearValidClickTimeRecord exception: "

    invoke-static {v1, v2, v0}, Lcom/duapps/ad/base/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Lcom/duapps/ad/stats/f;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1080
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1116
    :goto_0
    return-object v6

    .line 1083
    :cond_0
    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "pkgName"

    aput-object v0, v2, v8

    const-string v0, "data"

    aput-object v0, v2, v7

    .line 1088
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v3, p0, Lcom/duapps/ad/base/n;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/duapps/ad/base/m;->m(Landroid/content/Context;)J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 1089
    const-string v3, "pkgName=? AND ctime >=?"

    .line 1090
    new-array v4, v9, [Ljava/lang/String;

    aput-object p1, v4, v8

    .line 1092
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    .line 1097
    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/base/n;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/base/n;->d:Landroid/content/Context;

    const/4 v5, 0x5

    .line 1098
    invoke-static {v1, v5}, Lcom/duapps/ad/stats/DuAdCacheProvider;->a(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    const/4 v5, 0x0

    .line 1097
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1103
    if-eqz v1, :cond_5

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1104
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1105
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/duapps/ad/stats/f;->a(Lorg/json/JSONObject;)Lcom/duapps/ad/stats/f;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    move-object v0, v6

    .line 1111
    :goto_1
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1112
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_2
    move-object v6, v0

    .line 1116
    goto :goto_0

    .line 1107
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 1108
    :goto_3
    :try_start_2
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1109
    const-string v2, "ToolboxCacheManager"

    const-string v3, "fetch triggerPreParse data error: "

    invoke-static {v2, v3, v0}, Lcom/duapps/ad/base/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1111
    :cond_2
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1112
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto :goto_2

    .line 1111
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_4
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1112
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 1111
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 1107
    :catch_1
    move-exception v0

    goto :goto_3

    :cond_4
    move-object v0, v6

    goto :goto_2

    :cond_5
    move-object v0, v6

    goto :goto_1
.end method

.method public e(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1127
    :try_start_0
    const-string v0, "pkgName=?"

    .line 1128
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 1130
    iget-object v2, p0, Lcom/duapps/ad/base/n;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/duapps/ad/base/n;->d:Landroid/content/Context;

    const/4 v4, 0x5

    .line 1131
    invoke-static {v3, v4}, Lcom/duapps/ad/stats/DuAdCacheProvider;->a(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    .line 1130
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1137
    :goto_0
    return-void

    .line 1134
    :catch_0
    move-exception v0

    .line 1135
    const-string v1, "ToolboxCacheManager"

    const-string v2, "removeTriggerPreParseData error: "

    invoke-static {v1, v2, v0}, Lcom/duapps/ad/base/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/stats/f;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 1147
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v6

    .line 1188
    :goto_0
    return-object v0

    .line 1150
    :cond_0
    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "cdata"

    aput-object v0, v2, v7

    const-string v0, "ctime"

    aput-object v0, v2, v9

    .line 1154
    iget-object v0, p0, Lcom/duapps/ad/base/n;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/m;->l(Landroid/content/Context;)I

    move-result v0

    .line 1155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    sub-long v0, v4, v0

    .line 1158
    const-string v3, "pkgName=? AND ctime>= ?"

    .line 1160
    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v7

    .line 1162
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 1167
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1170
    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/base/n;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/base/n;->d:Landroid/content/Context;

    const/4 v5, 0x2

    .line 1171
    invoke-static {v1, v5}, Lcom/duapps/ad/stats/DuAdCacheProvider;->a(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    const/4 v5, 0x0

    .line 1170
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1173
    if-eqz v6, :cond_2

    .line 1174
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1175
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1176
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/duapps/ad/stats/f;->a(Lorg/json/JSONObject;)Lcom/duapps/ad/stats/f;

    move-result-object v0

    .line 1177
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1180
    :catch_0
    move-exception v0

    .line 1181
    :try_start_1
    const-string v1, "ToolboxCacheManager"

    const-string v2, "getValidClickTimeRecord exception: "

    invoke-static {v1, v2, v0}, Lcom/duapps/ad/base/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1183
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1184
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_2
    move-object v0, v7

    .line 1188
    goto :goto_0

    .line 1183
    :cond_2
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1184
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1183
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1184
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method
