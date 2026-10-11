.class Lb/a/be$c;
.super Lb/a/cb;
.source "TUnion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/cb",
        "<",
        "Lb/a/be;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0}, Lb/a/cb;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/be$1;)V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0}, Lb/a/be$c;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lb/a/br;Lb/a/ay;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 260
    check-cast p2, Lb/a/be;

    invoke-virtual {p0, p1, p2}, Lb/a/be$c;->b(Lb/a/br;Lb/a/be;)V

    return-void
.end method

.method public a(Lb/a/br;Lb/a/be;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 264
    iput-object v0, p2, Lb/a/be;->c:Lb/a/bc;

    .line 265
    iput-object v0, p2, Lb/a/be;->b:Ljava/lang/Object;

    .line 266
    invoke-virtual {p1}, Lb/a/br;->r()S

    move-result v0

    .line 267
    invoke-virtual {p2, p1, v0}, Lb/a/be;->a(Lb/a/br;S)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p2, Lb/a/be;->b:Ljava/lang/Object;

    .line 268
    iget-object v1, p2, Lb/a/be;->b:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 269
    invoke-virtual {p2, v0}, Lb/a/be;->b(S)Lb/a/bc;

    move-result-object v0

    iput-object v0, p2, Lb/a/be;->c:Lb/a/bc;

    .line 271
    :cond_0
    return-void
.end method

.method public synthetic b(Lb/a/br;Lb/a/ay;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 260
    check-cast p2, Lb/a/be;

    invoke-virtual {p0, p1, p2}, Lb/a/be$c;->a(Lb/a/br;Lb/a/be;)V

    return-void
.end method

.method public b(Lb/a/br;Lb/a/be;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 275
    invoke-virtual {p2}, Lb/a/be;->b()Lb/a/bc;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lb/a/be;->c()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 276
    :cond_0
    new-instance v0, Lb/a/bs;

    const-string v1, "Cannot write a TUnion with no set value!"

    invoke-direct {v0, v1}, Lb/a/bs;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_1
    iget-object v0, p2, Lb/a/be;->c:Lb/a/bc;

    invoke-interface {v0}, Lb/a/bc;->a()S

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(S)V

    .line 279
    invoke-virtual {p2, p1}, Lb/a/be;->d(Lb/a/br;)V

    .line 280
    return-void
.end method
