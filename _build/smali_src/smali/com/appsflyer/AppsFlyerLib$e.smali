.class Lcom/appsflyer/AppsFlyerLib$e;
.super Ljava/lang/Object;
.source "AppsFlyerLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AppsFlyerLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1487
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLib$e;->d:Ljava/lang/ref/WeakReference;

    .line 1496
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLib$e;->c:Ljava/lang/String;

    .line 1497
    iput-object p2, p0, Lcom/appsflyer/AppsFlyerLib$e;->a:Ljava/util/Map;

    .line 1498
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLib$e;->d:Ljava/lang/ref/WeakReference;

    .line 1499
    iput-boolean p4, p0, Lcom/appsflyer/AppsFlyerLib$e;->b:Z

    .line 1500
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;ZLcom/appsflyer/AppsFlyerLib$1;)V
    .locals 0

    .prologue
    .line 1484
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/appsflyer/AppsFlyerLib$e;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1503
    .line 1504
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$e;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLib;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 1506
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$e;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1508
    if-eqz v0, :cond_8

    .line 1509
    invoke-static {}, Lcom/appsflyer/c;->a()Lcom/appsflyer/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appsflyer/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1510
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLib$e;->a:Ljava/util/Map;

    const-string v4, "referrer"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1512
    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLib$e;->a:Ljava/util/Map;

    const-string v4, "referrer"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1514
    :cond_0
    const-string v1, "appsflyer-data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1515
    const-string v2, "true"

    const-string v4, "sentSuccessfully"

    const-string v8, ""

    invoke-interface {v1, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1516
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$e;->a:Ljava/util/Map;

    const-string v4, "eventName"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1517
    iget-object v8, p0, Lcom/appsflyer/AppsFlyerLib$e;->a:Ljava/util/Map;

    const-string v9, "counter"

    const-string v10, "appsFlyerCount"

    if-nez v1, :cond_3

    move v4, v6

    :goto_0
    invoke-static {v0, v10, v4}, Lcom/appsflyer/AppsFlyerLib;->a(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1518
    iget-object v4, p0, Lcom/appsflyer/AppsFlyerLib$e;->a:Ljava/util/Map;

    const-string v8, "iaecounter"

    const-string v9, "appsFlyerInAppEventCount"

    if-eqz v1, :cond_4

    move v1, v6

    :goto_1
    invoke-static {v0, v9, v1}, Lcom/appsflyer/AppsFlyerLib;->a(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1519
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$e;->a:Ljava/util/Map;

    const-string v4, "timepassedsincelastlaunch"

    const/4 v8, 0x1

    invoke-static {v0, v8}, Lcom/appsflyer/AppsFlyerLib;->a(Landroid/content/Context;Z)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    .line 1521
    :goto_2
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$e;->a:Ljava/util/Map;

    const-string v2, "isFirstCall"

    if-nez v0, :cond_5

    move v0, v6

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1523
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$e;->a:Ljava/util/Map;

    const-string v1, "appsflyerKey"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1524
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    .line 1525
    :cond_1
    const-string v0, "Not sending data yet, waiting for dev key"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    :cond_2
    :goto_4
    return-void

    :cond_3
    move v4, v7

    .line 1517
    goto :goto_0

    :cond_4
    move v1, v7

    .line 1518
    goto :goto_1

    :cond_5
    move v0, v7

    .line 1521
    goto :goto_3

    .line 1529
    :cond_6
    new-instance v0, Lcom/appsflyer/HashUtils;

    invoke-direct {v0}, Lcom/appsflyer/HashUtils;-><init>()V

    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$e;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/appsflyer/HashUtils;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 1530
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$e;->a:Ljava/util/Map;

    const-string v4, "af_v"

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1532
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$e;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLib;->a(Ljava/util/Map;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1534
    :try_start_1
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$e;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/appsflyer/AppsFlyerLib$e;->d:Ljava/lang/ref/WeakReference;

    const/4 v4, 0x0

    iget-boolean v8, p0, Lcom/appsflyer/AppsFlyerLib$e;->b:Z

    if-eqz v8, :cond_7

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->b()Lcom/appsflyer/a;

    move-result-object v8

    if-eqz v8, :cond_7

    :goto_5
    invoke-static/range {v0 .. v6}, Lcom/appsflyer/AppsFlyerLib;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 1536
    :catch_0
    move-exception v0

    .line 1537
    :goto_6
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLib$e;->d:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLib$e;->c:Ljava/lang/String;

    const-string v3, "&isCachedRequest=true&timeincache="

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1538
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1539
    invoke-static {}, Lcom/appsflyer/a/a;->a()Lcom/appsflyer/a/a;

    move-result-object v2

    new-instance v3, Lcom/appsflyer/a/b;

    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$e;->c:Ljava/lang/String;

    const-string v4, "3.0"

    invoke-direct {v3, v0, v1, v4}, Lcom/appsflyer/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$e;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/appsflyer/a/a;->a(Lcom/appsflyer/a/b;Landroid/content/Context;)V

    goto :goto_4

    :cond_7
    move v6, v7

    .line 1534
    goto :goto_5

    .line 1541
    :catch_1
    move-exception v0

    .line 1542
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1536
    :catch_2
    move-exception v0

    move-object v1, v3

    goto :goto_6

    :cond_8
    move v0, v7

    goto/16 :goto_2
.end method
