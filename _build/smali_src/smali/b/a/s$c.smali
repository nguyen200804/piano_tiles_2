.class Lb/a/s$c;
.super Lb/a/cb;
.source "Error.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/cb",
        "<",
        "Lb/a/s;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 412
    invoke-direct {p0}, Lb/a/cb;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/s$1;)V
    .locals 0

    .prologue
    .line 412
    invoke-direct {p0}, Lb/a/s$c;-><init>()V

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
    .line 412
    check-cast p2, Lb/a/s;

    invoke-virtual {p0, p1, p2}, Lb/a/s$c;->a(Lb/a/br;Lb/a/s;)V

    return-void
.end method

.method public a(Lb/a/br;Lb/a/s;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 416
    check-cast p1, Lb/a/bx;

    .line 417
    iget-wide v0, p2, Lb/a/s;->a:J

    invoke-virtual {p1, v0, v1}, Lb/a/bx;->a(J)V

    .line 418
    iget-object v0, p2, Lb/a/s;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/bx;->a(Ljava/lang/String;)V

    .line 419
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 420
    invoke-virtual {p2}, Lb/a/s;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 423
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lb/a/bx;->a(Ljava/util/BitSet;I)V

    .line 424
    invoke-virtual {p2}, Lb/a/s;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p2, Lb/a/s;->c:Lb/a/t;

    invoke-virtual {v0}, Lb/a/t;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/bx;->a(I)V

    .line 427
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
    .line 412
    check-cast p2, Lb/a/s;

    invoke-virtual {p0, p1, p2}, Lb/a/s$c;->b(Lb/a/br;Lb/a/s;)V

    return-void
.end method

.method public b(Lb/a/br;Lb/a/s;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 431
    check-cast p1, Lb/a/bx;

    .line 432
    invoke-virtual {p1}, Lb/a/bx;->t()J

    move-result-wide v0

    iput-wide v0, p2, Lb/a/s;->a:J

    .line 433
    invoke-virtual {p2, v2}, Lb/a/s;->a(Z)V

    .line 434
    invoke-virtual {p1}, Lb/a/bx;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/s;->b:Ljava/lang/String;

    .line 435
    invoke-virtual {p2, v2}, Lb/a/s;->b(Z)V

    .line 436
    invoke-virtual {p1, v2}, Lb/a/bx;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 437
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {p1}, Lb/a/bx;->s()I

    move-result v0

    invoke-static {v0}, Lb/a/t;->a(I)Lb/a/t;

    move-result-object v0

    iput-object v0, p2, Lb/a/s;->c:Lb/a/t;

    .line 439
    invoke-virtual {p2, v2}, Lb/a/s;->c(Z)V

    .line 441
    :cond_0
    return-void
.end method
