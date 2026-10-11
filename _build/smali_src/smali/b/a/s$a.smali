.class Lb/a/s$a;
.super Lb/a/ca;
.source "Error.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/ca",
        "<",
        "Lb/a/s;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 331
    invoke-direct {p0}, Lb/a/ca;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/s$1;)V
    .locals 0

    .prologue
    .line 331
    invoke-direct {p0}, Lb/a/s$a;-><init>()V

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
    .line 331
    check-cast p2, Lb/a/s;

    invoke-virtual {p0, p1, p2}, Lb/a/s$a;->b(Lb/a/br;Lb/a/s;)V

    return-void
.end method

.method public a(Lb/a/br;Lb/a/s;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 335
    invoke-virtual {p1}, Lb/a/br;->f()Lb/a/bw;

    .line 338
    :goto_0
    invoke-virtual {p1}, Lb/a/br;->h()Lb/a/bo;

    move-result-object v0

    .line 339
    iget-byte v1, v0, Lb/a/bo;->b:B

    if-nez v1, :cond_0

    .line 372
    invoke-virtual {p1}, Lb/a/br;->g()V

    .line 375
    invoke-virtual {p2}, Lb/a/s;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 376
    new-instance v0, Lb/a/bs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'ts\' was not found in serialized data! Struct: "

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

    .line 342
    :cond_0
    iget-short v1, v0, Lb/a/bo;->c:S

    packed-switch v1, :pswitch_data_0

    .line 368
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    .line 370
    :goto_1
    invoke-virtual {p1}, Lb/a/br;->i()V

    goto :goto_0

    .line 344
    :pswitch_0
    iget-byte v1, v0, Lb/a/bo;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 345
    invoke-virtual {p1}, Lb/a/br;->t()J

    move-result-wide v0

    iput-wide v0, p2, Lb/a/s;->a:J

    .line 346
    invoke-virtual {p2, v3}, Lb/a/s;->a(Z)V

    goto :goto_1

    .line 348
    :cond_1
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 352
    :pswitch_1
    iget-byte v1, v0, Lb/a/bo;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    .line 353
    invoke-virtual {p1}, Lb/a/br;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/s;->b:Ljava/lang/String;

    .line 354
    invoke-virtual {p2, v3}, Lb/a/s;->b(Z)V

    goto :goto_1

    .line 356
    :cond_2
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 360
    :pswitch_2
    iget-byte v1, v0, Lb/a/bo;->b:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 361
    invoke-virtual {p1}, Lb/a/br;->s()I

    move-result v0

    invoke-static {v0}, Lb/a/t;->a(I)Lb/a/t;

    move-result-object v0

    iput-object v0, p2, Lb/a/s;->c:Lb/a/t;

    .line 362
    invoke-virtual {p2, v3}, Lb/a/s;->c(Z)V

    goto :goto_1

    .line 364
    :cond_3
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 378
    :cond_4
    invoke-virtual {p2}, Lb/a/s;->c()V

    .line 379
    return-void

    .line 342
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public synthetic b(Lb/a/br;Lb/a/ay;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 331
    check-cast p2, Lb/a/s;

    invoke-virtual {p0, p1, p2}, Lb/a/s$a;->a(Lb/a/br;Lb/a/s;)V

    return-void
.end method

.method public b(Lb/a/br;Lb/a/s;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 382
    invoke-virtual {p2}, Lb/a/s;->c()V

    .line 384
    invoke-static {}, Lb/a/s;->d()Lb/a/bw;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bw;)V

    .line 385
    invoke-static {}, Lb/a/s;->e()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 386
    iget-wide v0, p2, Lb/a/s;->a:J

    invoke-virtual {p1, v0, v1}, Lb/a/br;->a(J)V

    .line 387
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 388
    iget-object v0, p2, Lb/a/s;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 389
    invoke-static {}, Lb/a/s;->f()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 390
    iget-object v0, p2, Lb/a/s;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/br;->a(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 393
    :cond_0
    iget-object v0, p2, Lb/a/s;->c:Lb/a/t;

    if-eqz v0, :cond_1

    .line 394
    invoke-virtual {p2}, Lb/a/s;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    invoke-static {}, Lb/a/s;->g()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 396
    iget-object v0, p2, Lb/a/s;->c:Lb/a/t;

    invoke-virtual {v0}, Lb/a/t;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(I)V

    .line 397
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 400
    :cond_1
    invoke-virtual {p1}, Lb/a/br;->c()V

    .line 401
    invoke-virtual {p1}, Lb/a/br;->a()V

    .line 402
    return-void
.end method
