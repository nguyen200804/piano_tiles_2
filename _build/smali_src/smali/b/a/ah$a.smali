.class Lb/a/ah$a;
.super Lb/a/ca;
.source "Resolution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/ca",
        "<",
        "Lb/a/ah;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0}, Lb/a/ca;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/ah$1;)V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0}, Lb/a/ah$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/br;Lb/a/ah;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 267
    invoke-virtual {p1}, Lb/a/br;->f()Lb/a/bw;

    .line 270
    :goto_0
    invoke-virtual {p1}, Lb/a/br;->h()Lb/a/bo;

    move-result-object v0

    .line 271
    iget-byte v1, v0, Lb/a/bo;->b:B

    if-nez v1, :cond_0

    .line 296
    invoke-virtual {p1}, Lb/a/br;->g()V

    .line 299
    invoke-virtual {p2}, Lb/a/ah;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 300
    new-instance v0, Lb/a/bs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'height\' was not found in serialized data! Struct: "

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

    .line 274
    :cond_0
    iget-short v1, v0, Lb/a/bo;->c:S

    packed-switch v1, :pswitch_data_0

    .line 292
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    .line 294
    :goto_1
    invoke-virtual {p1}, Lb/a/br;->i()V

    goto :goto_0

    .line 276
    :pswitch_0
    iget-byte v1, v0, Lb/a/bo;->b:B

    if-ne v1, v3, :cond_1

    .line 277
    invoke-virtual {p1}, Lb/a/br;->s()I

    move-result v0

    iput v0, p2, Lb/a/ah;->a:I

    .line 278
    invoke-virtual {p2, v2}, Lb/a/ah;->a(Z)V

    goto :goto_1

    .line 280
    :cond_1
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 284
    :pswitch_1
    iget-byte v1, v0, Lb/a/bo;->b:B

    if-ne v1, v3, :cond_2

    .line 285
    invoke-virtual {p1}, Lb/a/br;->s()I

    move-result v0

    iput v0, p2, Lb/a/ah;->b:I

    .line 286
    invoke-virtual {p2, v2}, Lb/a/ah;->b(Z)V

    goto :goto_1

    .line 288
    :cond_2
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 302
    :cond_3
    invoke-virtual {p2}, Lb/a/ah;->b()Z

    move-result v0

    if-nez v0, :cond_4

    .line 303
    new-instance v0, Lb/a/bs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'width\' was not found in serialized data! Struct: "

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

    .line 305
    :cond_4
    invoke-virtual {p2}, Lb/a/ah;->c()V

    .line 306
    return-void

    .line 274
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
    .line 263
    check-cast p2, Lb/a/ah;

    invoke-virtual {p0, p1, p2}, Lb/a/ah$a;->b(Lb/a/br;Lb/a/ah;)V

    return-void
.end method

.method public b(Lb/a/br;Lb/a/ah;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 309
    invoke-virtual {p2}, Lb/a/ah;->c()V

    .line 311
    invoke-static {}, Lb/a/ah;->d()Lb/a/bw;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bw;)V

    .line 312
    invoke-static {}, Lb/a/ah;->e()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 313
    iget v0, p2, Lb/a/ah;->a:I

    invoke-virtual {p1, v0}, Lb/a/br;->a(I)V

    .line 314
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 315
    invoke-static {}, Lb/a/ah;->f()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 316
    iget v0, p2, Lb/a/ah;->b:I

    invoke-virtual {p1, v0}, Lb/a/br;->a(I)V

    .line 317
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 318
    invoke-virtual {p1}, Lb/a/br;->c()V

    .line 319
    invoke-virtual {p1}, Lb/a/br;->a()V

    .line 320
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
    .line 263
    check-cast p2, Lb/a/ah;

    invoke-virtual {p0, p1, p2}, Lb/a/ah$a;->a(Lb/a/br;Lb/a/ah;)V

    return-void
.end method
