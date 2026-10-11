.class public Lcom/mopub/dg/adapi/DGAdApi;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/HashMap;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/mopub/dg/c/h;

.field private d:Lcom/mopub/dg/adapi/ApiAdsListener;

.field private e:Lcom/mopub/dg/adapi/ApiStatusListener;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/mopub/dg/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mopub/dg/adapi/DGAdApi;->a:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mopub/dg/c/h;

    invoke-direct {v0}, Lcom/mopub/dg/c/h;-><init>()V

    iput-object v0, p0, Lcom/mopub/dg/adapi/DGAdApi;->c:Lcom/mopub/dg/c/h;

    iput-object p1, p0, Lcom/mopub/dg/adapi/DGAdApi;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/mopub/dg/adapi/DGAdApi;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/mopub/dg/adapi/DGAdApi;->g:Ljava/lang/String;

    sget-object v0, Lcom/mopub/dg/b/d;->a:Lcom/mopub/dg/b/d;

    iput-object v0, p0, Lcom/mopub/dg/adapi/DGAdApi;->h:Lcom/mopub/dg/b/d;

    iget-object v0, p0, Lcom/mopub/dg/adapi/DGAdApi;->c:Lcom/mopub/dg/c/h;

    sget-object v1, Lcom/mopub/dg/b/d;->a:Lcom/mopub/dg/b/d;

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/mopub/dg/c/h;->a(Landroid/content/Context;Lcom/mopub/dg/b/d;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mopub/dg/b/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mopub/dg/c/h;

    invoke-direct {v0}, Lcom/mopub/dg/c/h;-><init>()V

    iput-object v0, p0, Lcom/mopub/dg/adapi/DGAdApi;->c:Lcom/mopub/dg/c/h;

    iput-object p1, p0, Lcom/mopub/dg/adapi/DGAdApi;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/mopub/dg/adapi/DGAdApi;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/mopub/dg/adapi/DGAdApi;->g:Ljava/lang/String;

    sget-object v0, Lcom/mopub/dg/b/d;->a:Lcom/mopub/dg/b/d;

    iput-object v0, p0, Lcom/mopub/dg/adapi/DGAdApi;->h:Lcom/mopub/dg/b/d;

    iget-object v0, p0, Lcom/mopub/dg/adapi/DGAdApi;->c:Lcom/mopub/dg/c/h;

    invoke-virtual {v0, p1, p4, p2, p3}, Lcom/mopub/dg/c/h;->a(Landroid/content/Context;Lcom/mopub/dg/b/d;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/mopub/dg/adapi/DGAdApi;)Lcom/mopub/dg/adapi/ApiAdsListener;
    .locals 1

    iget-object v0, p0, Lcom/mopub/dg/adapi/DGAdApi;->d:Lcom/mopub/dg/adapi/ApiAdsListener;

    return-object v0
.end method

.method static synthetic b(Lcom/mopub/dg/adapi/DGAdApi;)Lcom/mopub/dg/adapi/ApiStatusListener;
    .locals 1

    iget-object v0, p0, Lcom/mopub/dg/adapi/DGAdApi;->e:Lcom/mopub/dg/adapi/ApiStatusListener;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/mopub/dg/adapi/DGAdApi;
    .locals 4

    const-class v1, Lcom/mopub/dg/adapi/DGAdApi;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/mopub/dg/d/b/b;->a(Landroid/content/Context;)Lcom/mopub/dg/d/b/b;

    move-result-object v0

    sget-object v2, Lcom/mopub/dg/c/g;->x:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mopub/dg/d/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/mopub/dg/c/g;->y:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/mopub/dg/d/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "Please Init SDK"

    invoke-static {v0}, Lcom/mopub/dg/d/n;->b(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    invoke-static {p0, v2, v0}, Lcom/mopub/dg/adapi/DGAdApi;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/mopub/dg/adapi/DGAdApi;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/mopub/dg/adapi/DGAdApi;
    .locals 3

    sget-object v0, Lcom/mopub/dg/adapi/DGAdApi;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/dg/adapi/DGAdApi;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mopub/dg/adapi/DGAdApi;

    invoke-direct {v0, p0, p1, p2}, Lcom/mopub/dg/adapi/DGAdApi;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/mopub/dg/adapi/DGAdApi;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "App Info:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/mopub/dg/adapi/DGAdApi;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/mopub/dg/adapi/DGAdApi;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/dg/d/n;->a(Ljava/lang/String;)I

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mopub/dg/adapi/DGAdApi;
    .locals 3

    sget-object v1, Lcom/mopub/dg/b/d;->a:Lcom/mopub/dg/b/d;

    sget-object v0, Lcom/mopub/dg/adapi/DGAdApi;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/dg/adapi/DGAdApi;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mopub/dg/adapi/DGAdApi;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/mopub/dg/adapi/DGAdApi;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mopub/dg/b/d;)V

    sget-object v1, Lcom/mopub/dg/adapi/DGAdApi;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "App Info:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/mopub/dg/adapi/DGAdApi;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/mopub/dg/adapi/DGAdApi;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/dg/d/n;->a(Ljava/lang/String;)I

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/mopub/dg/d/b/b;->a(Landroid/content/Context;)Lcom/mopub/dg/d/b/b;

    move-result-object v0

    sget-object v1, Lcom/mopub/dg/c/g;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/mopub/dg/d/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v1, Lcom/mopub/dg/c/g;->y:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/mopub/dg/d/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {p0, p1, p2}, Lcom/mopub/dg/adapi/DGAdApi;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/mopub/dg/adapi/DGAdApi;

    invoke-static {p0}, Lcom/mopub/dg/d/h;->a(Landroid/content/Context;)Lcom/mopub/dg/d/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mopub/dg/d/h;->a(Lcom/mopub/dg/d/j;)V

    return-void
.end method

.method public static setLoggable(Z)V
    .locals 0

    sput-boolean p0, Lcom/mopub/dg/c/g;->a:Z

    return-void
.end method

.method public static setTrackable(Z)V
    .locals 0

    sput-boolean p0, Lcom/mopub/dg/c/g;->A:Z

    return-void
.end method

.method public static setUseDatabase(Z)V
    .locals 0

    sput-boolean p0, Lcom/mopub/dg/c/g;->B:Z

    return-void
.end method


# virtual methods
.method public cacheAd()V
    .locals 0

    nop

    nop

    nop

    return-void
.end method

.method public clickAd(Lcom/mopub/dg/adapi/AdData;)V
    .locals 2

    instance-of v0, p1, Lcom/mopub/dg/adapi/AdData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/dg/adapi/DGAdApi;->c:Lcom/mopub/dg/c/h;

    iget-object v1, p0, Lcom/mopub/dg/adapi/DGAdApi;->b:Landroid/content/Context;

    iget-object v1, v0, Lcom/mopub/dg/c/h;->a:Lcom/mopub/dg/c/a;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/mopub/dg/c/h;->a:Lcom/mopub/dg/c/a;

    invoke-virtual {v0, p1}, Lcom/mopub/dg/c/a;->a(Lcom/mopub/dg/adapi/AdData;)V

    :cond_0
    return-void
.end method

.method public getStatusListener()Lcom/mopub/dg/adapi/ApiStatusListener;
    .locals 1

    iget-object v0, p0, Lcom/mopub/dg/adapi/DGAdApi;->e:Lcom/mopub/dg/adapi/ApiStatusListener;

    return-object v0
.end method

.method public loadAd()V
    .locals 6

    iget-object v0, p0, Lcom/mopub/dg/adapi/DGAdApi;->e:Lcom/mopub/dg/adapi/ApiStatusListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/dg/adapi/DGAdApi;->e:Lcom/mopub/dg/adapi/ApiStatusListener;

    const-string v1, "Cache_Ad_Start"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/mopub/dg/adapi/ApiStatusListener;->onStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "Cache_Ad_Start"

    invoke-static {v0}, Lcom/mopub/dg/d/n;->a(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/mopub/dg/adapi/DGAdApi;->c:Lcom/mopub/dg/c/h;

    new-instance v0, Lcom/mopub/dg/adapi/a;

    invoke-direct {v0, p0}, Lcom/mopub/dg/adapi/a;-><init>(Lcom/mopub/dg/adapi/DGAdApi;)V

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, v1, Lcom/mopub/dg/c/h;->c:Z

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/mopub/dg/c/h;->d:Z

    iget-object v2, v1, Lcom/mopub/dg/c/h;->b:Ljava/util/Timer;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/mopub/dg/c/h;->b:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    :cond_1
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, v1, Lcom/mopub/dg/c/h;->b:Ljava/util/Timer;

    iget-object v2, v1, Lcom/mopub/dg/c/h;->b:Ljava/util/Timer;

    new-instance v3, Lcom/mopub/dg/c/i;

    invoke-direct {v3, v1, v0}, Lcom/mopub/dg/c/i;-><init>(Lcom/mopub/dg/c/h;Lcom/mopub/dg/c/l;)V

    sget v4, Lcom/mopub/dg/c/g;->u:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    iget-object v2, v1, Lcom/mopub/dg/c/h;->a:Lcom/mopub/dg/c/a;

    if-eqz v2, :cond_2

    new-instance v2, Lcom/mopub/dg/c/j;

    invoke-direct {v2, v1, v0}, Lcom/mopub/dg/c/j;-><init>(Lcom/mopub/dg/c/h;Lcom/mopub/dg/c/l;)V

    iget-object v0, v1, Lcom/mopub/dg/c/h;->a:Lcom/mopub/dg/c/a;

    invoke-virtual {v0, v2}, Lcom/mopub/dg/c/a;->a(Lcom/mopub/dg/c/k;)V

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onReceiver(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    new-instance v0, Lcom/mopub/dg/adsdk/DGReceiver;

    invoke-direct {v0}, Lcom/mopub/dg/adsdk/DGReceiver;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/mopub/dg/adsdk/DGReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public openAd(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mopub/dg/adapi/DGAdApi;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/mopub/dg/e/a/a/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public setListener(Lcom/mopub/dg/adapi/ApiAdsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/dg/adapi/DGAdApi;->d:Lcom/mopub/dg/adapi/ApiAdsListener;

    return-void
.end method

.method public setStatusListener(Lcom/mopub/dg/adapi/ApiStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/dg/adapi/DGAdApi;->e:Lcom/mopub/dg/adapi/ApiStatusListener;

    return-void
.end method

.method public trackAd(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/mopub/dg/adapi/DGAdApi;->e:Lcom/mopub/dg/adapi/ApiStatusListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/dg/adapi/DGAdApi;->e:Lcom/mopub/dg/adapi/ApiStatusListener;

    const-string v1, "Track_Start"

    invoke-virtual {v0, v1, p1}, Lcom/mopub/dg/adapi/ApiStatusListener;->onStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Track_Start"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/dg/d/n;->a(Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/mopub/dg/adapi/DGAdApi;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/dg/c/m;->a(Landroid/content/Context;)Lcom/mopub/dg/c/m;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/dg/adapi/DGAdApi;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/mopub/dg/adapi/DGAdApi;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/mopub/dg/adapi/DGAdApi;->h:Lcom/mopub/dg/b/d;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/mopub/dg/c/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mopub/dg/b/d;)V

    return-void
.end method
