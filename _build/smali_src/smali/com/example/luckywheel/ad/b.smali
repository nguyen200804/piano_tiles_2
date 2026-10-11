.class public abstract Lcom/example/luckywheel/ad/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/example/luckywheel/ad/h;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/example/luckywheel/ad/b;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/example/luckywheel/ad/f;

    invoke-direct {v0}, Lcom/example/luckywheel/ad/f;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/example/luckywheel/ad/b;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/example/luckywheel/ad/b;)I
    .locals 2

    invoke-virtual {p1}, Lcom/example/luckywheel/ad/b;->f()I

    move-result v0

    invoke-virtual {p0}, Lcom/example/luckywheel/ad/b;->f()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public abstract a(Landroid/content/Context;Lcom/example/luckywheel/ad/h$a;)V
.end method

.method public a(Lcom/example/luckywheel/ad/h;)V
    .locals 2

    iget-object v1, p0, Lcom/example/luckywheel/ad/b;->a:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/example/luckywheel/ad/b;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/ad/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/ad/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract b()I
.end method

.method public b(Landroid/content/Context;Lcom/example/luckywheel/ad/h$a;)V
    .locals 1

    invoke-virtual {p0}, Lcom/example/luckywheel/ad/b;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/example/luckywheel/ad/b;->a(Landroid/content/Context;Lcom/example/luckywheel/ad/h$a;)V

    :cond_0
    return-void
.end method

.method public c()Lcom/example/luckywheel/ad/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/example/luckywheel/ad/b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/example/luckywheel/ad/b;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/luckywheel/ad/h;

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ad/b;->a(Lcom/example/luckywheel/ad/h;)V

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/example/luckywheel/ad/b;

    invoke-virtual {p0, p1}, Lcom/example/luckywheel/ad/b;->a(Lcom/example/luckywheel/ad/b;)I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    invoke-virtual {p0}, Lcom/example/luckywheel/ad/b;->e()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/example/luckywheel/ad/b;->a:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/example/luckywheel/ad/b;->a:Ljava/util/List;

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/example/luckywheel/ad/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/example/luckywheel/ad/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/luckywheel/ad/h;

    invoke-virtual {v0}, Lcom/example/luckywheel/ad/h;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method protected f()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/example/luckywheel/ad/b;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/example/luckywheel/ad/b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/example/luckywheel/ad/b;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/example/luckywheel/ad/b;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/luckywheel/ad/h;

    invoke-virtual {v0}, Lcom/example/luckywheel/ad/h;->b()I

    move-result v0

    goto :goto_0
.end method
