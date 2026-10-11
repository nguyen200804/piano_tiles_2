.class public Lcom/ijinshan/cloudconfig/b/a;
.super Ljava/lang/Object;
.source "CommonConfig.java"


# static fields
.field private static d:Lcom/ijinshan/cloudconfig/b/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/SharedPreferences;

.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "cloudconfig"

    iput-object v0, p0, Lcom/ijinshan/cloudconfig/b/a;->a:Ljava/lang/String;

    .line 28
    invoke-static {}, Lcom/ijinshan/cloudconfig/c/a;->d()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/cloudconfig/b/a;->c:Landroid/content/Context;

    .line 29
    iget-object v0, p0, Lcom/ijinshan/cloudconfig/b/a;->c:Landroid/content/Context;

    const-string v1, "cloudconfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/cloudconfig/b/a;->b:Landroid/content/SharedPreferences;

    .line 30
    return-void
.end method

.method public static a()Lcom/ijinshan/cloudconfig/b/a;
    .locals 2

    .prologue
    .line 17
    sget-object v0, Lcom/ijinshan/cloudconfig/b/a;->d:Lcom/ijinshan/cloudconfig/b/a;

    if-nez v0, :cond_1

    .line 18
    const-class v1, Lcom/ijinshan/cloudconfig/b/a;

    monitor-enter v1

    .line 19
    :try_start_0
    sget-object v0, Lcom/ijinshan/cloudconfig/b/a;->d:Lcom/ijinshan/cloudconfig/b/a;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/ijinshan/cloudconfig/b/a;

    invoke-direct {v0}, Lcom/ijinshan/cloudconfig/b/a;-><init>()V

    sput-object v0, Lcom/ijinshan/cloudconfig/b/a;->d:Lcom/ijinshan/cloudconfig/b/a;

    .line 22
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_1
    sget-object v0, Lcom/ijinshan/cloudconfig/b/a;->d:Lcom/ijinshan/cloudconfig/b/a;

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ijinshan/cloudconfig/b/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 4

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ijinshan/cloudconfig/b/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 44
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 45
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 46
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ijinshan/cloudconfig/b/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 34
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 35
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 36
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ijinshan/cloudconfig/b/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
