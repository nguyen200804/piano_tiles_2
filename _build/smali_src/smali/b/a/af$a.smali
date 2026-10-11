.class Lb/a/af$a;
.super Lb/a/ca;
.source "Page.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/ca",
        "<",
        "Lb/a/af;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0}, Lb/a/ca;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/af$1;)V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0}, Lb/a/af$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/br;Lb/a/af;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 273
    invoke-virtual {p1}, Lb/a/br;->f()Lb/a/bw;

    .line 276
    :goto_0
    invoke-virtual {p1}, Lb/a/br;->h()Lb/a/bo;

    move-result-object v0

    .line 277
    iget-byte v1, v0, Lb/a/bo;->b:B

    if-nez v1, :cond_0

    .line 302
    invoke-virtual {p1}, Lb/a/br;->g()V

    .line 305
    invoke-virtual {p2}, Lb/a/af;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 306
    new-instance v0, Lb/a/bs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'duration\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/bs;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_0
    iget-short v1, v0, Lb/a/bo;->c:S

    packed-switch v1, :pswitch_data_0

    .line 298
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    .line 300
    :goto_1
    invoke-virtual {p1}, Lb/a/br;->i()V

    goto :goto_0

    .line 282
    :pswitch_0
    iget-byte v1, v0, Lb/a/bo;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 283
    invoke-virtual {p1}, Lb/a/br;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/af;->a:Ljava/lang/String;

    .line 284
    invoke-virtual {p2, v3}, Lb/a/af;->a(Z)V

    goto :goto_1

    .line 286
    :cond_1
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 290
    :pswitch_1
    iget-byte v1, v0, Lb/a/bo;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 291
    invoke-virtual {p1}, Lb/a/br;->t()J

    move-result-wide v0

    iput-wide v0, p2, Lb/a/af;->b:J

    .line 292
    invoke-virtual {p2, v3}, Lb/a/af;->b(Z)V

    goto :goto_1

    .line 294
    :cond_2
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 308
    :cond_3
    invoke-virtual {p2}, Lb/a/af;->b()V

    .line 309
    return-void

    .line 280
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic a(Lb/a/br;Lb/a/ay;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 269
    check-cast p2, Lb/a/af;

    invoke-virtual {p0, p1, p2}, Lb/a/af$a;->b(Lb/a/br;Lb/a/af;)V

    return-void
.end method

.method public b(Lb/a/br;Lb/a/af;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 312
    invoke-virtual {p2}, Lb/a/af;->b()V

    .line 314
    invoke-static {}, Lb/a/af;->c()Lb/a/bw;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bw;)V

    .line 315
    iget-object v0, p2, Lb/a/af;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 316
    invoke-static {}, Lb/a/af;->d()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 317
    iget-object v0, p2, Lb/a/af;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/br;->a(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 320
    :cond_0
    invoke-static {}, Lb/a/af;->e()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 321
    iget-wide v0, p2, Lb/a/af;->b:J

    invoke-virtual {p1, v0, v1}, Lb/a/br;->a(J)V

    .line 322
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 323
    invoke-virtual {p1}, Lb/a/br;->c()V

    .line 324
    invoke-virtual {p1}, Lb/a/br;->a()V

    .line 325
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
    .line 269
    check-cast p2, Lb/a/af;

    invoke-virtual {p0, p1, p2}, Lb/a/af$a;->a(Lb/a/br;Lb/a/af;)V

    return-void
.end method
