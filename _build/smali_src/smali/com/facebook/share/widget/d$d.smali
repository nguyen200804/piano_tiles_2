.class Lcom/facebook/share/widget/d$d;
.super Lcom/facebook/internal/h$a;
.source "ShareDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/h",
        "<",
        "Lcom/facebook/share/model/ShareContent;",
        "Lcom/facebook/share/a$a;",
        ">.a;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/facebook/share/widget/d;


# direct methods
.method private constructor <init>(Lcom/facebook/share/widget/d;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/facebook/share/widget/d$d;->b:Lcom/facebook/share/widget/d;

    invoke-direct {p0, p1}, Lcom/facebook/internal/h$a;-><init>(Lcom/facebook/internal/h;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/widget/d;Lcom/facebook/share/widget/d$1;)V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/d$d;-><init>(Lcom/facebook/share/widget/d;)V

    return-void
.end method

.method private c(Lcom/facebook/share/model/ShareContent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    instance-of v0, p1, Lcom/facebook/share/model/ShareLinkContent;

    if-eqz v0, :cond_0

    .line 354
    const-string v0, "share"

    .line 359
    :goto_0
    return-object v0

    .line 355
    :cond_0
    instance-of v0, p1, Lcom/facebook/share/model/ShareOpenGraphContent;

    if-eqz v0, :cond_1

    .line 356
    const-string v0, "share_open_graph"

    goto :goto_0

    .line 359
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 321
    sget-object v0, Lcom/facebook/share/widget/d$b;->c:Lcom/facebook/share/widget/d$b;

    return-object v0
.end method

.method public a(Lcom/facebook/share/model/ShareContent;)Z
    .locals 1

    .prologue
    .line 326
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/share/widget/d;->d(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 318
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/d$d;->a(Lcom/facebook/share/model/ShareContent;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/internal/a;
    .locals 3

    .prologue
    .line 331
    iget-object v0, p0, Lcom/facebook/share/widget/d$d;->b:Lcom/facebook/share/widget/d;

    iget-object v1, p0, Lcom/facebook/share/widget/d$d;->b:Lcom/facebook/share/widget/d;

    invoke-static {v1}, Lcom/facebook/share/widget/d;->b(Lcom/facebook/share/widget/d;)Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/facebook/share/widget/d$b;->c:Lcom/facebook/share/widget/d$b;

    invoke-static {v0, v1, p1, v2}, Lcom/facebook/share/widget/d;->a(Lcom/facebook/share/widget/d;Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/d$b;)V

    .line 333
    iget-object v0, p0, Lcom/facebook/share/widget/d$d;->b:Lcom/facebook/share/widget/d;

    invoke-virtual {v0}, Lcom/facebook/share/widget/d;->d()Lcom/facebook/internal/a;

    move-result-object v1

    .line 335
    invoke-static {p1}, Lcom/facebook/share/internal/j;->c(Lcom/facebook/share/model/ShareContent;)V

    .line 338
    instance-of v0, p1, Lcom/facebook/share/model/ShareLinkContent;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 339
    check-cast v0, Lcom/facebook/share/model/ShareLinkContent;

    invoke-static {v0}, Lcom/facebook/share/internal/m;->a(Lcom/facebook/share/model/ShareLinkContent;)Landroid/os/Bundle;

    move-result-object v0

    .line 344
    :goto_0
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/d$d;->c(Lcom/facebook/share/model/ShareContent;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/facebook/internal/g;->a(Lcom/facebook/internal/a;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 349
    return-object v1

    :cond_0
    move-object v0, p1

    .line 341
    check-cast v0, Lcom/facebook/share/model/ShareOpenGraphContent;

    invoke-static {v0}, Lcom/facebook/share/internal/m;->a(Lcom/facebook/share/model/ShareOpenGraphContent;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Lcom/facebook/internal/a;
    .locals 1

    .prologue
    .line 318
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/d$d;->b(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/internal/a;

    move-result-object v0

    return-object v0
.end method
