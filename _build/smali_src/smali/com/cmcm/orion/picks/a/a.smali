.class public final Lcom/cmcm/orion/picks/a/a;
.super Ljava/lang/Object;
.source "AdRequestController.java"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/cmcm/orion/picks/a/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/orion/picks/a/a/c;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Z

.field private g:I

.field private h:Ljava/util/Map;
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

.field private i:Lcom/cmcm/orion/picks/impl/a$a;

.field private j:J

.field private k:Ljava/lang/String;

.field private l:I

.field private m:I

.field private n:I

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/cmcm/orion/picks/a/a;->a:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/cmcm/orion/picks/a/a;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0xa

    iput v0, p0, Lcom/cmcm/orion/picks/a/a;->d:I

    .line 37
    iput v1, p0, Lcom/cmcm/orion/picks/a/a;->e:I

    .line 38
    iput-boolean v1, p0, Lcom/cmcm/orion/picks/a/a;->f:Z

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lcom/cmcm/orion/picks/a/a;->g:I

    .line 44
    const/16 v0, 0xf

    iput v0, p0, Lcom/cmcm/orion/picks/a/a;->l:I

    .line 45
    iput v1, p0, Lcom/cmcm/orion/picks/a/a;->m:I

    .line 46
    iput v1, p0, Lcom/cmcm/orion/picks/a/a;->n:I

    .line 60
    iput-object p1, p0, Lcom/cmcm/orion/picks/a/a;->c:Ljava/lang/String;

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/a/a;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/cmcm/orion/picks/a/a;->e:I

    return v0
.end method

