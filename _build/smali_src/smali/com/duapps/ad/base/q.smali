.class public Lcom/duapps/ad/base/q;
.super Lcom/duapps/ad/entity/a/b;
.source "ToolboxOLManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/duapps/ad/entity/a/b",
        "<",
        "Lcom/duapps/ad/entity/a/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final o:Ljava/lang/String;


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

.field b:Landroid/content/BroadcastReceiver;

.field private p:I

.field private q:Ljava/lang/String;

.field private final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/entity/AdData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/duapps/ad/base/q;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duapps/ad/base/q;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJILjava/lang/String;)V
    .locals 7

    .prologue
    .line 41
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/duapps/ad/entity/a/b;-><init>(Landroid/content/Context;IJLjava/lang/String;)V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/base/q;->r:Ljava/util/List;

    .line 98
    new-instance v0, Lcom/duapps/ad/base/q$1;

    invoke-direct {v0, p0}, Lcom/duapps/ad/base/q$1;-><init>(Lcom/duapps/ad/base/q;)V

    iput-object v0, p0, Lcom/duapps/ad/base/q;->a:Lcom/duapps/ad/base/s;

    .line 195
    new-instance v0, Lcom/duapps/ad/base/q$2;

    invoke-direct {v0, p0}, Lcom/duapps/ad/base/q$2;-><init>(Lcom/duapps/ad/base/q;)V

    iput-object v0, p0, Lcom/duapps/ad/base/q;->b:Landroid/content/BroadcastReceiver;

    .line 42
    iput-object p6, p0, Lcom/duapps/ad/base/q;->q:Ljava/lang/String;

    .line 43
    iput p5, p0, Lcom/duapps/ad/base/q;->p:I

    .line 44
    invoke-direct {p0}, Lcom/duapps/ad/base/q;->f()V

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/duapps/ad/base/q;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/duapps/ad/base/q;->h:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/duapps/ad/base/q;Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/duapps/ad/base/q;->a(Ljava/util/List;)Ljava/util/List;

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
    .line 161
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 162
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

    .line 163
    iget-object v3, p0, Lcom/duapps/ad/base/q;->h:Landroid/content/Context;

    iget-object v4, v0, Lcom/duapps/ad/entity/AdData;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/duapps/ad/c/b/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 164
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 167
    :cond_1
    return-object v1
.end method

.method static synthetic b(Lcom/duapps/ad/base/q;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/duapps/ad/base/q;->h:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/duapps/ad/base/q;)I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/duapps/ad/base/q;->i:I

    return v0
.end method

.method static synthetic d(Lcom/duapps/ad/base/q;)Ljava/util/List;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/duapps/ad/base/q;->r:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/duapps/ad/base/q;)Lcom/duapps/ad/b;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/duapps/ad/base/q;->n:Lcom/duapps/ad/b;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/duapps/ad/base/q;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/duapps/ad/base/q;)Lcom/duapps/ad/b;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/duapps/ad/base/q;->n:Lcom/duapps/ad/b;

    return-object v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/base/q;->h:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/base/q;->b:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "action_notify_preparse_cache_result"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/duapps/ad/entity/c;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 138
    .line 139
    iget-object v3, p0, Lcom/duapps/ad/base/q;->r:Ljava/util/List;

    monitor-enter v3

    move-object v0, v1

    .line 140
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/duapps/ad/base/q;->r:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 141
    iget-object v0, p0, Lcom/duapps/ad/base/q;->r:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/AdData;

    .line 142
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/duapps/ad/entity/AdData;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    move-object v2, v0

    .line 147
    sget-object v4, Lcom/duapps/ad/base/q;->o:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OL poll title-> "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v2, :cond_3

    iget-object v0, v2, Lcom/duapps/ad/entity/AdData;->c:Ljava/lang/String;

    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    iget-object v3, p0, Lcom/duapps/ad/base/q;->h:Landroid/content/Context;

    if-nez v2, :cond_4

    const-string v0, "FAIL"

    :goto_1
    iget v4, p0, Lcom/duapps/ad/base/q;->i:I

    invoke-static {v3, v0, v4}, Lcom/duapps/ad/stats/c;->e(Landroid/content/Context;Ljava/lang/String;I)V

    .line 150
    if-eqz v2, :cond_5

    .line 151
    iget v0, v2, Lcom/duapps/ad/entity/AdData;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 152
    iget-object v0, p0, Lcom/duapps/ad/base/q;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/l;->a(Landroid/content/Context;)Lcom/duapps/ad/base/l;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/duapps/ad/base/l;->a(Lcom/duapps/ad/entity/AdData;)V

    .line 154
    :cond_2
    new-instance v0, Lcom/duapps/ad/entity/c;

    iget-object v1, p0, Lcom/duapps/ad/base/q;->h:Landroid/content/Context;

    iget-object v3, p0, Lcom/duapps/ad/base/q;->n:Lcom/duapps/ad/b;

    iget-object v4, p0, Lcom/duapps/ad/base/q;->q:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/duapps/ad/entity/c;-><init>(Landroid/content/Context;Lcom/duapps/ad/entity/AdData;Lcom/duapps/ad/b;Ljava/lang/String;)V

    .line 157
    :goto_2
    return-object v0

    .line 147
    :cond_3
    :try_start_1
    const-string v0, "null"

    goto :goto_0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 149
    :cond_4
    const-string v0, "OK"

    goto :goto_1

    :cond_5
    move-object v0, v1

    .line 157
    goto :goto_2
