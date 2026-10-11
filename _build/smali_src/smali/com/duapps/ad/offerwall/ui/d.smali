.class public abstract Lcom/duapps/ad/offerwall/ui/d;
.super Landroid/widget/FrameLayout;
.source "IToolView.java"


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/entity/a/a;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Lcom/duapps/ad/stats/d;

.field protected d:Z

.field protected e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/d;->b:Ljava/util/List;

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duapps/ad/offerwall/ui/d;->d:Z

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/duapps/ad/offerwall/ui/d;->e:I

    .line 31
    iput-object p1, p0, Lcom/duapps/ad/offerwall/ui/d;->a:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method public abstract a()Lcom/duapps/ad/offerwall/ui/d;
.end method

.method public abstract a(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/entity/a/a;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/entity/a/a;",
            ">;"
        }
    .end annotation
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lcom/duapps/ad/offerwall/ui/d;->e:I

    .line 27
    return-void
.end method

.method protected a(Lcom/duapps/ad/entity/a/a;)V
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/d;->c:Lcom/duapps/ad/stats/d;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/duapps/ad/stats/d;

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/d;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/duapps/ad/stats/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/d;->c:Lcom/duapps/ad/stats/d;

    .line 64
    :cond_0
    instance-of v0, p1, Lcom/duapps/ad/entity/c;

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/d;->c:Lcom/duapps/ad/stats/d;

    new-instance v1, Lcom/duapps/ad/stats/f;

    check-cast p1, Lcom/duapps/ad/entity/c;

    invoke-virtual {p1}, Lcom/duapps/ad/entity/c;->a()Lcom/duapps/ad/entity/AdData;

    move-result-object v2

    const-string v3, "offerwall"

    invoke-direct {v1, v2, v3}, Lcom/duapps/ad/stats/f;-><init>(Lcom/duapps/ad/entity/AdData;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/duapps/ad/stats/d;->a(Lcom/duapps/ad/stats/f;)V

    .line 67
    :cond_1
    return-void
.end method

.method public abstract b(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/entity/a/a;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/entity/a/a;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b()V
.end method

.method public abstract c()Z
.end method

.method public d()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method
