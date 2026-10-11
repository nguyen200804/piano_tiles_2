.class Lcom/jirbo/adcolony/ay;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jirbo/adcolony/ay$a;
    }
.end annotation


# static fields
.field static a:Ljava/lang/String;

.field static b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jirbo/adcolony/ay$a;",
            ">;"
        }
    .end annotation
.end field

.field static c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jirbo/adcolony/ay$a;",
            ">;"
        }
    .end annotation
.end field

.field static d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field static e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/lang/String;

    const-string v1, "mutex"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/jirbo/adcolony/ay;->a:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/ay;->b:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/ay;->c:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/ay;->d:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/ay;->e:Ljava/util/ArrayList;

    return-void
.end method

.method static a()V
    .locals 2

    .prologue
    .line 28
    invoke-static {}, Lcom/jirbo/adcolony/ay;->c()V

    .line 29
    sget-object v1, Lcom/jirbo/adcolony/ay;->a:Ljava/lang/String;

    monitor-enter v1

    .line 31
    :try_start_0
    sget-object v0, Lcom/jirbo/adcolony/ay;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 32
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-static {}, Lcom/jirbo/adcolony/ay;->b()V

    .line 34
    return-void

    .line 32
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static a(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 44
    sget-object v1, Lcom/jirbo/adcolony/ay;->a:Ljava/lang/String;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-boolean v2, Lcom/jirbo/adcolony/ay;->f:Z

    if-eqz v2, :cond_1

    .line 48
    sget-object v0, Lcom/jirbo/adcolony/ay;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    monitor-exit v1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 64
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static b()V
    .locals 3

    .prologue
    .line 70
    sget-object v1, Lcom/jirbo/adcolony/ay;->a:Ljava/lang/String;

    monitor-enter v1

    .line 72
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/jirbo/adcolony/ay;->f:Z

    .line 73
    sget-object v0, Lcom/jirbo/adcolony/ay;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 74
    sget-object v0, Lcom/jirbo/adcolony/ay;->e:Ljava/util/ArrayList;

    sget-object v2, Lcom/jirbo/adcolony/ay;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 75
    sget-object v0, Lcom/jirbo/adcolony/ay;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 76
    sget-object v0, Lcom/jirbo/adcolony/ay;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 77
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    sget-object v0, Lcom/jirbo/adcolony/ay;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 81
    invoke-static {v0}, Lcom/jirbo/adcolony/ay;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 83
    :cond_0
    return-void
.end method

.method static c()V
    .locals 3

    .prologue
    .line 90
    sget-object v2, Lcom/jirbo/adcolony/ay;->a:Ljava/lang/String;

    monitor-enter v2

    .line 92
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/jirbo/adcolony/ay;->f:Z

    .line 94
    sget-object v0, Lcom/jirbo/adcolony/ay;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/ay$a;

    .line 96
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 98
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 99
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 106
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 102
    :cond_0
    :try_start_3
    sget-object v1, Lcom/jirbo/adcolony/ay;->a:Ljava/lang/String;

    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 104
    :try_start_4
    sget-object v0, Lcom/jirbo/adcolony/ay;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 105
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 106
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 107
    return-void

    .line 105
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method
