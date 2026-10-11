.class Lb/a/q$a;
.super Lb/a/ca;
.source "ControlPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/ca",
        "<",
        "Lb/a/q;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0}, Lb/a/ca;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/q$1;)V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0}, Lb/a/q$a;-><init>()V

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
    .line 218
    check-cast p2, Lb/a/q;

    invoke-virtual {p0, p1, p2}, Lb/a/q$a;->b(Lb/a/br;Lb/a/q;)V

    return-void
.end method

.method public a(Lb/a/br;Lb/a/q;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 222
    invoke-virtual {p1}, Lb/a/br;->f()Lb/a/bw;

    .line 225
    :goto_0
    invoke-virtual {p1}, Lb/a/br;->h()Lb/a/bo;

    move-result-object v0

    .line 226
    iget-byte v1, v0, Lb/a/bo;->b:B

    if-nez v1, :cond_0

    .line 244
    invoke-virtual {p1}, Lb/a/br;->g()V

    .line 247
    invoke-virtual {p2}, Lb/a/q;->b()V

    .line 248
    return-void

    .line 229
    :cond_0
    iget-short v1, v0, Lb/a/bo;->c:S

    packed-switch v1, :pswitch_data_0

    .line 240
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    .line 242
    :goto_1
    invoke-virtual {p1}, Lb/a/br;->i()V

    goto :goto_0

    .line 231
    :pswitch_0
    iget-byte v1, v0, Lb/a/bo;->b:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 232
    new-instance v0, Lb/a/ac;

    invoke-direct {v0}, Lb/a/ac;-><init>()V

    iput-object v0, p2, Lb/a/q;->a:Lb/a/ac;

    .line 233
    iget-object v0, p2, Lb/a/q;->a:Lb/a/ac;

    invoke-virtual {v0, p1}, Lb/a/ac;->a(Lb/a/br;)V

    .line 234
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lb/a/q;->a(Z)V

    goto :goto_1

    .line 236
    :cond_1
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
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
    .line 218
    check-cast p2, Lb/a/q;

    invoke-virtual {p0, p1, p2}, Lb/a/q$a;->a(Lb/a/br;Lb/a/q;)V

    return-void
.end method

.method public b(Lb/a/br;Lb/a/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 251
    invoke-virtual {p2}, Lb/a/q;->b()V

    .line 253
    invoke-static {}, Lb/a/q;->c()Lb/a/bw;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bw;)V

    .line 254
    iget-object v0, p2, Lb/a/q;->a:Lb/a/ac;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p2}, Lb/a/q;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-static {}, Lb/a/q;->d()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 257
    iget-object v0, p2, Lb/a/q;->a:Lb/a/ac;

    invoke-virtual {v0, p1}, Lb/a/ac;->b(Lb/a/br;)V

    .line 258
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 261
    :cond_0
    invoke-virtual {p1}, Lb/a/br;->c()V

    .line 262
    invoke-virtual {p1}, Lb/a/br;->a()V

    .line 263
    return-void
.end method
