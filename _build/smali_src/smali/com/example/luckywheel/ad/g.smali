.class public abstract Lcom/example/luckywheel/ad/g;
.super Lcom/example/luckywheel/ad/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/example/luckywheel/ad/h;",
        ">",
        "Lcom/example/luckywheel/ad/a;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/example/luckywheel/ad/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/example/luckywheel/ad/h;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/example/luckywheel/ad/g;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/ad/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/example/luckywheel/ad/g;->a()V

    invoke-virtual {p0, p1}, Lcom/example/luckywheel/ad/g;->b(Landroid/content/Context;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/example/luckywheel/ad/g;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/example/luckywheel/ad/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/luckywheel/ad/b;

    invoke-virtual {v0}, Lcom/example/luckywheel/ad/b;->d()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/example/luckywheel/ad/b;->c()Lcom/example/luckywheel/ad/h;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/example/luckywheel/ad/g;->b(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public b(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/example/luckywheel/ad/g;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/ad/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/example/luckywheel/ad/g;->a()V

    :cond_1
    iget-object v0, p0, Lcom/example/luckywheel/ad/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/luckywheel/ad/b;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/example/luckywheel/ad/b;->b(Landroid/content/Context;Lcom/example/luckywheel/ad/h$a;)V

    goto :goto_0

    :cond_2
    return-void
.end method
