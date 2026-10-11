.class Lcom/jirbo/adcolony/af;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/jirbo/adcolony/ae;

.field b:Lcom/jirbo/adcolony/ad;

.field c:Lcom/jirbo/adcolony/ao;

.field d:Lcom/jirbo/adcolony/as;

.field e:Lcom/jirbo/adcolony/at;

.field f:Lcom/jirbo/adcolony/d;

.field g:Lcom/jirbo/adcolony/aa;

.field h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jirbo/adcolony/aj;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jirbo/adcolony/aj;",
            ">;"
        }
    .end annotation
.end field

.field volatile j:Z

.field k:Z

.field l:Lcom/jirbo/adcolony/u$a;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/jirbo/adcolony/ae;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ae;-><init>(Lcom/jirbo/adcolony/af;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/af;->a:Lcom/jirbo/adcolony/ae;

    .line 20
    new-instance v0, Lcom/jirbo/adcolony/ad;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ad;-><init>(Lcom/jirbo/adcolony/af;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/af;->b:Lcom/jirbo/adcolony/ad;

    .line 21
    new-instance v0, Lcom/jirbo/adcolony/ao;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ao;-><init>(Lcom/jirbo/adcolony/af;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/af;->c:Lcom/jirbo/adcolony/ao;

    .line 22
    new-instance v0, Lcom/jirbo/adcolony/as;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/as;-><init>(Lcom/jirbo/adcolony/af;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/af;->d:Lcom/jirbo/adcolony/as;

    .line 23
    new-instance v0, Lcom/jirbo/adcolony/at;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/at;-><init>(Lcom/jirbo/adcolony/af;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/af;->e:Lcom/jirbo/adcolony/at;

    .line 24
    new-instance v0, Lcom/jirbo/adcolony/d;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/d;-><init>(Lcom/jirbo/adcolony/af;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/af;->f:Lcom/jirbo/adcolony/d;

    .line 25
    new-instance v0, Lcom/jirbo/adcolony/aa;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/aa;-><init>(Lcom/jirbo/adcolony/af;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/af;->g:Lcom/jirbo/adcolony/aa;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/af;->h:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/af;->i:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Lcom/jirbo/adcolony/u$a;

    invoke-direct {v0}, Lcom/jirbo/adcolony/u$a;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/af;->l:Lcom/jirbo/adcolony/u$a;

    return-void
.end method


# virtual methods
.method declared-synchronized a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 250
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/af;->a:Lcom/jirbo/adcolony/ae;

    iget-object v0, v0, Lcom/jirbo/adcolony/ae;->h:Lcom/jirbo/adcolony/a$g;

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/a$g;->f(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 255
    :goto_0
    monitor-exit p0

    return v0

    .line 252
    :catch_0
    move-exception v0

    .line 254
    :try_start_1
    invoke-static {v0}, Lcom/jirbo/adcolony/t;->a(Ljava/lang/RuntimeException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    const/4 v0, 0x0

    goto :goto_0

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    iget-boolean v0, p0, Lcom/jirbo/adcolony/af;->k:Z

    if-eqz v0, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-static {}, Lcom/jirbo/adcolony/t;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    :goto_1
    :try_start_0
    iget-boolean v0, p0, Lcom/jirbo/adcolony/af;->k:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/jirbo/adcolony/af;->j:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/jirbo/adcolony/af;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 63
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/af;->k:Z

    .line 64
    iget-object v0, p0, Lcom/jirbo/adcolony/af;->i:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jirbo/adcolony/af;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 65
    iget-object v0, p0, Lcom/jirbo/adcolony/af;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v1, v2

    .line 66
    :goto_2
    iget-object v0, p0, Lcom/jirbo/adcolony/af;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 68
    iget-object v0, p0, Lcom/jirbo/adcolony/af;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/af;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/aj;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/aj;->b()V

    .line 66
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 70
    :cond_4
    iget-object v0, p0, Lcom/jirbo/adcolony/af;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 74
    :catch_0
    move-exception v0

    .line 76
    iput-boolean v2, p0, Lcom/jirbo/adcolony/af;->k:Z

    .line 77
    iget-object v1, p0, Lcom/jirbo/adcolony/af;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 78
    iget-object v1, p0, Lcom/jirbo/adcolony/af;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 79
    invoke-static {v0}, Lcom/jirbo/adcolony/t;->a(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 72
    :cond_5
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/jirbo/adcolony/af;->k:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method a(DLcom/jirbo/adcolony/g;)V
    .locals 7

    .prologue
    .line 151
    new-instance v0, Lcom/jirbo/adcolony/af$6;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/jirbo/adcolony/af$6;-><init>(Lcom/jirbo/adcolony/af;Lcom/jirbo/adcolony/af;Lcom/jirbo/adcolony/g;D)V

    .line 163
    return-void
.end method

.method a(I)V
    .locals 0

    .prologue
    .line 508
    invoke-static {p1}, Lcom/jirbo/adcolony/t;->a(I)V

    .line 509
    return-void
.end method

.method a(Lcom/jirbo/adcolony/aj;)V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/jirbo/adcolony/af$1;

    invoke-direct {v1, p0, p1}, Lcom/jirbo/adcolony/af$1;-><init>(Lcom/jirbo/adcolony/af;Lcom/jirbo/adcolony/aj;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 51
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 52
    return-void
.end method

.method declared-synchronized a(Lcom/jirbo/adcolony/g;)V
    .locals 4

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/af;->a:Lcom/jirbo/adcolony/ae;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/jirbo/adcolony/ae;->n:D

    .line 123
    sget-object v0, Lcom/jirbo/adcolony/al;->a:Lcom/jirbo/adcolony/al;

    const-string v1, "Tracking ad event - start"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 126
    iget-object v0, p1, Lcom/jirbo/adcolony/g;->d:Lcom/jirbo/adcolony/an$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/an$e;->r:Lcom/jirbo/adcolony/z;

    iget v1, v0, Lcom/jirbo/adcolony/z;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/jirbo/adcolony/z;->d:I

    .line 128
    invoke-virtual {p1}, Lcom/jirbo/adcolony/g;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p1, Lcom/jirbo/adcolony/g;->d:Lcom/jirbo/adcolony/an$e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/an$e;->k()V

    .line 132
    :cond_0
    new-instance v0, Lcom/jirbo/adcolony/af$5;

    invoke-direct {v0, p0, p0, p1}, Lcom/jirbo/adcolony/af$5;-><init>(Lcom/jirbo/adcolony/af;Lcom/jirbo/adcolony/af;Lcom/jirbo/adcolony/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lcom/jirbo/adcolony/p;)V
    .locals 2

    .prologue
    .line 400
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/af;->a:Lcom/jirbo/adcolony/ae;

    iget-object v1, p1, Lcom/jirbo/adcolony/p;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ae;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    monitor-exit p0

    return-void

    .line 400
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/g;)V
    .locals 6

    .prologue
    .line 224
    new-instance v0, Lcom/jirbo/adcolony/af$8;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/jirbo/adcolony/af$8;-><init>(Lcom/jirbo/adcolony/af;Lcom/jirbo/adcolony/af;Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/g;)V

    .line 231
    return-void
.end method

.method declared-synchronized a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 451
    monitor-enter p0

    :try_start_0
    sget v0, Lcom/jirbo/adcolony/t;->e:I

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/af;->a(I)V

    .line 453
    sget-object v0, Lcom/jirbo/adcolony/al;->c:Lcom/jirbo/adcolony/al;

    const-string v1, "==== Configuring AdColony "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/al;

    move-result-object v0

    iget-object v1, p0, Lcom/jirbo/adcolony/af;->a:Lcom/jirbo/adcolony/ae;

    iget-object v1, v1, Lcom/jirbo/adcolony/ae;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/al;

    move-result-object v0

    const-string v1, " with app/zone ids: ===="

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 454
    sget-object v0, Lcom/jirbo/adcolony/al;->c:Lcom/jirbo/adcolony/al;

    invoke-virtual {v0, p2}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 455
    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 457
    sget-object v1, Lcom/jirbo/adcolony/al;->c:Lcom/jirbo/adcolony/al;

    aget-object v2, p3, v0

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 455
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 460
    :cond_0
    sget-object v0, Lcom/jirbo/adcolony/al;->a:Lcom/jirbo/adcolony/al;

    const-string v1, "package name: "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/al;

    move-result-object v0

    invoke-static {}, Lcom/jirbo/adcolony/u;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 462
    iget-object v0, p0, Lcom/jirbo/adcolony/af;->a:Lcom/jirbo/adcolony/ae;

    iput-object p2, v0, Lcom/jirbo/adcolony/ae;->j:Ljava/lang/String;

    .line 463
    iget-object v0, p0, Lcom/jirbo/adcolony/af;->a:Lcom/jirbo/adcolony/ae;

    iput-object p3, v0, Lcom/jirbo/adcolony/ae;->k:[Ljava/lang/String;

    .line 464
    iget-object v0, p0, Lcom/jirbo/adcolony/af;->a:Lcom/jirbo/adcolony/ae;

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/ae;->a(Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/jirbo/adcolony/af;->l:Lcom/jirbo/adcolony/u$a;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/u$a;->a()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    :goto_1
    monitor-exit p0

    return-void

    .line 467
    :catch_0
    move-exception v0

    .line 469
    :try_start_1
    invoke-static {v0}, Lcom/jirbo/adcolony/t;->a(Ljava/lang/RuntimeException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 451
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(ZLcom/jirbo/adcolony/g;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 172
    monitor-enter p0

    if-nez p2, :cond_1

    .line 209
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 173
    :cond_1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :try_start_0
    invoke-virtual {p0, v2, v3, p2}, Lcom/jirbo/adcolony/af;->a(DLcom/jirbo/adcolony/g;)V

    .line 175
    if-nez p1, :cond_0

    .line 177
    invoke-virtual {p2}, Lcom/jirbo/adcolony/g;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p2, Lcom/jirbo/adcolony/g;->d:Lcom/jirbo/adcolony/an$e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/an$e;->k()V

    .line 180
    iget-object v0, p2, Lcom/jirbo/adcolony/g;->d:Lcom/jirbo/adcolony/an$e;

    iget v2, v0, Lcom/jirbo/adcolony/an$e;->s:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/jirbo/adcolony/an$e;->s:I

    .line 181
    sget-object v0, Lcom/jirbo/adcolony/t;->H:Lcom/jirbo/adcolony/g;

    check-cast v0, Lcom/jirbo/adcolony/p;

    .line 183
    invoke-virtual {v0}, Lcom/jirbo/adcolony/p;->g()Ljava/lang/String;

    move-result-object v3

    .line 184
    invoke-virtual {v0}, Lcom/jirbo/adcolony/p;->h()I

    move-result v4

    .line 187
    iget-object v2, p2, Lcom/jirbo/adcolony/g;->d:Lcom/jirbo/adcolony/an$e;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/an$e;->b()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x0

    .line 189
    :cond_2
    if-eqz v1, :cond_0

    .line 191
    iget-object v0, v0, Lcom/jirbo/adcolony/p;->d:Lcom/jirbo/adcolony/an$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/an$e;->n:Lcom/jirbo/adcolony/an$g;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/an$g;->e:Z

    if-eqz v0, :cond_3

    .line 193
    sget-boolean v0, Lcom/jirbo/adcolony/t;->f:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v3, v4}, Lcom/jirbo/adcolony/af;->a(ZLjava/lang/String;I)V

    .line 196
    :cond_3
    new-instance v0, Lcom/jirbo/adcolony/af$7;

    move-object v1, p0

    move-object v2, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/jirbo/adcolony/af$7;-><init>(Lcom/jirbo/adcolony/af;Lcom/jirbo/adcolony/af;Ljava/lang/String;ILcom/jirbo/adcolony/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(ZLjava/lang/String;I)V
    .locals 1

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/jirbo/adcolony/t;->L:Lcom/jirbo/adcolony/t$b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jirbo/adcolony/t$b;->a(ZLjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    monitor-exit p0

    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Ljava/lang/String;ZZ)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 304
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/jirbo/adcolony/t;->d()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 312
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 305
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/jirbo/adcolony/af;->b:Lcom/jirbo/adcolony/ad;

    invoke-virtual {v1, p1, p2}, Lcom/jirbo/adcolony/ad;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/jirbo/adcolony/af;->b:Lcom/jirbo/adcolony/ad;

    iget-object v1, v1, Lcom/jirbo/adcolony/ad;->i:Lcom/jirbo/adcolony/an$l;

    iget-object v1, v1, Lcom/jirbo/adcolony/an$l;->n:Lcom/jirbo/adcolony/an$h;

    invoke-virtual {v1, p1}, Lcom/jirbo/adcolony/an$h;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/an$e;

    move-result-object v1

    .line 307
    invoke-virtual {v1, p3}, Lcom/jirbo/adcolony/an$e;->b(Z)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 309
    :catch_0
    move-exception v1

    .line 311
    :try_start_2
    invoke-static {v1}, Lcom/jirbo/adcolony/t;->a(Ljava/lang/RuntimeException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/af;->j:Z

    .line 87
    new-instance v0, Lcom/jirbo/adcolony/af$2;

    invoke-direct {v0, p0, p0}, Lcom/jirbo/adcolony/af$2;-><init>(Lcom/jirbo/adcolony/af;Lcom/jirbo/adcolony/af;)V

    .line 94
    return-void
.end method

.method declared-synchronized b(Lcom/jirbo/adcolony/g;)Z
    .locals 3

    .prologue
    .line 426
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/af;->a:Lcom/jirbo/adcolony/ae;

    iget-object v0, v0, Lcom/jirbo/adcolony/ae;->l:Lcom/jirbo/adcolony/an$e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/an$e;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    sget-object v0, Lcom/jirbo/adcolony/t;->H:Lcom/jirbo/adcolony/g;

    const/4 v1, 0x3

    iput v1, v0, Lcom/jirbo/adcolony/g;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    const/4 v0, 0x0

    .line 444
    :goto_0
    monitor-exit p0

    return v0

    .line 431
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/jirbo/adcolony/ADCVideo;->a()V

    .line 432
    sget-boolean v0, Lcom/jirbo/adcolony/t;->d:Z

    if-eqz v0, :cond_1

    .line 434
    sget-object v0, Lcom/jirbo/adcolony/al;->a:Lcom/jirbo/adcolony/al;

    const-string v1, "Launching AdColonyOverlay"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 435
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/jirbo/adcolony/t;->b()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/jirbo/adcolony/AdColonyOverlay;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 436
    invoke-static {}, Lcom/jirbo/adcolony/t;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 444
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 440
    :cond_1
    sget-object v0, Lcom/jirbo/adcolony/al;->a:Lcom/jirbo/adcolony/al;

    const-string v1, "Launching AdColonyFullscreen"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 441
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/jirbo/adcolony/t;->b()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/jirbo/adcolony/AdColonyFullscreen;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 442
    invoke-static {}, Lcom/jirbo/adcolony/t;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Lcom/jirbo/adcolony/p;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 407
    monitor-enter p0

    :try_start_0
    sput-object p1, Lcom/jirbo/adcolony/t;->H:Lcom/jirbo/adcolony/g;

    .line 408
    iget-object v1, p1, Lcom/jirbo/adcolony/p;->c:Ljava/lang/String;

    .line 410
    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/af;->e(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 420
    :goto_0
    monitor-exit p0

    return v0

    .line 412
    :cond_0
    :try_start_1
    sget-object v2, Lcom/jirbo/adcolony/al;->a:Lcom/jirbo/adcolony/al;

    const-string v3, "Showing v4vc for zone "

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/al;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/al;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 414
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/af;->a(Lcom/jirbo/adcolony/p;)V

    .line 415
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/af;->b(Lcom/jirbo/adcolony/g;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 417
    :catch_0
    move-exception v1

    .line 419
    :try_start_2
    invoke-static {v1}, Lcom/jirbo/adcolony/t;->a(Ljava/lang/RuntimeException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 263
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/af;->a:Lcom/jirbo/adcolony/ae;

    iget-object v0, v0, Lcom/jirbo/adcolony/ae;->h:Lcom/jirbo/adcolony/a$g;

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/a$g;->g(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 268
    :goto_0
    monitor-exit p0

    return v0

    .line 265
    :catch_0
    move-exception v0

    .line 267
    :try_start_1
    invoke-static {v0}, Lcom/jirbo/adcolony/t;->a(Ljava/lang/RuntimeException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    const/4 v0, 0x0

    goto :goto_0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Ljava/lang/String;ZZ)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 324
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/jirbo/adcolony/t;->d()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 333
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 326
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/jirbo/adcolony/af;->b:Lcom/jirbo/adcolony/ad;

    invoke-virtual {v1, p1, p2}, Lcom/jirbo/adcolony/ad;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/jirbo/adcolony/af;->b:Lcom/jirbo/adcolony/ad;

    iget-object v1, v1, Lcom/jirbo/adcolony/ad;->i:Lcom/jirbo/adcolony/an$l;

    iget-object v1, v1, Lcom/jirbo/adcolony/an$l;->n:Lcom/jirbo/adcolony/an$h;

    invoke-virtual {v1, p1}, Lcom/jirbo/adcolony/an$h;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/an$e;

    move-result-object v1

    .line 328
    invoke-virtual {v1, p3}, Lcom/jirbo/adcolony/an$e;->c(Z)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 330
    :catch_0
    move-exception v1

    .line 332
    :try_start_2
    invoke-static {v1}, Lcom/jirbo/adcolony/t;->a(Ljava/lang/RuntimeException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/af;->a:Lcom/jirbo/adcolony/ae;

    iget-object v0, v0, Lcom/jirbo/adcolony/ae;->h:Lcom/jirbo/adcolony/a$g;

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 282
    :goto_0
    monitor-exit p0

    return-object v0

    .line 279
    :catch_0
    move-exception v0

    .line 281
    :try_start_1
    invoke-static {v0}, Lcom/jirbo/adcolony/t;->a(Ljava/lang/RuntimeException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    const/4 v0, 0x0

    goto :goto_0

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method c()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/af;->j:Z

    .line 100
    new-instance v0, Lcom/jirbo/adcolony/af$3;

    invoke-direct {v0, p0, p0}, Lcom/jirbo/adcolony/af$3;-><init>(Lcom/jirbo/adcolony/af;Lcom/jirbo/adcolony/af;)V

    .line 107
    return-void
.end method

.method d()V
    .locals 1

    .prologue
    .line 111
    new-instance v0, Lcom/jirbo/adcolony/af$4;

    invoke-direct {v0, p0, p0}, Lcom/jirbo/adcolony/af$4;-><init>(Lcom/jirbo/adcolony/af;Lcom/jirbo/adcolony/af;)V

    .line 118
    return-void
.end method

.method declared-synchronized d(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 298
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/jirbo/adcolony/af;->a(Ljava/lang/String;ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/af;->b:Lcom/jirbo/adcolony/ad;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ad;->c()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized e(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 318
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/jirbo/adcolony/af;->b(Ljava/lang/String;ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized f(Ljava/lang/String;)Lcom/jirbo/adcolony/an$e;
    .locals 1

    .prologue
    .line 395
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/af;->b:Lcom/jirbo/adcolony/ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/ad;->i:Lcom/jirbo/adcolony/an$l;

    iget-object v0, v0, Lcom/jirbo/adcolony/an$l;->n:Lcom/jirbo/adcolony/an$h;

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/an$h;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/an$e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/af;->b:Lcom/jirbo/adcolony/ad;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ad;->d()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized g()V
    .locals 4

    .prologue
    .line 475
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/jirbo/adcolony/t;->c()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    :goto_0
    monitor-exit p0

    return-void

    .line 479
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/jirbo/adcolony/af;->a()V

    .line 481
    sget-boolean v0, Lcom/jirbo/adcolony/t;->m:Z

    if-nez v0, :cond_3

    .line 483
    invoke-static {}, Lcom/jirbo/adcolony/ah;->m()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/af;->l:Lcom/jirbo/adcolony/u$a;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/u$a;->b()D

    move-result-wide v0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/af;->a:Lcom/jirbo/adcolony/ae;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ae;->a()V

    .line 486
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/t;->m:Z

    .line 488
    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/t;->o:Z

    .line 491
    iget-object v0, p0, Lcom/jirbo/adcolony/af;->b:Lcom/jirbo/adcolony/ad;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ad;->e()V

    .line 495
    :cond_3
    iget-object v0, p0, Lcom/jirbo/adcolony/af;->c:Lcom/jirbo/adcolony/ao;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ao;->e()V

    .line 496
    iget-object v0, p0, Lcom/jirbo/adcolony/af;->e:Lcom/jirbo/adcolony/at;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/at;->b()V

    .line 497
    iget-object v0, p0, Lcom/jirbo/adcolony/af;->d:Lcom/jirbo/adcolony/as;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/as;->d()V

    .line 498
    iget-object v0, p0, Lcom/jirbo/adcolony/af;->g:Lcom/jirbo/adcolony/aa;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/aa;->c()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 500
    :catch_0
    move-exception v0

    .line 502
    :try_start_2
    invoke-static {v0}, Lcom/jirbo/adcolony/t;->a(Ljava/lang/RuntimeException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 475
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
