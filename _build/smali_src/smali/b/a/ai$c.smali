.class Lb/a/ai$c;
.super Lb/a/cb;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/cb",
        "<",
        "Lb/a/ai;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 399
    invoke-direct {p0}, Lb/a/cb;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/ai$1;)V
    .locals 0

    .prologue
    .line 399
    invoke-direct {p0}, Lb/a/ai$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/br;Lb/a/ai;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 403
    check-cast p1, Lb/a/bx;

    .line 404
    iget v0, p2, Lb/a/ai;->a:I

    invoke-virtual {p1, v0}, Lb/a/bx;->a(I)V

    .line 405
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 406
    invoke-virtual {p2}, Lb/a/ai;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 409
    :cond_0
    invoke-virtual {p2}, Lb/a/ai;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 410
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 412
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lb/a/bx;->a(Ljava/util/BitSet;I)V

    .line 413
    invoke-virtual {p2}, Lb/a/ai;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 414
    iget-object v0, p2, Lb/a/ai;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/bx;->a(Ljava/lang/String;)V

    .line 416
    :cond_2
    invoke-virtual {p2}, Lb/a/ai;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 417
    iget-object v0, p2, Lb/a/ai;->c:Lb/a/z;

    invoke-virtual {v0, p1}, Lb/a/z;->b(Lb/a/br;)V

    .line 419
    :cond_3
    return-void
.end method

.method public bridge synthetic a(Lb/a/br;Lb/a/ay;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 399
    check-cast p2, Lb/a/ai;

    invoke-virtual {p0, p1, p2}, Lb/a/ai$c;->a(Lb/a/br;Lb/a/ai;)V

    return-void
.end method

.method public b(Lb/a/br;Lb/a/ai;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 423
    check-cast p1, Lb/a/bx;

    .line 424
    invoke-virtual {p1}, Lb/a/bx;->s()I

    move-result v0

    iput v0, p2, Lb/a/ai;->a:I

    .line 425
    invoke-virtual {p2, v2}, Lb/a/ai;->a(Z)V

    .line 426
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lb/a/bx;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 427
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    invoke-virtual {p1}, Lb/a/bx;->v()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lb/a/ai;->b:Ljava/lang/String;

    .line 429
    invoke-virtual {p2, v2}, Lb/a/ai;->b(Z)V

    .line 431
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    new-instance v0, Lb/a/z;

    invoke-direct {v0}, Lb/a/z;-><init>()V

    iput-object v0, p2, Lb/a/ai;->c:Lb/a/z;

    .line 433
    iget-object v0, p2, Lb/a/ai;->c:Lb/a/z;

    invoke-virtual {v0, p1}, Lb/a/z;->a(Lb/a/br;)V

    .line 434
    invoke-virtual {p2, v2}, Lb/a/ai;->c(Z)V

    .line 436
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
    .line 399
    check-cast p2, Lb/a/ai;

    invoke-virtual {p0, p1, p2}, Lb/a/ai$c;->b(Lb/a/br;Lb/a/ai;)V

    return-void
.end method
