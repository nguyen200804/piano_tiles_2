.class Lb/a/v$a;
.super Lb/a/ca;
.source "IdJournal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/ca",
        "<",
        "Lb/a/v;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 363
    invoke-direct {p0}, Lb/a/ca;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/v$1;)V
    .locals 0

    .prologue
    .line 363
    invoke-direct {p0}, Lb/a/v$a;-><init>()V

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
    .line 363
    check-cast p2, Lb/a/v;

    invoke-virtual {p0, p1, p2}, Lb/a/v$a;->b(Lb/a/br;Lb/a/v;)V

    return-void
.end method

.method public a(Lb/a/br;Lb/a/v;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x1

    .line 367
    invoke-virtual {p1}, Lb/a/br;->f()Lb/a/bw;

    .line 370
    :goto_0
    invoke-virtual {p1}, Lb/a/br;->h()Lb/a/bo;

    move-result-object v0

    .line 371
    iget-byte v1, v0, Lb/a/bo;->b:B

    if-nez v1, :cond_0

    .line 412
    invoke-virtual {p1}, Lb/a/br;->g()V

    .line 415
    invoke-virtual {p2}, Lb/a/v;->b()Z

    move-result v0

    if-nez v0, :cond_5

    .line 416
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

    .line 374
    :cond_0
    iget-short v1, v0, Lb/a/bo;->c:S

    packed-switch v1, :pswitch_data_0

    .line 408
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    .line 410
    :goto_1
    invoke-virtual {p1}, Lb/a/br;->i()V

    goto :goto_0

    .line 376
    :pswitch_0
    iget-byte v1, v0, Lb/a/bo;->b:B

    if-ne v1, v4, :cond_1

    .line 377
    invoke-virtual {p1}, Lb/a/br;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/v;->a:Ljava/lang/String;

    .line 378
    invoke-virtual {p2, v3}, Lb/a/v;->a(Z)V

    goto :goto_1

    .line 380
    :cond_1
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 384
    :pswitch_1
    iget-byte v1, v0, Lb/a/bo;->b:B

    if-ne v1, v4, :cond_2

    .line 385
    invoke-virtual {p1}, Lb/a/br;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/v;->b:Ljava/lang/String;

    .line 386
    invoke-virtual {p2, v3}, Lb/a/v;->b(Z)V

    goto :goto_1

    .line 388
    :cond_2
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 392
    :pswitch_2
    iget-byte v1, v0, Lb/a/bo;->b:B

    if-ne v1, v4, :cond_3

    .line 393
    invoke-virtual {p1}, Lb/a/br;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/v;->c:Ljava/lang/String;

    .line 394
    invoke-virtual {p2, v3}, Lb/a/v;->c(Z)V

    goto :goto_1

    .line 396
    :cond_3
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 400
    :pswitch_3
    iget-byte v1, v0, Lb/a/bo;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_4

    .line 401
    invoke-virtual {p1}, Lb/a/br;->t()J

    move-result-wide v0

    iput-wide v0, p2, Lb/a/v;->d:J

    .line 402
    invoke-virtual {p2, v3}, Lb/a/v;->d(Z)V

    goto :goto_1

    .line 404
    :cond_4
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 418
    :cond_5
    invoke-virtual {p2}, Lb/a/v;->c()V

    .line 419
    return-void

    .line 374
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
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
    .line 363
    check-cast p2, Lb/a/v;

    invoke-virtual {p0, p1, p2}, Lb/a/v$a;->a(Lb/a/br;Lb/a/v;)V

    return-void
.end method

.method public b(Lb/a/br;Lb/a/v;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 422
    invoke-virtual {p2}, Lb/a/v;->c()V

    .line 424
    invoke-static {}, Lb/a/v;->d()Lb/a/bw;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bw;)V

    .line 425
    iget-object v0, p2, Lb/a/v;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 426
    invoke-static {}, Lb/a/v;->e()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 427
    iget-object v0, p2, Lb/a/v;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/br;->a(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 430
    :cond_0
    iget-object v0, p2, Lb/a/v;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 431
    invoke-virtual {p2}, Lb/a/v;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    invoke-static {}, Lb/a/v;->f()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 433
    iget-object v0, p2, Lb/a/v;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/br;->a(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 437
    :cond_1
    iget-object v0, p2, Lb/a/v;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 438
    invoke-static {}, Lb/a/v;->g()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 439
    iget-object v0, p2, Lb/a/v;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/br;->a(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 442
    :cond_2
    invoke-static {}, Lb/a/v;->h()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 443
    iget-wide v0, p2, Lb/a/v;->d:J

    invoke-virtual {p1, v0, v1}, Lb/a/br;->a(J)V

    .line 444
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 445
    invoke-virtual {p1}, Lb/a/br;->c()V

    .line 446
    invoke-virtual {p1}, Lb/a/br;->a()V

    .line 447
    return-void
.end method
