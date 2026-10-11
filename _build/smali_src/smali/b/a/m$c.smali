.class Lb/a/m$c;
.super Lb/a/cb;
.source "ActivateMsg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/cb",
        "<",
        "Lb/a/m;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0}, Lb/a/cb;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/m$1;)V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0}, Lb/a/m$c;-><init>()V

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
    .line 274
    check-cast p2, Lb/a/m;

    invoke-virtual {p0, p1, p2}, Lb/a/m$c;->a(Lb/a/br;Lb/a/m;)V

    return-void
.end method

.method public a(Lb/a/br;Lb/a/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 278
    check-cast p1, Lb/a/bx;

    .line 279
    iget-wide v0, p2, Lb/a/m;->a:J

    invoke-virtual {p1, v0, v1}, Lb/a/bx;->a(J)V

    .line 280
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
    .line 274
    check-cast p2, Lb/a/m;

    invoke-virtual {p0, p1, p2}, Lb/a/m$c;->b(Lb/a/br;Lb/a/m;)V

    return-void
.end method

.method public b(Lb/a/br;Lb/a/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 284
    check-cast p1, Lb/a/bx;

    .line 285
    invoke-virtual {p1}, Lb/a/bx;->t()J

    move-result-wide v0

    iput-wide v0, p2, Lb/a/m;->a:J

    .line 286
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lb/a/m;->a(Z)V

    .line 287
    return-void
.end method
