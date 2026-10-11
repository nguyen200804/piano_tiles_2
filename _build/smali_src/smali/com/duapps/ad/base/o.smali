.class public Lcom/duapps/ad/base/o;
.super Lcom/duapps/ad/entity/a/b;
.source "ToolboxDLManager.java"


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

.field private final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/entity/AdData;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/duapps/ad/base/o;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duapps/ad/base/o;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJLjava/lang/String;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct/range {p0 .. p5}, Lcom/duapps/ad/entity/a/b;-><init>(Landroid/content/Context;IJLjava/lang/String;)V

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/base/o;->p:Ljava/util/List;

    .line 124
    new-instance v0, Lcom/duapps/ad/base/o$1;

    invoke-direct {v0, p0}, Lcom/duapps/ad/base/o$1;-><init>(Lcom/duapps/ad/base/o;)V

    iput-object v0, p0, Lcom/duapps/ad/base/o;->a:Lcom/duapps/ad/base/s;

    .line 206
    new-instance v0, Lcom/duapps/ad/base/o$2;

    invoke-direct {v0, p0}, Lcom/duapps/ad/base/o$2;-><init>(Lcom/duapps/ad/base/o;)V

    iput-object v0, p0, Lcom/duapps/ad/base/o;->b:Landroid/content/BroadcastReceiver;

    .line 38
    iput-object p5, p0, Lcom/duapps/ad/base/o;->q:Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Lcom/duapps/ad/base/o;->f()V

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/duapps/ad/base/o;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/duapps/ad/base/o;->h:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/duapps/ad/base/o;Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/duapps/ad/base/o;->a(Ljava/util/List;)Ljava/util/List;

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
    .line 173
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 174
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

    .line 175
    iget-object v3, p0, Lcom/duapps/ad/base/o;->h:Landroid/content/Context;

    iget-object v4, v0, Lcom/duapps/ad/entity/AdData;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/duapps/ad/c/b/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 176
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 179
    :cond_1
    return-object v1
.end method

.method static synthetic b(Lcom/duapps/ad/base/o;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/duapps/ad/base/o;->h:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/duapps/ad/base/o;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/duapps/ad/base/o;->h:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/duapps/ad/base/o;)I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/duapps/ad/base/o;->i:I

    return v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/duapps/ad/base/o;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/duapps/ad/base/o;)Ljava/util/List;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/duapps/ad/base/o;->p:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/duapps/ad/base/o;)Lcom/duapps/ad/b;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/duapps/ad/base/o;->n:Lcom/duapps/ad/b;

    return-object v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/base/o;->h:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/base/o;->b:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "action_notify_preparse_cache_result"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic g(Lcom/duapps/ad/base/o;)Lcom/duapps/ad/b;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/duapps/ad/base/o;->n:Lcom/duapps/ad/b;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/duapps/ad/entity/c;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 43
    .line 44
    iget-object v3, p0, Lcom/duapps/ad/base/o;->p:Ljava/util/List;

    monitor-enter v3

    move-object v0, v1

    .line 45
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/duapps/ad/base/o;->p:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 46
    iget-object v0, p0, Lcom/duapps/ad/base/o;->p:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/AdData;

    .line 47
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/duapps/ad/entity/AdData;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    move-object v2, v0

    .line 52
    sget-object v4, Lcom/duapps/ad/base/o;->o:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DL poll title-> "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v2, :cond_3

    iget-object v0, v2, Lcom/duapps/ad/entity/AdData;->c:Ljava/lang/String;

    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", pkg : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v2, :cond_4

    iget-object v0, v2, Lcom/duapps/ad/entity/AdData;->d:Ljava/lang/String;

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", pp : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v2, :cond_5

    iget v0, v2, Lcom/duapps/ad/entity/AdData;->H:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    iget-object v3, p0, Lcom/duapps/ad/base/o;->h:Landroid/content/Context;

    if-nez v2, :cond_6

    const-string v0, "FAIL"

    :goto_3
    iget v4, p0, Lcom/duapps/ad/base/o;->i:I

    invoke-static {v3, v0, v4}, Lcom/duapps/ad/stats/c;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 55
    if-eqz v2, :cond_7

    .line 56
    iget v0, v2, Lcom/duapps/ad/entity/AdData;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 57
    iget-object v0, p0, Lcom/duapps/ad/base/o;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/l;->a(Landroid/content/Context;)Lcom/duapps/ad/base/l;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/duapps/ad/base/l;->a(Lcom/duapps/ad/entity/AdData;)V

    .line 59
    :cond_2
    new-instance v0, Lcom/duapps/ad/entity/c;

    iget-object v1, p0, Lcom/duapps/ad/base/o;->h:Landroid/content/Context;

    iget-object v3, p0, Lcom/duapps/ad/base/o;->n:Lcom/duapps/ad/b;

    iget-object v4, p0, Lcom/duapps/ad/base/o;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/duapps/ad/entity/c;-><init>(Landroid/content/Context;Lcom/duapps/ad/entity/AdData;Lcom/duapps/ad/b;Ljava/lang/String;)V

    .line 62
    :goto_4
    return-object v0

    .line 52
    :cond_3
    :try_start_1
    const-string v0, "null"

    goto :goto_0

    :cond_4
    const-string v0, "null"

    goto :goto_1

    :cond_5
    const-string v0, "null"

    goto :goto_2

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 54
    :cond_6
    const-string v0, "OK"

    goto :goto_3

    :cond_7
    move-object v0, v1

    .line 62
    goto :goto_4
