.class Lb/a/ah$c;
.super Lb/a/cb;
.source "Resolution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/cb",
        "<",
        "Lb/a/ah;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 330
    invoke-direct {p0}, Lb/a/cb;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/ah$1;)V
    .locals 0

    .prologue
    .line 330
    invoke-direct {p0}, Lb/a/ah$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/br;Lb/a/ah;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 334
    check-cast p1, Lb/a/bx;

    .line 335
    iget v0, p2, Lb/a/ah;->a:I

    invoke-virtual {p1, v0}, Lb/a/bx;->a(I)V

    .line 336
    iget v0, p2, Lb/a/ah;->b:I

    invoke-virtual {p1, v0}, Lb/a/bx;->a(I)V

    .line 337
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
    .line 330
    check-cast p2, Lb/a/ah;

    invoke-virtual {p0, p1, p2}, Lb/a/ah$c;->a(Lb/a/br;Lb/a/ah;)V

    return-void
.end method

.method public b(Lb/a/br;Lb/a/ah;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 341
    check-cast p1, Lb/a/bx;

    .line 342
    invoke-virtual {p1}, Lb/a/bx;->s()I

    move-result v0

    iput v0, p2, Lb/a/ah;->a:I

    .line 343
    invoke-virtual {p2, v1}, Lb/a/ah;->a(Z)V

    .line 344
    invoke-virtual {p1}, Lb/a/bx;->s()I

    move-result v0

    iput v0, p2, Lb/a/ah;->b:I

    .line 345
    invoke-virtual {p2, v1}, Lb/a/ah;->b(Z)V

    .line 346
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
    .line 330
    check-cast p2, Lb/a/ah;

    invoke-virtual {p0, p1, p2}, Lb/a/ah$c;->b(Lb/a/br;Lb/a/ah;)V

    return-void
.end method
