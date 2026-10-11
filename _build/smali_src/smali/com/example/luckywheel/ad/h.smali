.class public abstract Lcom/example/luckywheel/ad/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/luckywheel/ad/h$a;,
        Lcom/example/luckywheel/ad/h$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/example/luckywheel/ad/h;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected b:I

.field protected c:J

.field protected d:J

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/example/luckywheel/ad/h;)I
    .locals 2

    invoke-virtual {p1}, Lcom/example/luckywheel/ad/h;->b()I

    move-result v0

    invoke-virtual {p0}, Lcom/example/luckywheel/ad/h;->b()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public a(Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lcom/example/luckywheel/b/a;->a()Lcom/example/luckywheel/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/example/luckywheel/b/a;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/example/luckywheel/ad/h;->e:I

    return-void
.end method

.method public abstract a(Lcom/example/luckywheel/ad/h$b;)V
.end method

.method protected abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public a(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/example/luckywheel/ad/h;->a(I)V

    invoke-virtual {p0, p1}, Lcom/example/luckywheel/ad/h;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract a()Z
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/example/luckywheel/ad/h;->b:I

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/example/luckywheel/ad/h;

    invoke-virtual {p0, p1}, Lcom/example/luckywheel/ad/h;->a(Lcom/example/luckywheel/ad/h;)I

    move-result v0

    return v0
.end method
