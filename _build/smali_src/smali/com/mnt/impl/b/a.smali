.class public final Lcom/mnt/impl/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final a:Ljava/util/Map;
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

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mnt/impl/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Lcom/mnt/impl/b/a;


# instance fields
.field public b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mnt/impl/b/a;->c:Ljava/util/Map;

    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mnt/impl/b/a;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mnt/impl/b/a;->b:Landroid/content/Context;

    .line 30
    invoke-static {p1}, Lcom/mnt/impl/b/h;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 31
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 32
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 33
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 34
    new-instance v3, Lcom/mnt/impl/e/a;

    invoke-direct {v3, v2}, Lcom/mnt/impl/e/a;-><init>(Ljava/lang/String;)V

    .line 35
    sget-object v2, Lcom/mnt/impl/b/a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 37
    :cond_0
    invoke-static {p1}, Lcom/mnt/impl/b/h;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 38
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 39
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 40
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 41
    sget-object v3, Lcom/mnt/impl/b/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 43
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 44
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/mnt/impl/b/a;
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lcom/mnt/impl/b/a;->d:Lcom/mnt/impl/b/a;

    if-nez v0, :cond_0

    if-nez p0, :cond_1

    .line 48
    :cond_0
    sget-object v0, Lcom/mnt/impl/b/a;->d:Lcom/mnt/impl/b/a;

    .line 56
    :goto_0
    return-object v0

    .line 50
    :cond_1
    sget-object v1, Lcom/mnt/impl/b/a;->c:Ljava/util/Map;

    monitor-enter v1

    .line 51
    :try_start_0
    sget-object v0, Lcom/mnt/impl/b/a;->d:Lcom/mnt/impl/b/a;

    if-eqz v0, :cond_2

    .line 52
    sget-object v0, Lcom/mnt/impl/b/a;->d:Lcom/mnt/impl/b/a;

    monitor-exit v1

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 54
    :cond_2
    :try_start_1
    new-instance v0, Lcom/mnt/impl/b/a;

    invoke-direct {v0, p0}, Lcom/mnt/impl/b/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mnt/impl/b/a;->d:Lcom/mnt/impl/b/a;

    .line 55
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    sget-object v0, Lcom/mnt/impl/b/a;->d:Lcom/mnt/impl/b/a;

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/mnt/impl/e/a;
    .locals 3

    .prologue
    .line 86
    sget-object v0, Lcom/mnt/impl/b/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mnt/impl/e/a;

    .line 87
    if-nez v0, :cond_0

    .line 88
    iget-object v1, p0, Lcom/mnt/impl/b/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/mnt/impl/b/h;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 90
    new-instance v0, Lcom/mnt/impl/e/a;

    invoke-direct {v0, v1}, Lcom/mnt/impl/e/a;-><init>(Ljava/lang/String;)V

    .line 93
    :cond_0
    return-object v0
.end method

.method public final a(Lcom/mnt/impl/e/a;)V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mnt/impl/b/a;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 4040
    iget-object v0, p1, Lcom/mnt/impl/e/a;->a:Ljava/lang/String;

    .line 112
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4052
    iget-object v0, p1, Lcom/mnt/impl/e/a;->c:Ljava/lang/String;

    .line 112
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    sget-object v0, Lcom/mnt/impl/b/a;->c:Ljava/util/Map;

    .line 5052
    iget-object v1, p1, Lcom/mnt/impl/e/a;->c:Ljava/lang/String;

    .line 115
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/mnt/impl/b/a;->a:Ljava/util/Map;

    .line 6040
    iget-object v1, p1, Lcom/mnt/impl/e/a;->a:Ljava/lang/String;

    .line 116
    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/mnt/impl/b/a;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/mnt/impl/b/h;->a(Landroid/content/Context;Lcom/mnt/impl/e/a;)V

    goto :goto_0
.end method

.method public final run()V
    .locals 4

    .prologue
    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/mnt/impl/b/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mnt/impl/b/h;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 66
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 67
    sget-object v0, Lcom/mnt/impl/b/a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mnt/impl/e/a;

    .line 68
    invoke-virtual {v0}, Lcom/mnt/impl/e/a;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1052
    iget-object v3, v0, Lcom/mnt/impl/e/a;->c:Ljava/lang/String;

    .line 68
    if-eqz v3, :cond_0

    .line 2052
    iget-object v3, v0, Lcom/mnt/impl/e/a;->c:Ljava/lang/String;

    .line 69
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 70
    sget-object v3, Lcom/mnt/impl/b/a;->c:Ljava/util/Map;

    .line 3052
    iget-object v0, v0, Lcom/mnt/impl/e/a;->c:Ljava/lang/String;

    .line 70
    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    :goto_1
    return-void

    .line 73
    :cond_1
    :try_start_1
    invoke-static {v1}, Lcom/mnt/impl/b/h;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