.end method

.method public a(Z)V
    .locals 4

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/duapps/ad/entity/a/b;->a(Z)V

    .line 77
    iget-object v0, p0, Lcom/duapps/ad/base/o;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/c/b/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    sget-object v0, Lcom/duapps/ad/base/o;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network error && sid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/duapps/ad/base/o;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-boolean v0, p0, Lcom/duapps/ad/base/o;->d:Z

    if-eqz v0, :cond_1

    .line 83
    sget-object v0, Lcom/duapps/ad/base/o;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DL already refreshing && sid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/duapps/ad/base/o;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/duapps/ad/base/o;->c()I

    move-result v0

    if-lez v0, :cond_2

    .line 88
    sget-object v0, Lcom/duapps/ad/base/o;->o:Ljava/lang/String;

    const-string v1, "no need refresh"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/duapps/ad/base/o;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/n;->a(Landroid/content/Context;)Lcom/duapps/ad/base/n;

    move-result-object v0

    .line 93
    iget v1, p0, Lcom/duapps/ad/base/o;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/duapps/ad/base/o;->a:Lcom/duapps/ad/base/s;

    invoke-virtual {v0, v1, v2, v3}, Lcom/duapps/ad/base/n;->a(IILcom/duapps/ad/base/s;)V

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public c()I
    .locals 6

    .prologue
    .line 103
    const/4 v1, 0x0

    .line 104
    iget-object v2, p0, Lcom/duapps/ad/base/o;->p:Ljava/util/List;

    monitor-enter v2

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/base/o;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 106
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/AdData;

    .line 108
    if-nez v0, :cond_0

    .line 109
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 112
    :cond_0
    :try_start_1
    iget-object v4, v0, Lcom/duapps/ad/entity/AdData;->d:Ljava/lang/String;

    .line 113
    iget-object v5, p0, Lcom/duapps/ad/base/o;->h:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/duapps/ad/c/b/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lcom/duapps/ad/entity/AdData;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 114
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    move v0, v1

    :goto_1
    move v1, v0

    .line 118
    goto :goto_0

    .line 116
    :cond_2
    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    .line 119
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    return v1
.end method

.method public synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/duapps/ad/base/o;->a()Lcom/duapps/ad/entity/c;

    move-result-object v0

    return-object v0
.end method
