.class Lb/a/ai$a;
.super Lb/a/ca;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/ca",
        "<",
        "Lb/a/ai;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0}, Lb/a/ca;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/ai$1;)V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0}, Lb/a/ai$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/br;Lb/a/ai;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 319
    invoke-virtual {p1}, Lb/a/br;->f()Lb/a/bw;

    .line 322
    :goto_0
    invoke-virtual {p1}, Lb/a/br;->h()Lb/a/bo;

    move-result-object v0

    .line 323
    iget-byte v1, v0, Lb/a/bo;->b:B

    if-nez v1, :cond_0

    .line 357
    invoke-virtual {p1}, Lb/a/br;->g()V

    .line 360
    invoke-virtual {p2}, Lb/a/ai;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 361
    new-instance v0, Lb/a/bs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'resp_code\' was not found in serialized data! Struct: "

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

    .line 326
    :cond_0
    iget-short v1, v0, Lb/a/bo;->c:S

    packed-switch v1, :pswitch_data_0

    .line 353
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    .line 355
    :goto_1
    invoke-virtual {p1}, Lb/a/br;->i()V

    goto :goto_0

    .line 328
    :pswitch_0
    iget-byte v1, v0, Lb/a/bo;->b:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 329
    invoke-virtual {p1}, Lb/a/br;->s()I

    move-result v0

    iput v0, p2, Lb/a/ai;->a:I

    .line 330
    invoke-virtual {p2, v3}, Lb/a/ai;->a(Z)V

    goto :goto_1

    .line 332
    :cond_1
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 336
    :pswitch_1
    iget-byte v1, v0, Lb/a/bo;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    .line 337
    invoke-virtual {p1}, Lb/a/br;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/ai;->b:Ljava/lang/String;

    .line 338
    invoke-virtual {p2, v3}, Lb/a/ai;->b(Z)V

    goto :goto_1

    .line 340
    :cond_2
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 344
    :pswitch_2
    iget-byte v1, v0, Lb/a/bo;->b:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_3

    .line 345
    new-instance v0, Lb/a/z;

    invoke-direct {v0}, Lb/a/z;-><init>()V

    iput-object v0, p2, Lb/a/ai;->c:Lb/a/z;

    .line 346
    iget-object v0, p2, Lb/a/ai;->c:Lb/a/z;

    invoke-virtual {v0, p1}, Lb/a/z;->a(Lb/a/br;)V

    .line 347
    invoke-virtual {p2, v3}, Lb/a/ai;->c(Z)V

    goto :goto_1

    .line 349
    :cond_3
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 363
    :cond_4
    invoke-virtual {p2}, Lb/a/ai;->f()V

    .line 364
    return-void

    .line 326
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
    .line 315
    check-cast p2, Lb/a/ai;

    invoke-virtual {p0, p1, p2}, Lb/a/ai$a;->b(Lb/a/br;Lb/a/ai;)V

    return-void
.end method

.method public b(Lb/a/br;Lb/a/ai;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 367
    invoke-virtual {p2}, Lb/a/ai;->f()V

    .line 369
    invoke-static {}, Lb/a/ai;->g()Lb/a/bw;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bw;)V

    .line 370
    invoke-static {}, Lb/a/ai;->h()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 371
    iget v0, p2, Lb/a/ai;->a:I

    invoke-virtual {p1, v0}, Lb/a/br;->a(I)V

    .line 372
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 373
    iget-object v0, p2, Lb/a/ai;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {p2}, Lb/a/ai;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    invoke-static {}, Lb/a/ai;->i()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 376
    iget-object v0, p2, Lb/a/ai;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/br;->a(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 380
    :cond_0
    iget-object v0, p2, Lb/a/ai;->c:Lb/a/z;

    if-eqz v0, :cond_1

    .line 381
    invoke-virtual {p2}, Lb/a/ai;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    invoke-static {}, Lb/a/ai;->j()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 383
    iget-object v0, p2, Lb/a/ai;->c:Lb/a/z;

    invoke-virtual {v0, p1}, Lb/a/z;->b(Lb/a/br;)V

    .line 384
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 387
    :cond_1
    invoke-virtual {p1}, Lb/a/br;->c()V

    .line 388
    invoke-virtual {p1}, Lb/a/br;->a()V

    .line 389
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
    .line 315
    check-cast p2, Lb/a/ai;

    invoke-virtual {p0, p1, p2}, Lb/a/ai$a;->a(Lb/a/br;Lb/a/ai;)V

    return-void
.end method
