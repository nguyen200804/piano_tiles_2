.class Lb/a/n$a;
.super Lb/a/ca;
.source "ActiveUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/ca",
        "<",
        "Lb/a/n;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0}, Lb/a/ca;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/n$1;)V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0}, Lb/a/n$a;-><init>()V

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
    .line 270
    check-cast p2, Lb/a/n;

    invoke-virtual {p0, p1, p2}, Lb/a/n$a;->b(Lb/a/br;Lb/a/n;)V

    return-void
.end method

.method public a(Lb/a/br;Lb/a/n;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    const/16 v3, 0xb

    const/4 v2, 0x1

    .line 274
    invoke-virtual {p1}, Lb/a/br;->f()Lb/a/bw;

    .line 277
    :goto_0
    invoke-virtual {p1}, Lb/a/br;->h()Lb/a/bo;

    move-result-object v0

    .line 278
    iget-byte v1, v0, Lb/a/bo;->b:B

    if-nez v1, :cond_0

    .line 303
    invoke-virtual {p1}, Lb/a/br;->g()V

    .line 306
    invoke-virtual {p2}, Lb/a/n;->a()V

    .line 307
    return-void

    .line 281
    :cond_0
    iget-short v1, v0, Lb/a/bo;->c:S

    packed-switch v1, :pswitch_data_0

    .line 299
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    .line 301
    :goto_1
    invoke-virtual {p1}, Lb/a/br;->i()V

    goto :goto_0

    .line 283
    :pswitch_0
    iget-byte v1, v0, Lb/a/bo;->b:B

    if-ne v1, v3, :cond_1

    .line 284
    invoke-virtual {p1}, Lb/a/br;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/n;->a:Ljava/lang/String;

    .line 285
    invoke-virtual {p2, v2}, Lb/a/n;->a(Z)V

    goto :goto_1

    .line 287
    :cond_1
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 291
    :pswitch_1
    iget-byte v1, v0, Lb/a/bo;->b:B

    if-ne v1, v3, :cond_2

    .line 292
    invoke-virtual {p1}, Lb/a/br;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/n;->b:Ljava/lang/String;

    .line 293
    invoke-virtual {p2, v2}, Lb/a/n;->b(Z)V

    goto :goto_1

    .line 295
    :cond_2
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 281
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
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
    .line 270
    check-cast p2, Lb/a/n;

    invoke-virtual {p0, p1, p2}, Lb/a/n$a;->a(Lb/a/br;Lb/a/n;)V

    return-void
.end method

.method public b(Lb/a/br;Lb/a/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 310
    invoke-virtual {p2}, Lb/a/n;->a()V

    .line 312
    invoke-static {}, Lb/a/n;->b()Lb/a/bw;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bw;)V

    .line 313
    iget-object v0, p2, Lb/a/n;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 314
    invoke-static {}, Lb/a/n;->c()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 315
    iget-object v0, p2, Lb/a/n;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/br;->a(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 318
    :cond_0
    iget-object v0, p2, Lb/a/n;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 319
    invoke-static {}, Lb/a/n;->d()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 320
    iget-object v0, p2, Lb/a/n;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/br;->a(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 323
    :cond_1
    invoke-virtual {p1}, Lb/a/br;->c()V

    .line 324
    invoke-virtual {p1}, Lb/a/br;->a()V

    .line 325
    return-void
.end method
