.class Lcom/duapps/ad/k$1$1;
.super Ljava/lang/Object;
.source "ADRequestController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duapps/ad/k$1;->a(Lcom/duapps/ad/entity/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duapps/ad/entity/a/a;

.field final synthetic b:Lcom/duapps/ad/k$1;


# direct methods
.method constructor <init>(Lcom/duapps/ad/k$1;Lcom/duapps/ad/entity/a/a;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/duapps/ad/k$1$1;->b:Lcom/duapps/ad/k$1;

    iput-object p2, p0, Lcom/duapps/ad/k$1$1;->a:Lcom/duapps/ad/entity/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/duapps/ad/k$1$1;->b:Lcom/duapps/ad/k$1;

    iget-object v0, v0, Lcom/duapps/ad/k$1;->a:Lcom/duapps/ad/k;

    invoke-static {v0}, Lcom/duapps/ad/k;->a(Lcom/duapps/ad/k;)Lcom/duapps/ad/b;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_0

    .line 137
    iget-object v1, p0, Lcom/duapps/ad/k$1$1;->a:Lcom/duapps/ad/entity/a/a;

    invoke-interface {v0, v1}, Lcom/duapps/ad/b;->a(Lcom/duapps/ad/entity/a/a;)V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/k$1$1;->b:Lcom/duapps/ad/k$1;

    iget-object v0, v0, Lcom/duapps/ad/k$1;->a:Lcom/duapps/ad/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/duapps/ad/k;->a(Lcom/duapps/ad/k;Z)Z

    .line 140
    return-void
.end method
