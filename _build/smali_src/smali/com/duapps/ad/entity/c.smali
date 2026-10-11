.class public Lcom/duapps/ad/entity/c;
.super Ljava/lang/Object;
.source "NativeAdDLWrapper.java"

# interfaces
.implements Lcom/duapps/ad/entity/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duapps/ad/entity/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static n:Landroid/os/Handler;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/view/View;

.field private e:Lcom/duapps/ad/entity/AdData;

.field private f:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/duapps/ad/entity/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:Lcom/duapps/ad/entity/c$a;

.field private h:Lcom/duapps/ad/stats/d;

.field private i:Lcom/duapps/ad/b;

.field private j:Landroid/view/View$OnTouchListener;

.field private k:Lcom/duapps/ad/e;

.field private l:Z

.field private m:Ljava/lang/String;

.field private o:Ljava/lang/Runnable;

.field private p:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const-class v0, Lcom/duapps/ad/entity/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duapps/ad/entity/c;->a:Ljava/lang/String;

    .line 429
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/duapps/ad/entity/c;->n:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/duapps/ad/entity/AdData;Lcom/duapps/ad/b;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/entity/c;->f:Ljava/util/WeakHashMap;

    .line 431
    new-instance v0, Lcom/duapps/ad/entity/c$2;

    invoke-direct {v0, p0}, Lcom/duapps/ad/entity/c$2;-><init>(Lcom/duapps/ad/entity/c;)V

    iput-object v0, p0, Lcom/duapps/ad/entity/c;->o:Ljava/lang/Runnable;

    .line 440
    new-instance v0, Lcom/duapps/ad/entity/c$3;

    invoke-direct {v0, p0}, Lcom/duapps/ad/entity/c$3;-><init>(Lcom/duapps/ad/entity/c;)V

    iput-object v0, p0, Lcom/duapps/ad/entity/c;->p:Landroid/content/BroadcastReceiver;

    .line 57
    iput-object p2, p0, Lcom/duapps/ad/entity/c;->e:Lcom/duapps/ad/entity/AdData;

    .line 58
    iput-object p1, p0, Lcom/duapps/ad/entity/c;->b:Landroid/content/Context;

    .line 59
    iput-object p3, p0, Lcom/duapps/ad/entity/c;->i:Lcom/duapps/ad/b;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/entity/c;->c:Ljava/util/List;

    .line 61
    iput-object p4, p0, Lcom/duapps/ad/entity/c;->m:Ljava/lang/String;

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/duapps/ad/entity/c;)Lcom/duapps/ad/entity/AdData;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/duapps/ad/entity/c;->e:Lcom/duapps/ad/entity/AdData;

    return-object v0
.end method

.method static synthetic a(Lcom/duapps/ad/entity/c;Lcom/duapps/ad/stats/d;)Lcom/duapps/ad/stats/d;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/duapps/ad/entity/c;->h:Lcom/duapps/ad/stats/d;

    return-object p1
.end method

.method private a(Ljava/util/List;Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 184
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 193
    :cond_0
    return-void

    .line 188
    :cond_1
    check-cast p2, Landroid/view/ViewGroup;

    .line 189
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 190
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 191
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/duapps/ad/entity/c;->a(Ljava/util/List;Landroid/view/View;)V

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/duapps/ad/entity/c;Z)Z
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/duapps/ad/entity/c;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/duapps/ad/entity/c;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/duapps/ad/entity/c;->b:Landroid/content/Context;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 176
    iget-object v1, p0, Lcom/duapps/ad/entity/c;->c:Ljava/util/List;

    monitor-enter v1

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/entity/c;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    iget-object v0, p0, Lcom/duapps/ad/entity/c;->g:Lcom/duapps/ad/entity/c$a;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/duapps/ad/entity/c;->g:Lcom/duapps/ad/entity/c$a;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 181
    return-void

    .line 178
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic c(Lcom/duapps/ad/entity/c;)Lcom/duapps/ad/b;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/duapps/ad/entity/c;->i:Lcom/duapps/ad/b;

    return-object v0
.end method

.method static synthetic d(Lcom/duapps/ad/entity/c;)Lcom/duapps/ad/stats/d;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/duapps/ad/entity/c;->h:Lcom/duapps/ad/stats/d;

    return-object v0
.end method

.method static synthetic e(Lcom/duapps/ad/entity/c;)Lcom/duapps/ad/e;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/duapps/ad/entity/c;->k:Lcom/duapps/ad/e;

    return-object v0
.end method

.method static synthetic f(Lcom/duapps/ad/entity/c;)Z
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/duapps/ad/entity/c;->q()Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/duapps/ad/entity/c;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/duapps/ad/entity/c;->s()V

    return-void
.end method

