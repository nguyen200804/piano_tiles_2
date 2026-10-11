.class Lb/a/af$c;
.super Lb/a/cb;
.source "Page.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/cb",
        "<",
        "Lb/a/af;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0}, Lb/a/cb;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/af$1;)V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0}, Lb/a/af$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/br;Lb/a/af;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 339
    check-cast p1, Lb/a/bx;

    .line 340
    iget-object v0, p2, Lb/a/af;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/bx;->a(Ljava/lang/String;)V

    .line 341
    iget-wide v0, p2, Lb/a/af;->b:J

    invoke-virtual {p1, v0, v1}, Lb/a/bx;->a(J)V

    .line 342
    return-void
.end method

.method public bridge synthetic a(Lb/a/br;Lb/a/ay;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 335
    check-cast p2, Lb/a/af;

    invoke-virtual {p0, p1, p2}, Lb/a/af$c;->a(Lb/a/br;Lb/a/af;)V

    return-void
.end method

.method public b(Lb/a/br;Lb/a/af;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 346
    check-cast p1, Lb/a/bx;

    .line 347
    invoke-virtual {p1}, Lb/a/bx;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/af;->a:Ljava/lang/String;

    .line 348
    invoke-virtual {p2, v2}, Lb/a/af;->a(Z)V

    .line 349
    invoke-virtual {p1}, Lb/a/bx;->t()J

    move-result-wide v0

    iput-wide v0, p2, Lb/a/af;->b:J

    .line 350
    invoke-virtual {p2, v2}, Lb/a/af;->b(Z)V

    .line 351
    return-void
.end method

.method public bridge synthetic b(Lb/a/br;Lb/a/ay;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 335
    check-cast p2, Lb/a/af;

    invoke-virtual {p0, p1, p2}, Lb/a/af$c;->b(Lb/a/br;Lb/a/af;)V

    return-void
.end method
