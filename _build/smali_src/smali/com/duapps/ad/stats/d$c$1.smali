.class Lcom/duapps/ad/stats/d$c$1;
.super Ljava/lang/Object;
.source "ToolClickHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duapps/ad/stats/d$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duapps/ad/stats/d$c;


# direct methods
.method constructor <init>(Lcom/duapps/ad/stats/d$c;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/duapps/ad/stats/d$c$1;->a:Lcom/duapps/ad/stats/d$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 216
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const-string v0, "ToolClickHandler"

    const-string v1, "[WebView] timeout TIMEOUT_FINISH."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/stats/d$c$1;->a:Lcom/duapps/ad/stats/d$c;

    invoke-static {v0}, Lcom/duapps/ad/stats/d$c;->a(Lcom/duapps/ad/stats/d$c;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/duapps/ad/stats/d$c$1;->a:Lcom/duapps/ad/stats/d$c;

    invoke-static {v0}, Lcom/duapps/ad/stats/d$c;->b(Lcom/duapps/ad/stats/d$c;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    :cond_1
    :goto_0
    return-void

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/duapps/ad/stats/d$c$1;->a:Lcom/duapps/ad/stats/d$c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/duapps/ad/stats/d$c;->a(Lcom/duapps/ad/stats/d$c;Z)Z

    .line 223
    iget-object v0, p0, Lcom/duapps/ad/stats/d$c$1;->a:Lcom/duapps/ad/stats/d$c;

    invoke-static {v0}, Lcom/duapps/ad/stats/d$c;->c(Lcom/duapps/ad/stats/d$c;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 224
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 225
    const-string v0, "ToolClickHandler"

    const-string v1, "[WebView]FinishRunnable canceled."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_3
    iget-object v0, p0, Lcom/duapps/ad/stats/d$c$1;->a:Lcom/duapps/ad/stats/d$c;

    iget-object v0, v0, Lcom/duapps/ad/stats/d$c;->c:Lcom/duapps/ad/stats/d;

    invoke-static {v0}, Lcom/duapps/ad/stats/d;->a(Lcom/duapps/ad/stats/d;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/stats/d$c$1;->a:Lcom/duapps/ad/stats/d$c;

    iget-object v1, v1, Lcom/duapps/ad/stats/d$c;->a:Lcom/duapps/ad/stats/f;

    invoke-static {v0, v1}, Lcom/duapps/ad/stats/h;->g(Landroid/content/Context;Lcom/duapps/ad/stats/f;)V

    .line 227
    iget-object v0, p0, Lcom/duapps/ad/stats/d$c$1;->a:Lcom/duapps/ad/stats/d$c;

    iget-object v0, v0, Lcom/duapps/ad/stats/d$c;->c:Lcom/duapps/ad/stats/d;

    invoke-virtual {v0}, Lcom/duapps/ad/stats/d;->f()V

    goto :goto_0

    .line 230
    :cond_4
    iget-object v0, p0, Lcom/duapps/ad/stats/d$c$1;->a:Lcom/duapps/ad/stats/d$c;

    iget-object v0, v0, Lcom/duapps/ad/stats/d$c;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_5

    .line 231
    iget-object v0, p0, Lcom/duapps/ad/stats/d$c$1;->a:Lcom/duapps/ad/stats/d$c;

    iget-object v0, v0, Lcom/duapps/ad/stats/d$c;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 233
    :cond_5
    iget-object v0, p0, Lcom/duapps/ad/stats/d$c$1;->a:Lcom/duapps/ad/stats/d$c;

    iget-object v0, v0, Lcom/duapps/ad/stats/d$c;->c:Lcom/duapps/ad/stats/d;

    invoke-virtual {v0}, Lcom/duapps/ad/stats/d;->b()V

    .line 234
    iget-object v0, p0, Lcom/duapps/ad/stats/d$c$1;->a:Lcom/duapps/ad/stats/d$c;

    iget-object v0, v0, Lcom/duapps/ad/stats/d$c;->c:Lcom/duapps/ad/stats/d;

    iget-object v1, p0, Lcom/duapps/ad/stats/d$c$1;->a:Lcom/duapps/ad/stats/d$c;

    iget-object v1, v1, Lcom/duapps/ad/stats/d$c;->a:Lcom/duapps/ad/stats/f;

    iget-object v2, p0, Lcom/duapps/ad/stats/d$c$1;->a:Lcom/duapps/ad/stats/d$c;

    iget-object v2, v2, Lcom/duapps/ad/stats/d$c;->a:Lcom/duapps/ad/stats/f;

    invoke-virtual {v2}, Lcom/duapps/ad/stats/f;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/duapps/ad/stats/d;->a(Lcom/duapps/ad/stats/d;Lcom/duapps/ad/stats/f;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/duapps/ad/stats/d$c$1;->a:Lcom/duapps/ad/stats/d$c;

    iget-object v0, v0, Lcom/duapps/ad/stats/d$c;->c:Lcom/duapps/ad/stats/d;

    invoke-virtual {v0}, Lcom/duapps/ad/stats/d;->f()V

    goto :goto_0
.end method
