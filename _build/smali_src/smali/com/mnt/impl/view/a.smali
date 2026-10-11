.class public final Lcom/mnt/impl/view/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mnt/a/f;


# instance fields
.field a:Landroid/os/Handler;

.field b:I

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/mnt/impl/e;->jP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mnt/impl/view/a;->c:Z

    .line 41
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public final a(Lcom/mnt/AdError;)V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mnt/impl/view/a;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 57
    const/16 v1, 0x1002

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 58
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 59
    iget-object v1, p0, Lcom/mnt/impl/view/a;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 60
    return-void
.end method

.method public final a(Lcom/mnt/impl/b/b;Lcom/mnt/impl/b;Lcom/mnt/MntBuild;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 44
    .line 1397
    iput-object p0, p2, Lcom/mnt/impl/b;->b:Lcom/mnt/a/f;

    .line 45
    new-instance v0, Lcom/mnt/MntBuild$Builder;

    invoke-virtual {p3}, Lcom/mnt/MntBuild;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p3, Lcom/mnt/MntBuild;->mPlacementId:Ljava/lang/String;

    sget-object v3, Lcom/mnt/MntAdType;->NATIVE:Lcom/mnt/MntAdType;

    invoke-virtual {v3}, Lcom/mnt/MntAdType;->getType()I

    move-result v3

    iget-object v4, p3, Lcom/mnt/MntBuild;->mAdListener:Lcom/mnt/IAdListener;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mnt/MntBuild$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/mnt/IAdListener;)V

    .line 46
    sget-object v1, Lcom/mnt/impl/b/b;->b:Lcom/mnt/impl/b/b;

    if-ne p1, v1, :cond_0

    .line 47
    new-array v1, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/mnt/Ad;->AD_CREATIVE_SIZE_1200x627:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/mnt/MntBuild$Builder;->setCreatives([Ljava/lang/String;)Lcom/mnt/MntBuild$Builder;

    .line 49
    :cond_0
    invoke-virtual {v0, v5}, Lcom/mnt/MntBuild$Builder;->setAdsNum(I)Lcom/mnt/MntBuild$Builder;

    .line 50
    invoke-virtual {v0}, Lcom/mnt/MntBuild$Builder;->build()Lcom/mnt/MntBuild;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mnt/impl/b;->a(Lcom/mnt/MntBuild;)V

    .line 52
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mnt/Ad;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v5, 0x1000

    const/4 v4, 0x1

    .line 66
    if-eqz p1, :cond_2

    .line 67
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 68
    instance-of v1, v0, Lcom/mnt/Ad;

    if-eqz v1, :cond_0

    .line 69
    check-cast v0, Lcom/mnt/Ad;

    .line 70
    iget v1, p0, Lcom/mnt/impl/view/a;->b:I

    if-nez v1, :cond_3

    .line 72
    iget-object v1, p0, Lcom/mnt/impl/view/a;->a:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 73
    iput v5, v1, Landroid/os/Message;->arg1:I

    .line 74
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/mnt/impl/view/a;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 94
    :cond_1
    :goto_0
    iget v0, p0, Lcom/mnt/impl/view/a;->b:I

    if-ne v0, v4, :cond_2

    iget-boolean v0, p0, Lcom/mnt/impl/view/a;->c:Z

    if-nez v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/mnt/impl/view/a;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 96
    const/16 v1, 0x1002

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 97
    sget-object v1, Lcom/mnt/AdError;->NO_MATERIAL:Lcom/mnt/AdError;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 98
    iget-object v1, p0, Lcom/mnt/impl/view/a;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 101
    :cond_2
    return-void

    .line 77
    :cond_3
    iget v1, p0, Lcom/mnt/impl/view/a;->b:I

    if-ne v1, v4, :cond_0

    .line 78
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 79
    check-cast v1, Lcom/mnt/impl/e/c;

    .line 80
    sget-object v3, Lcom/mnt/Ad;->AD_CREATIVE_SIZE_1200x627:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/mnt/impl/e/c;->getCreatives(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 81
    if-eqz v1, :cond_0

    .line 82
    iput-boolean v4, p0, Lcom/mnt/impl/view/a;->c:Z

    .line 83
    iget-object v1, p0, Lcom/mnt/impl/view/a;->a:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 84
    iput v5, v1, Landroid/os/Message;->arg1:I

    .line 85
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/mnt/impl/view/a;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method
