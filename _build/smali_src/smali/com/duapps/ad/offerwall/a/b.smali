.class public Lcom/duapps/ad/offerwall/a/b;
.super Ljava/lang/Object;
.source "DownloadAdsManager2.java"


# instance fields
.field a:Lcom/duapps/ad/base/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/duapps/ad/base/s",
            "<",
            "Lcom/duapps/ad/entity/AdModel;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Landroid/content/Context;

.field private d:Lcom/duapps/ad/offerwall/a/a;

.field private e:Z

.field private f:Z

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/entity/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/os/Handler;

.field private i:Lcom/duapps/ad/entity/AdModel;

.field private j:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/duapps/ad/offerwall/a/a;)V
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0x14

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/duapps/ad/offerwall/a/b;-><init>(ILandroid/content/Context;Lcom/duapps/ad/offerwall/a/a;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Lcom/duapps/ad/offerwall/a/a;I)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/offerwall/a/b;->g:Ljava/util/List;

    .line 64
    new-instance v0, Lcom/duapps/ad/offerwall/a/b$1;

    invoke-direct {v0, p0}, Lcom/duapps/ad/offerwall/a/b$1;-><init>(Lcom/duapps/ad/offerwall/a/b;)V

    iput-object v0, p0, Lcom/duapps/ad/offerwall/a/b;->a:Lcom/duapps/ad/base/s;

    .line 221
    new-instance v0, Lcom/duapps/ad/offerwall/a/b$2;

    invoke-direct {v0, p0}, Lcom/duapps/ad/offerwall/a/b$2;-><init>(Lcom/duapps/ad/offerwall/a/b;)V

    iput-object v0, p0, Lcom/duapps/ad/offerwall/a/b;->j:Landroid/content/BroadcastReceiver;

    .line 48
    iput p1, p0, Lcom/duapps/ad/offerwall/a/b;->b:I

    .line 49
    iput-object p2, p0, Lcom/duapps/ad/offerwall/a/b;->c:Landroid/content/Context;

    .line 50
    iput-object p3, p0, Lcom/duapps/ad/offerwall/a/b;->d:Lcom/duapps/ad/offerwall/a/a;

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/duapps/ad/offerwall/a/b;->h:Landroid/os/Handler;

    .line 52
    invoke-direct {p0}, Lcom/duapps/ad/offerwall/a/b;->f()V

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/duapps/ad/offerwall/a/b;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/b;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/duapps/ad/offerwall/a/b;Lcom/duapps/ad/entity/AdModel;)Lcom/duapps/ad/entity/AdModel;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/duapps/ad/offerwall/a/b;->i:Lcom/duapps/ad/entity/AdModel;

    return-object p1
.end method

