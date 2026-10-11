.class Lcom/duapps/ad/stats/d$c;
.super Landroid/webkit/WebViewClient;
.source "ToolClickHandler.java"

# interfaces
.implements Lcom/duapps/ad/stats/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duapps/ad/stats/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Lcom/duapps/ad/stats/f;

.field b:Landroid/webkit/WebView;

.field final synthetic c:Lcom/duapps/ad/stats/d;

.field private d:Ljava/lang/Runnable;

.field private e:Ljava/lang/Runnable;

.field private volatile f:Z

.field private volatile g:Z

.field private volatile h:Z


# direct methods
.method public constructor <init>(Lcom/duapps/ad/stats/d;Lcom/duapps/ad/stats/f;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 286
    iput-object p1, p0, Lcom/duapps/ad/stats/d$c;->c:Lcom/duapps/ad/stats/d;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 213
    new-instance v0, Lcom/duapps/ad/stats/d$c$1;

    invoke-direct {v0, p0}, Lcom/duapps/ad/stats/d$c$1;-><init>(Lcom/duapps/ad/stats/d$c;)V

    iput-object v0, p0, Lcom/duapps/ad/stats/d$c;->d:Ljava/lang/Runnable;

    .line 241
    new-instance v0, Lcom/duapps/ad/stats/d$c$2;

    invoke-direct {v0, p0}, Lcom/duapps/ad/stats/d$c$2;-><init>(Lcom/duapps/ad/stats/d$c;)V

    iput-object v0, p0, Lcom/duapps/ad/stats/d$c;->e:Ljava/lang/Runnable;

    .line 280
    iput-boolean v1, p0, Lcom/duapps/ad/stats/d$c;->f:Z

    .line 281
    iput-boolean v1, p0, Lcom/duapps/ad/stats/d$c;->g:Z

    .line 282
    iput-boolean v1, p0, Lcom/duapps/ad/stats/d$c;->h:Z

    .line 287
    iput-object p2, p0, Lcom/duapps/ad/stats/d$c;->a:Lcom/duapps/ad/stats/f;

    .line 288
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 387
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    const-string v0, "ToolClickHandler"

    const-string v1, "[WebView] handleError"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/stats/d$c;->c:Lcom/duapps/ad/stats/d;

    iget-object v0, v0, Lcom/duapps/ad/stats/d;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/duapps/ad/stats/d$c;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 390
    iget-object v0, p0, Lcom/duapps/ad/stats/d$c;->c:Lcom/duapps/ad/stats/d;

    iget-object v0, v0, Lcom/duapps/ad/stats/d;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/duapps/ad/stats/d$c;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 391
    iget-boolean v0, p0, Lcom/duapps/ad/stats/d$c;->g:Z

    if-eqz v0, :cond_3

    .line 392
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 393
    const-string v0, "ToolClickHandler"

    const-string v1, "[WebView]Action canceled."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/stats/d$c;->c:Lcom/duapps/ad/stats/d;

    invoke-static {v0}, Lcom/duapps/ad/stats/d;->a(Lcom/duapps/ad/stats/d;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/stats/d$c;->a:Lcom/duapps/ad/stats/f;

    invoke-static {v0, v1}, Lcom/duapps/ad/stats/h;->g(Landroid/content/Context;Lcom/duapps/ad/stats/f;)V

    .line 395
    iget-object v0, p0, Lcom/duapps/ad/stats/d$c;->c:Lcom/duapps/ad/stats/d;

    invoke-virtual {v0}, Lcom/duapps/ad/stats/d;->f()V

    .line 414
    :cond_2
    :goto_0
    return-void

    .line 398
    :cond_3
    iget-boolean v0, p0, Lcom/duapps/ad/stats/d$c;->h:Z

    if-eqz v0, :cond_4

    .line 399
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 400
    const-string v0, "ToolClickHandler"

    const-string v1, "[WebView] already consumed"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 403
    :cond_4
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 404
    const-string v0, "ToolClickHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WebView] onReceivedError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :cond_5
    iget-object v0, p0, Lcom/duapps/ad/stats/d$c;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_6

    .line 406
    iget-object v0, p0, Lcom/duapps/ad/stats/d$c;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 408
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duapps/ad/stats/d$c;->h:Z

    .line 409
    iget-object v0, p0, Lcom/duapps/ad/stats/d$c;->c:Lcom/duapps/ad/stats/d;

    invoke-virtual {v0}, Lcom/duapps/ad/stats/d;->b()V

    .line 410
    iget-object v0, p0, Lcom/duapps/ad/stats/d$c;->c:Lcom/duapps/ad/stats/d;

    iget-object v1, p0, Lcom/duapps/ad/stats/d$c;->a:Lcom/duapps/ad/stats/f;

    iget-object v2, p0, Lcom/duapps/ad/stats/d$c;->a:Lcom/duapps/ad/stats/f;

    invoke-virtual {v2}, Lcom/duapps/ad/stats/f;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/duapps/ad/stats/d;->a(Lcom/duapps/ad/stats/d;Lcom/duapps/ad/stats/f;Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/duapps/ad/stats/d$c;->c:Lcom/duapps/ad/stats/d;

    invoke-virtual {v0}, Lcom/duapps/ad/stats/d;->f()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/duapps/ad/stats/d$c;)Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/duapps/ad/stats/d$c;->f:Z

    return v0
.end method

.method static synthetic a(Lcom/duapps/ad/stats/d$c;Z)Z
    .locals 0

    .prologue
    .line 211
    iput-boolean p1, p0, Lcom/duapps/ad/stats/d$c;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/duapps/ad/stats/d$c;)Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/duapps/ad/stats/d$c;->h:Z

    return v0
.end method

.method static synthetic c(Lcom/duapps/ad/stats/d$c;)Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/duapps/ad/stats/d$c;->g:Z

    return v0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 418
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    const-string v0, "ToolClickHandler"

    const-string v1, "[WebView] Page finished"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/stats/d$c;->c:Lcom/duapps/ad/stats/d;

    iget-object v0, v0, Lcom/duapps/ad/stats/d;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/duapps/ad/stats/d$c;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 421
    iget-object v0, p0, Lcom/duapps/ad/stats/d$c;->c:Lcom/duapps/ad/stats/d;

    iget-object v0, v0, Lcom/duapps/ad/stats/d;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/duapps/ad/stats/d$c;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 422
    iget-boolean v0, p0, Lcom/duapps/ad/stats/d$c;->g:Z

    if-eqz v0, :cond_3

    .line 423
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    const-string v0, "ToolClickHandler"

    const-string v1, "[WebView]Action canceled."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/stats/d$c;->c:Lcom/duapps/ad/stats/d;

    invoke-static {v0}, Lcom/duapps/ad/stats/d;->a(Lcom/duapps/ad/stats/d;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/stats/d$c;->a:Lcom/duapps/ad/stats/f;

    invoke-static {v0, v1}, Lcom/duapps/ad/stats/h;->g(Landroid/content/Context;Lcom/duapps/ad/stats/f;)V

    .line 426
    iget-object v0, p0, Lcom/duapps/ad/stats/d$c;->c:Lcom/duapps/ad/stats/d;

    invoke-virtual {v0}, Lcom/duapps/ad/stats/d;->f()V

    .line 439
    :cond_2
    :goto_0
    return-void

    .line 429
    :cond_3
    iget-boolean v0, p0, Lcom/duapps/ad/stats/d$c;->h:Z

    if-eqz v0, :cond_4

    .line 430
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 431
    const-string v0, "ToolClickHandler"

    const-string v1, "[WebView] already consumed"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 434
    :cond_4
    iget-boolean v0, p0, Lcom/duapps/ad/stats/d$c;->f:Z

    if-nez v0, :cond_2

    .line 435
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 436
    const-string v0, "ToolClickHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WebView] start TIMEOUT_FINISH: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :cond_5
    iget-object v0, p0, Lcom/duapps/ad/stats/d$c;->c:Lcom/duapps/ad/stats/d;

    iget-object v0, v0, Lcom/duapps/ad/stats/d;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/duapps/ad/stats/d$c;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 304
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    const-string v0, "ToolClickHandler"

    const-string v1, "[WebView] onPageStarted."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_0
    iput-object p1, p0, Lcom/duapps/ad/stats/d$c;->b:Landroid/webkit/WebView;

    .line 307
    iput-boolean v2, p0, Lcom/duapps/ad/stats/d$c;->f:Z

    .line 308
    iput-boolean v2, p0, Lcom/duapps/ad/stats/d$c;->h:Z

    .line 309
    iget-object v0, p0, Lcom/duapps/ad/stats/d$c;->c:Lcom/duapps/ad/stats/d;

    iget-object v0, v0, Lcom/duapps/ad/stats/d;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/duapps/ad/stats/d$c;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 310
    iget-object v0, p0, Lcom/duapps/ad/stats/d$c;->c:Lcom/duapps/ad/stats/d;

    iget-object v0, v0, Lcom/duapps/ad/stats/d;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/duapps/ad/stats/d$c;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 312
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    const-string v0, "ToolClickHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WebView] start TIMEOUT_START: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/stats/d$c;->c:Lcom/duapps/ad/stats/d;

    iget-object v0, v0, Lcom/duapps/ad/stats/d;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/duapps/ad/stats/d$c;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 315
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/duapps/ad/stats/d$c;->a(Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 319
    const-string v0, "ToolClickHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    const-string v0, "ToolClickHandler"

    const-string v2, "[WebView] shouldOverrideUrlLoading."

    invoke-static {v0, v2}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/stats/d$c;->c:Lcom/duapps/ad/stats/d;

    iget-object v2, p0, Lcom/duapps/ad/stats/d$c;->a:Lcom/duapps/ad/stats/f;

    invoke-static {v0, p2, v2}, Lcom/duapps/ad/stats/d;->a(Lcom/duapps/ad/stats/d;Ljava/lang/String;Lcom/duapps/ad/stats/f;)Ljava/lang/String;

    move-result-object v2

    .line 325
    const-string v0, "ToolClickHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needUrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/duapps/ad/stats/d$c;->c:Lcom/duapps/ad/stats/d;

    iget-object v0, v0, Lcom/duapps/ad/stats/d;->a:Landroid/os/Handler;

    iget-object v3, p0, Lcom/duapps/ad/stats/d$c;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 327
    iget-object v0, p0, Lcom/duapps/ad/stats/d$c;->c:Lcom/duapps/ad/stats/d;

    iget-object v0, v0, Lcom/duapps/ad/stats/d;->a:Landroid/os/Handler;

    iget-object v3, p0, Lcom/duapps/ad/stats/d$c;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 328
    iget-boolean v0, p0, Lcom/duapps/ad/stats/d$c;->g:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/duapps/ad/stats/d$c;->h:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/duapps/ad/stats/d$c;->f:Z

    if-eqz v0, :cond_3

    .line 329
    :cond_1
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 330
    const-string v0, "ToolClickHandler"

    const-string v2, "[WebView]Action canceled."

    invoke-static {v0, v2}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :cond_2
    iput-boolean v1, p0, Lcom/duapps/ad/stats/d$c;->h:Z

    .line 332
    iget-object v0, p0, Lcom/duapps/ad/stats/d$c;->c:Lcom/duapps/ad/stats/d;

    invoke-virtual {v0}, Lcom/duapps/ad/stats/d;->f()V

    move v0, v1

    .line 383
    :goto_0
    return v0

    .line 336
    :cond_3
    if-nez v2, :cond_6

    .line 338
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 339
    const-string v0, "ToolClickHandler"

    const-string v2, "[WebView] null URL."

    invoke-static {v0, v2}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :cond_4
    iget-object v0, p0, Lcom/duapps/ad/stats/d$c;->c:Lcom/duapps/ad/stats/d;

    invoke-virtual {v0}, Lcom/duapps/ad/stats/d;->b()V

    .line 342
    iget-object v0, p0, Lcom/duapps/ad/stats/d$c;->c:Lcom/duapps/ad/stats/d;

    iget-object v2, p0, Lcom/duapps/ad/stats/d$c;->a:Lcom/duapps/ad/stats/f;

    iget-object v3, p0, Lcom/duapps/ad/stats/d$c;->a:Lcom/duapps/ad/stats/f;

    invoke-virtual {v3}, Lcom/duapps/ad/stats/f;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/duapps/ad/stats/d;->a(Lcom/duapps/ad/stats/d;Lcom/duapps/ad/stats/f;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/duapps/ad/stats/d$c;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_5

    .line 344
    iget-object v0, p0, Lcom/duapps/ad/stats/d$c;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 346
    :cond_5
    iget-object v0, p0, Lcom/duapps/ad/stats/d$c;->c:Lcom/duapps/ad/stats/d;

    invoke-virtual {v0}, Lcom/duapps/ad/stats/d;->f()V

    .line 348
    iput-boolean v1, p0, Lcom/duapps/ad/stats/d$c;->h:Z

    move v0, v1

    .line 349
    goto :goto_0

    .line 352
    :cond_6
    invoke-static {v2}, Lcom/duapps/ad/stats/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 353
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 354
    const-string v0, "ToolClickHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[WebView] Market URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :cond_7
    iget-object v0, p0, Lcom/duapps/ad/stats/d$c;->c:Lcom/duapps/ad/stats/d;

    iget-object v3, p0, Lcom/duapps/ad/stats/d$c;->a:Lcom/duapps/ad/stats/f;

    invoke-virtual {v0, v3, v2}, Lcom/duapps/ad/stats/d;->a(Lcom/duapps/ad/stats/f;Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/duapps/ad/stats/d$c;->a:Lcom/duapps/ad/stats/f;

    invoke-virtual {v0, v1}, Lcom/duapps/ad/stats/f;->b(Z)V

    .line 357
    iget-object v0, p0, Lcom/duapps/ad/stats/d$c;->c:Lcom/duapps/ad/stats/d;

    invoke-virtual {v0}, Lcom/duapps/ad/stats/d;->b()V

    .line 359
    const-string v0, "ToolClickHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e0a\u62a5_mExgName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/duapps/ad/stats/d$c;->c:Lcom/duapps/ad/stats/d;

    invoke-static {v4}, Lcom/duapps/ad/stats/d;->b(Lcom/duapps/ad/stats/d;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/duapps/ad/stats/d$c;->c:Lcom/duapps/ad/stats/d;

    invoke-static {v0}, Lcom/duapps/ad/stats/d;->b(Lcom/duapps/ad/stats/d;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 361
    iget-object v0, p0, Lcom/duapps/ad/stats/d$c;->c:Lcom/duapps/ad/stats/d;

    invoke-static {v0}, Lcom/duapps/ad/stats/d;->a(Lcom/duapps/ad/stats/d;)Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/duapps/ad/stats/d$c;->a:Lcom/duapps/ad/stats/f;

    iget-object v4, p0, Lcom/duapps/ad/stats/d$c;->c:Lcom/duapps/ad/stats/d;

    .line 362
    invoke-static {v4}, Lcom/duapps/ad/stats/d;->c(Lcom/duapps/ad/stats/d;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/duapps/ad/stats/d$c;->c:Lcom/duapps/ad/stats/d;

    invoke-static {v5}, Lcom/duapps/ad/stats/d;->b(Lcom/duapps/ad/stats/d;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/duapps/ad/stats/d$c;->c:Lcom/duapps/ad/stats/d;

    invoke-static {v6}, Lcom/duapps/ad/stats/d;->d(Lcom/duapps/ad/stats/d;)Ljava/lang/String;

    move-result-object v6

    .line 361
    invoke-static {v0, v3, v4, v5, v6}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Lcom/duapps/ad/stats/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/duapps/ad/stats/d$c;->c:Lcom/duapps/ad/stats/d;

    invoke-static {v0}, Lcom/duapps/ad/stats/d;->a(Lcom/duapps/ad/stats/d;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/duapps/ad/stats/d$c;->a:Lcom/duapps/ad/stats/f;

    iget-object v0, p0, Lcom/duapps/ad/stats/d$c;->c:Lcom/duapps/ad/stats/d;

    .line 364
    invoke-static {v0}, Lcom/duapps/ad/stats/d;->e(Lcom/duapps/ad/stats/d;)Z

    move-result v0

    if-ne v0, v1, :cond_a

    const-string v0, "1"

    :goto_1
    iget-object v5, p0, Lcom/duapps/ad/stats/d$c;->c:Lcom/duapps/ad/stats/d;

    invoke-static {v5}, Lcom/duapps/ad/stats/d;->b(Lcom/duapps/ad/stats/d;)Ljava/lang/String;

    move-result-object v5

    .line 363
    invoke-static {v3, v4, v0, v5}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Lcom/duapps/ad/stats/f;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :cond_8
    iget-object v0, p0, Lcom/duapps/ad/stats/d$c;->c:Lcom/duapps/ad/stats/d;

    iget-object v3, p0, Lcom/duapps/ad/stats/d$c;->a:Lcom/duapps/ad/stats/f;

    invoke-virtual {v0, v3, v2}, Lcom/duapps/ad/stats/d;->h(Lcom/duapps/ad/stats/f;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/duapps/ad/stats/d$c;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_9

    .line 368
    iget-object v0, p0, Lcom/duapps/ad/stats/d$c;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 370
    :cond_9
    iget-object v0, p0, Lcom/duapps/ad/stats/d$c;->c:Lcom/duapps/ad/stats/d;

    invoke-virtual {v0}, Lcom/duapps/ad/stats/d;->f()V

    .line 372
    iput-boolean v1, p0, Lcom/duapps/ad/stats/d$c;->h:Z

    move v0, v1

    .line 373
    goto/16 :goto_0

    .line 364
    :cond_a
    const-string v0, "0"

    goto :goto_1

    .line 375
    :cond_b
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 376
    const-string v0, "ToolClickHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WebView] Decode URL: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :cond_c
    iget-boolean v0, p0, Lcom/duapps/ad/stats/d$c;->f:Z

    if-nez v0, :cond_e

    .line 379
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 380
    const-string v0, "ToolClickHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WebView] start TIMEOUT_START: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :cond_d
    iget-object v0, p0, Lcom/duapps/ad/stats/d$c;->c:Lcom/duapps/ad/stats/d;

    iget-object v0, v0, Lcom/duapps/ad/stats/d;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/duapps/ad/stats/d$c;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 383
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
