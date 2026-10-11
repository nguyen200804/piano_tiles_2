.class public Lcom/duapps/ad/c/a/a;
.super Ljava/lang/Object;
.source "NetworkRequestFilterManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duapps/ad/c/a/a$b;,
        Lcom/duapps/ad/c/a/a$a;,
        Lcom/duapps/ad/c/a/a$c;
    }
.end annotation


# static fields
.field private static final a:I

.field private static volatile c:Lcom/duapps/ad/c/a/a;

.field private static f:Z


# instance fields
.field private b:I

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput v0, Lcom/duapps/ad/c/a/a;->a:I

    return-void

    :cond_0
    const/16 v0, 0x801

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/c/a/a;->d:Landroid/content/Context;

    .line 58
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/duapps/ad/c/a/a;
    .locals 2

    .prologue
    .line 61
    sget-object v0, Lcom/duapps/ad/c/a/a;->c:Lcom/duapps/ad/c/a/a;

    if-nez v0, :cond_1

    .line 62
    const-class v1, Lcom/duapps/ad/c/a/a;

    monitor-enter v1

    .line 63
    :try_start_0
    sget-object v0, Lcom/duapps/ad/c/a/a;->c:Lcom/duapps/ad/c/a/a;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/duapps/ad/c/a/a;

    invoke-direct {v0, p0}, Lcom/duapps/ad/c/a/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/duapps/ad/c/a/a;->c:Lcom/duapps/ad/c/a/a;

    .line 66
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_1
    sget-object v0, Lcom/duapps/ad/c/a/a;->c:Lcom/duapps/ad/c/a/a;

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static g()Z
    .locals 1

    .prologue
    .line 228
    sget-boolean v0, Lcom/duapps/ad/c/a/a;->f:Z

    if-eqz v0, :cond_0

    .line 229
    sget-boolean v0, Lcom/duapps/ad/c/a/a;->f:Z

    .line 233
    :goto_0
    return v0

    .line 231
    :cond_0
    invoke-static {}, Lcom/duapps/ad/c/a/a;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/duapps/ad/c/a/a;->f:Z

    .line 233
    sget-boolean v0, Lcom/duapps/ad/c/a/a;->f:Z

    goto :goto_0

    .line 231
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static h()Ljava/lang/String;
    .locals 5

    .prologue
    .line 257
    const-string v0, "PATH"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 259
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 260
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/su"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 263
    const-string v1, "NetworkRequestFilterManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :goto_1
    return-object v0

    .line 259
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 267
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a()Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-virtual {p0}, Lcom/duapps/ad/c/a/a;->b()Z

    move-result v0

    .line 77
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 78
    iget-object v4, p0, Lcom/duapps/ad/c/a/a;->d:Landroid/content/Context;

    invoke-static {v4}, Lcom/duapps/ad/base/m;->t(Landroid/content/Context;)J

    move-result-wide v4

    .line 79
    iget-object v6, p0, Lcom/duapps/ad/c/a/a;->d:Landroid/content/Context;

    invoke-static {v6}, Lcom/duapps/ad/base/m;->u(Landroid/content/Context;)J

    move-result-wide v6

    .line 80
    if-eqz v0, :cond_2

    .line 81
    sub-long/2addr v2, v4

    cmp-long v0, v2, v6

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    .line 82
    :goto_0
    const-string v2, "NetworkRequestFilterManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isOverTime\uff084H\uff09:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", last check time:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    if-nez v0, :cond_2

    .line 84
    iput v1, p0, Lcom/duapps/ad/c/a/a;->b:I

    .line 85
    iget-object v0, p0, Lcom/duapps/ad/c/a/a;->d:Landroid/content/Context;

    iget v2, p0, Lcom/duapps/ad/c/a/a;->b:I

    iget-object v3, p0, Lcom/duapps/ad/c/a/a;->e:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/duapps/ad/stats/c;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 94
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v1

    .line 81
    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {p0}, Lcom/duapps/ad/c/a/a;->c()Z

    move-result v1

    .line 90
    if-nez v1, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/duapps/ad/c/a/a;->f()I

    move-result v0

    .line 92
    iget-object v2, p0, Lcom/duapps/ad/c/a/a;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/duapps/ad/c/a/a;->e:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/duapps/ad/stats/c;->a(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 72
    iput-object p1, p0, Lcom/duapps/ad/c/a/a;->e:Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Lcom/duapps/ad/c/a/a;->a()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/duapps/ad/c/a/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/m;->v(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 123
    iget-object v1, p0, Lcom/duapps/ad/c/a/a;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/duapps/ad/base/m;->w(Landroid/content/Context;)Z

    move-result v1

    .line 124
    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/duapps/ad/c/a/a;->d()Z

    move-result v1

    .line 126
    const-string v2, "NetworkRequestFilterManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isTcpDumpRunning:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    if-eqz v1, :cond_0

    .line 128
    const/4 v1, 0x2

    iput v1, p0, Lcom/duapps/ad/c/a/a;->b:I

    .line 142
    :goto_0
    return v0

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/duapps/ad/c/a/a;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/duapps/ad/base/m;->x(Landroid/content/Context;)Z

    move-result v1

    .line 134
    if-eqz v1, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/duapps/ad/c/a/a;->e()Z

    move-result v1

    .line 136
    const-string v2, "NetworkRequestFilterManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSimulator:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    if-eqz v1, :cond_1

    .line 138
    const/4 v1, 0x5

    iput v1, p0, Lcom/duapps/ad/c/a/a;->b:I

    goto :goto_0

    .line 142
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 177
    invoke-static {}, Lcom/duapps/ad/c/a/a;->g()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/duapps/ad/c/a/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/c/a/a$b;->a(Landroid/content/Context;)Lcom/duapps/ad/c/a/a$b;

    move-result-object v1

    .line 185
    invoke-virtual {v1}, Lcom/duapps/ad/c/a/a$b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    invoke-virtual {v1}, Lcom/duapps/ad/c/a/a$b;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    invoke-virtual {v1}, Lcom/duapps/ad/c/a/a$b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    invoke-virtual {v1}, Lcom/duapps/ad/c/a/a$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    invoke-virtual {v1}, Lcom/duapps/ad/c/a/a$b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    invoke-virtual {v1}, Lcom/duapps/ad/c/a/a$b;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 195
    :goto_0
    if-eqz v0, :cond_1

    .line 196
    invoke-virtual {v1}, Lcom/duapps/ad/c/a/a$b;->a()V

    .line 198
    :cond_1
    return v0

    .line 194
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/duapps/ad/c/a/a;->b:I

    return v0
.end method