.end method

.method public a(Z)V
    .locals 6

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/duapps/ad/entity/a/b;->a(Z)V

    .line 49
    iget-object v0, p0, Lcom/duapps/ad/base/q;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/c/b/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-boolean v0, p0, Lcom/duapps/ad/base/q;->d:Z

    if-eqz v0, :cond_1

    .line 53
    sget-object v0, Lcom/duapps/ad/base/q;->o:Ljava/lang/String;

    const-string v1, "isRefreshing ..."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/duapps/ad/base/q;->c()I

    move-result v0

    .line 57
    iget v1, p0, Lcom/duapps/ad/base/q;->p:I

    sub-int/2addr v1, v0

    if-gtz v1, :cond_2

    .line 58
    sget-object v0, Lcom/duapps/ad/base/q;->o:Ljava/lang/String;

    const-string v1, "no need refresh"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_2
    iget-object v1, p0, Lcom/duapps/ad/base/q;->h:Landroid/content/Context;

    invoke-static {v1}, Lcom/duapps/ad/base/n;->a(Landroid/content/Context;)Lcom/duapps/ad/base/n;

    move-result-object v1

    .line 62
    iget v2, p0, Lcom/duapps/ad/base/q;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/duapps/ad/base/q;->a:Lcom/duapps/ad/base/s;

    iget v5, p0, Lcom/duapps/ad/base/q;->p:I

    sub-int v0, v5, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/duapps/ad/base/n;->a(IILcom/duapps/ad/base/s;I)V

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/duapps/ad/base/q;->p:I

    return v0
.end method

.method public c()I
    .locals 6

    .prologue
    .line 72
    const/4 v1, 0x0

    .line 73
    iget-object v2, p0, Lcom/duapps/ad/base/q;->r:Ljava/util/List;

    monitor-enter v2

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/base/q;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 75
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/AdData;

    .line 77
    if-nez v0, :cond_0

    .line 78
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 81
    :cond_0
    :try_start_1
    iget-object v4, v0, Lcom/duapps/ad/entity/AdData;->d:Ljava/lang/String;

    .line 82
    iget-object v5, p0, Lcom/duapps/ad/base/q;->h:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/duapps/ad/c/b/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lcom/duapps/ad/entity/AdData;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 83
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    move v0, v1

    :goto_1
    move v1, v0

    .line 87
    goto :goto_0

    .line 85
    :cond_2
    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    .line 88
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    return v1
.end method

.method public synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/duapps/ad/base/q;->a()Lcom/duapps/ad/entity/c;

    move-result-object v0

    return-object v0
.end method
