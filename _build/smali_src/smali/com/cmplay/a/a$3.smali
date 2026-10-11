.class Lcom/cmplay/a/a$3;
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
    .line 284
    iput-object p1, p0, Lcom/cmplay/a/a$3;->a:Lcom/cmplay/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/q;)V
    .locals 4

    .prologue
    .line 291
    .line 293
    :try_start_0
    sget-object v0, Lcom/facebook/q$a;->a:Lcom/facebook/q$a;

    invoke-virtual {p1, v0}, Lcom/facebook/q;->a(Lcom/facebook/q$a;)Lcom/facebook/GraphRequest;

    move-result-object v0

    .line 295
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cmplay/a/a$3;->a:Lcom/cmplay/a/a;

    invoke-static {v1}, Lcom/cmplay/a/a;->b(Lcom/cmplay/a/a;)I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 299
    const/4 v1, 0x0

    .line 301
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 302
    const/16 v3, 0x3e9

    iput v3, v2, Landroid/os/Message;->what:I

    .line 303
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 304
    iput v1, v2, Landroid/os/Message;->arg1:I

    .line 305
    iget-object v1, p0, Lcom/cmplay/a/a$3;->a:Lcom/cmplay/a/a;

    invoke-static {v1}, Lcom/cmplay/a/a;->c(Lcom/cmplay/a/a;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 307
    iget-object v1, p0, Lcom/cmplay/a/a$3;->a:Lcom/cmplay/a/a;

    invoke-static {v1}, Lcom/cmplay/a/a;->d(Lcom/cmplay/a/a;)I

    .line 308
    invoke-virtual {v0, p0}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/GraphRequest$b;)V

    .line 309
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->i()Lcom/facebook/q;

    .line 327
    :goto_0
    return-void

    .line 314
    :cond_0
    const/4 v0, 0x1

    .line 316
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 317
    const/16 v2, 0x3e9

    iput v2, v1, Landroid/os/Message;->what:I

    .line 318
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 319
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 320
    iget-object v0, p0, Lcom/cmplay/a/a$3;->a:Lcom/cmplay/a/a;

    invoke-static {v0}, Lcom/cmplay/a/a;->c(Lcom/cmplay/a/a;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 322
    iget-object v0, p0, Lcom/cmplay/a/a$3;->a:Lcom/cmplay/a/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmplay/a/a;->a(Lcom/cmplay/a/a;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 324
    :catch_0
    move-exception v0

    .line 325
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
