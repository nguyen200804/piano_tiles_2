.class public Lcom/cmplay/d/a;
.super Ljava/lang/Object;
.source "GameSceneHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/d/a$b;,
        Lcom/cmplay/d/a$a;
    }
.end annotation


# static fields
.field private static a:Lcom/cmplay/d/a;


# instance fields
.field private b:Lcom/cmplay/d/a$a;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cmplay/d/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/cmplay/d/a;->a:Lcom/cmplay/d/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmplay/d/a;->b:Lcom/cmplay/d/a$a;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmplay/d/a;->c:Ljava/util/List;

    .line 49
    return-void
.end method

.method public static declared-synchronized a()Lcom/cmplay/d/a;
    .locals 2

    .prologue
    .line 52
    const-class v1, Lcom/cmplay/d/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cmplay/d/a;->a:Lcom/cmplay/d/a;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/cmplay/d/a;

    invoke-direct {v0}, Lcom/cmplay/d/a;-><init>()V

    sput-object v0, Lcom/cmplay/d/a;->a:Lcom/cmplay/d/a;

    .line 55
    :cond_0
    sget-object v0, Lcom/cmplay/d/a;->a:Lcom/cmplay/d/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Lcom/cmplay/d/a$a;)V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/cmplay/d/a;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/cmplay/d/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/d/a$b;

    .line 100
    invoke-interface {v0, p1}, Lcom/cmplay/d/a$b;->a(Lcom/cmplay/d/a$a;)V

    goto :goto_0

    .line 103
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/cmplay/d/a$a;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cmplay/d/a;->b:Lcom/cmplay/d/a$a;

    if-ne v0, p1, :cond_0

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    iput-object p1, p0, Lcom/cmplay/d/a;->b:Lcom/cmplay/d/a$a;

    .line 63
    invoke-direct {p0, p1}, Lcom/cmplay/d/a;->b(Lcom/cmplay/d/a$a;)V

    goto :goto_0
.end method

.method public a(Lcom/cmplay/d/a$b;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/cmplay/d/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cmplay/d/a;->b:Lcom/cmplay/d/a$a;

    sget-object v1, Lcom/cmplay/d/a$a;->a:Lcom/cmplay/d/a$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/cmplay/d/a;->b:Lcom/cmplay/d/a$a;

    sget-object v1, Lcom/cmplay/d/a$a;->b:Lcom/cmplay/d/a$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/cmplay/d/a;->b:Lcom/cmplay/d/a$a;

    sget-object v1, Lcom/cmplay/d/a$a;->c:Lcom/cmplay/d/a$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/cmplay/d/a;->b:Lcom/cmplay/d/a$a;

    sget-object v1, Lcom/cmplay/d/a$a;->d:Lcom/cmplay/d/a$a;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/cmplay/d/a;->b:Lcom/cmplay/d/a$a;

    sget-object v1, Lcom/cmplay/d/a$a;->f:Lcom/cmplay/d/a$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cmplay/d/a;->b:Lcom/cmplay/d/a$a;

    sget-object v1, Lcom/cmplay/d/a$a;->e:Lcom/cmplay/d/a$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
