.class Lb/a/ac$a;
.super Lb/a/ca;
.source "Latent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/ca",
        "<",
        "Lb/a/ac;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 262
    invoke-direct {p0}, Lb/a/ca;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/ac$1;)V
    .locals 0

    .prologue
    .line 262
    invoke-direct {p0}, Lb/a/ac$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/br;Lb/a/ac;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 266
    invoke-virtual {p1}, Lb/a/br;->f()Lb/a/bw;

    .line 269
    :goto_0
    invoke-virtual {p1}, Lb/a/br;->h()Lb/a/bo;

    move-result-object v0

    .line 270
    iget-byte v1, v0, Lb/a/bo;->b:B

    if-nez v1, :cond_0

    .line 295
    invoke-virtual {p1}, Lb/a/br;->g()V

    .line 298
    invoke-virtual {p2}, Lb/a/ac;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 299
    new-instance v0, Lb/a/bs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'latency\' was not found in serialized data! Struct: "

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

    .line 273
    :cond_0
    iget-short v1, v0, Lb/a/bo;->c:S

    packed-switch v1, :pswitch_data_0

    .line 291
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    .line 293
    :goto_1
    invoke-virtual {p1}, Lb/a/br;->i()V

    goto :goto_0

    .line 275
    :pswitch_0
    iget-byte v1, v0, Lb/a/bo;->b:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 276
    invoke-virtual {p1}, Lb/a/br;->s()I

    move-result v0

    iput v0, p2, Lb/a/ac;->a:I

    .line 277
    invoke-virtual {p2, v3}, Lb/a/ac;->a(Z)V

    goto :goto_1

    .line 279
    :cond_1
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 283
    :pswitch_1
    iget-byte v1, v0, Lb/a/bo;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 284
    invoke-virtual {p1}, Lb/a/br;->t()J

    move-result-wide v0

    iput-wide v0, p2, Lb/a/ac;->b:J

    .line 285
    invoke-virtual {p2, v3}, Lb/a/ac;->b(Z)V

    goto :goto_1

    .line 287
    :cond_2
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 301
    :cond_3
    invoke-virtual {p2}, Lb/a/ac;->b()Z

    move-result v0

    if-nez v0, :cond_4

    .line 302
    new-instance v0, Lb/a/bs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'interval\' was not found in serialized data! Struct: "

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

    .line 304
    :cond_4
    invoke-virtual {p2}, Lb/a/ac;->c()V

    .line 305
    return-void

    .line 273
    nop

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
    .line 262
    check-cast p2, Lb/a/ac;

    invoke-virtual {p0, p1, p2}, Lb/a/ac$a;->b(Lb/a/br;Lb/a/ac;)V

    return-void
.end method

.method public b(Lb/a/br;Lb/a/ac;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 308
    invoke-virtual {p2}, Lb/a/ac;->c()V

    .line 310
    invoke-static {}, Lb/a/ac;->d()Lb/a/bw;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bw;)V

    .line 311
    invoke-static {}, Lb/a/ac;->e()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 312
    iget v0, p2, Lb/a/ac;->a:I

    invoke-virtual {p1, v0}, Lb/a/br;->a(I)V

    .line 313
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 314
    invoke-static {}, Lb/a/ac;->f()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 315
    iget-wide v0, p2, Lb/a/ac;->b:J

    invoke-virtual {p1, v0, v1}, Lb/a/br;->a(J)V

    .line 316
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 317
    invoke-virtual {p1}, Lb/a/br;->c()V

    .line 318
    invoke-virtual {p1}, Lb/a/br;->a()V

    .line 319
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
    .line 262
    check-cast p2, Lb/a/ac;

    invoke-virtual {p0, p1, p2}, Lb/a/ac$a;->a(Lb/a/br;Lb/a/ac;)V

    return-void
.end method