.method static synthetic a(Lcom/duapps/ad/offerwall/a/b;Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/duapps/ad/offerwall/a/b;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/entity/AdData;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/entity/AdData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 132
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/AdData;

    .line 133
    iget-object v3, p0, Lcom/duapps/ad/offerwall/a/b;->c:Landroid/content/Context;

    iget-object v4, v0, Lcom/duapps/ad/entity/AdData;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/duapps/ad/c/b/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 134
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    :cond_1
    return-object v1
.end method

.method static synthetic a(Lcom/duapps/ad/offerwall/a/b;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/duapps/ad/offerwall/a/b;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/duapps/ad/offerwall/a/b;)Ljava/util/List;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/b;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/duapps/ad/offerwall/a/b;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/duapps/ad/offerwall/a/b;->f:Z

    return p1
.end method

.method static synthetic c(Lcom/duapps/ad/offerwall/a/b;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/duapps/ad/offerwall/a/b;->b:I

    return v0
.end method

.method static synthetic d(Lcom/duapps/ad/offerwall/a/b;)Lcom/duapps/ad/offerwall/a/a;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/b;->d:Lcom/duapps/ad/offerwall/a/a;

    return-object v0
.end method

.method static synthetic e(Lcom/duapps/ad/offerwall/a/b;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/b;->h:Landroid/os/Handler;

    return-object v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/b;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/offerwall/a/b;->j:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "action_notify_preparse_cache_result"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/b;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/offerwall/a/b;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 5

    .prologue
    .line 141
    const/4 v0, 0x0

    .line 142
    iget-object v2, p0, Lcom/duapps/ad/offerwall/a/b;->g:Ljava/util/List;

    monitor-enter v2

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/duapps/ad/offerwall/a/b;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/a/a;

    .line 144
    check-cast v0, Lcom/duapps/ad/entity/c;

    invoke-virtual {v0}, Lcom/duapps/ad/entity/c;->a()Lcom/duapps/ad/entity/AdData;

    move-result-object v0

    iget-object v0, v0, Lcom/duapps/ad/entity/AdData;->d:Ljava/lang/String;

    .line 145
    iget-object v4, p0, Lcom/duapps/ad/offerwall/a/b;->c:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/duapps/ad/c/b/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 149
    goto :goto_0

    .line 150
    :cond_1
    monitor-exit v2

    .line 151
    return v1

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(I)V
    .locals 4

    .prologue
    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duapps/ad/offerwall/a/b;->f:Z

    .line 58
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 59
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/b;->c:Landroid/content/Context;

    .line 60
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 59
    invoke-static {v0}, Lcom/duapps/ad/base/n;->a(Landroid/content/Context;)Lcom/duapps/ad/base/n;

    move-result-object v0

    .line 61
    iget v1, p0, Lcom/duapps/ad/offerwall/a/b;->b:I

    iget-object v2, p0, Lcom/duapps/ad/offerwall/a/b;->a:Lcom/duapps/ad/base/s;

    const/16 v3, 0x14

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/duapps/ad/base/n;->b(IILcom/duapps/ad/base/s;I)V

    .line 62
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/duapps/ad/offerwall/a/b;->e:Z

    return v0
.end method

.method public c()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/entity/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 168
    iget-object v3, p0, Lcom/duapps/ad/offerwall/a/b;->g:Ljava/util/List;

    monitor-enter v3

    .line 171
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 172
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 174
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/a/a;

    .line 176
    invoke-interface {v0}, Lcom/duapps/ad/entity/a/a;->m()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duapps/ad/entity/AdData;

    .line 177
    if-eqz v1, :cond_1

    iget v6, v1, Lcom/duapps/ad/entity/AdData;->a:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 178
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_1
    if-eqz v1, :cond_0

    .line 181
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 185
    :cond_2
    :try_start_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 186
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/b;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/l;->a(Landroid/content/Context;)Lcom/duapps/ad/base/l;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/duapps/ad/base/l;->a(Ljava/util/List;)V

    .line 188
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    return-object v2
.end method

.method public d()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 193
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/b;->i:Lcom/duapps/ad/entity/AdModel;

    if-nez v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v1

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/b;->i:Lcom/duapps/ad/entity/AdModel;

    iget v0, v0, Lcom/duapps/ad/entity/AdModel;->g:I

    if-gtz v0, :cond_2

    move v0, v1

    .line 197
    :goto_1
    iget-object v2, p0, Lcom/duapps/ad/offerwall/a/b;->i:Lcom/duapps/ad/entity/AdModel;

    iget v2, v2, Lcom/duapps/ad/entity/AdModel;->f:I

    if-nez v2, :cond_3

    move v2, v1

    .line 198
    :goto_2
    div-int v3, v0, v2

    .line 199
    rem-int/2addr v0, v2

    if-nez v0, :cond_4

    move v0, v3

    .line 201
    :goto_3
    iget-object v2, p0, Lcom/duapps/ad/offerwall/a/b;->i:Lcom/duapps/ad/entity/AdModel;

    iget v2, v2, Lcom/duapps/ad/entity/AdModel;->e:I

    add-int/lit8 v2, v2, 0x1

    if-le v2, v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/b;->i:Lcom/duapps/ad/entity/AdModel;

    iget v0, v0, Lcom/duapps/ad/entity/AdModel;->g:I

    goto :goto_1

    .line 197
    :cond_3
    iget-object v2, p0, Lcom/duapps/ad/offerwall/a/b;->i:Lcom/duapps/ad/entity/AdModel;

    iget v2, v2, Lcom/duapps/ad/entity/AdModel;->f:I

    goto :goto_2

    .line 199
    :cond_4
    add-int/lit8 v0, v3, 0x1

    goto :goto_3
.end method

.method public e()V
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duapps/ad/offerwall/a/b;->d:Lcom/duapps/ad/offerwall/a/a;

    .line 249
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 250
    invoke-direct {p0}, Lcom/duapps/ad/offerwall/a/b;->g()V

    .line 251
    return-void
.end method