.method static synthetic h(Lcom/duapps/ad/entity/c;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/duapps/ad/entity/c;->l:Z

    return v0
.end method

.method static synthetic i(Lcom/duapps/ad/entity/c;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/duapps/ad/entity/c;->t()V

    return-void
.end method

.method static synthetic j(Lcom/duapps/ad/entity/c;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/duapps/ad/entity/c;->o:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic k(Lcom/duapps/ad/entity/c;)Landroid/view/View;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/duapps/ad/entity/c;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic l(Lcom/duapps/ad/entity/c;)Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/duapps/ad/entity/c;->j:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic m(Lcom/duapps/ad/entity/c;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/duapps/ad/entity/c;->u()V

    return-void
.end method

.method static synthetic o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/duapps/ad/entity/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic p()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/duapps/ad/entity/c;->n:Landroid/os/Handler;

    return-object v0
.end method

.method private q()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/duapps/ad/entity/c;->e:Lcom/duapps/ad/entity/AdData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private r()V
    .locals 4

    .prologue
    .line 160
    iget-object v1, p0, Lcom/duapps/ad/entity/c;->c:Ljava/util/List;

    monitor-enter v1

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/entity/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 162
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 164
    if-nez v0, :cond_0

    .line 165
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 168
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/entity/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 172
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    return-void
.end method

.method private s()V
    .locals 3

    .prologue
    .line 196
    sget-object v0, Lcom/duapps/ad/entity/c;->a:Ljava/lang/String;

    const-string v1, "mClickHandler handleClick"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/duapps/ad/entity/c;->h:Lcom/duapps/ad/stats/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/entity/c;->e:Lcom/duapps/ad/entity/AdData;

    if-nez v0, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/entity/c;->h:Lcom/duapps/ad/stats/d;

    new-instance v1, Lcom/duapps/ad/stats/f;

    iget-object v2, p0, Lcom/duapps/ad/entity/c;->e:Lcom/duapps/ad/entity/AdData;

    invoke-direct {v1, v2}, Lcom/duapps/ad/stats/f;-><init>(Lcom/duapps/ad/entity/AdData;)V

    invoke-virtual {v0, v1}, Lcom/duapps/ad/stats/d;->a(Lcom/duapps/ad/stats/f;)V

    .line 202
    iget-object v0, p0, Lcom/duapps/ad/entity/c;->e:Lcom/duapps/ad/entity/AdData;

    iget-object v0, v0, Lcom/duapps/ad/entity/AdData;->G:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/entity/c;->e:Lcom/duapps/ad/entity/AdData;

    iget-object v0, v0, Lcom/duapps/ad/entity/AdData;->G:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/entity/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/c/b/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/duapps/ad/entity/c;->e:Lcom/duapps/ad/entity/AdData;

    invoke-static {v0}, Lcom/duapps/ad/stats/h;->a(Lcom/duapps/ad/entity/AdData;)V

    goto :goto_0
.end method

.method private t()V
    .locals 4

    .prologue
    .line 411
    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/entity/c;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/entity/c;->p:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "action_notify_preparse_cache_result"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    :goto_0
    return-void

    .line 414
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private u()V
    .locals 2

    .prologue
    .line 421
    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/entity/c;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/entity/c;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :goto_0
    return-void

    .line 422
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/duapps/ad/entity/AdData;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/duapps/ad/entity/c;->e:Lcom/duapps/ad/entity/AdData;

    return-object v0
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    invoke-direct {p0, v0, p1}, Lcom/duapps/ad/entity/c;->a(Ljava/util/List;Landroid/view/View;)V

    .line 76
    invoke-virtual {p0, p1, v0}, Lcom/duapps/ad/entity/c;->a(Landroid/view/View;Ljava/util/List;)V

    .line 77
    return-void
.end method

.method public a(Landroid/view/View;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    if-nez p1, :cond_1

    .line 81
    sget-object v0, Lcom/duapps/ad/entity/c;->a:Ljava/lang/String;

    const-string v1, "registerViewForInteraction() -> Must provide a view"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 85
    :cond_2
    sget-object v0, Lcom/duapps/ad/entity/c;->a:Ljava/lang/String;

    const-string v1, "registerViewForInteraction() -> Invalid set of clickable views"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_3
    invoke-direct {p0}, Lcom/duapps/ad/entity/c;->q()Z

    move-result v0

    if-nez v0, :cond_4

    .line 89
    sget-object v0, Lcom/duapps/ad/entity/c;->a:Ljava/lang/String;

    const-string v1, "registerViewForInteraction() -> Ad not loaded"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_4
    iget-object v0, p0, Lcom/duapps/ad/entity/c;->d:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 93
    sget-object v0, Lcom/duapps/ad/entity/c;->a:Ljava/lang/String;

    const-string v1, "Native Ad was already registered with a View, Auto unregistering and proceeding"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/duapps/ad/entity/c;->b()V

    .line 96
    :cond_5
    iget-object v0, p0, Lcom/duapps/ad/entity/c;->f:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/duapps/ad/entity/c;->f:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 97
    iget-object v0, p0, Lcom/duapps/ad/entity/c;->f:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/c;

    invoke-virtual {v0}, Lcom/duapps/ad/entity/c;->b()V

    .line 100
    :cond_6
    new-instance v0, Lcom/duapps/ad/entity/c$a;

    invoke-direct {v0, p0}, Lcom/duapps/ad/entity/c$a;-><init>(Lcom/duapps/ad/entity/c;)V

    iput-object v0, p0, Lcom/duapps/ad/entity/c;->g:Lcom/duapps/ad/entity/c$a;

    .line 101
    iput-object p1, p0, Lcom/duapps/ad/entity/c;->d:Landroid/view/View;

    .line 102
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 103
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 104
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 105
    invoke-direct {p0, v0}, Lcom/duapps/ad/entity/c;->b(Landroid/view/View;)V

    goto :goto_1

    .line 107
    :cond_7
    iget-object v0, p0, Lcom/duapps/ad/entity/c;->f:Ljava/util/WeakHashMap;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/duapps/ad/entity/c;->b:Landroid/content/Context;

    new-instance v1, Lcom/duapps/ad/stats/f;

    iget-object v2, p0, Lcom/duapps/ad/entity/c;->e:Lcom/duapps/ad/entity/AdData;

    invoke-direct {v1, v2}, Lcom/duapps/ad/stats/f;-><init>(Lcom/duapps/ad/entity/AdData;)V

    iget-object v2, p0, Lcom/duapps/ad/entity/c;->m:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/duapps/ad/stats/h;->b(Landroid/content/Context;Lcom/duapps/ad/stats/f;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/duapps/ad/entity/c;->e:Lcom/duapps/ad/entity/AdData;

    iget-object v1, v0, Lcom/duapps/ad/entity/AdData;->F:[Ljava/lang/String;

    .line 113
    if-eqz v1, :cond_0

    array-length v0, v1

    if-lez v0, :cond_0

    .line 114
    const/4 v0, 0x0

    :goto_2
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 115
    aget-object v2, v1, v0

    .line 116
    invoke-static {}, Lcom/duapps/ad/base/t;->a()Lcom/duapps/ad/base/t;

    move-result-object v3

    new-instance v4, Lcom/duapps/ad/entity/c$1;

    invoke-direct {v4, p0, v2}, Lcom/duapps/ad/entity/c$1;-><init>(Lcom/duapps/ad/entity/c;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/duapps/ad/base/t;->a(Ljava/lang/Runnable;)V

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public a(Lcom/duapps/ad/e;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/duapps/ad/entity/c;->k:Lcom/duapps/ad/e;

    .line 381
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/duapps/ad/entity/c;->m:Ljava/lang/String;

    .line 402
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/duapps/ad/entity/c;->d:Landroid/view/View;

    if-nez v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/entity/c;->f:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/duapps/ad/entity/c;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duapps/ad/entity/c;->f:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/duapps/ad/entity/c;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_2

    .line 151
    :cond_1
    sget-object v0, Lcom/duapps/ad/entity/c;->a:Ljava/lang/String;

    const-string v1, "unregisterView() -> View not regitered with this NativeAd"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/duapps/ad/entity/c;->f:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/duapps/ad/entity/c;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-direct {p0}, Lcom/duapps/ad/entity/c;->r()V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duapps/ad/entity/c;->d:Landroid/view/View;

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duapps/ad/entity/c;->k:Lcom/duapps/ad/e;

    .line 345
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/duapps/ad/entity/c;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    const/4 v0, 0x0

    .line 296
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/entity/c;->e:Lcom/duapps/ad/entity/AdData;

    iget-object v0, v0, Lcom/duapps/ad/entity/AdData;->t:Ljava/lang/String;

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/duapps/ad/entity/c;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    const/4 v0, 0x0

    .line 303
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/entity/c;->e:Lcom/duapps/ad/entity/AdData;

    iget-object v0, v0, Lcom/duapps/ad/entity/AdData;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/duapps/ad/entity/c;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    const/4 v0, 0x0

    .line 317
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/entity/c;->e:Lcom/duapps/ad/entity/AdData;

    iget-object v0, v0, Lcom/duapps/ad/entity/AdData;->B:Ljava/lang/String;

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/duapps/ad/entity/c;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    const/4 v0, 0x0

    .line 324
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/entity/c;->e:Lcom/duapps/ad/entity/AdData;

    iget-object v0, v0, Lcom/duapps/ad/entity/AdData;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/duapps/ad/entity/c;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    const/4 v0, 0x0

    .line 331
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/entity/c;->e:Lcom/duapps/ad/entity/AdData;

    iget-object v0, v0, Lcom/duapps/ad/entity/AdData;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public i()F
    .locals 1

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/duapps/ad/entity/c;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    const/4 v0, 0x0

    .line 338
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/entity/c;->e:Lcom/duapps/ad/entity/AdData;

    iget v0, v0, Lcom/duapps/ad/entity/AdData;->l:F

    goto :goto_0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x1

    return v0
.end method

.method public k()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    const-string v0, "dl"

    return-object v0
.end method

.method public synthetic m()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/duapps/ad/entity/c;->n()Lcom/duapps/ad/entity/AdData;

    move-result-object v0

    return-object v0
.end method

.method public n()Lcom/duapps/ad/entity/AdData;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/duapps/ad/entity/c;->e:Lcom/duapps/ad/entity/AdData;

    return-object v0
.end method
