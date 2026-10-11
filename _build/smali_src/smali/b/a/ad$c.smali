.class Lb/a/ad$c;
.super Lb/a/cb;
.source "Location.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/cb",
        "<",
        "Lb/a/ad;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 386
    invoke-direct {p0}, Lb/a/cb;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/ad$1;)V
    .locals 0

    .prologue
    .line 386
    invoke-direct {p0}, Lb/a/ad$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/br;Lb/a/ad;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 390
    check-cast p1, Lb/a/bx;

    .line 391
    iget-wide v0, p2, Lb/a/ad;->a:D

    invoke-virtual {p1, v0, v1}, Lb/a/bx;->a(D)V

    .line 392
    iget-wide v0, p2, Lb/a/ad;->b:D

    invoke-virtual {p1, v0, v1}, Lb/a/bx;->a(D)V

    .line 393
    iget-wide v0, p2, Lb/a/ad;->c:J

    invoke-virtual {p1, v0, v1}, Lb/a/bx;->a(J)V

    .line 394
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
    .line 386
    check-cast p2, Lb/a/ad;

    invoke-virtual {p0, p1, p2}, Lb/a/ad$c;->a(Lb/a/br;Lb/a/ad;)V

    return-void
.end method

.method public b(Lb/a/br;Lb/a/ad;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 398
    check-cast p1, Lb/a/bx;

    .line 399
    invoke-virtual {p1}, Lb/a/bx;->u()D

    move-result-wide v0

    iput-wide v0, p2, Lb/a/ad;->a:D

    .line 400
    invoke-virtual {p2, v2}, Lb/a/ad;->a(Z)V

    .line 401
    invoke-virtual {p1}, Lb/a/bx;->u()D

    move-result-wide v0

    iput-wide v0, p2, Lb/a/ad;->b:D

    .line 402
    invoke-virtual {p2, v2}, Lb/a/ad;->b(Z)V

    .line 403
    invoke-virtual {p1}, Lb/a/bx;->t()J

    move-result-wide v0

    iput-wide v0, p2, Lb/a/ad;->c:J

    .line 404
    invoke-virtual {p2, v2}, Lb/a/ad;->c(Z)V

    .line 405
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
    .line 386
    check-cast p2, Lb/a/ad;

    invoke-virtual {p0, p1, p2}, Lb/a/ad$c;->b(Lb/a/br;Lb/a/ad;)V

    return-void
.end method
