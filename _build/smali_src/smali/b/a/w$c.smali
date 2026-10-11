.class Lb/a/w$c;
.super Lb/a/cb;
.source "IdSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/cb",
        "<",
        "Lb/a/w;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 391
    invoke-direct {p0}, Lb/a/cb;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/w$1;)V
    .locals 0

    .prologue
    .line 391
    invoke-direct {p0}, Lb/a/w$c;-><init>()V

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
    .line 391
    check-cast p2, Lb/a/w;

    invoke-virtual {p0, p1, p2}, Lb/a/w$c;->a(Lb/a/br;Lb/a/w;)V

    return-void
.end method

.method public a(Lb/a/br;Lb/a/w;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 395
    check-cast p1, Lb/a/bx;

    .line 396
    iget-object v0, p2, Lb/a/w;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/bx;->a(Ljava/lang/String;)V

    .line 397
    iget-wide v0, p2, Lb/a/w;->b:J

    invoke-virtual {p1, v0, v1}, Lb/a/bx;->a(J)V

    .line 398
    iget v0, p2, Lb/a/w;->c:I

    invoke-virtual {p1, v0}, Lb/a/bx;->a(I)V

    .line 399
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
    .line 391
    check-cast p2, Lb/a/w;

    invoke-virtual {p0, p1, p2}, Lb/a/w$c;->b(Lb/a/br;Lb/a/w;)V

    return-void
.end method

.method public b(Lb/a/br;Lb/a/w;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 403
    check-cast p1, Lb/a/bx;

    .line 404
    invoke-virtual {p1}, Lb/a/bx;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/w;->a:Ljava/lang/String;

    .line 405
    invoke-virtual {p2, v2}, Lb/a/w;->a(Z)V

    .line 406
    invoke-virtual {p1}, Lb/a/bx;->t()J

    move-result-wide v0

    iput-wide v0, p2, Lb/a/w;->b:J

    .line 407
    invoke-virtual {p2, v2}, Lb/a/w;->b(Z)V

    .line 408
    invoke-virtual {p1}, Lb/a/bx;->s()I

    move-result v0

    iput v0, p2, Lb/a/w;->c:I

    .line 409
    invoke-virtual {p2, v2}, Lb/a/w;->c(Z)V

    .line 410
    return-void
.end method
