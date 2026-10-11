.class Lcom/duapps/ad/k$1$3;
.super Ljava/lang/Object;
.source "ADRequestController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duapps/ad/k$1;->a(Lcom/duapps/ad/entity/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duapps/ad/k$1;


# direct methods
.method constructor <init>(Lcom/duapps/ad/k$1;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/duapps/ad/k$1$3;->a:Lcom/duapps/ad/k$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/duapps/ad/k$1$3;->a:Lcom/duapps/ad/k$1;

    iget-object v0, v0, Lcom/duapps/ad/k$1;->a:Lcom/duapps/ad/k;

    invoke-static {v0}, Lcom/duapps/ad/k;->a(Lcom/duapps/ad/k;)Lcom/duapps/ad/b;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_0

    .line 183
    invoke-interface {v0}, Lcom/duapps/ad/b;->a()V

    .line 184
    :cond_0
    return-void
.end method
