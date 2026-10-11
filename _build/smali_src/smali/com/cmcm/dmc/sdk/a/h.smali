.class public Lcom/cmcm/dmc/sdk/a/h;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field private b:Lcom/cmcm/dmc/sdk/a/e;

.field private c:Landroid/location/Location;

.field private d:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/a/h;->b:Lcom/cmcm/dmc/sdk/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/a/h;->b:Lcom/cmcm/dmc/sdk/a/e;

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/a/h;->c:Landroid/location/Location;

    invoke-interface {v0, v1, p1}, Lcom/cmcm/dmc/sdk/a/e;->a(Landroid/location/Location;I)V

    :cond_0
    iget-object v0, p0, Lcom/cmcm/dmc/sdk/a/h;->b:Lcom/cmcm/dmc/sdk/a/e;

    if-eqz v0, :cond_1

    iput-object v2, p0, Lcom/cmcm/dmc/sdk/a/h;->b:Lcom/cmcm/dmc/sdk/a/e;

    iput-object v2, p0, Lcom/cmcm/dmc/sdk/a/h;->c:Landroid/location/Location;

    :cond_1
    return-void
.end method

.method private a(Lcom/cmcm/dmc/sdk/a/e;)V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/a/h;->d:Ljava/util/Timer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/a/h;->d:Ljava/util/Timer;

    :cond_0
    iput-object v5, p0, Lcom/cmcm/dmc/sdk/a/h;->c:Landroid/location/Location;

    invoke-static {}, Lcom/cmcm/dmc/sdk/a/c;->c()Landroid/content/Context;

    move-result-object v4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v0, v6, :cond_2

    :try_start_0
    const-string v0, "appops"

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    const-string v6, "android:fine_location"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v6, v7, v8}, Landroid/app/AppOpsManager;->checkOp(Ljava/lang/String;ILjava/lang/String;)I

    move-result v6

    const-string v7, "android:coarse_location"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v7, v8, v9}, Landroid/app/AppOpsManager;->checkOp(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    if-eqz v6, :cond_2

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    const/4 v6, 0x3

    invoke-interface {p1, v0, v6}, Lcom/cmcm/dmc/sdk/a/e;->a(Landroid/location/Location;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v6, "LocationMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :try_start_1
    const-string v0, "location"

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v5

    :try_start_3
    const-string v4, "gps"

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "gps"

    invoke-virtual {v0, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    iput-object v4, p0, Lcom/cmcm/dmc/sdk/a/h;->c:Landroid/location/Location;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    :cond_3
    move v4, v3

    :goto_1
    if-eqz v5, :cond_4

    :try_start_4
    const-string v6, "network"

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "network"

    invoke-virtual {v0, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v5, p0, Lcom/cmcm/dmc/sdk/a/h;->c:Landroid/location/Location;

    invoke-virtual {p0, v0, v5}, Lcom/cmcm/dmc/sdk/a/h;->a(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v5

    if-eqz v5, :cond_4

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/a/h;->c:Landroid/location/Location;
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    :cond_4
    move v0, v3

    :goto_2
    add-int/2addr v0, v4

    iput v0, p0, Lcom/cmcm/dmc/sdk/a/h;->a:I

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v4, v5

    :goto_3
    const-string v6, "LocationMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v5

    move-object v5, v4

    move v4, v1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v4, v5

    :goto_4
    const-string v6, "LocationMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    move v4, v2

    goto :goto_1

    :catch_3
    move-exception v0

    const-string v2, "LocationMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_2

    :catch_4
    move-exception v0

    const-string v1, "LocationMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_2

    :catch_5
    move-exception v4

    move-object v10, v4

    move-object v4, v0

    move-object v0, v10

    goto :goto_4

    :catch_6
    move-exception v4

    move-object v10, v4

    move-object v4, v5

    move-object v5, v0

    move-object v0, v10

    goto/16 :goto_3

    :catch_7
    move-exception v4

    move-object v10, v4

    move-object v4, v5

    move-object v5, v0

    move-object v0, v10

    goto/16 :goto_3
.end method

.method static synthetic a(Lcom/cmcm/dmc/sdk/a/h;Lcom/cmcm/dmc/sdk/a/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cmcm/dmc/sdk/a/h;->a(Lcom/cmcm/dmc/sdk/a/e;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 6

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/a/h;->d:Ljava/util/Timer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/a/h;->d:Ljava/util/Timer;

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/a/h;->d:Ljava/util/Timer;

    new-instance v1, Lcom/cmcm/dmc/sdk/a/h$1;

    invoke-direct {v1, p0}, Lcom/cmcm/dmc/sdk/a/h$1;-><init>(Lcom/cmcm/dmc/sdk/a/h;)V

    const-wide/32 v2, 0xea60

    const-wide/32 v4, 0x1d4c0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method public a(Lcom/cmcm/dmc/sdk/a/e;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/cmcm/dmc/sdk/a/h;->b:Lcom/cmcm/dmc/sdk/a/e;

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/a/h;->c:Landroid/location/Location;

    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Lcom/cmcm/dmc/sdk/a/h;->a(I)V

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/cmcm/dmc/sdk/a/h;->a:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/cmcm/dmc/sdk/a/h;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-direct {p0, v3}, Lcom/cmcm/dmc/sdk/a/h;->a(I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/cmcm/dmc/sdk/a/h;->a:I

    if-ne v0, v3, :cond_4

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/cmcm/dmc/sdk/a/h;->a(I)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v2}, Lcom/cmcm/dmc/sdk/a/h;->a(I)V

    goto :goto_0
.end method

.method protected a(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x1d4c0

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    move v3, v1

    :goto_1
    const-wide/32 v6, -0x1d4c0

    cmp-long v0, v4, v6

    if-gez v0, :cond_3

    move v0, v1

    :goto_2
    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    move v5, v1

    :goto_3
    if-nez v3, :cond_0

    if-eqz v0, :cond_5

    move v1, v2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v5, v2

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    if-lez v0, :cond_8

    move v4, v1

    :goto_4
    if-gez v0, :cond_9

    move v3, v1

    :goto_5
    const/16 v6, 0xc8

    if-le v0, v6, :cond_a

    move v0, v1

    :goto_6
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/cmcm/dmc/sdk/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v3, :cond_0

    if-eqz v5, :cond_6

    if-eqz v4, :cond_0

    :cond_6
    if-eqz v5, :cond_7

    if-nez v0, :cond_7

    if-nez v6, :cond_0

    :cond_7
    move v1, v2

    goto :goto_0

    :cond_8
    move v4, v2

    goto :goto_4

    :cond_9
    move v3, v2

    goto :goto_5

    :cond_a
    move v0, v2

    goto :goto_6
.end method
