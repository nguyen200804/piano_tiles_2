.class public final Lcom/cmcm/orion/picks/webview/d;
.super Ljava/lang/Object;
.source "Reflection.java"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Z


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/cmcm/orion/picks/webview/d;->a:Ljava/lang/Object;

    .line 19
    iput-object p2, p0, Lcom/cmcm/orion/picks/webview/d;->b:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmcm/orion/picks/webview/d;->d:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmcm/orion/picks/webview/d;->e:Ljava/util/List;

    .line 24
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/cmcm/orion/picks/webview/d;->c:Ljava/lang/Class;

    .line 25
    return-void

    .line 24
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static varargs a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 65
    .line 67
    :goto_0
    if-eqz p0, :cond_0

    .line 69
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 71
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 28
    :try_start_0
    new-instance v1, Lcom/cmcm/orion/picks/webview/d;

    invoke-direct {v1, p0, p1}, Lcom/cmcm/orion/picks/webview/d;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1033
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/cmcm/orion/picks/webview/d;->f:Z

    .line 1046
    iget-object v0, v1, Lcom/cmcm/orion/picks/webview/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Class;

    .line 1047
    iget-object v2, v1, Lcom/cmcm/orion/picks/webview/d;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    .line 1049
    iget-object v2, v1, Lcom/cmcm/orion/picks/webview/d;->c:Ljava/lang/Class;

    iget-object v3, v1, Lcom/cmcm/orion/picks/webview/d;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/cmcm/orion/picks/webview/d;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1051
    iget-boolean v2, v1, Lcom/cmcm/orion/picks/webview/d;->f:Z

    if-eqz v2, :cond_0

    .line 1052
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1055
    :cond_0
    iget-object v2, v1, Lcom/cmcm/orion/picks/webview/d;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 1057
    iget-boolean v3, v1, Lcom/cmcm/orion/picks/webview/d;->g:Z

    if-eqz v3, :cond_1

    .line 1058
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    .line 1060
    :cond_1
    iget-object v1, v1, Lcom/cmcm/orion/picks/webview/d;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    goto :goto_0
.end method
