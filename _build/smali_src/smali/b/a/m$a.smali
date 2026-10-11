.class Lb/a/m$a;
.super Lb/a/ca;
.source "ActivateMsg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/ca",
        "<",
        "Lb/a/m;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Lb/a/ca;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/m$1;)V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Lb/a/m$a;-><init>()V

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
    .line 221
    check-cast p2, Lb/a/m;

    invoke-virtual {p0, p1, p2}, Lb/a/m$a;->b(Lb/a/br;Lb/a/m;)V

    return-void
.end method

.method public a(Lb/a/br;Lb/a/m;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 225
    invoke-virtual {p1}, Lb/a/br;->f()Lb/a/bw;

    .line 228
    :goto_0
    invoke-virtual {p1}, Lb/a/br;->h()Lb/a/bo;

    move-result-object v0

    .line 229
    iget-byte v1, v0, Lb/a/bo;->b:B

    if-nez v1, :cond_0

    .line 246
    invoke-virtual {p1}, Lb/a/br;->g()V

    .line 249
    invoke-virtual {p2}, Lb/a/m;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 250
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

    .line 232
    :cond_0
    iget-short v1, v0, Lb/a/bo;->c:S

    packed-switch v1, :pswitch_data_0

    .line 242
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    .line 244
    :goto_1
    invoke-virtual {p1}, Lb/a/br;->i()V

    goto :goto_0

    .line 234
    :pswitch_0
    iget-byte v1, v0, Lb/a/bo;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 235
    invoke-virtual {p1}, Lb/a/br;->t()J

    move-result-wide v0

    iput-wide v0, p2, Lb/a/m;->a:J

    .line 236
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lb/a/m;->a(Z)V

    goto :goto_1

    .line 238
    :cond_1
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 252
    :cond_2
    invoke-virtual {p2}, Lb/a/m;->b()V

    .line 253
    return-void

    .line 232
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
    .line 221
    check-cast p2, Lb/a/m;

    invoke-virtual {p0, p1, p2}, Lb/a/m$a;->a(Lb/a/br;Lb/a/m;)V

    return-void
.end method

.method public b(Lb/a/br;Lb/a/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 256
    invoke-virtual {p2}, Lb/a/m;->b()V

    .line 258
    invoke-static {}, Lb/a/m;->c()Lb/a/bw;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bw;)V

    .line 259
    invoke-static {}, Lb/a/m;->d()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 260
    iget-wide v0, p2, Lb/a/m;->a:J

    invoke-virtual {p1, v0, v1}, Lb/a/br;->a(J)V

    .line 261
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 262
    invoke-virtual {p1}, Lb/a/br;->c()V

    .line 263
    invoke-virtual {p1}, Lb/a/br;->a()V

    .line 264
    return-void
.end method
