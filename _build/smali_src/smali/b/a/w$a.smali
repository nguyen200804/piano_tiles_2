.class Lb/a/w$a;
.super Lb/a/ca;
.source "IdSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/ca",
        "<",
        "Lb/a/w;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 311
    invoke-direct {p0}, Lb/a/ca;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/w$1;)V
    .locals 0

    .prologue
    .line 311
    invoke-direct {p0}, Lb/a/w$a;-><init>()V

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
    .line 311
    check-cast p2, Lb/a/w;

    invoke-virtual {p0, p1, p2}, Lb/a/w$a;->b(Lb/a/br;Lb/a/w;)V

    return-void
.end method

.method public a(Lb/a/br;Lb/a/w;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 315
    invoke-virtual {p1}, Lb/a/br;->f()Lb/a/bw;

    .line 318
    :goto_0
    invoke-virtual {p1}, Lb/a/br;->h()Lb/a/bo;

    move-result-object v0

    .line 319
    iget-byte v1, v0, Lb/a/bo;->b:B

    if-nez v1, :cond_0

    .line 352
    invoke-virtual {p1}, Lb/a/br;->g()V

    .line 355
    invoke-virtual {p2}, Lb/a/w;->c()Z

    move-result v0

    if-nez v0, :cond_4

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

    .line 322
    :cond_0
    iget-short v1, v0, Lb/a/bo;->c:S

    packed-switch v1, :pswitch_data_0

    .line 348
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    .line 350
    :goto_1
    invoke-virtual {p1}, Lb/a/br;->i()V

    goto :goto_0

    .line 324
    :pswitch_0
    iget-byte v1, v0, Lb/a/bo;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 325
    invoke-virtual {p1}, Lb/a/br;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/w;->a:Ljava/lang/String;

    .line 326
    invoke-virtual {p2, v3}, Lb/a/w;->a(Z)V

    goto :goto_1

    .line 328
    :cond_1
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 332
    :pswitch_1
    iget-byte v1, v0, Lb/a/bo;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 333
    invoke-virtual {p1}, Lb/a/br;->t()J

    move-result-wide v0

    iput-wide v0, p2, Lb/a/w;->b:J

    .line 334
    invoke-virtual {p2, v3}, Lb/a/w;->b(Z)V

    goto :goto_1

    .line 336
    :cond_2
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 340
    :pswitch_2
    iget-byte v1, v0, Lb/a/bo;->b:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 341
    invoke-virtual {p1}, Lb/a/br;->s()I

    move-result v0

    iput v0, p2, Lb/a/w;->c:I

    .line 342
    invoke-virtual {p2, v3}, Lb/a/w;->c(Z)V

    goto :goto_1

    .line 344
    :cond_3
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 358
    :cond_4
    invoke-virtual {p2}, Lb/a/w;->e()Z

    move-result v0

    if-nez v0, :cond_5

    .line 359
    new-instance v0, Lb/a/bs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'version\' was not found in serialized data! Struct: "

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

    .line 361
    :cond_5
    invoke-virtual {p2}, Lb/a/w;->f()V

    .line 362
    return-void

    .line 322
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
    .line 311
    check-cast p2, Lb/a/w;

    invoke-virtual {p0, p1, p2}, Lb/a/w$a;->a(Lb/a/br;Lb/a/w;)V

    return-void
.end method

.method public b(Lb/a/br;Lb/a/w;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 365
    invoke-virtual {p2}, Lb/a/w;->f()V

    .line 367
    invoke-static {}, Lb/a/w;->g()Lb/a/bw;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bw;)V

    .line 368
    iget-object v0, p2, Lb/a/w;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 369
    invoke-static {}, Lb/a/w;->h()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 370
    iget-object v0, p2, Lb/a/w;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/br;->a(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 373
    :cond_0
    invoke-static {}, Lb/a/w;->i()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 374
    iget-wide v0, p2, Lb/a/w;->b:J

    invoke-virtual {p1, v0, v1}, Lb/a/br;->a(J)V

    .line 375
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 376
    invoke-static {}, Lb/a/w;->j()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 377
    iget v0, p2, Lb/a/w;->c:I

    invoke-virtual {p1, v0}, Lb/a/br;->a(I)V

    .line 378
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 379
    invoke-virtual {p1}, Lb/a/br;->c()V

    .line 380
    invoke-virtual {p1}, Lb/a/br;->a()V

    .line 381
    return-void
.end method
