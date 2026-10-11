.class Lcom/cmplay/a/a$2;
.super Ljava/lang/Object;
.source "FBLogin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/a/a;->h()V
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
    .line 263
    iput-object p1, p0, Lcom/cmplay/a/a$2;->a:Lcom/cmplay/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 266
    new-instance v0, Lcom/facebook/GraphRequest;

    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v1

    const-string v2, "/me/friends"

    const/4 v3, 0x0

    sget-object v4, Lcom/facebook/s;->a:Lcom/facebook/s;

    iget-object v5, p0, Lcom/cmplay/a/a$2;->a:Lcom/cmplay/a/a;

    invoke-static {v5}, Lcom/cmplay/a/a;->a(Lcom/cmplay/a/a;)Lcom/facebook/GraphRequest$b;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/s;Lcom/facebook/GraphRequest$b;)V

    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->i()Lcom/facebook/q;

    .line 276
    invoke-static {}, Lcom/cmplay/a/c;->a()Lcom/cmplay/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/a/c;->c()Lcom/cmplay/a/e;

    move-result-object v0

    .line 277
    if-eqz v0, :cond_0

    .line 278
    iget-object v1, p0, Lcom/cmplay/a/a$2;->a:Lcom/cmplay/a/a;

    invoke-virtual {v0}, Lcom/cmplay/a/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cmplay/a/a;->c(Ljava/lang/String;)V

    .line 280
    :cond_0
    return-void
.end method