.method private a(IJI)V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a;->i:Lcom/cmcm/orion/picks/impl/a$a;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a;->i:Lcom/cmcm/orion/picks/impl/a$a;

    new-instance v1, Lcom/cmcm/orion/picks/a/b;

    invoke-direct {v1, p1}, Lcom/cmcm/orion/picks/a/b;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/cmcm/orion/picks/impl/a$a;->b(Lcom/cmcm/orion/picks/a/b;)V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a;->c:Ljava/lang/String;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/cmcm/orion/adsdk/e;->a(Ljava/lang/String;IJI)V

    .line 180
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcm/orion/picks/a/a;->a(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/a/a;IJI)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cmcm/orion/picks/a/a;->a(IJI)V

    return-void
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/a/a;Ljava/util/List;JI)V
    .locals 2

    .prologue
    .line 27
    .line 1185
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a;->i:Lcom/cmcm/orion/picks/impl/a$a;

    if-eqz v0, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a;->i:Lcom/cmcm/orion/picks/impl/a$a;

    new-instance v1, Lcom/cmcm/orion/picks/a/b;

    invoke-direct {v1, p1}, Lcom/cmcm/orion/picks/a/b;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/cmcm/orion/picks/impl/a$a;->a(Lcom/cmcm/orion/picks/a/b;)V

    .line 1188
    :cond_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a;->c:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, p3, p4}, Lcom/cmcm/orion/adsdk/e;->a(Ljava/lang/String;IJI)V

    .line 1190
    sget-object v0, Lcom/cmcm/orion/picks/a/a;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/cmcm/orion/picks/a/a;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/orion/picks/a/a/c;

    .line 1191
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1192
    new-instance v0, Lcom/cmcm/orion/picks/a/a;

    iget-object v1, p0, Lcom/cmcm/orion/picks/a/a;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/cmcm/orion/picks/a/a;-><init>(Ljava/lang/String;)V

    .line 1193
    iget v1, p0, Lcom/cmcm/orion/picks/a/a;->d:I

    .line 2064
    iput v1, v0, Lcom/cmcm/orion/picks/a/a;->d:I

    .line 2091
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cmcm/orion/picks/a/a;->f:Z

    .line 1195
    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a;->b()V

    .line 1196
    :goto_0
    return-void

    .line 1197
    :cond_1
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcm/orion/picks/a/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static declared-synchronized a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 213
    const-class v2, Lcom/cmcm/orion/picks/a/a;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/cmcm/orion/picks/a/a;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 214
    sget-object v1, Lcom/cmcm/orion/picks/a/a;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 216
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cmcm/orion/picks/a/a/c;

    .line 217
    sget-object v3, Lcom/cmcm/orion/picks/a/a;->b:Ljava/util/Map;

    invoke-interface {v3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "request controller:extra-posid:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", task num "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n -loading:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/cmcm/orion/picks/a/a;->a:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  hashCode:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    sget-object v0, Lcom/cmcm/orion/picks/a/a;->a:Ljava/util/Map;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-static {v1, v0}, Lcom/cmcm/orion/utils/a;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    :cond_0
    monitor-exit v2

    return-void

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method static synthetic a(Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/c;)V
    .locals 0

    .prologue
    .line 27
    invoke-static {p0, p1}, Lcom/cmcm/orion/picks/a/a;->b(Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/c;)V

    return-void
.end method

.method static synthetic b(Lcom/cmcm/orion/picks/a/a;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/cmcm/orion/picks/a/a;->d:I

    return v0
.end method

.method private static declared-synchronized b(Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/c;)V
    .locals 3

    .prologue
    .line 202
    const-class v1, Lcom/cmcm/orion/picks/a/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cmcm/orion/picks/a/a;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-static {p1, v0}, Lcom/cmcm/orion/utils/a;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 204
    sget-object v0, Lcom/cmcm/orion/picks/a/a;->a:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :goto_0
    monitor-exit v1

    return-void

    .line 206
    :cond_0
    :try_start_1
    sget-object v0, Lcom/cmcm/orion/picks/a/a;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 207
    :goto_1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v2, Lcom/cmcm/orion/picks/a/a;->b:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 206
    :cond_1
    :try_start_2
    sget-object v0, Lcom/cmcm/orion/picks/a/a;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method static synthetic c(Lcom/cmcm/orion/picks/a/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/cmcm/orion/picks/a/a;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/a/a;->f:Z

    return v0
.end method

.method static synthetic e(Lcom/cmcm/orion/picks/a/a;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/cmcm/orion/picks/a/a;->g:I

    return v0
.end method

.method static synthetic f(Lcom/cmcm/orion/picks/a/a;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a;->h:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic g(Lcom/cmcm/orion/picks/a/a;)J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/cmcm/orion/picks/a/a;->j:J

    return-wide v0
.end method

.method static synthetic h(Lcom/cmcm/orion/picks/a/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/cmcm/orion/picks/a/a;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/cmcm/orion/picks/a/a;->l:I

    return v0
.end method

.method static synthetic j(Lcom/cmcm/orion/picks/a/a;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/cmcm/orion/picks/a/a;->o:I

    return v0
.end method

.method static synthetic k(Lcom/cmcm/orion/picks/a/a;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/cmcm/orion/picks/a/a;->m:I

    return v0
.end method

.method static synthetic l(Lcom/cmcm/orion/picks/a/a;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/cmcm/orion/picks/a/a;->n:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/orion/picks/a/a;->f:Z

    .line 92
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcom/cmcm/orion/picks/a/a;->d:I

    .line 65
    return-void
.end method

.method public final a(Lcom/cmcm/orion/picks/impl/a$a;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/cmcm/orion/picks/a/a;->i:Lcom/cmcm/orion/picks/impl/a$a;

    .line 57
    return-void
.end method

.method public final b()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    .line 115
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcm/orion/utils/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "request controller:posid is not only digits -> posid :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cmcm/orion/picks/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const/16 v0, 0x64

    invoke-direct {p0, v0, v4, v5, v2}, Lcom/cmcm/orion/picks/a/a;->a(IJI)V

    .line 172
    :goto_0
    return-void

    .line 120
    :cond_0
    iget v0, p0, Lcom/cmcm/orion/picks/a/a;->d:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/cmcm/orion/picks/a/a;->d:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_2

    .line 122
    :cond_1
    const/16 v0, 0x65

    invoke-direct {p0, v0, v4, v5, v2}, Lcom/cmcm/orion/picks/a/a;->a(IJI)V

    goto :goto_0

    .line 125
    :cond_2
    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/orion/utils/c;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 126
    const/16 v0, 0x73

    invoke-direct {p0, v0, v4, v5, v2}, Lcom/cmcm/orion/picks/a/a;->a(IJI)V

    goto :goto_0

    .line 129
    :cond_3
    invoke-static {}, Lcom/cmcm/orion/picks/a/a/h;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/cmcm/orion/picks/a/a;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/cmcm/orion/picks/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 132
    const/16 v0, 0x8b

    invoke-direct {p0, v0, v4, v5, v2}, Lcom/cmcm/orion/picks/a/a;->a(IJI)V

    goto :goto_0

    .line 136
    :cond_4
    new-instance v0, Lcom/cmcm/orion/picks/a/a$1;

    invoke-direct {v0, p0}, Lcom/cmcm/orion/picks/a/a$1;-><init>(Lcom/cmcm/orion/picks/a/a;)V

    invoke-static {v0}, Lcom/cmcm/orion/utils/e;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 99
    iput p1, p0, Lcom/cmcm/orion/picks/a/a;->m:I

    .line 100
    return-void
.end method
