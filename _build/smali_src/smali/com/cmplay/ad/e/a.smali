.class public Lcom/cmplay/ad/e/a;
.super Lcom/cmplay/ad/b;
.source "OrionVideoAds.java"

# interfaces
.implements Lcom/cmcm/orion/picks/b/b$a;


# static fields
.field private static a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/cmplay/ad/e/a;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Lcom/cmplay/ad/c;

.field private e:Lcom/cmcm/orion/picks/b/b;

.field private f:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/cmplay/ad/b;-><init>()V

    .line 29
    const-string v0, "OrionVideoAds"

    iput-object v0, p0, Lcom/cmplay/ad/e/a;->c:Ljava/lang/String;

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lcom/cmplay/ad/e/a;->f:I

    .line 35
    return-void
.end method

.method public static e()Lcom/cmplay/ad/e/a;
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lcom/cmplay/ad/e/a;->b:Lcom/cmplay/ad/e/a;

    if-nez v0, :cond_1

    .line 47
    const-class v1, Lcom/cmplay/ad/e/a;

    monitor-enter v1

    .line 48
    :try_start_0
    sget-object v0, Lcom/cmplay/ad/e/a;->b:Lcom/cmplay/ad/e/a;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/cmplay/ad/e/a;

    invoke-direct {v0}, Lcom/cmplay/ad/e/a;-><init>()V

    sput-object v0, Lcom/cmplay/ad/e/a;->b:Lcom/cmplay/ad/e/a;

    .line 51
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_1
    sget-object v0, Lcom/cmplay/ad/e/a;->b:Lcom/cmplay/ad/e/a;

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 125
    new-instance v0, Lcom/cmcm/orion/picks/b/b;

    invoke-virtual {p0}, Lcom/cmplay/ad/e/a;->d()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "144100"

    invoke-direct {v0, v1, v2}, Lcom/cmcm/orion/picks/b/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmplay/ad/e/a;->e:Lcom/cmcm/orion/picks/b/b;

    .line 126
    iget-object v0, p0, Lcom/cmplay/ad/e/a;->e:Lcom/cmcm/orion/picks/b/b;

    invoke-virtual {v0, p0}, Lcom/cmcm/orion/picks/b/b;->a(Lcom/cmcm/orion/picks/b/b$a;)V

    .line 127
    iget-object v0, p0, Lcom/cmplay/ad/e/a;->e:Lcom/cmcm/orion/picks/b/b;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/b/b;->a()V

    .line 128
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/cmplay/ad/e/a;->d:Lcom/cmplay/ad/c;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/cmplay/ad/e/a;->c:Ljava/lang/String;

    const-string v1, "on ad start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/cmplay/ad/e/a;->d:Lcom/cmplay/ad/c;

    invoke-interface {v0}, Lcom/cmplay/ad/c;->a()V

    .line 139
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 6

    .prologue
    .line 166
    iget-object v0, p0, Lcom/cmplay/ad/e/a;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on ad load fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v0, Lcom/cmplay/util/c/a/e;

    invoke-direct {v0}, Lcom/cmplay/util/c/a/e;-><init>()V

    const/4 v1, 0x3

    iget v3, p0, Lcom/cmplay/ad/e/a;->f:I

    const/4 v4, 0x7

    sget v5, Lcom/cmplay/ad/a;->f:I

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/cmplay/util/c/a/e;->a(IIIII)V

    .line 168
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 154
    iget-object v0, p0, Lcom/cmplay/ad/e/a;->d:Lcom/cmplay/ad/c;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/cmplay/ad/e/a;->c:Ljava/lang/String;

    const-string v2, "on ad onViewShowFail"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/cmplay/ad/e/a;->d:Lcom/cmplay/ad/c;

    invoke-interface {v0, v1}, Lcom/cmplay/ad/c;->a(Z)V

    .line 159
    :cond_0
    invoke-direct {p0}, Lcom/cmplay/ad/e/a;->f()V

    .line 160
    const/4 v0, 0x4

    iput v0, p0, Lcom/cmplay/ad/e/a;->f:I

    .line 161
    new-instance v0, Lcom/cmplay/util/c/a/e;

    invoke-direct {v0}, Lcom/cmplay/util/c/a/e;-><init>()V

    const/4 v2, 0x0

    iget v3, p0, Lcom/cmplay/ad/e/a;->f:I

    const/4 v4, 0x7

    sget v5, Lcom/cmplay/ad/a;->f:I

    invoke-virtual/range {v0 .. v5}, Lcom/cmplay/util/c/a/e;->a(IIIII)V

    .line 162
    return-void
.end method

