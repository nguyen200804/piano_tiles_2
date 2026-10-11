.class public Lcom/b/a/g;
.super Ljava/lang/Object;
.source "InternalAgent.java"

# interfaces
.implements Lb/a/cx;


# instance fields
.field private final a:Lcom/b/a/b/b;

.field private b:Landroid/content/Context;

.field private c:Lcom/b/a/f;

.field private d:Lb/a/cp;

.field private e:Lb/a/e;

.field private f:Lb/a/db;

.field private g:Lb/a/cq;

.field private h:Lb/a/cn;

.field private i:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/b/a/b/b;

    invoke-direct {v0}, Lcom/b/a/b/b;-><init>()V

    iput-object v0, p0, Lcom/b/a/g;->a:Lcom/b/a/b/b;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/g;->b:Landroid/content/Context;

    .line 30
    new-instance v0, Lb/a/cp;

    invoke-direct {v0}, Lb/a/cp;-><init>()V

    iput-object v0, p0, Lcom/b/a/g;->d:Lb/a/cp;

    .line 31
    new-instance v0, Lb/a/e;

    invoke-direct {v0}, Lb/a/e;-><init>()V

    iput-object v0, p0, Lcom/b/a/g;->e:Lb/a/e;

    .line 32
    new-instance v0, Lb/a/db;

    invoke-direct {v0}, Lb/a/db;-><init>()V

    iput-object v0, p0, Lcom/b/a/g;->f:Lb/a/db;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/g;->i:Z

    .line 39
    iget-object v0, p0, Lcom/b/a/g;->d:Lb/a/cp;

    invoke-virtual {v0, p0}, Lb/a/cp;->a(Lb/a/cx;)V

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/b/a/g;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/b/a/g;->e(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/b/a/g;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/b/a/g;->f(Landroid/content/Context;)V

    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/b/a/g;->i:Z

    if-nez v0, :cond_0

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/g;->b:Landroid/content/Context;

    .line 45
    new-instance v0, Lb/a/cq;

    iget-object v1, p0, Lcom/b/a/g;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lb/a/cq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/b/a/g;->g:Lb/a/cq;

    .line 46
    iget-object v0, p0, Lcom/b/a/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lb/a/cn;->a(Landroid/content/Context;)Lb/a/cn;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/g;->h:Lb/a/cn;

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/g;->i:Z

    .line 50
    :cond_0
    return-void
.end method

.method private e(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/b/a/g;->f:Lb/a/db;

    invoke-virtual {v0, p1}, Lb/a/db;->c(Landroid/content/Context;)V

    .line 197
    iget-object v0, p0, Lcom/b/a/g;->c:Lcom/b/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/g;->c:Lcom/b/a/f;

    invoke-interface {v0}, Lcom/b/a/f;->a()V

    .line 198
    :cond_0
    return-void
.end method

.method private f(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/b/a/g;->f:Lb/a/db;

    invoke-virtual {v0, p1}, Lb/a/db;->d(Landroid/content/Context;)V

    .line 202
    iget-object v0, p0, Lcom/b/a/g;->e:Lb/a/e;

    invoke-virtual {v0, p1}, Lb/a/e;->a(Landroid/content/Context;)V

    .line 204
    iget-object v0, p0, Lcom/b/a/g;->c:Lcom/b/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/g;->c:Lcom/b/a/f;

    invoke-interface {v0}, Lcom/b/a/f;->b()V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/b/a/g;->h:Lb/a/cn;

    invoke-virtual {v0}, Lb/a/cn;->b()V

    .line 206
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 77
    sput p1, Lcom/b/a/a;->c:I

    .line 78
    return-void
.end method

.method a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 87
    const-string v0, "MobclickAgent"

    const-string v1, "unexpected null context in onResume"

    invoke-static {v0, v1}, Lb/a/ap;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/b/a/g;->a:Lcom/b/a/b/b;

    invoke-virtual {v0, p1}, Lcom/b/a/b/b;->a(Landroid/content/Context;)V

    .line 93
    :try_start_0
    invoke-static {p1}, Lb/a/cn;->a(Landroid/content/Context;)Lb/a/cn;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/g;->a:Lcom/b/a/b/b;

    invoke-virtual {v0, v1}, Lb/a/cn;->a(Lcom/b/a/b/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 8

    .prologue
    .line 219
    :try_start_0
    iget-boolean v0, p0, Lcom/b/a/g;->i:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/b/a/g;->d(Landroid/content/Context;)V

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/b/a/g;->g:Lb/a/cq;

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v1 .. v6}, Lb/a/cq;->a(Ljava/lang/String;Ljava/lang/String;JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    const-string v1, "MobclickAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lb/a/ap;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    :try_start_0
    iget-boolean v0, p0, Lcom/b/a/g;->i:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/b/a/g;->d(Landroid/content/Context;)V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/b/a/g;->g:Lb/a/cq;

    invoke-virtual {v0, p2, p3}, Lb/a/cq;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    const-string v1, "MobclickAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lb/a/ap;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 228
    :try_start_0
    iget-boolean v0, p0, Lcom/b/a/g;->i:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/b/a/g;->d(Landroid/content/Context;)V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/b/a/g;->g:Lb/a/cq;

    invoke-virtual {v0, p2, p3, p4, p5}, Lb/a/cq;->a(Ljava/lang/String;Ljava/util/Map;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    const-string v1, "MobclickAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lb/a/ap;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(Lcom/b/a/f;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/b/a/g;->c:Lcom/b/a/f;

    .line 74
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/b/a/g;->e:Lb/a/e;

    invoke-virtual {v0}, Lb/a/e;->a()V

    .line 301
    iget-object v0, p0, Lcom/b/a/g;->b:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 302
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/b/a/g;->h:Lb/a/cn;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/b/a/g;->h:Lb/a/cn;

    new-instance v1, Lb/a/g;

    invoke-direct {v1, p1}, Lb/a/g;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lb/a/cn;->b(Lb/a/cs;)V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/b/a/g;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/b/a/g;->f(Landroid/content/Context;)V

    .line 306
    iget-object v0, p0, Lcom/b/a/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lb/a/cz;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 309
    :cond_1
    invoke-static {}, Lcom/b/a/i;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :goto_0
    return-void

    .line 310
    :catch_0
    move-exception v0

    .line 311
    const-string v1, "MobclickAgent"

    const-string v2, "Exception in onAppCrash"

    invoke-static {v1, v2, v0}, Lb/a/ap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 102
    if-nez p1, :cond_0

    .line 103
    const-string v0, "MobclickAgent"

    const-string v1, "unexpected null context in onResume"

    invoke-static {v0, v1}, Lb/a/ap;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :goto_0
    return-void

    .line 107
    :cond_0
    sget-boolean v0, Lcom/b/a/a;->h:Z

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/b/a/g;->e:Lb/a/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/e;->a(Ljava/lang/String;)V

    .line 112
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/b/a/g;->i:Z

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/b/a/g;->d(Landroid/content/Context;)V

    .line 114
    :cond_2
    new-instance v0, Lcom/b/a/g$1;

    invoke-direct {v0, p0, p1}, Lcom/b/a/g$1;-><init>(Lcom/b/a/g;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    const-string v1, "MobclickAgent"

    const-string v2, "Exception occurred in Mobclick.onResume(). "

    invoke-static {v1, v2, v0}, Lb/a/ap;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method c(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 127
    if-nez p1, :cond_0

    .line 128
    const-string v0, "MobclickAgent"

    const-string v1, "unexpected null context in onPause"

    invoke-static {v0, v1}, Lb/a/ap;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :goto_0
    return-void

    .line 132
    :cond_0
    sget-boolean v0, Lcom/b/a/a;->h:Z

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/b/a/g;->e:Lb/a/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/e;->b(Ljava/lang/String;)V

    .line 137
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/b/a/g;->i:Z

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/b/a/g;->d(Landroid/content/Context;)V

    .line 139
    :cond_2
    new-instance v0, Lcom/b/a/g$2;

    invoke-direct {v0, p0, p1}, Lcom/b/a/g$2;-><init>(Lcom/b/a/g;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    const-string v1, "MobclickAgent"

    const-string v2, "Exception occurred in Mobclick.onRause(). "

    invoke-static {v1, v2, v0}, Lb/a/ap;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
