.class Lb/a/p$a;
.super Lb/a/ca;
.source "ClientStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/ca",
        "<",
        "Lb/a/p;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 308
    invoke-direct {p0}, Lb/a/ca;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/p$1;)V
    .locals 0

    .prologue
    .line 308
    invoke-direct {p0}, Lb/a/p$a;-><init>()V

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
    .line 308
    check-cast p2, Lb/a/p;

    invoke-virtual {p0, p1, p2}, Lb/a/p$a;->b(Lb/a/br;Lb/a/p;)V

    return-void
.end method

.method public a(Lb/a/br;Lb/a/p;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 312
    invoke-virtual {p1}, Lb/a/br;->f()Lb/a/bw;

    .line 315
    :goto_0
    invoke-virtual {p1}, Lb/a/br;->h()Lb/a/bo;

    move-result-object v0

    .line 316
    iget-byte v1, v0, Lb/a/bo;->b:B

    if-nez v1, :cond_0

    .line 349
    invoke-virtual {p1}, Lb/a/br;->g()V

    .line 352
    invoke-virtual {p2}, Lb/a/p;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 353
    new-instance v0, Lb/a/bs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'successful_requests\' was not found in serialized data! Struct: "

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

    .line 319
    :cond_0
    iget-short v1, v0, Lb/a/bo;->c:S

    packed-switch v1, :pswitch_data_0

    .line 345
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    .line 347
    :goto_1
    invoke-virtual {p1}, Lb/a/br;->i()V

    goto :goto_0

    .line 321
    :pswitch_0
    iget-byte v1, v0, Lb/a/bo;->b:B

    if-ne v1, v3, :cond_1

    .line 322
    invoke-virtual {p1}, Lb/a/br;->s()I

    move-result v0

    iput v0, p2, Lb/a/p;->a:I

    .line 323
    invoke-virtual {p2, v2}, Lb/a/p;->a(Z)V

    goto :goto_1

    .line 325
    :cond_1
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 329
    :pswitch_1
    iget-byte v1, v0, Lb/a/bo;->b:B

    if-ne v1, v3, :cond_2

    .line 330
    invoke-virtual {p1}, Lb/a/br;->s()I

    move-result v0

    iput v0, p2, Lb/a/p;->b:I

    .line 331
    invoke-virtual {p2, v2}, Lb/a/p;->b(Z)V

    goto :goto_1

    .line 333
    :cond_2
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 337
    :pswitch_2
    iget-byte v1, v0, Lb/a/bo;->b:B

    if-ne v1, v3, :cond_3

    .line 338
    invoke-virtual {p1}, Lb/a/br;->s()I

    move-result v0

    iput v0, p2, Lb/a/p;->c:I

    .line 339
    invoke-virtual {p2, v2}, Lb/a/p;->c(Z)V

    goto :goto_1

    .line 341
    :cond_3
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 355
    :cond_4
    invoke-virtual {p2}, Lb/a/p;->b()Z

    move-result v0

    if-nez v0, :cond_5

    .line 356
    new-instance v0, Lb/a/bs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'failed_requests\' was not found in serialized data! Struct: "

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

    .line 358
    :cond_5
    invoke-virtual {p2}, Lb/a/p;->d()V

    .line 359
    return-void

    .line 319
    nop

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
    .line 308
    check-cast p2, Lb/a/p;

    invoke-virtual {p0, p1, p2}, Lb/a/p$a;->a(Lb/a/br;Lb/a/p;)V

    return-void
.end method

.method public b(Lb/a/br;Lb/a/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 362
    invoke-virtual {p2}, Lb/a/p;->d()V

    .line 364
    invoke-static {}, Lb/a/p;->e()Lb/a/bw;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bw;)V

    .line 365
    invoke-static {}, Lb/a/p;->f()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 366
    iget v0, p2, Lb/a/p;->a:I

    invoke-virtual {p1, v0}, Lb/a/br;->a(I)V

    .line 367
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 368
    invoke-static {}, Lb/a/p;->g()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 369
    iget v0, p2, Lb/a/p;->b:I

    invoke-virtual {p1, v0}, Lb/a/br;->a(I)V

    .line 370
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 371
    invoke-virtual {p2}, Lb/a/p;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    invoke-static {}, Lb/a/p;->h()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 373
    iget v0, p2, Lb/a/p;->c:I

    invoke-virtual {p1, v0}, Lb/a/br;->a(I)V

    .line 374
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 376
    :cond_0
    invoke-virtual {p1}, Lb/a/br;->c()V

    .line 377
    invoke-virtual {p1}, Lb/a/br;->a()V

    .line 378
    return-void
.end method
