.class Lcom/appsflyer/AppsFlyerLib$d;
.super Lcom/appsflyer/AppsFlyerLib$a;
.source "AppsFlyerLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AppsFlyerLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .prologue
    .line 1565
    invoke-direct {p0, p1, p2, p3}, Lcom/appsflyer/AppsFlyerLib$a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 1566
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1570
    const-string v0, "https://api.appsflyer.com/install_data/v3/"

    return-object v0
.end method

.method protected a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1580
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->b()Lcom/appsflyer/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/appsflyer/a;->a(Ljava/lang/String;)V

    .line 1582
    const/16 v0, 0x190

    if-lt p2, v0, :cond_0

    const/16 v0, 0x1f4

    if-ge p2, v0, :cond_0

    .line 1583
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "appsflyer-data"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1584
    const-string v1, "appsflyerConversionDataRequestRetries"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1585
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v2, "appsflyerConversionDataRequestRetries"

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v2, v1}, Lcom/appsflyer/AppsFlyerLib;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1588
    :cond_0
    return-void
.end method

.method protected a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1574
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->b()Lcom/appsflyer/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/appsflyer/a;->a(Ljava/util/Map;)V

    .line 1575
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "appsflyer-data"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 1576
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "appsflyerConversionDataRequestRetries"

    invoke-static {v0, v1, v2}, Lcom/appsflyer/AppsFlyerLib;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1577
    return-void
.end method
