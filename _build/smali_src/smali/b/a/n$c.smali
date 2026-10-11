.class Lb/a/n$c;
.super Lb/a/cb;
.source "ActiveUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/cb",
        "<",
        "Lb/a/n;",
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

.method synthetic constructor <init>(Lb/a/n$1;)V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0}, Lb/a/n$c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lb/a/br;Lb/a/ay;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 335
    check-cast p2, Lb/a/n;

    invoke-virtual {p0, p1, p2}, Lb/a/n$c;->a(Lb/a/br;Lb/a/n;)V

    return-void
.end method

.method public a(Lb/a/br;Lb/a/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 339
    check-cast p1, Lb/a/bx;

    .line 340
    iget-object v0, p2, Lb/a/n;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/bx;->a(Ljava/lang/String;)V

    .line 341
    iget-object v0, p2, Lb/a/n;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/bx;->a(Ljava/lang/String;)V

    .line 342
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
    check-cast p2, Lb/a/n;

    invoke-virtual {p0, p1, p2}, Lb/a/n$c;->b(Lb/a/br;Lb/a/n;)V

    return-void
.end method

.method public b(Lb/a/br;Lb/a/n;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 346
    check-cast p1, Lb/a/bx;

    .line 347
    invoke-virtual {p1}, Lb/a/bx;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/n;->a:Ljava/lang/String;

    .line 348
    invoke-virtual {p2, v1}, Lb/a/n;->a(Z)V

    .line 349
    invoke-virtual {p1}, Lb/a/bx;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/n;->b:Ljava/lang/String;

    .line 350
    invoke-virtual {p2, v1}, Lb/a/n;->b(Z)V

    .line 351
    return-void
.end method
