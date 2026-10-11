.class Lcom/facebook/share/widget/b$1;
.super Lcom/facebook/share/internal/i;
.source "GameRequestDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/widget/b;->a(Lcom/facebook/internal/e;Lcom/facebook/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/g;

.field final synthetic b:Lcom/facebook/share/widget/b;


# direct methods
.method constructor <init>(Lcom/facebook/share/widget/b;Lcom/facebook/g;Lcom/facebook/g;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/facebook/share/widget/b$1;->b:Lcom/facebook/share/widget/b;

    iput-object p3, p0, Lcom/facebook/share/widget/b$1;->a:Lcom/facebook/g;

    invoke-direct {p0, p2}, Lcom/facebook/share/internal/i;-><init>(Lcom/facebook/g;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/internal/a;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 181
    if-eqz p2, :cond_0

    .line 182
    iget-object v0, p0, Lcom/facebook/share/widget/b$1;->a:Lcom/facebook/g;

    new-instance v1, Lcom/facebook/share/widget/b$a;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/facebook/share/widget/b$a;-><init>(Landroid/os/Bundle;Lcom/facebook/share/widget/b$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/g;->a(Ljava/lang/Object;)V

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/b$1;->a(Lcom/facebook/internal/a;)V

    goto :goto_0
.end method
