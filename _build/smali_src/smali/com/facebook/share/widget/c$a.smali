.class Lcom/facebook/share/widget/c$a;
.super Lcom/facebook/internal/h$a;
.source "MessageDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/c;
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
.field final synthetic b:Lcom/facebook/share/widget/c;


# direct methods
.method private constructor <init>(Lcom/facebook/share/widget/c;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/facebook/share/widget/c$a;->b:Lcom/facebook/share/widget/c;

    invoke-direct {p0, p1}, Lcom/facebook/internal/h$a;-><init>(Lcom/facebook/internal/h;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/widget/c;Lcom/facebook/share/widget/c$1;)V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/c$a;-><init>(Lcom/facebook/share/widget/c;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/share/model/ShareContent;)Z
    .locals 1

    .prologue
    .line 206
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/share/widget/c;->a(Ljava/lang/Class;)Z

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
    .line 203
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/c$a;->a(Lcom/facebook/share/model/ShareContent;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/internal/a;
    .locals 3

    .prologue
    .line 211
    invoke-static {p1}, Lcom/facebook/share/internal/j;->a(Lcom/facebook/share/model/ShareContent;)V

    .line 213
    iget-object v0, p0, Lcom/facebook/share/widget/c$a;->b:Lcom/facebook/share/widget/c;

    invoke-virtual {v0}, Lcom/facebook/share/widget/c;->d()Lcom/facebook/internal/a;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/facebook/share/widget/c$a;->b:Lcom/facebook/share/widget/c;

    invoke-virtual {v1}, Lcom/facebook/share/widget/c;->e()Z

    move-result v1

    .line 215
    iget-object v2, p0, Lcom/facebook/share/widget/c$a;->b:Lcom/facebook/share/widget/c;

    invoke-static {v2}, Lcom/facebook/share/widget/c;->a(Lcom/facebook/share/widget/c;)Landroid/app/Activity;

    .line 217
    new-instance v2, Lcom/facebook/share/widget/c$a$1;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/facebook/share/widget/c$a$1;-><init>(Lcom/facebook/share/widget/c$a;Lcom/facebook/internal/a;Lcom/facebook/share/model/ShareContent;Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/share/widget/c;->b(Ljava/lang/Class;)Lcom/facebook/internal/f;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/facebook/internal/g;->a(Lcom/facebook/internal/a;Lcom/facebook/internal/g$a;Lcom/facebook/internal/f;)V

    .line 238
    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Lcom/facebook/internal/a;
    .locals 1

    .prologue
    .line 203
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/c$a;->b(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/internal/a;

    move-result-object v0

    return-object v0
.end method
