.class Lb/a/ac$c;
.super Lb/a/cb;
.source "Latent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/cb",
        "<",
        "Lb/a/ac;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0}, Lb/a/cb;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/ac$1;)V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0}, Lb/a/ac$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/br;Lb/a/ac;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 333
    check-cast p1, Lb/a/bx;

    .line 334
    iget v0, p2, Lb/a/ac;->a:I

    invoke-virtual {p1, v0}, Lb/a/bx;->a(I)V

    .line 335
    iget-wide v0, p2, Lb/a/ac;->b:J

    invoke-virtual {p1, v0, v1}, Lb/a/bx;->a(J)V

    .line 336
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
    .line 329
    check-cast p2, Lb/a/ac;

    invoke-virtual {p0, p1, p2}, Lb/a/ac$c;->a(Lb/a/br;Lb/a/ac;)V

    return-void
.end method

.method public b(Lb/a/br;Lb/a/ac;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 340
    check-cast p1, Lb/a/bx;

    .line 341
    invoke-virtual {p1}, Lb/a/bx;->s()I

    move-result v0

    iput v0, p2, Lb/a/ac;->a:I

    .line 342
    invoke-virtual {p2, v2}, Lb/a/ac;->a(Z)V

    .line 343
    invoke-virtual {p1}, Lb/a/bx;->t()J

    move-result-wide v0

    iput-wide v0, p2, Lb/a/ac;->b:J

    .line 344
    invoke-virtual {p2, v2}, Lb/a/ac;->b(Z)V

    .line 345
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
    .line 329
    check-cast p2, Lb/a/ac;

    invoke-virtual {p0, p1, p2}, Lb/a/ac$c;->b(Lb/a/br;Lb/a/ac;)V

    return-void
.end method
