.class Lb/a/ad$a;
.super Lb/a/ca;
.source "Location.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/ca",
        "<",
        "Lb/a/ad;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 305
    invoke-direct {p0}, Lb/a/ca;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/ad$1;)V
    .locals 0

    .prologue
    .line 305
    invoke-direct {p0}, Lb/a/ad$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/br;Lb/a/ad;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 309
    invoke-virtual {p1}, Lb/a/br;->f()Lb/a/bw;

    .line 312
    :goto_0
    invoke-virtual {p1}, Lb/a/br;->h()Lb/a/bo;

    move-result-object v0

    .line 313
    iget-byte v1, v0, Lb/a/bo;->b:B

    if-nez v1, :cond_0

    .line 346
    invoke-virtual {p1}, Lb/a/br;->g()V

    .line 349
    invoke-virtual {p2}, Lb/a/ad;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 350
    new-instance v0, Lb/a/bs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'lat\' was not found in serialized data! Struct: "

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

    .line 316
    :cond_0
    iget-short v1, v0, Lb/a/bo;->c:S

    packed-switch v1, :pswitch_data_0

    .line 342
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    .line 344
    :goto_1
    invoke-virtual {p1}, Lb/a/br;->i()V

    goto :goto_0

    .line 318
    :pswitch_0
    iget-byte v1, v0, Lb/a/bo;->b:B

    if-ne v1, v4, :cond_1

    .line 319
    invoke-virtual {p1}, Lb/a/br;->u()D

    move-result-wide v0

    iput-wide v0, p2, Lb/a/ad;->a:D

    .line 320
    invoke-virtual {p2, v3}, Lb/a/ad;->a(Z)V

    goto :goto_1

    .line 322
    :cond_1
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 326
    :pswitch_1
    iget-byte v1, v0, Lb/a/bo;->b:B

    if-ne v1, v4, :cond_2

    .line 327
    invoke-virtual {p1}, Lb/a/br;->u()D

    move-result-wide v0

    iput-wide v0, p2, Lb/a/ad;->b:D

    .line 328
    invoke-virtual {p2, v3}, Lb/a/ad;->b(Z)V

    goto :goto_1

    .line 330
    :cond_2
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 334
    :pswitch_2
    iget-byte v1, v0, Lb/a/bo;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    .line 335
    invoke-virtual {p1}, Lb/a/br;->t()J

    move-result-wide v0

    iput-wide v0, p2, Lb/a/ad;->c:J

    .line 336
    invoke-virtual {p2, v3}, Lb/a/ad;->c(Z)V

    goto :goto_1

    .line 338
    :cond_3
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 352
    :cond_4
    invoke-virtual {p2}, Lb/a/ad;->b()Z

    move-result v0

    if-nez v0, :cond_5

    .line 353
    new-instance v0, Lb/a/bs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'lng\' was not found in serialized data! Struct: "

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

    .line 355
    :cond_5
    invoke-virtual {p2}, Lb/a/ad;->c()Z

    move-result v0

    if-nez v0, :cond_6

    .line 356
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

    .line 358
    :cond_6
    invoke-virtual {p2}, Lb/a/ad;->d()V

    .line 359
    return-void

    .line 316
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
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
    .line 305
    check-cast p2, Lb/a/ad;

    invoke-virtual {p0, p1, p2}, Lb/a/ad$a;->b(Lb/a/br;Lb/a/ad;)V

    return-void
.end method

.method public b(Lb/a/br;Lb/a/ad;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 362
    invoke-virtual {p2}, Lb/a/ad;->d()V

    .line 364
    invoke-static {}, Lb/a/ad;->e()Lb/a/bw;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bw;)V

    .line 365
    invoke-static {}, Lb/a/ad;->f()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 366
    iget-wide v0, p2, Lb/a/ad;->a:D

    invoke-virtual {p1, v0, v1}, Lb/a/br;->a(D)V

    .line 367
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 368
    invoke-static {}, Lb/a/ad;->g()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 369
    iget-wide v0, p2, Lb/a/ad;->b:D

    invoke-virtual {p1, v0, v1}, Lb/a/br;->a(D)V

    .line 370
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 371
    invoke-static {}, Lb/a/ad;->h()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 372
    iget-wide v0, p2, Lb/a/ad;->c:J

    invoke-virtual {p1, v0, v1}, Lb/a/br;->a(J)V

    .line 373
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 374
    invoke-virtual {p1}, Lb/a/br;->c()V

    .line 375
    invoke-virtual {p1}, Lb/a/br;->a()V

    .line 376
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
    .line 305
    check-cast p2, Lb/a/ad;

    invoke-virtual {p0, p1, p2}, Lb/a/ad$a;->a(Lb/a/br;Lb/a/ad;)V

    return-void
.end method
