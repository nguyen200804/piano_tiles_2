.class Lcom/jirbo/adcolony/t$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 390
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;I)V
    .locals 1

    .prologue
    .line 410
    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {p0, p3, p2}, Lcom/jirbo/adcolony/t$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/t$b;->sendMessage(Landroid/os/Message;)Z

    .line 411
    return-void

    .line 410
    :cond_0
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 394
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 395
    iget v3, p1, Landroid/os/Message;->what:I

    .line 397
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 398
    :goto_0
    if-nez v2, :cond_0

    const-string v0, ""

    .line 400
    :cond_0
    new-instance v4, Lcom/jirbo/adcolony/s;

    invoke-direct {v4, v2, v0, v3}, Lcom/jirbo/adcolony/s;-><init>(ZLjava/lang/String;I)V

    .line 402
    :goto_1
    sget-object v0, Lcom/jirbo/adcolony/t;->ac:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 404
    sget-object v0, Lcom/jirbo/adcolony/t;->ac:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/q;

    invoke-interface {v0, v4}, Lcom/jirbo/adcolony/q;->a(Lcom/jirbo/adcolony/s;)V

    .line 402
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    move v2, v1

    .line 397
    goto :goto_0

    .line 406
    :cond_2
    return-void
.end method
