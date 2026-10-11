.class Lb/a/q$c;
.super Lb/a/cb;
.source "ControlPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/cb",
        "<",
        "Lb/a/q;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 273
    invoke-direct {p0}, Lb/a/cb;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/q$1;)V
    .locals 0

    .prologue
    .line 273
    invoke-direct {p0}, Lb/a/q$c;-><init>()V

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
    .line 273
    check-cast p2, Lb/a/q;

    invoke-virtual {p0, p1, p2}, Lb/a/q$c;->a(Lb/a/br;Lb/a/q;)V

    return-void
.end method

.method public a(Lb/a/br;Lb/a/q;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 277
    check-cast p1, Lb/a/bx;

    .line 278
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 279
    invoke-virtual {p2}, Lb/a/q;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 282
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lb/a/bx;->a(Ljava/util/BitSet;I)V

    .line 283
    invoke-virtual {p2}, Lb/a/q;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p2, Lb/a/q;->a:Lb/a/ac;

    invoke-virtual {v0, p1}, Lb/a/ac;->b(Lb/a/br;)V

    .line 286
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
    .line 273
    check-cast p2, Lb/a/q;

    invoke-virtual {p0, p1, p2}, Lb/a/q$c;->b(Lb/a/br;Lb/a/q;)V

    return-void
.end method

.method public b(Lb/a/br;Lb/a/q;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 290
    check-cast p1, Lb/a/bx;

    .line 291
    invoke-virtual {p1, v2}, Lb/a/bx;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 292
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    new-instance v0, Lb/a/ac;

    invoke-direct {v0}, Lb/a/ac;-><init>()V

    iput-object v0, p2, Lb/a/q;->a:Lb/a/ac;

    .line 294
    iget-object v0, p2, Lb/a/q;->a:Lb/a/ac;

    invoke-virtual {v0, p1}, Lb/a/ac;->a(Lb/a/br;)V

    .line 295
    invoke-virtual {p2, v2}, Lb/a/q;->a(Z)V

    .line 297
    :cond_0
    return-void
.end method
