.class Lb/a/p$c;
.super Lb/a/cb;
.source "ClientStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/cb",
        "<",
        "Lb/a/p;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 388
    invoke-direct {p0}, Lb/a/cb;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/p$1;)V
    .locals 0

    .prologue
    .line 388
    invoke-direct {p0}, Lb/a/p$c;-><init>()V

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
    .line 388
    check-cast p2, Lb/a/p;

    invoke-virtual {p0, p1, p2}, Lb/a/p$c;->a(Lb/a/br;Lb/a/p;)V

    return-void
.end method

.method public a(Lb/a/br;Lb/a/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 392
    check-cast p1, Lb/a/bx;

    .line 393
    iget v0, p2, Lb/a/p;->a:I

    invoke-virtual {p1, v0}, Lb/a/bx;->a(I)V

    .line 394
    iget v0, p2, Lb/a/p;->b:I

    invoke-virtual {p1, v0}, Lb/a/bx;->a(I)V

    .line 395
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 396
    invoke-virtual {p2}, Lb/a/p;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 399
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lb/a/bx;->a(Ljava/util/BitSet;I)V

    .line 400
    invoke-virtual {p2}, Lb/a/p;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    iget v0, p2, Lb/a/p;->c:I

    invoke-virtual {p1, v0}, Lb/a/bx;->a(I)V

    .line 403
    :cond_1
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
    .line 388
    check-cast p2, Lb/a/p;

    invoke-virtual {p0, p1, p2}, Lb/a/p$c;->b(Lb/a/br;Lb/a/p;)V

    return-void
.end method

.method public b(Lb/a/br;Lb/a/p;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 407
    check-cast p1, Lb/a/bx;

    .line 408
    invoke-virtual {p1}, Lb/a/bx;->s()I

    move-result v0

    iput v0, p2, Lb/a/p;->a:I

    .line 409
    invoke-virtual {p2, v2}, Lb/a/p;->a(Z)V

    .line 410
    invoke-virtual {p1}, Lb/a/bx;->s()I

    move-result v0

    iput v0, p2, Lb/a/p;->b:I

    .line 411
    invoke-virtual {p2, v2}, Lb/a/p;->b(Z)V

    .line 412
    invoke-virtual {p1, v2}, Lb/a/bx;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 413
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {p1}, Lb/a/bx;->s()I

    move-result v0

    iput v0, p2, Lb/a/p;->c:I

    .line 415
    invoke-virtual {p2, v2}, Lb/a/p;->c(Z)V

    .line 417
    :cond_0
    return-void
.end method
