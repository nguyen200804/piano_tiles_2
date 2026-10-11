.class Lb/a/z$c;
.super Lb/a/cb;
.source "Imprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/cb",
        "<",
        "Lb/a/z;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 442
    invoke-direct {p0}, Lb/a/cb;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/z$1;)V
    .locals 0

    .prologue
    .line 442
    invoke-direct {p0}, Lb/a/z$c;-><init>()V

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
    .line 442
    check-cast p2, Lb/a/z;

    invoke-virtual {p0, p1, p2}, Lb/a/z$c;->a(Lb/a/br;Lb/a/z;)V

    return-void
.end method

.method public a(Lb/a/br;Lb/a/z;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 446
    check-cast p1, Lb/a/bx;

    .line 448
    iget-object v0, p2, Lb/a/z;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/bx;->a(I)V

    .line 449
    iget-object v0, p2, Lb/a/z;->a:Ljava/util/Map;

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

    .line 451
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lb/a/bx;->a(Ljava/lang/String;)V

    .line 452
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/aa;

    invoke-virtual {v0, p1}, Lb/a/aa;->b(Lb/a/br;)V

    goto :goto_0

    .line 455
    :cond_0
    iget v0, p2, Lb/a/z;->b:I

    invoke-virtual {p1, v0}, Lb/a/bx;->a(I)V

    .line 456
    iget-object v0, p2, Lb/a/z;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/bx;->a(Ljava/lang/String;)V

    .line 457
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
    .line 442
    check-cast p2, Lb/a/z;

    invoke-virtual {p0, p1, p2}, Lb/a/z$c;->b(Lb/a/br;Lb/a/z;)V

    return-void
.end method

.method public b(Lb/a/br;Lb/a/z;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 461
    check-cast p1, Lb/a/bx;

    .line 463
    new-instance v1, Lb/a/bq;

    const/16 v0, 0xb

    const/16 v2, 0xc

    invoke-virtual {p1}, Lb/a/bx;->s()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lb/a/bq;-><init>(BBI)V

    .line 464
    new-instance v0, Ljava/util/HashMap;

    iget v2, v1, Lb/a/bq;->c:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lb/a/z;->a:Ljava/util/Map;

    .line 465
    const/4 v0, 0x0

    :goto_0
    iget v2, v1, Lb/a/bq;->c:I

    if-ge v0, v2, :cond_0

    .line 469
    invoke-virtual {p1}, Lb/a/bx;->v()Ljava/lang/String;

    move-result-object v2

    .line 470
    new-instance v3, Lb/a/aa;

    invoke-direct {v3}, Lb/a/aa;-><init>()V

    .line 471
    invoke-virtual {v3, p1}, Lb/a/aa;->a(Lb/a/br;)V

    .line 472
    iget-object v4, p2, Lb/a/z;->a:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 475
    :cond_0
    invoke-virtual {p2, v5}, Lb/a/z;->a(Z)V

    .line 476
    invoke-virtual {p1}, Lb/a/bx;->s()I

    move-result v0

    iput v0, p2, Lb/a/z;->b:I

    .line 477
    invoke-virtual {p2, v5}, Lb/a/z;->b(Z)V

    .line 478
    invoke-virtual {p1}, Lb/a/bx;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/z;->c:Ljava/lang/String;

    .line 479
    invoke-virtual {p2, v5}, Lb/a/z;->c(Z)V

    .line 480
    return-void
.end method
