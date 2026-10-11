.class Lb/a/be$a;
.super Lb/a/ca;
.source "TUnion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/ca",
        "<",
        "Lb/a/be;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Lb/a/ca;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/be$1;)V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Lb/a/be$a;-><init>()V

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
    .line 216
    check-cast p2, Lb/a/be;

    invoke-virtual {p0, p1, p2}, Lb/a/be$a;->b(Lb/a/br;Lb/a/be;)V

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

    .line 220
    iput-object v0, p2, Lb/a/be;->c:Lb/a/bc;

    .line 221
    iput-object v0, p2, Lb/a/be;->b:Ljava/lang/Object;

    .line 223
    invoke-virtual {p1}, Lb/a/br;->f()Lb/a/bw;

    .line 225
    invoke-virtual {p1}, Lb/a/br;->h()Lb/a/bo;

    move-result-object v0

    .line 227
    invoke-virtual {p2, p1, v0}, Lb/a/be;->a(Lb/a/br;Lb/a/bo;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p2, Lb/a/be;->b:Ljava/lang/Object;

    .line 228
    iget-object v1, p2, Lb/a/be;->b:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 229
    iget-short v0, v0, Lb/a/bo;->c:S

    invoke-virtual {p2, v0}, Lb/a/be;->b(S)Lb/a/bc;

    move-result-object v0

    iput-object v0, p2, Lb/a/be;->c:Lb/a/bc;

    .line 232
    :cond_0
    invoke-virtual {p1}, Lb/a/br;->i()V

    .line 236
    invoke-virtual {p1}, Lb/a/br;->h()Lb/a/bo;

    .line 237
    invoke-virtual {p1}, Lb/a/br;->g()V

    .line 238
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
    .line 216
    check-cast p2, Lb/a/be;

    invoke-virtual {p0, p1, p2}, Lb/a/be$a;->a(Lb/a/br;Lb/a/be;)V

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
    .line 242
    invoke-virtual {p2}, Lb/a/be;->b()Lb/a/bc;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lb/a/be;->c()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 243
    :cond_0
    new-instance v0, Lb/a/bs;

    const-string v1, "Cannot write a TUnion with no set value!"

    invoke-direct {v0, v1}, Lb/a/bs;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_1
    invoke-virtual {p2}, Lb/a/be;->a()Lb/a/bw;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bw;)V

    .line 246
    iget-object v0, p2, Lb/a/be;->c:Lb/a/bc;

    invoke-virtual {p2, v0}, Lb/a/be;->a(Lb/a/bc;)Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 247
    invoke-virtual {p2, p1}, Lb/a/be;->c(Lb/a/br;)V

    .line 248
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 249
    invoke-virtual {p1}, Lb/a/br;->c()V

    .line 250
    invoke-virtual {p1}, Lb/a/br;->a()V

    .line 251
    return-void
.end method
