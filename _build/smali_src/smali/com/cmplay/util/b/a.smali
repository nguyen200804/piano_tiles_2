.class public Lcom/cmplay/util/b/a;
.super Ljava/lang/Object;
.source "AppRecommendPreferencesUtils.java"


# static fields
.field private static a:Lcom/cmplay/util/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Lcom/cmplay/util/b/a;->a()Lcom/cmplay/util/k;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, p0, v1}, Lcom/cmplay/util/k;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static a()Lcom/cmplay/util/k;
    .locals 4

    .prologue
    .line 18
    sget-object v0, Lcom/cmplay/util/b/a;->a:Lcom/cmplay/util/k;

    if-nez v0, :cond_1

    .line 19
    const-class v1, Lcom/cmplay/util/b/a;

    monitor-enter v1

    .line 20
    :try_start_0
    sget-object v0, Lcom/cmplay/util/b/a;->a:Lcom/cmplay/util/k;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/cmplay/util/b/d;

    sget-object v2, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    const-string v3, "preferences"

    invoke-direct {v0, v2, v3}, Lcom/cmplay/util/b/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/cmplay/util/b/a;->a:Lcom/cmplay/util/k;

    .line 23
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_1
    sget-object v0, Lcom/cmplay/util/b/a;->a:Lcom/cmplay/util/k;

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/cmplay/util/b/a;->a()Lcom/cmplay/util/k;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/k;->b(Ljava/lang/String;I)V

    .line 30
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/cmplay/util/b/a;->a()Lcom/cmplay/util/k;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/cmplay/util/b/a;->a()Lcom/cmplay/util/k;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/k;->b(Ljava/lang/String;Z)V

    .line 47
    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    invoke-static {}, Lcom/cmplay/util/b/a;->a()Lcom/cmplay/util/k;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, p0, v1}, Lcom/cmplay/util/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/cmplay/util/b/a;->a()Lcom/cmplay/util/k;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/cmplay/util/k;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/cmplay/util/b/a;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
