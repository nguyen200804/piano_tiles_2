.class public final Lcom/mopub/dg/e/a/a/l;
.super Ljava/lang/Object;


# static fields
.field private static f:Lcom/mopub/dg/e/a/a/l;

.field private static g:Landroid/os/Handler;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:J

.field private h:Landroid/content/Context;

.field private i:Lcom/mopub/dg/d/b/b;

.field private j:Lcom/mopub/dg/d/b/b;

.field private k:Lcom/mopub/dg/d/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/mopub/dg/e/a/a/l;->f:Lcom/mopub/dg/e/a/a/l;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/mopub/dg/e/a/a/l;->g:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/mopub/dg/e/a/a/l;->a:Z

    iput-boolean v0, p0, Lcom/mopub/dg/e/a/a/l;->b:Z

    iput-boolean v1, p0, Lcom/mopub/dg/e/a/a/l;->c:Z

    iput-boolean v1, p0, Lcom/mopub/dg/e/a/a/l;->d:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mopub/dg/e/a/a/l;->e:J

    return-void
.end method

.method public static declared-synchronized a()Lcom/mopub/dg/e/a/a/l;
    .locals 2

    const-class v1, Lcom/mopub/dg/e/a/a/l;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mopub/dg/e/a/a/l;->f:Lcom/mopub/dg/e/a/a/l;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mopub/dg/e/a/a/l;

    invoke-direct {v0}, Lcom/mopub/dg/e/a/a/l;-><init>()V

    sput-object v0, Lcom/mopub/dg/e/a/a/l;->f:Lcom/mopub/dg/e/a/a/l;

    :cond_0
    sget-object v0, Lcom/mopub/dg/e/a/a/l;->f:Lcom/mopub/dg/e/a/a/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-wide/16 v6, -0x1

    const/4 v0, 0x1

    invoke-static {}, Lcom/mopub/dg/e/a/a/l;->a()Lcom/mopub/dg/e/a/a/l;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mopub/dg/e/a/a/l;->a(Landroid/content/Context;)V

    iget-boolean v2, v1, Lcom/mopub/dg/e/a/a/l;->b:Z

    if-eqz v2, :cond_1

    iput-boolean v0, v1, Lcom/mopub/dg/e/a/a/l;->a:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v0, v1, Lcom/mopub/dg/e/a/a/l;->a:Z

    iget-object v2, v1, Lcom/mopub/dg/e/a/a/l;->k:Lcom/mopub/dg/d/b/b;

    const-string v3, "configName"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/mopub/dg/d/b/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-direct {v1, v2}, Lcom/mopub/dg/e/a/a/l;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    invoke-static {p0}, Lcom/mopub/dg/e/a/b/a;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/mopub/dg/e/a/a/l;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/mopub/dg/d/b/b;->a(Landroid/content/Context;)Lcom/mopub/dg/d/b/b;

    move-result-object v2

    sget-object v3, Lcom/mopub/dg/c/g;->s:Ljava/lang/String;

    invoke-virtual {v2, v3, v6, v7}, Lcom/mopub/dg/d/b/b;->b(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/mopub/dg/e/a/a/l;->e:J

    iget-wide v4, v1, Lcom/mopub/dg/e/a/a/l;->e:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v1, Lcom/mopub/dg/e/a/a/l;->e:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    sget-wide v6, Lcom/mopub/dg/c/g;->t:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/mopub/dg/e/a/a/l;->e:J

    sget-object v3, Lcom/mopub/dg/c/g;->s:Ljava/lang/String;

    iget-wide v4, v1, Lcom/mopub/dg/e/a/a/l;->e:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/mopub/dg/d/b/b;->a(Ljava/lang/String;J)Z

    :goto_2
    if-eqz v0, :cond_0

    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "appId"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "slotId"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "hasGP"

    invoke-static {p0}, Lcom/mopub/dg/e/a/b/f;->a(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://adbsc.krmobi.com/adbc?"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/mopub/dg/e/a/b/a;->a(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/mopub/dg/e/a/a/m;

    invoke-direct {v2, v1}, Lcom/mopub/dg/e/a/a/m;-><init>(Lcom/mopub/dg/e/a/a/l;)V

    invoke-static {v0, v2}, Lcom/mopub/dg/d/k;->a(Ljava/lang/String;Lcom/mopub/dg/d/m;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :catch_1
    move-exception v2

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/mopub/dg/e/a/a/l;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mopub/dg/e/a/a/l;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 13

    const/4 v12, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    sget-boolean v0, Lcom/mopub/dg/e/a/a/d;->c:Z

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/mopub/dg/e/a/a/l;->a()Lcom/mopub/dg/e/a/a/l;

    move-result-object v5

    move v7, v8

    move v1, v8

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_1

    sget v0, Lcom/mopub/dg/e/a/a/d;->d:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v1, v0, :cond_1

    :try_start_1
    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/dg/adapi/AdData;

    invoke-virtual {v0}, Lcom/mopub/dg/adapi/AdData;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mopub/dg/adapi/AdData;->getClickTrackUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mopub/dg/adapi/AdData;->isPreload()Z

    move-result v6

    invoke-virtual {v0}, Lcom/mopub/dg/adapi/AdData;->getAdID()Ljava/lang/String;

    move-result-object v4

    if-eqz v6, :cond_2

    invoke-direct {v5, v3}, Lcom/mopub/dg/e/a/a/l;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, ""
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-eq v0, v6, :cond_0

    :goto_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_0
    add-int/lit8 v6, v1, 0x1

    :try_start_2
    new-instance v0, Lcom/mopub/dg/e/a/a/o;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/mopub/dg/e/a/a/o;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mopub/dg/e/a/a/l;)V

    sget-object v1, Lcom/mopub/dg/e/a/a/l;->g:Landroid/os/Handler;

    int-to-long v2, v6

    sget-wide v10, Lcom/mopub/dg/e/a/a/d;->f:J

    mul-long/2addr v2, v10

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move v0, v6

    :goto_2
    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_3
    const/4 v2, 0x2

    :try_start_3
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "DG"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/mopub/dg/d/n;->a([Ljava/lang/Object;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-array v1, v12, [Ljava/lang/Object;

    const-string v2, "DG"

    aput-object v2, v1, v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v9

    invoke-static {v1}, Lcom/mopub/dg/d/n;->a([Ljava/lang/Object;)I

    :cond_1
    return-void

    :catch_2
    move-exception v0

    move v1, v6

    goto :goto_3

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public static a(Lcom/mopub/dg/adapi/AdData;Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-static {p0, p1}, Lcom/mopub/dg/e/a/a/l;->d(Lcom/mopub/dg/adapi/AdData;Landroid/content/Context;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "DG"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v3, "trackping method should run in main thread"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/mopub/dg/d/n;->a([Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static b(Lcom/mopub/dg/adapi/AdData;Landroid/content/Context;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/mopub/dg/adapi/AdData;->getClickTrackUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/dg/adapi/AdData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mopub/dg/adapi/AdData;->getAdID()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/mopub/dg/e/a/a/l;->a()Lcom/mopub/dg/e/a/a/l;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/mopub/dg/e/a/a/l;->a(Landroid/content/Context;)V

    iget-boolean v4, v3, Lcom/mopub/dg/e/a/a/l;->a:Z

    if-nez v4, :cond_0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "DG"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "Should init first"

    aput-object v6, v4, v5

    invoke-static {v4}, Lcom/mopub/dg/d/n;->a([Ljava/lang/Object;)I

    :cond_0
    invoke-direct {v3, v1}, Lcom/mopub/dg/e/a/a/l;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    if-eq v4, v5, :cond_2

    const-string v5, "InitName"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4, p1}, Lcom/mopub/dg/e/a/b/b;->a(Ljava/lang/String;Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v4, v3, Lcom/mopub/dg/e/a/a/l;->a:Z

    if-eqz v4, :cond_4

    iget-boolean v4, v3, Lcom/mopub/dg/e/a/a/l;->c:Z

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "market://details?id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/mopub/dg/e/a/b/b;->a(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/mopub/dg/e/a/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, ""

    invoke-virtual {v3, v1, v4}, Lcom/mopub/dg/e/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    new-instance v3, Lcom/mopub/dg/e/a/a/i;

    invoke-direct {v3, p1, v0}, Lcom/mopub/dg/e/a/a/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, v3, Lcom/mopub/dg/e/a/a/i;->b:Ljava/lang/String;

    iput-object v2, v3, Lcom/mopub/dg/e/a/a/i;->a:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/mopub/dg/e/a/a/i;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "DG"

    aput-object v2, v1, v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v8

    invoke-static {v1}, Lcom/mopub/dg/d/n;->a([Ljava/lang/Object;)I

    goto :goto_0

    :cond_4
    :try_start_1
    new-instance v1, Lcom/mopub/dg/e/a/a/e;

    invoke-direct {v1, p1}, Lcom/mopub/dg/e/a/a/e;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/mopub/dg/e/a/a/e;->c:Ljava/lang/String;

    iget-object v0, v1, Lcom/mopub/dg/e/a/a/e;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/mopub/dg/e/a/a/e;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, v1, Lcom/mopub/dg/e/a/a/e;->k:Landroid/os/Handler;

    iget-object v0, v1, Lcom/mopub/dg/e/a/a/e;->k:Landroid/os/Handler;

    iget-object v2, v1, Lcom/mopub/dg/e/a/a/e;->l:Ljava/lang/Runnable;

    iget v3, v1, Lcom/mopub/dg/e/a/a/e;->j:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, v1, Lcom/mopub/dg/e/a/a/e;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v1, Lcom/mopub/dg/e/a/a/e;->a:Landroid/content/Context;

    iget-object v2, v1, Lcom/mopub/dg/e/a/a/e;->b:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/mopub/dg/e/a/b/c;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/util/Map;)V

    :cond_5
    iget-object v0, v1, Lcom/mopub/dg/e/a/a/e;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v2, v1, Lcom/mopub/dg/e/a/a/e;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, v1, Lcom/mopub/dg/e/a/a/e;->g:Z

    if-eqz v0, :cond_6

    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v0, -0x1

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v0, -0x1

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v0, 0x11

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, v1, Lcom/mopub/dg/e/a/a/e;->a:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, v1, Lcom/mopub/dg/e/a/a/e;->i:Landroid/view/WindowManager;

    iget-object v0, v1, Lcom/mopub/dg/e/a/a/e;->i:Landroid/view/WindowManager;

    iget-object v4, v1, Lcom/mopub/dg/e/a/a/e;->d:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v4, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v1, Lcom/mopub/dg/e/a/a/e;->e:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, v1, Lcom/mopub/dg/e/a/a/e;->h:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_6
    iget-object v0, v1, Lcom/mopub/dg/e/a/a/e;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static b(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1}, Lcom/mopub/dg/e/a/a/l;->a(Ljava/util/ArrayList;Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/mopub/dg/e/a/a/l;->g:Landroid/os/Handler;

    new-instance v1, Lcom/mopub/dg/e/a/a/p;

    invoke-direct {v1, p0, p1}, Lcom/mopub/dg/e/a/a/p;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static c(Lcom/mopub/dg/adapi/AdData;Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1}, Lcom/mopub/dg/e/a/a/l;->b(Lcom/mopub/dg/adapi/AdData;Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/mopub/dg/e/a/a/l;->g:Landroid/os/Handler;

    new-instance v1, Lcom/mopub/dg/e/a/a/n;

    invoke-direct {v1, p0, p1}, Lcom/mopub/dg/e/a/a/n;-><init>(Lcom/mopub/dg/adapi/AdData;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/mopub/dg/e/a/a/l;->j:Lcom/mopub/dg/d/b/b;

    const-string v2, ""

    invoke-virtual {v1, p1, v2}, Lcom/mopub/dg/d/b/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v1, "ts"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    sget-wide v6, Lcom/mopub/dg/e/a/a/d;->e:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    const-string v1, "url"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private static d(Lcom/mopub/dg/adapi/AdData;Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lcom/mopub/dg/e/a/a/l;->a()Lcom/mopub/dg/e/a/a/l;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mopub/dg/e/a/a/l;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/mopub/dg/adapi/AdData;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mopub/dg/adapi/AdData;->getClickTrackUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mopub/dg/adapi/AdData;->getAdID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2}, Lcom/mopub/dg/e/a/a/l;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/mopub/dg/adapi/DGAdApi;->getInstance(Landroid/content/Context;)Lcom/mopub/dg/adapi/DGAdApi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mopub/dg/adapi/DGAdApi;->getStatusListener()Lcom/mopub/dg/adapi/ApiStatusListener;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/mopub/dg/adapi/DGAdApi;->getStatusListener()Lcom/mopub/dg/adapi/ApiStatusListener;

    move-result-object v1

    const-string v3, "Preload_Has_Refer"

    invoke-virtual {v1, v3, v2}, Lcom/mopub/dg/adapi/ApiStatusListener;->onStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "Preload_Has_Refer"

    invoke-static {v1}, Lcom/mopub/dg/d/n;->a(Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_1
    new-instance v1, Lcom/mopub/dg/e/a/a/i;

    invoke-direct {v1, p1, v3}, Lcom/mopub/dg/e/a/a/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v4, v1, Lcom/mopub/dg/e/a/a/i;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mopub/dg/adapi/AdData;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mopub/dg/e/a/a/i;->b:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/mopub/dg/e/a/a/i;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput-boolean v0, p0, Lcom/mopub/dg/e/a/a/l;->b:Z

    iget-object v2, p0, Lcom/mopub/dg/e/a/a/l;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/mopub/dg/d/b/b;->a(Landroid/content/Context;)Lcom/mopub/dg/d/b/b;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "Preload"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "NGPTrack"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iput-boolean v1, p0, Lcom/mopub/dg/e/a/a/l;->c:Z

    :cond_0
    const-string v4, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iput-boolean v1, p0, Lcom/mopub/dg/e/a/a/l;->d:Z

    :cond_1
    const-string v4, "MonitorAtInit"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "MonitorAtInit"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sput-boolean v0, Lcom/mopub/dg/e/a/a/d;->a:Z

    iget-object v4, p0, Lcom/mopub/dg/e/a/a/l;->h:Landroid/content/Context;

    invoke-static {v4}, Lcom/mopub/dg/e/a/a/a;->a(Landroid/content/Context;)V

    :cond_2
    const-string v4, "PreloadOffer"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "PreloadOffer"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    sput-boolean v0, Lcom/mopub/dg/e/a/a/d;->c:Z

    :goto_0
    const-string v4, "PreloadOfferNums"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/mopub/dg/e/a/a/d;->d:I

    :cond_3
    const-string v4, "MarketCacheTime"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "MarketCacheTime"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    sput-wide v4, Lcom/mopub/dg/e/a/a/d;->e:J

    :cond_4
    const-string v4, "TrackInstall"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "TrackInstall"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    :goto_1
    const-string v1, "TrackInstall"

    invoke-virtual {v2, v1, v0}, Lcom/mopub/dg/d/b/b;->a(Ljava/lang/String;Z)Z

    :cond_5
    sget-object v0, Lcom/mopub/dg/c/g;->o:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/mopub/dg/c/g;->o:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    sget-object v3, Lcom/mopub/dg/c/g;->o:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lcom/mopub/dg/d/b/b;->a(Ljava/lang/String;J)Z

    :cond_6
    return-void

    :cond_7
    sput-boolean v1, Lcom/mopub/dg/e/a/a/d;->c:Z

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_1
.end method

.method private f(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/mopub/dg/e/a/a/l;->j:Lcom/mopub/dg/d/b/b;

    const-string v2, ""

    invoke-virtual {v1, p1, v2}, Lcom/mopub/dg/d/b/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v1, "ts"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    sget-wide v6, Lcom/mopub/dg/e/a/a/d;->e:J

    cmp-long v1, v4, v6

    if-gtz v1, :cond_0

    const-string v1, "url"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ""

    if-eq v1, v2, :cond_0

    const-string v2, "InitName"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mopub/dg/e/a/a/l;->i:Lcom/mopub/dg/d/b/b;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/mopub/dg/d/b/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/mopub/dg/e/a/a/l;->h:Landroid/content/Context;

    invoke-static {p1}, Lcom/mopub/dg/d/b/b;->a(Landroid/content/Context;)Lcom/mopub/dg/d/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/dg/e/a/a/l;->k:Lcom/mopub/dg/d/b/b;

    const-string v0, "dgm_preferences"

    invoke-static {p1, v0}, Lcom/mopub/dg/d/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/mopub/dg/d/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/dg/e/a/a/l;->j:Lcom/mopub/dg/d/b/b;

    const-string v0, "dgt_preferences"

    invoke-static {p1, v0}, Lcom/mopub/dg/d/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/mopub/dg/d/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/dg/e/a/a/l;->i:Lcom/mopub/dg/d/b/b;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mopub/dg/e/a/a/l;->i:Lcom/mopub/dg/d/b/b;

    invoke-virtual {v0, p1, p2}, Lcom/mopub/dg/d/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "refer"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/mopub/dg/e/a/a/l;->j:Lcom/mopub/dg/d/b/b;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/mopub/dg/d/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final b()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/mopub/dg/e/a/a/l;->i:Lcom/mopub/dg/d/b/b;

    invoke-virtual {v0}, Lcom/mopub/dg/d/b/b;->a()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :cond_0
    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mopub/dg/e/a/a/l;->i:Lcom/mopub/dg/d/b/b;

    invoke-virtual {v0, p1}, Lcom/mopub/dg/d/b/b;->d(Ljava/lang/String;)Z

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/mopub/dg/e/a/a/l;->k:Lcom/mopub/dg/d/b/b;

    const-string v1, "configName"

    invoke-virtual {v0, v1, p1}, Lcom/mopub/dg/d/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
