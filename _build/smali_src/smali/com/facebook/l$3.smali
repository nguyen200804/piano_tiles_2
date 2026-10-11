.class final Lcom/facebook/l$3;
.super Ljava/lang/Object;
.source "FacebookSdk.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/l;->a(Landroid/content/Context;Lcom/facebook/l$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/l$a;


# direct methods
.method constructor <init>(Lcom/facebook/l$a;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/facebook/l$3;->a:Lcom/facebook/l$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 229
    invoke-static {}, Lcom/facebook/b;->a()Lcom/facebook/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/b;->c()Z

    .line 230
    invoke-static {}, Lcom/facebook/w;->a()Lcom/facebook/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/w;->c()Z

    .line 231
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/Profile;->a()Lcom/facebook/Profile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 235
    invoke-static {}, Lcom/facebook/Profile;->b()V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/facebook/l$3;->a:Lcom/facebook/l$a;

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/facebook/l$3;->a:Lcom/facebook/l$a;

    invoke-interface {v0}, Lcom/facebook/l$a;->a()V

    .line 241
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/facebook/l$3;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
