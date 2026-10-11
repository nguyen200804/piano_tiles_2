.class Lcom/facebook/share/widget/b$b;
.super Lcom/facebook/internal/h$a;
.source "GameRequestDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/h",
        "<",
        "Lcom/facebook/share/model/GameRequestContent;",
        "Lcom/facebook/share/widget/b$a;",
        ">.a;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/facebook/share/widget/b;


# direct methods
.method private constructor <init>(Lcom/facebook/share/widget/b;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/facebook/share/widget/b$b;->b:Lcom/facebook/share/widget/b;

    invoke-direct {p0, p1}, Lcom/facebook/internal/h$a;-><init>(Lcom/facebook/internal/h;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/widget/b;Lcom/facebook/share/widget/b$1;)V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/b$b;-><init>(Lcom/facebook/share/widget/b;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/share/model/GameRequestContent;)Z
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 216
    check-cast p1, Lcom/facebook/share/model/GameRequestContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/b$b;->a(Lcom/facebook/share/model/GameRequestContent;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/facebook/share/model/GameRequestContent;)Lcom/facebook/internal/a;
    .locals 3

    .prologue
    .line 224
    invoke-static {p1}, Lcom/facebook/share/internal/b;->a(Lcom/facebook/share/model/GameRequestContent;)V

    .line 225
    iget-object v0, p0, Lcom/facebook/share/widget/b$b;->b:Lcom/facebook/share/widget/b;

    invoke-virtual {v0}, Lcom/facebook/share/widget/b;->d()Lcom/facebook/internal/a;

    move-result-object v0

    .line 226
    const-string v1, "apprequests"

    invoke-static {p1}, Lcom/facebook/share/internal/m;->a(Lcom/facebook/share/model/GameRequestContent;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/g;->a(Lcom/facebook/internal/a;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 231
    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Lcom/facebook/internal/a;
    .locals 1

    .prologue
    .line 216
    check-cast p1, Lcom/facebook/share/model/GameRequestContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/b$b;->b(Lcom/facebook/share/model/GameRequestContent;)Lcom/facebook/internal/a;

    move-result-object v0

    return-object v0
.end method
