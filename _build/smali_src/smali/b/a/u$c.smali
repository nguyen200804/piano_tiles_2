.class Lb/a/u$c;
.super Lb/a/cb;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/cb",
        "<",
        "Lb/a/u;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 549
    invoke-direct {p0}, Lb/a/cb;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/u$1;)V
    .locals 0

    .prologue
    .line 549
    invoke-direct {p0}, Lb/a/u$c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lb/a/br;Lb/a/ay;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 549
    check-cast p2, Lb/a/u;

    invoke-virtual {p0, p1, p2}, Lb/a/u$c;->a(Lb/a/br;Lb/a/u;)V

    return-void
.end method

.method public a(Lb/a/br;Lb/a/u;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 553
    check-cast p1, Lb/a/bx;

    .line 554
    iget-object v0, p2, Lb/a/u;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/bx;->a(Ljava/lang/String;)V

    .line 556
    iget-object v0, p2, Lb/a/u;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/bx;->a(I)V

    .line 557
    iget-object v0, p2, Lb/a/u;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 559
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lb/a/bx;->a(Ljava/lang/String;)V

    .line 560
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/ag;

    invoke-virtual {v0, p1}, Lb/a/ag;->b(Lb/a/br;)V

    goto :goto_0

    .line 563
    :cond_0
    iget-wide v0, p2, Lb/a/u;->e:J

    invoke-virtual {p1, v0, v1}, Lb/a/bx;->a(J)V

    .line 564
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 565
    invoke-virtual {p2}, Lb/a/u;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 566
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 568
    :cond_1
    invoke-virtual {p2}, Lb/a/u;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 569
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 571
    :cond_2
    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lb/a/bx;->a(Ljava/util/BitSet;I)V

    .line 572
    invoke-virtual {p2}, Lb/a/u;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 573
    iget-wide v0, p2, Lb/a/u;->c:J

    invoke-virtual {p1, v0, v1}, Lb/a/bx;->a(J)V

    .line 575
    :cond_3
    invoke-virtual {p2}, Lb/a/u;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 576
    iget v0, p2, Lb/a/u;->d:I

    invoke-virtual {p1, v0}, Lb/a/bx;->a(I)V

    .line 578
    :cond_4
    return-void
.end method

.method public bridge synthetic b(Lb/a/br;Lb/a/ay;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 549
    check-cast p2, Lb/a/u;

    invoke-virtual {p0, p1, p2}, Lb/a/u$c;->b(Lb/a/br;Lb/a/u;)V

    return-void
.end method

.method public b(Lb/a/br;Lb/a/u;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 582
    check-cast p1, Lb/a/bx;

    .line 583
    invoke-virtual {p1}, Lb/a/bx;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/u;->a:Ljava/lang/String;

    .line 584
    invoke-virtual {p2, v6}, Lb/a/u;->a(Z)V

    .line 586
    new-instance v2, Lb/a/bq;

    const/16 v0, 0xb

    const/16 v3, 0xc

    invoke-virtual {p1}, Lb/a/bx;->s()I

    move-result v4

    invoke-direct {v2, v0, v3, v4}, Lb/a/bq;-><init>(BBI)V

    .line 587
    new-instance v0, Ljava/util/HashMap;

    iget v3, v2, Lb/a/bq;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lb/a/u;->b:Ljava/util/Map;

    move v0, v1

    .line 588
    :goto_0
    iget v3, v2, Lb/a/bq;->c:I

    if-ge v0, v3, :cond_0

    .line 592
    invoke-virtual {p1}, Lb/a/bx;->v()Ljava/lang/String;

    move-result-object v3

    .line 593
    new-instance v4, Lb/a/ag;

    invoke-direct {v4}, Lb/a/ag;-><init>()V

    .line 594
    invoke-virtual {v4, p1}, Lb/a/ag;->a(Lb/a/br;)V

    .line 595
    iget-object v5, p2, Lb/a/u;->b:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 598
    :cond_0
    invoke-virtual {p2, v6}, Lb/a/u;->b(Z)V

    .line 599
    invoke-virtual {p1}, Lb/a/bx;->t()J

    move-result-wide v2

    iput-wide v2, p2, Lb/a/u;->e:J

    .line 600
    invoke-virtual {p2, v6}, Lb/a/u;->e(Z)V

    .line 601
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lb/a/bx;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 602
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 603
    invoke-virtual {p1}, Lb/a/bx;->t()J

    move-result-wide v2

    iput-wide v2, p2, Lb/a/u;->c:J

    .line 604
    invoke-virtual {p2, v6}, Lb/a/u;->c(Z)V

    .line 606
    :cond_1
    invoke-virtual {v0, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 607
    invoke-virtual {p1}, Lb/a/bx;->s()I

    move-result v0

    iput v0, p2, Lb/a/u;->d:I

    .line 608
    invoke-virtual {p2, v6}, Lb/a/u;->d(Z)V

    .line 610
    :cond_2
    return-void
.end method
