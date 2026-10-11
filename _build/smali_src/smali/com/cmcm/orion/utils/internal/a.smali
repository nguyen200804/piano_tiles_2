.class public Lcom/cmcm/orion/utils/internal/a;
.super Ljava/lang/Object;
.source "AppInstallationTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/orion/utils/internal/a$a;,
        Lcom/cmcm/orion/utils/internal/a$b;,
        Lcom/cmcm/orion/utils/internal/a$d;,
        Lcom/cmcm/orion/utils/internal/a$c;
    }
.end annotation


# static fields
.field private static a:Lcom/cmcm/orion/utils/internal/a;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmcm/orion/utils/internal/a;->b:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cmcm/orion/utils/internal/a;->c:Ljava/util/HashMap;

    .line 73
    return-void
.end method

.method public static a()Lcom/cmcm/orion/utils/internal/a;
    .locals 2

    .prologue
    .line 76
    sget-object v0, Lcom/cmcm/orion/utils/internal/a;->a:Lcom/cmcm/orion/utils/internal/a;

    if-nez v0, :cond_1

    .line 77
    const-class v1, Lcom/cmcm/orion/utils/internal/a;

    monitor-enter v1

    .line 78
    :try_start_0
    sget-object v0, Lcom/cmcm/orion/utils/internal/a;->a:Lcom/cmcm/orion/utils/internal/a;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/cmcm/orion/utils/internal/a;

    invoke-direct {v0}, Lcom/cmcm/orion/utils/internal/a;-><init>()V

    sput-object v0, Lcom/cmcm/orion/utils/internal/a;->a:Lcom/cmcm/orion/utils/internal/a;

    .line 81
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :cond_1
    sget-object v0, Lcom/cmcm/orion/utils/internal/a;->a:Lcom/cmcm/orion/utils/internal/a;

    return-object v0

    .line 81
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static a(Ljava/lang/String;ILjava/lang/String;)Ljava/net/URI;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 577
    new-instance v2, Lcom/cmcm/orion/picks/a/a/g$b;

    invoke-direct {v2}, Lcom/cmcm/orion/picks/a/a/g$b;-><init>()V

    .line 578
    const-string v0, ""

    invoke-virtual {v2, v0}, Lcom/cmcm/orion/picks/a/a/g$b;->a(Ljava/lang/String;)Lcom/cmcm/orion/picks/a/a/g$b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/cmcm/orion/picks/a/a/g$b;->b(I)Lcom/cmcm/orion/picks/a/a/g$b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/a/a/g$b;->a(I)Lcom/cmcm/orion/picks/a/a/g$b;

    .line 579
    invoke-virtual {v2, v3}, Lcom/cmcm/orion/picks/a/a/g$b;->d(I)Lcom/cmcm/orion/picks/a/a/g$b;

    .line 580
    const-string v0, "0"

    invoke-virtual {v2, v0}, Lcom/cmcm/orion/picks/a/a/g$b;->b(Ljava/lang/String;)Lcom/cmcm/orion/picks/a/a/g$b;

    .line 581
    const/16 v0, 0x64

    invoke-virtual {v2, v0}, Lcom/cmcm/orion/picks/a/a/g$b;->e(I)Lcom/cmcm/orion/picks/a/a/g$b;

    .line 582
    invoke-virtual {v2, p0, p2}, Lcom/cmcm/orion/picks/a/a/g$b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/cmcm/orion/picks/a/a/g$b;

    .line 583
    const-string v0, "1"

    invoke-virtual {v2, v0}, Lcom/cmcm/orion/picks/a/a/g$b;->c(Ljava/lang/String;)Lcom/cmcm/orion/picks/a/a/g$b;

    .line 584
    invoke-virtual {v2, p1}, Lcom/cmcm/orion/picks/a/a/g$b;->g(I)Lcom/cmcm/orion/picks/a/a/g$b;

    .line 585
    const/4 v1, 0x0

    .line 586
    invoke-static {}, Lcom/cmcm/orion/picks/a/a/h;->p()Ljava/lang/String;

    move-result-object v0

    .line 587
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 589
    :try_start_0
    const-string v3, "7069636b733230313531313034"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 590
    invoke-static {v0}, Lcom/cmcm/orion/utils/b;->b(Ljava/lang/String;)[B

    move-result-object v0

    .line 591
    invoke-static {v3, v0}, Lcom/cmcm/orion/utils/b;->b([B[B)[B

    move-result-object v3

    .line 592
    new-instance v0, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 598
    const-string v0, "https://xsdk.adkmob.com/b/?"

    .line 601
    :cond_0
    invoke-virtual {v2, v0}, Lcom/cmcm/orion/picks/a/a/g$b;->d(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 602
    if-nez v0, :cond_1

    .line 603
    invoke-virtual {v2}, Lcom/cmcm/orion/picks/a/a/g$b;->a()Ljava/net/URI;

    move-result-object v0

    .line 605
    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/cmcm/orion/utils/internal/a;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/cmcm/orion/utils/internal/a;->d:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/cmcm/orion/utils/internal/a;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 53
    .line 1609
    invoke-direct {p0}, Lcom/cmcm/orion/utils/internal/a;->e()Ljava/util/ArrayList;

    move-result-object v1

    .line 1610
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1611
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/orion/utils/internal/a$d;

    .line 1612
    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/cmcm/orion/utils/internal/a$d;->b:J

    sub-long/2addr v4, v6

    invoke-static {}, Lcom/cmcm/orion/picks/a/a/h;->k()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 1613
    iput-boolean v8, v0, Lcom/cmcm/orion/utils/internal/a$d;->c:Z

    goto :goto_0

    .line 1617
    :cond_1
    invoke-direct {p0, v1}, Lcom/cmcm/orion/utils/internal/a;->b(Ljava/util/ArrayList;)V

    .line 1619
    invoke-direct {p0}, Lcom/cmcm/orion/utils/internal/a;->d()Ljava/util/ArrayList;

    move-result-object v1

    .line 1620
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1621
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/orion/utils/internal/a$c;

    .line 1622
    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/cmcm/orion/utils/internal/a$c;->b:J

    sub-long/2addr v4, v6

    invoke-static {}, Lcom/cmcm/orion/picks/a/a/h;->k()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 1623
    iput-boolean v8, v0, Lcom/cmcm/orion/utils/internal/a$c;->d:Z

    goto :goto_1

    .line 1627
    :cond_3
    invoke-direct {p0, v1}, Lcom/cmcm/orion/utils/internal/a;->a(Ljava/util/ArrayList;)V

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/cmcm/orion/utils/internal/a;Landroid/net/Uri;)V
    .locals 9

    .prologue
    const/4 v3, 0x1

    .line 53
    .line 6945
    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->a()Landroid/content/Context;

    move-result-object v8

    .line 6946
    if-eqz v8, :cond_0

    if-nez p1, :cond_1

    .line 6993
    :cond_0
    :goto_0
    return-void

    .line 6951
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 6952
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 6953
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    .line 6954
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cmcm/orion/utils/internal/a;->b:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6955
    iget-object v1, p0, Lcom/cmcm/orion/utils/internal/a;->b:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6956
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "content://downloads/public_downloads/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 6958
    if-eqz v2, :cond_0

    .line 6959
    :cond_2
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6960
    const/16 v1, 0x9

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 6961
    const/16 v1, 0xf

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 6962
    const/16 v1, 0xd

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6963
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 6964
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "packageName"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6967
    invoke-static {v8, v3}, Lcom/cmcm/orion/utils/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 6968
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 6969
    const-string v4, "Additional file for:"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6970
    const/16 v4, 0x14

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 6971
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 6972
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 6977
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 6978
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onDownloadEvent: title = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; pkg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7264
    new-instance v4, Lcom/cmcm/orion/utils/internal/a$13;

    invoke-direct {v4, p0, v3, v7, v1}, Lcom/cmcm/orion/utils/internal/a$13;-><init>(Lcom/cmcm/orion/utils/internal/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/cmcm/orion/utils/a;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 6991
    :catch_0
    move-exception v1

    .line 6992
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onDownloadEvent: error = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 6987
    :cond_5
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/cmcm/orion/utils/internal/a;Lcom/cmcm/orion/picks/a/a/a;)V
    .locals 6

    .prologue
    .line 53
    .line 4413
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4414
    const-string v1, "vext"

    const-string v2, "100"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4416
    invoke-virtual {p1}, Lcom/cmcm/orion/picks/a/a/a;->L()J

    move-result-wide v2

    .line 4417
    const-string v1, "view"

    const/4 v4, 0x1

    new-instance v5, Lcom/cmcm/orion/utils/internal/a$3;

    invoke-direct {v5, p0, p1, v2, v3}, Lcom/cmcm/orion/utils/internal/a$3;-><init>(Lcom/cmcm/orion/utils/internal/a;Lcom/cmcm/orion/picks/a/a/a;J)V

    invoke-static {v1, p1, v4, v0, v5}, Lcom/cmcm/orion/utils/internal/a;->a(Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/a;ZLjava/util/Map;Lcom/cmcm/orion/picks/impl/a$a;)V

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/cmcm/orion/utils/internal/a;Lcom/cmcm/orion/picks/a/a/a;IZ)V
    .locals 6

    .prologue
    .line 53
    .line 4669
    if-eqz p1, :cond_2

    .line 4673
    invoke-direct {p0}, Lcom/cmcm/orion/utils/internal/a;->d()Ljava/util/ArrayList;

    move-result-object v0

    .line 4674
    if-nez v0, :cond_3

    .line 4675
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 4678
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/orion/utils/internal/a$c;

    .line 4679
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/cmcm/orion/utils/internal/a$c;->a:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/cmcm/orion/utils/internal/a$c;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cmcm/orion/picks/a/a/a;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4682
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/cmcm/orion/utils/internal/a$c;->d:Z

    goto :goto_1

    .line 4686
    :cond_1
    new-instance v0, Lcom/cmcm/orion/utils/internal/a$c;

    new-instance v2, Lcom/cmcm/orion/utils/internal/a$b;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, p3, v3}, Lcom/cmcm/orion/utils/internal/a$b;-><init>(Lcom/cmcm/orion/picks/a/a/a;IZB)V

    invoke-virtual {p1}, Lcom/cmcm/orion/picks/a/a/a;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/cmcm/orion/utils/internal/a$c;-><init>(Lcom/cmcm/orion/utils/internal/a$b;Ljava/lang/String;J)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4687
    invoke-direct {p0, v1}, Lcom/cmcm/orion/utils/internal/a;->a(Ljava/util/ArrayList;)V

    .line 53
    :cond_2
    return-void

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/cmcm/orion/utils/internal/a;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .prologue
    .line 53
    .line 5362
    invoke-static {}, Lcom/cmcm/orion/picks/a/a/h;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5363
    new-instance v2, Lcom/cmcm/orion/utils/internal/a$2;

    invoke-direct {v2, p0}, Lcom/cmcm/orion/utils/internal/a$2;-><init>(Lcom/cmcm/orion/utils/internal/a;)V

    .line 5516
    :try_start_0
    invoke-static {p1, p3, p2}, Lcom/cmcm/orion/utils/internal/a;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 5517
    if-eqz v0, :cond_3

    .line 5518
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/orion/utils/d;->b(Ljava/lang/String;)Lcom/cmcm/orion/utils/b$1;

    move-result-object v0

    .line 5520
    iget v1, v0, Lcom/cmcm/orion/utils/b$1;->b:I

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_3

    .line 5521
    iget-object v0, v0, Lcom/cmcm/orion/utils/b$1;->a:Ljava/lang/String;

    .line 5522
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 5523
    new-instance v1, Lcom/cmcm/orion/picks/a/a/m;

    invoke-direct {v1}, Lcom/cmcm/orion/picks/a/a/m;-><init>()V

    .line 5524
    const-string v3, ""

    const-string v4, "0"

    invoke-static {v3, v4, v0, v1}, Lcom/cmcm/orion/picks/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/m;)Lcom/cmcm/orion/picks/a/a/i;

    move-result-object v1

    .line 5525
    if-eqz v1, :cond_3

    .line 5526
    invoke-virtual {v1}, Lcom/cmcm/orion/picks/a/a/i;->b()Ljava/util/List;

    move-result-object v0

    .line 5552
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5553
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 5554
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/orion/picks/a/a/a;

    .line 5555
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->s()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->s()I

    move-result v5

    const/16 v6, 0x200

    if-ne v5, v6, :cond_0

    .line 5557
    :cond_1
    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->E()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->q()I

    move-result v5

    const/16 v6, 0x50

    if-eq v5, v6, :cond_0

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->l()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/cmcm/orion/utils/internal/a;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 5560
    const/4 v5, 0x1

    if-ne p3, v5, :cond_2

    .line 5561
    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->a()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->l()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/cmcm/orion/utils/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 5567
    :cond_2
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5548
    :cond_3
    :goto_1
    return-void

    .line 5528
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5529
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/orion/picks/a/a/a;

    .line 5534
    iget-object v3, p0, Lcom/cmcm/orion/utils/internal/a;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/cmcm/orion/picks/a/a/i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5535
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 5536
    iget-object v3, p0, Lcom/cmcm/orion/utils/internal/a;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5540
    :cond_5
    invoke-interface {v2, v0}, Lcom/cmcm/orion/utils/internal/a$a;->a(Lcom/cmcm/orion/picks/a/a/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/a;ZLjava/util/Map;Lcom/cmcm/orion/picks/impl/a$a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/cmcm/orion/picks/a/a/a;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/cmcm/orion/picks/impl/a$a;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 859
    if-eqz p1, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 910
    :cond_0
    :goto_0
    return-void

    .line 863
    :cond_1
    if-nez p2, :cond_5

    .line 866
    invoke-virtual {p1}, Lcom/cmcm/orion/picks/a/a/a;->H()Ljava/lang/String;

    move-result-object v1

    .line 867
    const-string v2, ""

    invoke-virtual {p1}, Lcom/cmcm/orion/picks/a/a/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3, v0, v1}, Lcom/cmcm/orion/picks/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/cmcm/orion/picks/a/a/f;

    move-result-object v1

    .line 868
    if-eqz v1, :cond_0

    .line 871
    const-string v2, "view"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "click"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 873
    :cond_2
    const-string v2, "click"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 874
    invoke-static {p1}, Lcom/cmcm/orion/picks/a/b;->b(Lcom/cmcm/orion/picks/a/a/a;)I

    move-result v0

    .line 876
    :cond_3
    invoke-virtual {v1, v0}, Lcom/cmcm/orion/picks/a/a/f;->a(I)V

    .line 882
    :cond_4
    invoke-virtual {v1, p3}, Lcom/cmcm/orion/picks/a/a/f;->a(Ljava/util/Map;)V

    .line 883
    invoke-static {p1}, Lcom/cmcm/orion/picks/a/b;->a(Lcom/cmcm/orion/picks/a/a/a;)Lcom/cmcm/orion/picks/a/a/e;

    move-result-object v0

    .line 884
    invoke-virtual {v0, v4, v4}, Lcom/cmcm/orion/picks/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    :try_start_0
    new-instance v2, Lcom/cmcm/orion/utils/internal/b;

    invoke-direct {v2}, Lcom/cmcm/orion/utils/internal/b;-><init>()V

    .line 887
    invoke-virtual {v2, v0, v1}, Lcom/cmcm/orion/utils/internal/b;->a(Lcom/cmcm/orion/picks/a/a/e;Lcom/cmcm/orion/picks/a/a/f;)V

    .line 888
    invoke-virtual {v2, p4}, Lcom/cmcm/orion/utils/internal/b;->a(Lcom/cmcm/orion/picks/impl/a$a;)V

    .line 889
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-static {v2, v0}, Lcom/cmcm/orion/utils/a;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    :goto_1
    const-string v0, "view"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 904
    invoke-virtual {p1}, Lcom/cmcm/orion/picks/a/a/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/orion/picks/a/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 893
    :cond_5
    new-instance v0, Lcom/cmcm/orion/utils/internal/a$8;

    invoke-direct {v0, p4}, Lcom/cmcm/orion/utils/internal/a$8;-><init>(Lcom/cmcm/orion/picks/impl/a$a;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lcom/cmcm/orion/utils/a;->a(Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 905
    :cond_6
    const-string v0, "click"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 906
    invoke-virtual {p1}, Lcom/cmcm/orion/picks/a/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/orion/picks/a/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 907
    :cond_7
    const-string v0, "world_install"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 908
    invoke-virtual {p1}, Lcom/cmcm/orion/picks/a/a/a;->K()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/orion/picks/a/b;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 892
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private declared-synchronized a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmcm/orion/utils/internal/a$c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 718
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_1

    .line 740
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 723
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_4

    .line 724
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/orion/utils/internal/a$c;

    .line 725
    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/cmcm/orion/utils/internal/a$c;->d:Z

    if-eqz v0, :cond_3

    .line 726
    :cond_2
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 723
    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 731
    :cond_4
    invoke-static {}, Lcom/cmcm/orion/utils/internal/a;->f()Ljava/io/File;

    move-result-object v0

    .line 732
    if-eqz v0, :cond_0

    .line 733
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 735
    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "pkg_clicked_in_ad"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/cmcm/orion/picks/impl/a$1;->a(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 736
    :catch_0
    move-exception v0

    .line 737
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveDataToCache: Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 718
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/a/a/a;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 53
    .line 6440
    if-eqz p0, :cond_0

    .line 6441
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 6442
    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 6443
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/a/a/a;->O()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic a(Lcom/cmcm/orion/utils/internal/a;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/cmcm/orion/utils/internal/a;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/cmcm/orion/utils/internal/a;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 53
    .line 3300
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 3306
    :cond_0
    :goto_0
    return-object v0

    .line 3304
    :cond_1
    invoke-direct {p0}, Lcom/cmcm/orion/utils/internal/a;->d()Ljava/util/ArrayList;

    move-result-object v3

    .line 3305
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3309
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3310
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/orion/utils/internal/a$c;

    .line 3311
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cmcm/orion/utils/internal/a$c;

    .line 3312
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v6, v1, Lcom/cmcm/orion/utils/internal/a$c;->a:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, v1, Lcom/cmcm/orion/utils/internal/a$c;->a:Ljava/lang/String;

    iget-object v7, v0, Lcom/cmcm/orion/utils/internal/a$c;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-boolean v6, v0, Lcom/cmcm/orion/utils/internal/a$c;->d:Z

    if-nez v6, :cond_3

    .line 3317
    iget-wide v6, v0, Lcom/cmcm/orion/utils/internal/a$c;->b:J

    iget-wide v8, v1, Lcom/cmcm/orion/utils/internal/a$c;->b:J

    cmp-long v1, v6, v8

    if-gez v1, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v0, Lcom/cmcm/orion/utils/internal/a$c;->b:J

    sub-long/2addr v6, v8

    invoke-static {}, Lcom/cmcm/orion/picks/a/a/h;->k()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-gez v1, :cond_5

    iget-object v1, v0, Lcom/cmcm/orion/utils/internal/a$c;->c:Lcom/cmcm/orion/utils/internal/a$b;

    if-eqz v1, :cond_5

    .line 3322
    iget-object v1, v0, Lcom/cmcm/orion/utils/internal/a$c;->c:Lcom/cmcm/orion/utils/internal/a$b;

    .line 3491
    if-eqz v1, :cond_4

    .line 3496
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 3497
    const-string v7, "itime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3498
    const-string v7, "vext"

    invoke-static {v1}, Lcom/cmcm/orion/utils/internal/a$b;->b(Lcom/cmcm/orion/utils/internal/a$b;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3500
    const-string v7, "world_install"

    invoke-static {v1}, Lcom/cmcm/orion/utils/internal/a$b;->a(Lcom/cmcm/orion/utils/internal/a$b;)Lcom/cmcm/orion/picks/a/a/a;

    move-result-object v8

    invoke-static {v1}, Lcom/cmcm/orion/utils/internal/a$b;->c(Lcom/cmcm/orion/utils/internal/a$b;)Z

    move-result v9

    new-instance v10, Lcom/cmcm/orion/utils/internal/a$7;

    invoke-direct {v10, p0, v1}, Lcom/cmcm/orion/utils/internal/a$7;-><init>(Lcom/cmcm/orion/utils/internal/a;Lcom/cmcm/orion/utils/internal/a$b;)V

    invoke-static {v7, v8, v9, v6, v10}, Lcom/cmcm/orion/utils/internal/a;->a(Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/a;ZLjava/util/Map;Lcom/cmcm/orion/picks/impl/a$a;)V

    .line 3323
    :cond_4
    iget-object v1, v0, Lcom/cmcm/orion/utils/internal/a$c;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3326
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cmcm/orion/utils/internal/a$c;->d:Z

    goto :goto_1

    .line 3331
    :cond_6
    invoke-direct {p0, v3}, Lcom/cmcm/orion/utils/internal/a;->a(Ljava/util/ArrayList;)V

    move-object v0, v2

    .line 53
    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/cmcm/orion/utils/internal/a;)V
    .locals 4

    .prologue
    .line 53
    .line 3920
    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->a()Landroid/content/Context;

    move-result-object v0

    .line 3921
    if-eqz v0, :cond_0

    .line 3922
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3923
    if-eqz v0, :cond_0

    .line 3924
    const-string v1, "content://downloads"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/cmcm/orion/utils/internal/a$9;

    invoke-direct {v3, p0}, Lcom/cmcm/orion/utils/internal/a$9;-><init>(Lcom/cmcm/orion/utils/internal/a;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 53
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/cmcm/orion/utils/internal/a;Lcom/cmcm/orion/picks/a/a/a;)V
    .locals 5

    .prologue
    .line 53
    .line 4631
    if-eqz p1, :cond_2

    .line 4635
    invoke-direct {p0}, Lcom/cmcm/orion/utils/internal/a;->e()Ljava/util/ArrayList;

    move-result-object v1

    .line 4636
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4637
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/orion/utils/internal/a$d;

    .line 4638
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/cmcm/orion/picks/a/a/a;->l()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/cmcm/orion/picks/a/a/a;->l()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/cmcm/orion/utils/internal/a$d;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4641
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/cmcm/orion/utils/internal/a$d;->c:Z

    goto :goto_0

    .line 4645
    :cond_1
    invoke-direct {p0, v1}, Lcom/cmcm/orion/utils/internal/a;->b(Ljava/util/ArrayList;)V

    .line 53
    :cond_2
    return-void
.end method

.method private declared-synchronized b(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmcm/orion/utils/internal/a$d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 793
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_1

    .line 815
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 798
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_4

    .line 799
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/orion/utils/internal/a$d;

    .line 800
    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/cmcm/orion/utils/internal/a$d;->c:Z

    if-eqz v0, :cond_3

    .line 801
    :cond_2
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 798
    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 806
    :cond_4
    invoke-static {}, Lcom/cmcm/orion/utils/internal/a;->f()Ljava/io/File;

    move-result-object v0

    .line 807
    if-eqz v0, :cond_0

    .line 808
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 810
    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "pkg_shown_in_ad"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/cmcm/orion/picks/impl/a$1;->a(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 811
    :catch_0
    move-exception v0

    .line 812
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveDataToCache: Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 793
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 375
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 390
    :goto_0
    return v0

    .line 379
    :cond_0
    invoke-direct {p0}, Lcom/cmcm/orion/utils/internal/a;->d()Ljava/util/ArrayList;

    move-result-object v0

    .line 380
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 381
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/orion/utils/internal/a$c;

    .line 382
    if-eqz v0, :cond_1

    iget-boolean v3, v0, Lcom/cmcm/orion/utils/internal/a$c;->d:Z

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/cmcm/orion/utils/internal/a$c;->a:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v0, v0, Lcom/cmcm/orion/utils/internal/a$c;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 390
    goto :goto_0
.end method

.method static synthetic c()Ljava/util/ArrayList;
    .locals 8

    .prologue
    .line 2394
    invoke-static {}, Lcom/cmcm/orion/utils/internal/c;->a()Lcom/cmcm/orion/utils/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcm/orion/utils/internal/c;->c()Ljava/util/List;

    move-result-object v0

    .line 2395
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2396
    if-eqz v0, :cond_0

    .line 2397
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2400
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2401
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2402
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 2403
    if-eqz v0, :cond_1

    .line 2404
    new-instance v3, Lcom/cmcm/orion/utils/internal/a$c;

    const/4 v4, 0x0

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-wide v6, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/cmcm/orion/utils/internal/a$c;-><init>(Lcom/cmcm/orion/utils/internal/a$b;Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    :cond_2
    return-object v2
.end method

.method static synthetic c(Lcom/cmcm/orion/utils/internal/a;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/a;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/cmcm/orion/utils/internal/a;Lcom/cmcm/orion/picks/a/a/a;)V
    .locals 4

    .prologue
    .line 53
    .line 6451
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6452
    const-string v1, "vext"

    const-string v2, "100"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6455
    const-string v1, "click"

    const/4 v2, 0x1

    new-instance v3, Lcom/cmcm/orion/utils/internal/a$4;

    invoke-direct {v3, p0, p1}, Lcom/cmcm/orion/utils/internal/a$4;-><init>(Lcom/cmcm/orion/utils/internal/a;Lcom/cmcm/orion/picks/a/a/a;)V

    invoke-static {v1, p1, v2, v0, v3}, Lcom/cmcm/orion/utils/internal/a;->a(Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/a;ZLjava/util/Map;Lcom/cmcm/orion/picks/impl/a$a;)V

    .line 6467
    new-instance v0, Lcom/cmcm/orion/utils/internal/a$5;

    invoke-direct {v0, p0, p1}, Lcom/cmcm/orion/utils/internal/a$5;-><init>(Lcom/cmcm/orion/utils/internal/a;Lcom/cmcm/orion/picks/a/a/a;)V

    invoke-static {v0}, Lcom/cmcm/orion/utils/a;->a(Ljava/lang/Runnable;)V

    .line 53
    return-void
.end method

.method private declared-synchronized d()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmcm/orion/utils/internal/a$c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 696
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/cmcm/orion/utils/internal/a;->f()Ljava/io/File;

    move-result-object v0

    .line 697
    if-eqz v0, :cond_0

    .line 698
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 700
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "pkg_clicked_in_ad"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/cmcm/orion/picks/impl/a$1;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    .line 701
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 702
    check-cast v0, Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 709
    :goto_0
    monitor-exit p0

    return-object v0

    .line 704
    :catch_0
    move-exception v0

    .line 705
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init: Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 709
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 696
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic d(Lcom/cmcm/orion/utils/internal/a;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/a;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic d(Lcom/cmcm/orion/utils/internal/a;Lcom/cmcm/orion/picks/a/a/a;)V
    .locals 3

    .prologue
    .line 53
    .line 6483
    new-instance v0, Lcom/cmcm/orion/utils/internal/d;

    invoke-virtual {p1}, Lcom/cmcm/orion/picks/a/a/a;->m()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cmcm/orion/utils/internal/a$6;

    invoke-direct {v2, p0}, Lcom/cmcm/orion/utils/internal/a$6;-><init>(Lcom/cmcm/orion/utils/internal/a;)V

    invoke-direct {v0, v1, v2}, Lcom/cmcm/orion/utils/internal/d;-><init>(Ljava/lang/String;Lcom/cmcm/orion/picks/impl/a$a;)V

    invoke-virtual {v0}, Lcom/cmcm/orion/utils/internal/d;->a()V

    .line 53
    return-void
.end method

.method private declared-synchronized e()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmcm/orion/utils/internal/a$d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 771
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/cmcm/orion/utils/internal/a;->f()Ljava/io/File;

    move-result-object v0

    .line 772
    if-eqz v0, :cond_0

    .line 773
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 775
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "pkg_shown_in_ad"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/cmcm/orion/picks/impl/a$1;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    .line 776
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 777
    check-cast v0, Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 784
    :goto_0
    monitor-exit p0

    return-object v0

    .line 779
    :catch_0
    move-exception v0

    .line 780
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init: Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 784
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 771
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic e(Lcom/cmcm/orion/utils/internal/a;)Ljava/util/List;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/a;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/cmcm/orion/utils/internal/a;Lcom/cmcm/orion/picks/a/a/a;)V
    .locals 5

    .prologue
    .line 53
    .line 6650
    if-eqz p1, :cond_2

    .line 6654
    invoke-direct {p0}, Lcom/cmcm/orion/utils/internal/a;->d()Ljava/util/ArrayList;

    move-result-object v1

    .line 6655
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6656
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/orion/utils/internal/a$c;

    .line 6657
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/cmcm/orion/picks/a/a/a;->l()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/cmcm/orion/picks/a/a/a;->l()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/cmcm/orion/utils/internal/a$c;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6660
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/cmcm/orion/utils/internal/a$c;->d:Z

    goto :goto_0

    .line 6664
    :cond_1
    invoke-direct {p0, v1}, Lcom/cmcm/orion/utils/internal/a;->a(Ljava/util/ArrayList;)V

    .line 53
    :cond_2
    return-void
.end method

.method private static f()Ljava/io/File;
    .locals 3

    .prologue
    .line 823
    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->a()Landroid/content/Context;

    move-result-object v0

    .line 824
    if-eqz v0, :cond_3

    .line 825
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 826
    if-eqz v0, :cond_3

    .line 827
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 828
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 829
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "orion_ad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 830
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 831
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 847
    :cond_0
    :goto_0
    return-object v0

    .line 833
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 834
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 835
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 837
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Already exist file with name = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; And it can not be deleted!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 847
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/cmcm/orion/picks/a/a/a;IZ)V
    .locals 2

    .prologue
    .line 173
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cmcm/orion/picks/a/a/a;->l()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAdClicked: ad.getPkg() = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cmcm/orion/picks/a/a/a;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    new-instance v0, Lcom/cmcm/orion/utils/internal/a$11;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/cmcm/orion/utils/internal/a$11;-><init>(Lcom/cmcm/orion/utils/internal/a;Lcom/cmcm/orion/picks/a/a/a;IZ)V

    invoke-static {v0}, Lcom/cmcm/orion/utils/a;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 207
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/orion/utils/c;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    new-instance v0, Lcom/cmcm/orion/utils/internal/a$12;

    invoke-direct {v0, p0, p1}, Lcom/cmcm/orion/utils/internal/a$12;-><init>(Lcom/cmcm/orion/utils/internal/a;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cmcm/orion/utils/a;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/orion/picks/a/a/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 121
    :cond_0
    new-instance v0, Lcom/cmcm/orion/utils/internal/a$10;

    invoke-direct {v0, p0, p1}, Lcom/cmcm/orion/utils/internal/a$10;-><init>(Lcom/cmcm/orion/utils/internal/a;Ljava/util/List;)V

    invoke-static {v0}, Lcom/cmcm/orion/utils/a;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/cmcm/orion/utils/internal/a$1;

    invoke-direct {v0, p0}, Lcom/cmcm/orion/utils/internal/a$1;-><init>(Lcom/cmcm/orion/utils/internal/a;)V

    invoke-static {v0}, Lcom/cmcm/orion/utils/a;->a(Ljava/lang/Runnable;)V

    .line 110
    return-void
.end method
