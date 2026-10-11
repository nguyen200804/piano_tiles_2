.class Lcom/facebook/share/widget/d$c;
.super Lcom/facebook/internal/h$a;
.source "ShareDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
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
    .line 273
    iput-object p1, p0, Lcom/facebook/share/widget/d$c;->b:Lcom/facebook/share/widget/d;

    invoke-direct {p0, p1}, Lcom/facebook/internal/h$a;-><init>(Lcom/facebook/internal/h;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/widget/d;Lcom/facebook/share/widget/d$1;)V
    .locals 0

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/d$c;-><init>(Lcom/facebook/share/widget/d;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 276
    sget-object v0, Lcom/facebook/share/widget/d$b;->b:Lcom/facebook/share/widget/d$b;

    return-object v0
.end method

.method public a(Lcom/facebook/share/model/ShareContent;)Z
    .locals 1

    .prologue
    .line 281
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/share/widget/d;->b(Ljava/lang/Class;)Z

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
    .line 273
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/d$c;->a(Lcom/facebook/share/model/ShareContent;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/internal/a;
    .locals 3

    .prologue
    .line 286
    iget-object v0, p0, Lcom/facebook/share/widget/d$c;->b:Lcom/facebook/share/widget/d;

    iget-object v1, p0, Lcom/facebook/share/widget/d$c;->b:Lcom/facebook/share/widget/d;

    invoke-static {v1}, Lcom/facebook/share/widget/d;->a(Lcom/facebook/share/widget/d;)Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/facebook/share/widget/d$b;->b:Lcom/facebook/share/widget/d$b;

    invoke-static {v0, v1, p1, v2}, Lcom/facebook/share/widget/d;->a(Lcom/facebook/share/widget/d;Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/d$b;)V

    .line 288
    invoke-static {p1}, Lcom/facebook/share/internal/j;->b(Lcom/facebook/share/model/ShareContent;)V

    .line 290
    iget-object v0, p0, Lcom/facebook/share/widget/d$c;->b:Lcom/facebook/share/widget/d;

    invoke-virtual {v0}, Lcom/facebook/share/widget/d;->d()Lcom/facebook/internal/a;

    move-result-object v0

    .line 291
    iget-object v1, p0, Lcom/facebook/share/widget/d$c;->b:Lcom/facebook/share/widget/d;

    invoke-virtual {v1}, Lcom/facebook/share/widget/d;->e()Z

    move-result v1

    .line 293
    new-instance v2, Lcom/facebook/share/widget/d$c$1;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/facebook/share/widget/d$c$1;-><init>(Lcom/facebook/share/widget/d$c;Lcom/facebook/internal/a;Lcom/facebook/share/model/ShareContent;Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/share/widget/d;->c(Ljava/lang/Class;)Lcom/facebook/internal/f;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/facebook/internal/g;->a(Lcom/facebook/internal/a;Lcom/facebook/internal/g$a;Lcom/facebook/internal/f;)V

    .line 314
    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Lcom/facebook/internal/a;
    .locals 1

    .prologue
    .line 273
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/d$c;->b(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/internal/a;

    move-result-object v0

    return-object v0
.end method
