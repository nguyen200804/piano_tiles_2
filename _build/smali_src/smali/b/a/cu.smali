.class public Lb/a/cu;
.super Ljava/lang/Object;
.source "MemoCache.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lb/a/cs;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lb/a/m;

.field private c:Lb/a/o;

.field private d:Lb/a/r;

.field private e:Lb/a/ae;

.field private f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/a/cu;->a:Ljava/util/List;

    .line 32
    iput-object v1, p0, Lb/a/cu;->b:Lb/a/m;

    .line 33
    iput-object v1, p0, Lb/a/cu;->c:Lb/a/o;

    .line 34
    iput-object v1, p0, Lb/a/cu;->d:Lb/a/r;

    .line 35
    iput-object v1, p0, Lb/a/cu;->e:Lb/a/ae;

    .line 37
    iput-object v1, p0, Lb/a/cu;->f:Landroid/content/Context;

    .line 40
    iput-object p1, p0, Lb/a/cu;->f:Landroid/content/Context;

    .line 41
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 171
    :try_start_0
    iget-object v0, p0, Lb/a/cu;->c:Lb/a/o;

    invoke-static {p1}, Lcom/b/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/o;->a(Ljava/lang/String;)Lb/a/o;

    .line 172
    iget-object v0, p0, Lb/a/cu;->c:Lb/a/o;

    invoke-static {p1}, Lcom/b/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/o;->e(Ljava/lang/String;)Lb/a/o;

    .line 174
    sget-object v0, Lcom/b/a/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/b/a/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lb/a/cu;->c:Lb/a/o;

    sget-object v1, Lcom/b/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lb/a/o;->f(Ljava/lang/String;)Lb/a/o;

    .line 176
    iget-object v0, p0, Lb/a/cu;->c:Lb/a/o;

    sget-object v1, Lcom/b/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lb/a/o;->g(Ljava/lang/String;)Lb/a/o;

    .line 179
    :cond_0
    iget-object v0, p0, Lb/a/cu;->c:Lb/a/o;

    invoke-static {p1}, Lb/a/ao;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/o;->c(Ljava/lang/String;)Lb/a/o;

    .line 180
    iget-object v0, p0, Lb/a/cu;->c:Lb/a/o;

    sget-object v1, Lb/a/aj;->a:Lb/a/aj;

    invoke-virtual {v0, v1}, Lb/a/o;->a(Lb/a/aj;)Lb/a/o;

    .line 181
    iget-object v0, p0, Lb/a/cu;->c:Lb/a/o;

    const-string v1, "5.5.3"

    invoke-virtual {v0, v1}, Lb/a/o;->d(Ljava/lang/String;)Lb/a/o;

    .line 182
    iget-object v0, p0, Lb/a/cu;->c:Lb/a/o;

    invoke-static {p1}, Lb/a/ao;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/o;->b(Ljava/lang/String;)Lb/a/o;

    .line 183
    iget-object v0, p0, Lb/a/cu;->c:Lb/a/o;

    invoke-static {p1}, Lb/a/ao;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lb/a/o;->a(I)Lb/a/o;

    .line 185
    iget-object v0, p0, Lb/a/cu;->c:Lb/a/o;

    sget v1, Lcom/b/a/a;->c:I

    invoke-virtual {v0, v1}, Lb/a/o;->b(I)Lb/a/o;

    .line 186
    iget-object v0, p0, Lb/a/cu;->c:Lb/a/o;

    invoke-static {}, Lcom/b/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/o;->d(Ljava/lang/String;)Lb/a/o;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 194
    :try_start_0
    iget-object v0, p0, Lb/a/cu;->d:Lb/a/r;

    invoke-static {}, Lb/a/ao;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/r;->e(Ljava/lang/String;)Lb/a/r;

    .line 195
    iget-object v0, p0, Lb/a/cu;->d:Lb/a/r;

    invoke-static {p1}, Lb/a/ao;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/r;->a(Ljava/lang/String;)Lb/a/r;

    .line 196
    iget-object v0, p0, Lb/a/cu;->d:Lb/a/r;

    invoke-static {p1}, Lb/a/ao;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/r;->b(Ljava/lang/String;)Lb/a/r;

    .line 197
    iget-object v0, p0, Lb/a/cu;->d:Lb/a/r;

    invoke-static {p1}, Lb/a/ao;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/r;->c(Ljava/lang/String;)Lb/a/r;

    .line 198
    iget-object v0, p0, Lb/a/cu;->d:Lb/a/r;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lb/a/r;->d(Ljava/lang/String;)Lb/a/r;

    .line 199
    iget-object v0, p0, Lb/a/cu;->d:Lb/a/r;

    const-string v1, "Android"

    invoke-virtual {v0, v1}, Lb/a/r;->f(Ljava/lang/String;)Lb/a/r;

    .line 200
    iget-object v0, p0, Lb/a/cu;->d:Lb/a/r;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lb/a/r;->g(Ljava/lang/String;)Lb/a/r;

    .line 202
    invoke-static {p1}, Lb/a/ao;->l(Landroid/content/Context;)[I

    move-result-object v0

    .line 204
    if-eqz v0, :cond_0

    .line 205
    iget-object v1, p0, Lb/a/cu;->d:Lb/a/r;

    new-instance v2, Lb/a/ah;

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x0

    aget v0, v0, v4

    invoke-direct {v2, v3, v0}, Lb/a/ah;-><init>(II)V

    invoke-virtual {v1, v2}, Lb/a/r;->a(Lb/a/ah;)Lb/a/r;

    .line 208
    :cond_0
    sget-object v0, Lcom/b/a/a;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/b/a/a;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 212
    :cond_1
    iget-object v0, p0, Lb/a/cu;->d:Lb/a/r;

    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lb/a/r;->h(Ljava/lang/String;)Lb/a/r;

    .line 213
    iget-object v0, p0, Lb/a/cu;->d:Lb/a/r;

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lb/a/r;->i(Ljava/lang/String;)Lb/a/r;

    .line 214
    iget-object v0, p0, Lb/a/cu;->d:Lb/a/r;

    sget-wide v2, Landroid/os/Build;->TIME:J

    invoke-virtual {v0, v2, v3}, Lb/a/r;->a(J)Lb/a/r;

    .line 215
    iget-object v0, p0, Lb/a/cu;->d:Lb/a/r;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lb/a/r;->j(Ljava/lang/String;)Lb/a/r;

    .line 216
    iget-object v0, p0, Lb/a/cu;->d:Lb/a/r;

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lb/a/r;->k(Ljava/lang/String;)Lb/a/r;

    .line 217
    iget-object v0, p0, Lb/a/cu;->d:Lb/a/r;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lb/a/r;->l(Ljava/lang/String;)Lb/a/r;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private c(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 225
    :try_start_0
    invoke-static {p1}, Lb/a/ao;->e(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 227
    const-string v1, "Wi-Fi"

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 228
    iget-object v1, p0, Lb/a/cu;->e:Lb/a/ae;

    sget-object v2, Lb/a/l;->c:Lb/a/l;

    invoke-virtual {v1, v2}, Lb/a/ae;->a(Lb/a/l;)Lb/a/ae;

    .line 235
    :goto_0
    const-string v1, ""

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    iget-object v1, p0, Lb/a/cu;->e:Lb/a/ae;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Lb/a/ae;->d(Ljava/lang/String;)Lb/a/ae;

    .line 239
    :cond_0
    iget-object v0, p0, Lb/a/cu;->e:Lb/a/ae;

    invoke-static {p1}, Lb/a/ao;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/ae;->c(Ljava/lang/String;)Lb/a/ae;

    .line 241
    invoke-static {p1}, Lb/a/ao;->i(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lb/a/cu;->e:Lb/a/ae;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lb/a/ae;->b(Ljava/lang/String;)Lb/a/ae;

    .line 244
    iget-object v1, p0, Lb/a/cu;->e:Lb/a/ae;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Lb/a/ae;->a(Ljava/lang/String;)Lb/a/ae;

    .line 245
    iget-object v0, p0, Lb/a/cu;->e:Lb/a/ae;

    invoke-static {p1}, Lb/a/ao;->h(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lb/a/ae;->a(I)Lb/a/ae;

    .line 249
    :goto_1
    return-void

    .line 229
    :cond_1
    const-string v1, "2G/3G"

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 230
    iget-object v1, p0, Lb/a/cu;->e:Lb/a/ae;

    sget-object v2, Lb/a/l;->b:Lb/a/l;

    invoke-virtual {v1, v2}, Lb/a/ae;->a(Lb/a/l;)Lb/a/ae;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 232
    :cond_2
    :try_start_1
    iget-object v1, p0, Lb/a/cu;->e:Lb/a/ae;

    sget-object v2, Lb/a/l;->a:Lb/a/l;

    invoke-virtual {v1, v2}, Lb/a/ae;->a(Lb/a/l;)Lb/a/ae;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a()I
    .locals 2

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/cu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 54
    iget-object v1, p0, Lb/a/cu;->b:Lb/a/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 55
    add-int/lit8 v0, v0, 0x1

    .line 58
    :cond_0
    monitor-exit p0

    return v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lb/a/am;)V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lb/a/cu;->f:Landroid/content/Context;

    invoke-static {v0}, Lb/a/db;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 71
    if-nez v1, :cond_0

    .line 101
    :goto_0
    return-void

    .line 75
    :cond_0
    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v0, p0, Lb/a/cu;->b:Lb/a/m;

    if-eqz v0, :cond_1

    .line 78
    new-instance v0, Lb/a/b;

    iget-object v2, p0, Lb/a/cu;->f:Landroid/content/Context;

    invoke-direct {v0, v2}, Lb/a/b;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-virtual {v0}, Lb/a/b;->a()Z

    move-result v0

    .line 80
    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lb/a/cu;->b:Lb/a/m;

    invoke-virtual {p1, v0}, Lb/a/am;->a(Lb/a/m;)Lb/a/am;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/cu;->b:Lb/a/m;

    .line 86
    :cond_1
    iget-object v0, p0, Lb/a/cu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/cs;

    .line 87
    invoke-interface {v0, p1, v1}, Lb/a/cs;->a(Lb/a/am;Ljava/lang/String;)V

    goto :goto_1

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 90
    :cond_2
    :try_start_1
    iget-object v0, p0, Lb/a/cu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 91
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    invoke-virtual {p0}, Lb/a/cu;->b()Lb/a/o;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/am;->a(Lb/a/o;)Lb/a/am;

    .line 95
    invoke-virtual {p0}, Lb/a/cu;->c()Lb/a/r;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/am;->a(Lb/a/r;)Lb/a/am;

    .line 96
    invoke-virtual {p0}, Lb/a/cu;->d()Lb/a/ae;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/am;->a(Lb/a/ae;)Lb/a/am;

    .line 97
    invoke-virtual {p0}, Lb/a/cu;->g()Lb/a/p;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/am;->a(Lb/a/p;)Lb/a/am;

    .line 98
    invoke-virtual {p0}, Lb/a/cu;->e()Lb/a/z;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/am;->a(Lb/a/z;)Lb/a/am;

    .line 99
    invoke-virtual {p0}, Lb/a/cu;->f()Lb/a/x;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/am;->a(Lb/a/x;)Lb/a/am;

    .line 100
    invoke-virtual {p0}, Lb/a/cu;->h()Lb/a/n;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/am;->a(Lb/a/n;)Lb/a/am;

    goto :goto_0
.end method

.method public declared-synchronized a(Lb/a/cs;)V
    .locals 1

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/cu;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lb/a/m;)V
    .locals 1

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lb/a/cu;->b:Lb/a/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Lb/a/o;
    .locals 1

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/cu;->c:Lb/a/o;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lb/a/o;

    invoke-direct {v0}, Lb/a/o;-><init>()V

    iput-object v0, p0, Lb/a/cu;->c:Lb/a/o;

    .line 110
    iget-object v0, p0, Lb/a/cu;->f:Landroid/content/Context;

    invoke-direct {p0, v0}, Lb/a/cu;->a(Landroid/content/Context;)V

    .line 113
    :cond_0
    iget-object v0, p0, Lb/a/cu;->c:Lb/a/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Lb/a/r;
    .locals 1

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/cu;->d:Lb/a/r;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lb/a/r;

    invoke-direct {v0}, Lb/a/r;-><init>()V

    iput-object v0, p0, Lb/a/cu;->d:Lb/a/r;

    .line 119
    iget-object v0, p0, Lb/a/cu;->f:Landroid/content/Context;

    invoke-direct {p0, v0}, Lb/a/cu;->b(Landroid/content/Context;)V

    .line 122
    :cond_0
    iget-object v0, p0, Lb/a/cu;->d:Lb/a/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Lb/a/ae;
    .locals 1

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/cu;->e:Lb/a/ae;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lb/a/ae;

    invoke-direct {v0}, Lb/a/ae;-><init>()V

    iput-object v0, p0, Lb/a/cu;->e:Lb/a/ae;

    .line 128
    iget-object v0, p0, Lb/a/cu;->f:Landroid/content/Context;

    invoke-direct {p0, v0}, Lb/a/cu;->c(Landroid/content/Context;)V

    .line 131
    :cond_0
    iget-object v0, p0, Lb/a/cu;->e:Lb/a/ae;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()Lb/a/z;
    .locals 1

    .prologue
    .line 136
    :try_start_0
    iget-object v0, p0, Lb/a/cu;->f:Landroid/content/Context;

    invoke-static {v0}, Lb/a/ch;->a(Landroid/content/Context;)Lb/a/ch;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/ch;->a()Lb/a/z;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 139
    :goto_0
    return-object v0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 139
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Lb/a/x;
    .locals 1

    .prologue
    .line 145
    :try_start_0
    iget-object v0, p0, Lb/a/cu;->f:Landroid/content/Context;

    invoke-static {v0}, Lb/a/bm;->a(Landroid/content/Context;)Lb/a/bm;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/bm;->b()Lb/a/x;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 148
    :goto_0
    return-object v0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 148
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Lb/a/p;
    .locals 1

    .prologue
    .line 154
    :try_start_0
    iget-object v0, p0, Lb/a/cu;->f:Landroid/content/Context;

    invoke-static {v0}, Lb/a/b;->a(Landroid/content/Context;)Lb/a/p;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 157
    new-instance v0, Lb/a/p;

    invoke-direct {v0}, Lb/a/p;-><init>()V

    goto :goto_0
.end method

.method public h()Lb/a/n;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 162
    iget-object v0, p0, Lb/a/cu;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/b/a/h;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    .line 163
    if-eqz v1, :cond_0

    aget-object v0, v1, v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    aget-object v0, v1, v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Lb/a/n;

    aget-object v2, v1, v2

    aget-object v1, v1, v3

    invoke-direct {v0, v2, v1}, Lb/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
