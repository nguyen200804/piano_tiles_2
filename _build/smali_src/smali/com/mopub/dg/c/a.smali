.class public final Lcom/mopub/dg/c/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/HashMap;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/mopub/dg/a/a;

.field private d:Lcom/mopub/dg/b/c;

.field private e:Lcom/mopub/dg/b/b;

.field private f:J

.field private g:J

.field private h:Z

.field private i:Ljava/util/List;

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mopub/dg/c/a;->a:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/mopub/dg/c/a;->f:J

    iput-wide v0, p0, Lcom/mopub/dg/c/a;->g:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/dg/c/a;->h:Z

    iput-object p1, p0, Lcom/mopub/dg/c/a;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/mopub/dg/c/a;->j:Ljava/lang/String;

    new-instance v0, Lcom/mopub/dg/a/a;

    invoke-direct {v0, p1, p2, p3}, Lcom/mopub/dg/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mopub/dg/c/a;->c:Lcom/mopub/dg/a/a;

    new-instance v0, Lcom/mopub/dg/b/c;

    invoke-direct {v0}, Lcom/mopub/dg/b/c;-><init>()V

    iput-object v0, p0, Lcom/mopub/dg/c/a;->d:Lcom/mopub/dg/b/c;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/mopub/dg/c/a;->f:J

    iput-wide v0, p0, Lcom/mopub/dg/c/a;->g:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/dg/c/a;->h:Z

    iput-object p1, p0, Lcom/mopub/dg/c/a;->b:Landroid/content/Context;

    new-instance v0, Lcom/mopub/dg/a/a;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/mopub/dg/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mopub/dg/c/a;->c:Lcom/mopub/dg/a/a;

    new-instance v0, Lcom/mopub/dg/b/c;

    invoke-direct {v0}, Lcom/mopub/dg/b/c;-><init>()V

    iput-object v0, p0, Lcom/mopub/dg/c/a;->d:Lcom/mopub/dg/b/c;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/mopub/dg/b/d;Ljava/lang/String;Ljava/lang/String;)Lcom/mopub/dg/c/a;
    .locals 3

    const-class v1, Lcom/mopub/dg/c/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mopub/dg/c/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/dg/c/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mopub/dg/c/a;

    invoke-direct {v0, p0, p2, p3}, Lcom/mopub/dg/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/mopub/dg/c/a;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v2, v0, Lcom/mopub/dg/c/a;->d:Lcom/mopub/dg/b/c;

    invoke-static {p0, p1}, Lcom/mopub/dg/b/c;->a(Landroid/content/Context;Lcom/mopub/dg/b/d;)Lcom/mopub/dg/b/b;

    move-result-object v2

    iput-object v2, v0, Lcom/mopub/dg/c/a;->e:Lcom/mopub/dg/b/b;

    iget-object v2, v0, Lcom/mopub/dg/c/a;->e:Lcom/mopub/dg/b/b;

    iput-object p2, v2, Lcom/mopub/dg/b/b;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/mopub/dg/c/a;->e:Lcom/mopub/dg/b/b;

    iput-object p3, v2, Lcom/mopub/dg/b/b;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/mopub/dg/b/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mopub/dg/c/a;
    .locals 4

    const-class v1, Lcom/mopub/dg/c/a;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/mopub/dg/c/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/dg/c/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mopub/dg/c/a;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/mopub/dg/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/mopub/dg/c/a;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v2, v0, Lcom/mopub/dg/c/a;->d:Lcom/mopub/dg/b/c;

    invoke-static {p0, p1}, Lcom/mopub/dg/b/c;->a(Landroid/content/Context;Lcom/mopub/dg/b/d;)Lcom/mopub/dg/b/b;

    move-result-object v2

    iput-object v2, v0, Lcom/mopub/dg/c/a;->e:Lcom/mopub/dg/b/b;

    iget-object v2, v0, Lcom/mopub/dg/c/a;->e:Lcom/mopub/dg/b/b;

    iput-object p2, v2, Lcom/mopub/dg/b/b;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/mopub/dg/c/a;->e:Lcom/mopub/dg/b/b;

    iput-object p3, v2, Lcom/mopub/dg/b/b;->b:Ljava/lang/String;

    iget-object v2, v0, Lcom/mopub/dg/c/a;->e:Lcom/mopub/dg/b/b;

    iput-object p4, v2, Lcom/mopub/dg/b/b;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/mopub/dg/c/a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/mopub/dg/c/a;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/mopub/dg/c/a;Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 4

    iget-object v0, p0, Lcom/mopub/dg/c/a;->e:Lcom/mopub/dg/b/b;

    invoke-virtual {v0, p1}, Lcom/mopub/dg/b/b;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/mopub/dg/c/a;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/mopub/dg/e/a/a/l;->b(Ljava/util/ArrayList;Landroid/content/Context;)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/mopub/dg/c/a;->c:Lcom/mopub/dg/a/a;

    invoke-virtual {v0}, Lcom/mopub/dg/a/a;->b()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/dg/adapi/AdData;

    iget-object v3, p0, Lcom/mopub/dg/c/a;->c:Lcom/mopub/dg/a/a;

    invoke-virtual {v3, v0}, Lcom/mopub/dg/a/a;->a(Lcom/mopub/dg/adapi/AdData;)V

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method static synthetic a(Lcom/mopub/dg/c/a;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/mopub/dg/c/a;->i:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/mopub/dg/c/a;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/dg/c/a;->h:Z

    return v0
.end method

.method static synthetic c(Lcom/mopub/dg/c/a;)Lcom/mopub/dg/b/b;
    .locals 1

    iget-object v0, p0, Lcom/mopub/dg/c/a;->e:Lcom/mopub/dg/b/b;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/mopub/dg/adapi/AdData;)V
    .locals 4

    :try_start_0
    const-string v1, ""

    const-string v0, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mopub/dg/adapi/AdData;->getClickTrackUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mopub/dg/d/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/mopub/dg/adapi/AdData;->getAdID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mopub/dg/adapi/AdData;->getClickRecordUrl()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v2, p0, Lcom/mopub/dg/c/a;->b:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/mopub/dg/e/a/a/l;->c(Lcom/mopub/dg/adapi/AdData;Landroid/content/Context;)V

    sget-boolean v2, Lcom/mopub/dg/c/g;->c:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mopub/dg/c/a;->c:Lcom/mopub/dg/a/a;

    invoke-virtual {v2, v1}, Lcom/mopub/dg/a/a;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v0, :cond_1

    :try_start_1
    const-string v1, ""

    if-eq v0, v1, :cond_1

    new-instance v1, Lcom/mopub/dg/c/b;

    invoke-direct {v1, p0}, Lcom/mopub/dg/c/b;-><init>(Lcom/mopub/dg/c/a;)V

    invoke-static {v0, v1}, Lcom/mopub/dg/d/k;->a(Ljava/lang/String;Lcom/mopub/dg/d/m;)V

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "http://adbsc.krmobi.com/dzzb"

    const-string v2, "type"

    const-string v3, "31"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "useApk"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "pkg"

    invoke-virtual {p1}, Lcom/mopub/dg/adapi/AdData;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/mopub/dg/c/a;->b:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v1, v3, v0}, Lcom/mopub/dg/e/a/b/c;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/mopub/dg/c/a;->c:Lcom/mopub/dg/a/a;

    invoke-virtual {v2, v1}, Lcom/mopub/dg/a/a;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/mopub/dg/d/n;->a(Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/mopub/dg/d/n;->a(Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method public final declared-synchronized a(Lcom/mopub/dg/c/k;)V
    .locals 12

    const/4 v0, 0x0

    const-wide/16 v10, -0x1

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/mopub/dg/c/a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/mopub/dg/d/a;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/mopub/dg/c/k;->a(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/mopub/dg/c/a;->c:Lcom/mopub/dg/a/a;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/mopub/dg/c/a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/mopub/dg/d/b/b;->a(Landroid/content/Context;)Lcom/mopub/dg/d/b/b;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mopub/dg/c/a;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mopub/dg/c/g;->m:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/mopub/dg/d/b/b;->b(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mopub/dg/c/a;->f:J

    sget-object v4, Lcom/mopub/dg/c/g;->o:Ljava/lang/String;

    sget v5, Lcom/mopub/dg/c/g;->n:I

    int-to-long v6, v5

    invoke-virtual {v2, v4, v6, v7}, Lcom/mopub/dg/d/b/b;->b(Ljava/lang/String;J)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/mopub/dg/c/a;->f:J

    cmp-long v6, v6, v10

    if-eqz v6, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/mopub/dg/c/a;->f:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-lez v4, :cond_3

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mopub/dg/c/a;->f:J

    iget-wide v4, p0, Lcom/mopub/dg/c/a;->f:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/mopub/dg/d/b/b;->a(Ljava/lang/String;J)Z

    move v2, v1

    :goto_1
    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/mopub/dg/c/a;->c:Lcom/mopub/dg/a/a;

    invoke-virtual {v2}, Lcom/mopub/dg/a/a;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    invoke-interface {p1, v2}, Lcom/mopub/dg/c/k;->a(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move v2, v0

    goto :goto_1

    :cond_4
    :try_start_2
    iget-object v2, p0, Lcom/mopub/dg/c/a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/mopub/dg/d/b/b;->a(Landroid/content/Context;)Lcom/mopub/dg/d/b/b;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mopub/dg/c/a;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mopub/dg/c/g;->p:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/mopub/dg/d/b/b;->b(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mopub/dg/c/a;->g:J

    sget-object v4, Lcom/mopub/dg/c/g;->r:Ljava/lang/String;

    sget v5, Lcom/mopub/dg/c/g;->q:I

    int-to-long v6, v5

    invoke-virtual {v2, v4, v6, v7}, Lcom/mopub/dg/d/b/b;->b(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/mopub/dg/c/a;->g:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_5

    iget-wide v8, p0, Lcom/mopub/dg/c/a;->g:J

    sub-long v8, v6, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    cmp-long v4, v8, v4

    if-lez v4, :cond_6

    :cond_5
    iput-wide v6, p0, Lcom/mopub/dg/c/a;->g:J

    iget-wide v4, p0, Lcom/mopub/dg/c/a;->g:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/mopub/dg/d/b/b;->a(Ljava/lang/String;J)Z

    move v0, v1

    :cond_6
    if-nez v0, :cond_7

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/mopub/dg/c/k;->a(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/mopub/dg/c/a;->a(Lcom/mopub/dg/c/k;ZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public final declared-synchronized a(Lcom/mopub/dg/c/k;ZZ)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "Request ads..."

    invoke-static {v0}, Lcom/mopub/dg/d/n;->a(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mopub/dg/c/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/dg/d/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/mopub/dg/c/k;->a(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/mopub/dg/c/a;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/dg/c/a;->h:Z

    new-instance v0, Lcom/mopub/dg/c/c;

    iget-object v1, p0, Lcom/mopub/dg/c/a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/mopub/dg/c/c;-><init>(Lcom/mopub/dg/c/a;Landroid/os/Looper;Lcom/mopub/dg/c/k;)V

    iget-object v1, p0, Lcom/mopub/dg/c/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/mopub/dg/d/h;->a(Landroid/content/Context;)Lcom/mopub/dg/d/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/dg/d/h;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mopub/dg/c/a;->e:Lcom/mopub/dg/b/b;

    invoke-virtual {v1}, Lcom/mopub/dg/b/b;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mopub/dg/c/d;

    invoke-direct {v2, p0, p2, p3, v0}, Lcom/mopub/dg/c/d;-><init>(Lcom/mopub/dg/c/a;ZZLandroid/os/Handler;)V

    invoke-static {v1, v2}, Lcom/mopub/dg/d/k;->a(Ljava/lang/String;Lcom/mopub/dg/d/m;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/mopub/dg/c/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/mopub/dg/d/h;->a(Landroid/content/Context;)Lcom/mopub/dg/d/h;

    move-result-object v1

    new-instance v2, Lcom/mopub/dg/c/e;

    invoke-direct {v2, p0, p2, p3, v0}, Lcom/mopub/dg/c/e;-><init>(Lcom/mopub/dg/c/a;ZZLandroid/os/Handler;)V

    invoke-virtual {v1, v2}, Lcom/mopub/dg/d/h;->a(Lcom/mopub/dg/d/j;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
