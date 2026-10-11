.class Lcom/facebook/share/widget/d$a;
.super Lcom/facebook/internal/h$a;
.source "ShareDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
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
    .line 363
    iput-object p1, p0, Lcom/facebook/share/widget/d$a;->b:Lcom/facebook/share/widget/d;

    invoke-direct {p0, p1}, Lcom/facebook/internal/h$a;-><init>(Lcom/facebook/internal/h;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/widget/d;Lcom/facebook/share/widget/d$1;)V
    .locals 0

    .prologue
    .line 363
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/d$a;-><init>(Lcom/facebook/share/widget/d;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 366
    sget-object v0, Lcom/facebook/share/widget/d$b;->d:Lcom/facebook/share/widget/d$b;

    return-object v0
.end method

.method public a(Lcom/facebook/share/model/ShareContent;)Z
    .locals 1

    .prologue
    .line 371
    instance-of v0, p1, Lcom/facebook/share/model/ShareLinkContent;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/facebook/share/internal/ShareFeedContent;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 363
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/d$a;->a(Lcom/facebook/share/model/ShareContent;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/internal/a;
    .locals 3

    .prologue
    .line 377
    iget-object v0, p0, Lcom/facebook/share/widget/d$a;->b:Lcom/facebook/share/widget/d;

    iget-object v1, p0, Lcom/facebook/share/widget/d$a;->b:Lcom/facebook/share/widget/d;

    invoke-static {v1}, Lcom/facebook/share/widget/d;->c(Lcom/facebook/share/widget/d;)Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/facebook/share/widget/d$b;->d:Lcom/facebook/share/widget/d$b;

    invoke-static {v0, v1, p1, v2}, Lcom/facebook/share/widget/d;->a(Lcom/facebook/share/widget/d;Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/d$b;)V

    .line 378
    iget-object v0, p0, Lcom/facebook/share/widget/d$a;->b:Lcom/facebook/share/widget/d;

    invoke-virtual {v0}, Lcom/facebook/share/widget/d;->d()Lcom/facebook/internal/a;

    move-result-object v1

    .line 380
    instance-of v0, p1, Lcom/facebook/share/model/ShareLinkContent;

    if-eqz v0, :cond_0

    .line 381
    check-cast p1, Lcom/facebook/share/model/ShareLinkContent;

    .line 382
    invoke-static {p1}, Lcom/facebook/share/internal/j;->c(Lcom/facebook/share/model/ShareContent;)V

    .line 383
    invoke-static {p1}, Lcom/facebook/share/internal/m;->b(Lcom/facebook/share/model/ShareLinkContent;)Landroid/os/Bundle;

    move-result-object v0

    .line 389
    :goto_0
    const-string v2, "feed"

    invoke-static {v1, v2, v0}, Lcom/facebook/internal/g;->a(Lcom/facebook/internal/a;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 394
    return-object v1

    .line 385
    :cond_0
    check-cast p1, Lcom/facebook/share/internal/ShareFeedContent;

    .line 386
    invoke-static {p1}, Lcom/facebook/share/internal/m;->a(Lcom/facebook/share/internal/ShareFeedContent;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Lcom/facebook/internal/a;
    .locals 1

    .prologue
    .line 363
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/d$a;->b(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/internal/a;

    move-result-object v0

    return-object v0
.end method
