.class Lcom/cmplay/a/a$4;
.super Ljava/lang/Object;
.source "FBLogin.java"

# interfaces
.implements Lcom/facebook/GraphRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/a/a;


# direct methods
.method constructor <init>(Lcom/cmplay/a/a;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lcom/cmplay/a/a$4;->a:Lcom/cmplay/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/q;)V
    .locals 4

    .prologue
    .line 434
    .line 437
    :try_start_0
    sget-object v0, Lcom/facebook/q$a;->a:Lcom/facebook/q$a;

    invoke-virtual {p1, v0}, Lcom/facebook/q;->a(Lcom/facebook/q$a;)Lcom/facebook/GraphRequest;

    move-result-object v0

    .line 439
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cmplay/a/a$4;->a:Lcom/cmplay/a/a;

    invoke-static {v1}, Lcom/cmplay/a/a;->e(Lcom/cmplay/a/a;)I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 443
    const/4 v1, 0x0

    .line 445
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 446
    const/16 v3, 0x3ea

    iput v3, v2, Landroid/os/Message;->what:I

    .line 447
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 448
    iput v1, v2, Landroid/os/Message;->arg1:I

    .line 449
    iget-object v1, p0, Lcom/cmplay/a/a$4;->a:Lcom/cmplay/a/a;

    invoke-static {v1}, Lcom/cmplay/a/a;->c(Lcom/cmplay/a/a;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 451
    iget-object v1, p0, Lcom/cmplay/a/a$4;->a:Lcom/cmplay/a/a;

    invoke-static {v1}, Lcom/cmplay/a/a;->f(Lcom/cmplay/a/a;)I

    .line 452
    invoke-virtual {v0, p0}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/GraphRequest$b;)V

    .line 453
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->i()Lcom/facebook/q;

    .line 471
    :goto_0
    return-void

    .line 458
    :cond_0
    const/4 v0, 0x1

    .line 460
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 461
    const/16 v2, 0x3ea

    iput v2, v1, Landroid/os/Message;->what:I

    .line 462
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 463
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 464
    iget-object v0, p0, Lcom/cmplay/a/a$4;->a:Lcom/cmplay/a/a;

    invoke-static {v0}, Lcom/cmplay/a/a;->c(Lcom/cmplay/a/a;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 466
    iget-object v0, p0, Lcom/cmplay/a/a$4;->a:Lcom/cmplay/a/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmplay/a/a;->b(Lcom/cmplay/a/a;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 468
    :catch_0
    move-exception v0

    .line 469
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
