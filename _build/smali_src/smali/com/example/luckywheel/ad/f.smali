.class public Lcom/example/luckywheel/ad/f;
.super Ljava/util/ArrayList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/example/luckywheel/ad/h;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/example/luckywheel/ad/h;)V
    .locals 1

    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcom/example/luckywheel/ad/h;)Z
    .locals 1

    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return v0
.end method

.method public synthetic add(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/example/luckywheel/ad/h;

    invoke-virtual {p0, p1, p2}, Lcom/example/luckywheel/ad/f;->a(ILcom/example/luckywheel/ad/h;)V

    return-void
.end method

.method public synthetic add(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/example/luckywheel/ad/h;

    invoke-virtual {p0, p1}, Lcom/example/luckywheel/ad/f;->a(Lcom/example/luckywheel/ad/h;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Lcom/example/luckywheel/ad/h;",
            ">;)Z"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/example/luckywheel/ad/h;",
            ">;)Z"
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return v0
.end method
