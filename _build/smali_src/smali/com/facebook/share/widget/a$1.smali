.class Lcom/facebook/share/widget/a$1;
.super Lcom/facebook/share/internal/i;
.source "AppInviteDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/widget/a;->a(Lcom/facebook/internal/e;Lcom/facebook/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/g;

.field final synthetic b:Lcom/facebook/share/widget/a;


# direct methods
.method constructor <init>(Lcom/facebook/share/widget/a;Lcom/facebook/g;Lcom/facebook/g;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/facebook/share/widget/a$1;->b:Lcom/facebook/share/widget/a;

    iput-object p3, p0, Lcom/facebook/share/widget/a$1;->a:Lcom/facebook/g;

    invoke-direct {p0, p2}, Lcom/facebook/share/internal/i;-><init>(Lcom/facebook/g;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/internal/a;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 177
    invoke-static {p2}, Lcom/facebook/share/internal/l;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 178
    const-string v1, "cancel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/facebook/share/widget/a$1;->a:Lcom/facebook/g;

    invoke-interface {v0}, Lcom/facebook/g;->a()V

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/facebook/share/widget/a$1;->a:Lcom/facebook/g;

    new-instance v1, Lcom/facebook/share/widget/a$b;

    invoke-direct {v1, p2}, Lcom/facebook/share/widget/a$b;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Lcom/facebook/g;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