.method public b()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 143
    iget-object v0, p0, Lcom/cmplay/ad/e/a;->d:Lcom/cmplay/ad/c;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/cmplay/ad/e/a;->c:Ljava/lang/String;

    const-string v1, "on ad onFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/cmplay/ad/e/a;->d:Lcom/cmplay/ad/c;

    invoke-interface {v0, v2}, Lcom/cmplay/ad/c;->a(Z)V

    .line 147
    :cond_0
    invoke-direct {p0}, Lcom/cmplay/ad/e/a;->f()V

    .line 148
    const/4 v0, 0x2

    iput v0, p0, Lcom/cmplay/ad/e/a;->f:I

    .line 149
    new-instance v0, Lcom/cmplay/util/c/a/e;

    invoke-direct {v0}, Lcom/cmplay/util/c/a/e;-><init>()V

    const/4 v1, 0x1

    iget v3, p0, Lcom/cmplay/ad/e/a;->f:I

    const/4 v4, 0x7

    sget v5, Lcom/cmplay/ad/a;->f:I

    invoke-virtual/range {v0 .. v5}, Lcom/cmplay/util/c/a/e;->a(IIIII)V

    .line 150
    return-void
.end method

.method public c()V
    .locals 6

    .prologue
    .line 172
    iget-object v0, p0, Lcom/cmplay/ad/e/a;->c:Ljava/lang/String;

    const-string v1, "on ad load success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v0, Lcom/cmplay/util/c/a/e;

    invoke-direct {v0}, Lcom/cmplay/util/c/a/e;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget v3, p0, Lcom/cmplay/ad/e/a;->f:I

    const/4 v4, 0x7

    sget v5, Lcom/cmplay/ad/a;->f:I

    invoke-virtual/range {v0 .. v5}, Lcom/cmplay/util/c/a/e;->a(IIIII)V

    .line 174
    return-void
.end method

.method public canShow(I)Z
    .locals 3
    .param p1, "reportFrom"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/cmplay/ad/e/a;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cmplay/ad/e/a;->e:Lcom/cmcm/orion/picks/b/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/ad/e/a;->e:Lcom/cmcm/orion/picks/b/b;

    invoke-virtual {v2}, Lcom/cmcm/orion/picks/b/b;->b()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/cmplay/ad/e/a;->e:Lcom/cmcm/orion/picks/b/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmplay/ad/e/a;->e:Lcom/cmcm/orion/picks/b/b;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/b/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/cmplay/ad/e/a;->c:Ljava/lang/String;

    const-string v1, "canshow true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v0, 0x1

    .line 70
    :goto_0
    return v0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/cmplay/ad/e/a;->c:Ljava/lang/String;

    const-string v1, "canshow false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/cmplay/ad/e/a;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 39
    const/4 v0, 0x0

    .line 42
    :goto_0
    return-object v0

    .line 41
    :cond_0
    sget-object v0, Lcom/cmplay/ad/e/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0
.end method

.method public onCreate(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x1

    .line 85
    iget-object v0, p0, Lcom/cmplay/ad/e/a;->c:Ljava/lang/String;

    const-string v2, "onCreate"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-super {p0, p1}, Lcom/cmplay/ad/b;->onCreate(Landroid/app/Activity;)V

    .line 87
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/cmplay/ad/e/a;->a:Ljava/lang/ref/WeakReference;

    .line 88
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "144"

    invoke-static {v0, v2}, Lcom/cmcm/orion/adsdk/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    new-instance v0, Lcom/cmplay/ad/e/a$1;

    invoke-direct {v0, p0}, Lcom/cmplay/ad/e/a$1;-><init>(Lcom/cmplay/ad/e/a;)V

    invoke-static {v0}, Lcom/cmcm/orion/adsdk/e;->a(Lcom/cmcm/orion/adsdk/c;)V

    .line 118
    invoke-direct {p0}, Lcom/cmplay/ad/e/a;->f()V

    .line 119
    iput v1, p0, Lcom/cmplay/ad/e/a;->f:I

    .line 120
    new-instance v0, Lcom/cmplay/util/c/a/e;

    invoke-direct {v0}, Lcom/cmplay/util/c/a/e;-><init>()V

    const/4 v2, 0x0

    iget v3, p0, Lcom/cmplay/ad/e/a;->f:I

    const/4 v4, 0x7

    sget v5, Lcom/cmplay/ad/a;->f:I

    invoke-virtual/range {v0 .. v5}, Lcom/cmplay/util/c/a/e;->a(IIIII)V

    .line 121
    return-void
.end method

.method public setListener(Lcom/cmplay/ad/c;)V
    .locals 0
    .param p1, "l"    # Lcom/cmplay/ad/c;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/cmplay/ad/e/a;->d:Lcom/cmplay/ad/c;

    .line 60
    return-void
.end method

.method public show(I)Z
    .locals 1
    .param p1, "reportFrom"    # I

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/cmplay/ad/e/a;->canShow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/cmplay/ad/e/a;->e:Lcom/cmcm/orion/picks/b/b;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/b/b;->c()Z

    .line 77
    const/4 v0, 0x1

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
