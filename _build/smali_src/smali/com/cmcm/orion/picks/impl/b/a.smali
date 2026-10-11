.class public Lcom/cmcm/orion/picks/impl/b/a;
.super Ljava/lang/Object;
.source "FileFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/orion/picks/impl/b/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/cmcm/orion/picks/impl/a/a;

.field private static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/cmcm/orion/picks/impl/b/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/cmcm/orion/picks/impl/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmcm/orion/picks/impl/b/a;->a:Ljava/lang/String;

    .line 29
    new-instance v0, Lcom/cmcm/orion/picks/impl/a/a;

    invoke-direct {v0}, Lcom/cmcm/orion/picks/impl/a/a;-><init>()V

    sput-object v0, Lcom/cmcm/orion/picks/impl/b/a;->b:Lcom/cmcm/orion/picks/impl/a/a;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cmcm/orion/picks/impl/b/a;->c:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method static synthetic a()Lcom/cmcm/orion/picks/impl/a/a;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/cmcm/orion/picks/impl/b/a;->b:Lcom/cmcm/orion/picks/impl/a/a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZLcom/cmcm/orion/picks/impl/a$a;)V
    .locals 3

    .prologue
    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    sget-object v0, Lcom/cmcm/orion/adsdk/d;->o:Lcom/cmcm/orion/adsdk/d;

    invoke-interface {p3, p1, v0}, Lcom/cmcm/orion/picks/impl/a$a;->a(Ljava/lang/String;Lcom/cmcm/orion/adsdk/d;)V

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    invoke-static {p1}, Lcom/cmcm/orion/picks/impl/b/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    invoke-static {p1}, Lcom/cmcm/orion/picks/impl/b/a;->c(Ljava/lang/String;)Lcom/cmcm/orion/picks/impl/b/a$a;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0, p3}, Lcom/cmcm/orion/picks/impl/b/a$a;->a(Lcom/cmcm/orion/picks/impl/a$a;)V

    goto :goto_0

    .line 59
    :cond_2
    new-instance v0, Lcom/cmcm/orion/picks/impl/b/a$a;

    invoke-direct {v0, p1}, Lcom/cmcm/orion/picks/impl/b/a$a;-><init>(Ljava/lang/String;)V

    .line 1073
    sget-object v1, Lcom/cmcm/orion/picks/impl/b/a;->c:Ljava/util/HashMap;

    monitor-enter v1

    .line 1074
    :try_start_0
    sget-object v2, Lcom/cmcm/orion/picks/impl/b/a;->c:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-virtual {v0, p2}, Lcom/cmcm/orion/picks/impl/b/a$a;->a(Z)V

    .line 62
    invoke-virtual {v0, p3}, Lcom/cmcm/orion/picks/impl/b/a$a;->a(Lcom/cmcm/orion/picks/impl/a$a;)V

    .line 63
    invoke-virtual {v0, p0}, Lcom/cmcm/orion/picks/impl/b/a$a;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 1075
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 26
    .line 1085
    sget-object v1, Lcom/cmcm/orion/picks/impl/b/a;->c:Ljava/util/HashMap;

    monitor-enter v1

    .line 1086
    :try_start_0
    sget-object v0, Lcom/cmcm/orion/picks/impl/b/a;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/cmcm/orion/picks/impl/b/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 67
    sget-object v1, Lcom/cmcm/orion/picks/impl/b/a;->c:Ljava/util/HashMap;

    monitor-enter v1

    .line 68
    :try_start_0
    sget-object v0, Lcom/cmcm/orion/picks/impl/b/a;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static c(Ljava/lang/String;)Lcom/cmcm/orion/picks/impl/b/a$a;
    .locals 2

    .prologue
    .line 79
    sget-object v1, Lcom/cmcm/orion/picks/impl/b/a;->c:Ljava/util/HashMap;

    monitor-enter v1

    .line 80
    :try_start_0
    sget-object v0, Lcom/cmcm/orion/picks/impl/b/a;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/orion/picks/impl/b/a$a;

    monitor-exit v1

    return-object v0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
