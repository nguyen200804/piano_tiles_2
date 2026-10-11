.class Lcom/cmplay/b/b$a;
.super Ljava/lang/Object;
.source "AppCardHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/cmplay/b/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cmplay/b/a;Lcom/cmplay/b/a;)I
    .locals 2

    .prologue
    .line 497
    iget v0, p1, Lcom/cmplay/b/a;->b:I

    iget v1, p2, Lcom/cmplay/b/a;->b:I

    if-ge v0, v1, :cond_0

    .line 498
    const/4 v0, 0x1

    .line 502
    :goto_0
    return v0

    .line 499
    :cond_0
    iget v0, p1, Lcom/cmplay/b/a;->b:I

    iget v1, p2, Lcom/cmplay/b/a;->b:I

    if-ne v0, v1, :cond_1

    .line 500
    const/4 v0, 0x0

    goto :goto_0

    .line 502
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 493
    check-cast p1, Lcom/cmplay/b/a;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/cmplay/b/a;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/cmplay/b/b$a;->a(Lcom/cmplay/b/a;Lcom/cmplay/b/a;)I

    move-result v0

    return v0
.end method
