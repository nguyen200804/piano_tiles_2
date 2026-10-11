.class Lcom/duapps/ad/entity/a/b$1;
.super Ljava/lang/Object;
.source "BaseChannel.java"

# interfaces
.implements Lcom/duapps/ad/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duapps/ad/entity/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duapps/ad/entity/a/b;


# direct methods
.method constructor <init>(Lcom/duapps/ad/entity/a/b;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/duapps/ad/entity/a/b$1;->a:Lcom/duapps/ad/entity/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/duapps/ad/entity/a/b$1;->a:Lcom/duapps/ad/entity/a/b;

    iget-object v0, v0, Lcom/duapps/ad/entity/a/b;->j:Lcom/duapps/ad/entity/a/d;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/duapps/ad/entity/a/b$1;->a:Lcom/duapps/ad/entity/a/b;

    iget-object v0, v0, Lcom/duapps/ad/entity/a/b;->j:Lcom/duapps/ad/entity/a/d;

    iget-object v1, p0, Lcom/duapps/ad/entity/a/b$1;->a:Lcom/duapps/ad/entity/a/b;

    invoke-interface {v0, v1}, Lcom/duapps/ad/entity/a/d;->a(Lcom/duapps/ad/entity/a/b;)V

    .line 89
    :cond_0
    return-void
.end method

.method public a(Lcom/duapps/ad/a;)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/duapps/ad/entity/a/b$1;->a:Lcom/duapps/ad/entity/a/b;

    iget-object v0, v0, Lcom/duapps/ad/entity/a/b;->j:Lcom/duapps/ad/entity/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/entity/a/b$1;->a:Lcom/duapps/ad/entity/a/b;

    invoke-static {v0}, Lcom/duapps/ad/entity/a/b;->a(Lcom/duapps/ad/entity/a/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/duapps/ad/entity/a/b$1;->a:Lcom/duapps/ad/entity/a/b;

    iget-object v0, v0, Lcom/duapps/ad/entity/a/b;->j:Lcom/duapps/ad/entity/a/d;

    iget-object v1, p0, Lcom/duapps/ad/entity/a/b$1;->a:Lcom/duapps/ad/entity/a/b;

    invoke-interface {v0, v1, p1}, Lcom/duapps/ad/entity/a/d;->a(Lcom/duapps/ad/entity/a/b;Lcom/duapps/ad/a;)V

    .line 82
    :cond_0
    return-void
.end method

.method public a(Lcom/duapps/ad/entity/a/a;)V
    .locals 0

    .prologue
    .line 74
    return-void
.end method
