.class Lb/a/v$c;
.super Lb/a/cb;
.source "IdJournal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/cb",
        "<",
        "Lb/a/v;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 457
    invoke-direct {p0}, Lb/a/cb;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/v$1;)V
    .locals 0

    .prologue
    .line 457
    invoke-direct {p0}, Lb/a/v$c;-><init>()V

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
    .line 457
    check-cast p2, Lb/a/v;

    invoke-virtual {p0, p1, p2}, Lb/a/v$c;->a(Lb/a/br;Lb/a/v;)V

    return-void
.end method

.method public a(Lb/a/br;Lb/a/v;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 461
    check-cast p1, Lb/a/bx;

    .line 462
    iget-object v0, p2, Lb/a/v;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/bx;->a(Ljava/lang/String;)V

    .line 463
    iget-object v0, p2, Lb/a/v;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/bx;->a(Ljava/lang/String;)V

    .line 464
    iget-wide v0, p2, Lb/a/v;->d:J

    invoke-virtual {p1, v0, v1}, Lb/a/bx;->a(J)V

    .line 465
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 466
    invoke-virtual {p2}, Lb/a/v;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 469
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lb/a/bx;->a(Ljava/util/BitSet;I)V

    .line 470
    invoke-virtual {p2}, Lb/a/v;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p2, Lb/a/v;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/bx;->a(Ljava/lang/String;)V

    .line 473
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
    .line 457
    check-cast p2, Lb/a/v;

    invoke-virtual {p0, p1, p2}, Lb/a/v$c;->b(Lb/a/br;Lb/a/v;)V

    return-void
.end method

.method public b(Lb/a/br;Lb/a/v;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 477
    check-cast p1, Lb/a/bx;

    .line 478
    invoke-virtual {p1}, Lb/a/bx;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/v;->a:Ljava/lang/String;

    .line 479
    invoke-virtual {p2, v2}, Lb/a/v;->a(Z)V

    .line 480
    invoke-virtual {p1}, Lb/a/bx;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/v;->c:Ljava/lang/String;

    .line 481
    invoke-virtual {p2, v2}, Lb/a/v;->c(Z)V

    .line 482
    invoke-virtual {p1}, Lb/a/bx;->t()J

    move-result-wide v0

    iput-wide v0, p2, Lb/a/v;->d:J

    .line 483
    invoke-virtual {p2, v2}, Lb/a/v;->d(Z)V

    .line 484
    invoke-virtual {p1, v2}, Lb/a/bx;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 485
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {p1}, Lb/a/bx;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/v;->b:Ljava/lang/String;

    .line 487
    invoke-virtual {p2, v2}, Lb/a/v;->b(Z)V

    .line 489
    :cond_0
    return-void
.end method
