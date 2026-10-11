.class final Lcom/cmcm/orion/utils/internal/d$1$1;
.super Ljava/lang/Object;
.source "ParseUrlUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/orion/utils/internal/d$1;->a(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/cmcm/orion/utils/internal/d$1;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/utils/internal/d$1;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/cmcm/orion/utils/internal/d$1$1;->c:Lcom/cmcm/orion/utils/internal/d$1;

    iput p2, p0, Lcom/cmcm/orion/utils/internal/d$1$1;->a:I

    iput-object p3, p0, Lcom/cmcm/orion/utils/internal/d$1$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/d$1$1;->c:Lcom/cmcm/orion/utils/internal/d$1;

    iget-object v0, v0, Lcom/cmcm/orion/utils/internal/d$1;->a:Lcom/cmcm/orion/utils/internal/d;

    invoke-static {v0}, Lcom/cmcm/orion/utils/internal/d;->a(Lcom/cmcm/orion/utils/internal/d;)Lcom/cmcm/orion/utils/d$b;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 57
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/d$1$1;->c:Lcom/cmcm/orion/utils/internal/d$1;

    iget-object v0, v0, Lcom/cmcm/orion/utils/internal/d$1;->a:Lcom/cmcm/orion/utils/internal/d;

    invoke-static {v0}, Lcom/cmcm/orion/utils/internal/d;->a(Lcom/cmcm/orion/utils/internal/d;)Lcom/cmcm/orion/utils/d$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcm/orion/utils/d$b;->c()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0}, Lcom/cmcm/orion/utils/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/cmcm/orion/utils/internal/d$1$1;->c:Lcom/cmcm/orion/utils/internal/d$1;

    iget-object v1, v1, Lcom/cmcm/orion/utils/internal/d$1;->a:Lcom/cmcm/orion/utils/internal/d;

    new-instance v2, Lcom/cmcm/orion/picks/webview/e;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lcom/cmcm/orion/picks/webview/e;-><init>(ILjava/lang/String;)V

    invoke-static {v1, v2}, Lcom/cmcm/orion/utils/internal/d;->a(Lcom/cmcm/orion/utils/internal/d;Lcom/cmcm/orion/picks/webview/e;)V

    .line 89
    :goto_0
    return-void

    .line 62
    :cond_0
    iget v1, p0, Lcom/cmcm/orion/utils/internal/d$1$1;->a:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    .line 63
    iget-object v1, p0, Lcom/cmcm/orion/utils/internal/d$1$1;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cmcm/orion/utils/internal/d$1$1;->b:Ljava/lang/String;

    const-string v2, "<html>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    :try_start_0
    new-instance v1, Lcom/cmcm/orion/picks/webview/c;

    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/cmcm/orion/picks/webview/c;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance v2, Lcom/cmcm/orion/utils/internal/d$1$1$1;

    invoke-direct {v2, p0}, Lcom/cmcm/orion/utils/internal/d$1$1$1;-><init>(Lcom/cmcm/orion/utils/internal/d$1$1;)V

    invoke-virtual {v1, v2}, Lcom/cmcm/orion/picks/webview/c;->a(Lcom/cmcm/orion/picks/impl/a$a;)V

    .line 75
    iget-object v2, p0, Lcom/cmcm/orion/utils/internal/d$1$1;->b:Ljava/lang/String;

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/cmcm/orion/picks/webview/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/cmcm/orion/utils/internal/d$1$1;->c:Lcom/cmcm/orion/utils/internal/d$1;

    iget-object v1, v1, Lcom/cmcm/orion/utils/internal/d$1;->a:Lcom/cmcm/orion/utils/internal/d;

    new-instance v2, Lcom/cmcm/orion/picks/webview/e;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Lcom/cmcm/orion/picks/webview/e;-><init>(ILjava/lang/String;)V

    invoke-static {v1, v2}, Lcom/cmcm/orion/utils/internal/d;->a(Lcom/cmcm/orion/utils/internal/d;Lcom/cmcm/orion/picks/webview/e;)V

    goto :goto_0

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/cmcm/orion/utils/internal/d$1$1;->c:Lcom/cmcm/orion/utils/internal/d$1;

    iget-object v1, v1, Lcom/cmcm/orion/utils/internal/d$1;->a:Lcom/cmcm/orion/utils/internal/d;

    new-instance v2, Lcom/cmcm/orion/picks/webview/e;

    const/4 v3, 0x6

    invoke-direct {v2, v3, v0}, Lcom/cmcm/orion/picks/webview/e;-><init>(ILjava/lang/String;)V

    invoke-static {v1, v2}, Lcom/cmcm/orion/utils/internal/d;->a(Lcom/cmcm/orion/utils/internal/d;Lcom/cmcm/orion/picks/webview/e;)V

    goto :goto_0

    .line 83
    :cond_2
    iget-object v1, p0, Lcom/cmcm/orion/utils/internal/d$1$1;->c:Lcom/cmcm/orion/utils/internal/d$1;

    iget-object v1, v1, Lcom/cmcm/orion/utils/internal/d$1;->a:Lcom/cmcm/orion/utils/internal/d;

    new-instance v2, Lcom/cmcm/orion/picks/webview/e;

    iget v3, p0, Lcom/cmcm/orion/utils/internal/d$1$1;->a:I

    add-int/lit16 v3, v3, 0x2328

    invoke-direct {v2, v3, v0}, Lcom/cmcm/orion/picks/webview/e;-><init>(ILjava/lang/String;)V

    invoke-static {v1, v2}, Lcom/cmcm/orion/utils/internal/d;->a(Lcom/cmcm/orion/utils/internal/d;Lcom/cmcm/orion/picks/webview/e;)V

    goto :goto_0

    .line 87
    :cond_3
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/d$1$1;->c:Lcom/cmcm/orion/utils/internal/d$1;

    iget-object v0, v0, Lcom/cmcm/orion/utils/internal/d$1;->a:Lcom/cmcm/orion/utils/internal/d;

    new-instance v1, Lcom/cmcm/orion/picks/webview/e;

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/cmcm/orion/utils/internal/d$1$1;->c:Lcom/cmcm/orion/utils/internal/d$1;

    iget-object v3, v3, Lcom/cmcm/orion/utils/internal/d$1;->a:Lcom/cmcm/orion/utils/internal/d;

    invoke-static {v3}, Lcom/cmcm/orion/utils/internal/d;->b(Lcom/cmcm/orion/utils/internal/d;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/cmcm/orion/picks/webview/e;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/cmcm/orion/utils/internal/d;->a(Lcom/cmcm/orion/utils/internal/d;Lcom/cmcm/orion/picks/webview/e;)V

    goto :goto_0
.end method
