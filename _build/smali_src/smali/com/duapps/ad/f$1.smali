.class Lcom/duapps/ad/f$1;
.super Ljava/lang/Object;
.source "DuNativeAd.java"

# interfaces
.implements Lcom/duapps/ad/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duapps/ad/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duapps/ad/f;


# direct methods
.method constructor <init>(Lcom/duapps/ad/f;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/duapps/ad/f$1;->a:Lcom/duapps/ad/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/duapps/ad/f$1;->a:Lcom/duapps/ad/f;

    invoke-static {v0}, Lcom/duapps/ad/f;->a(Lcom/duapps/ad/f;)Lcom/duapps/ad/c;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_0

    .line 187
    iget-object v1, p0, Lcom/duapps/ad/f$1;->a:Lcom/duapps/ad/f;

    invoke-interface {v0, v1}, Lcom/duapps/ad/c;->b(Lcom/duapps/ad/f;)V

    .line 189
    :cond_0
    return-void
.end method

.method public a(Lcom/duapps/ad/a;)V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/duapps/ad/f$1;->a:Lcom/duapps/ad/f;

    invoke-static {v0}, Lcom/duapps/ad/f;->a(Lcom/duapps/ad/f;)Lcom/duapps/ad/c;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_0

    .line 179
    iget-object v1, p0, Lcom/duapps/ad/f$1;->a:Lcom/duapps/ad/f;

    invoke-interface {v0, v1, p1}, Lcom/duapps/ad/c;->a(Lcom/duapps/ad/f;Lcom/duapps/ad/a;)V

    .line 181
    :cond_0
    return-void
.end method

.method public a(Lcom/duapps/ad/entity/a/a;)V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/duapps/ad/f$1;->a:Lcom/duapps/ad/f;

    invoke-static {v0, p1}, Lcom/duapps/ad/f;->a(Lcom/duapps/ad/f;Lcom/duapps/ad/entity/a/a;)Lcom/duapps/ad/entity/a/a;

    .line 166
    iget-object v0, p0, Lcom/duapps/ad/f$1;->a:Lcom/duapps/ad/f;

    invoke-static {v0}, Lcom/duapps/ad/f;->a(Lcom/duapps/ad/f;)Lcom/duapps/ad/c;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_0

    .line 168
    iget-object v1, p0, Lcom/duapps/ad/f$1;->a:Lcom/duapps/ad/f;

    invoke-interface {v0, v1}, Lcom/duapps/ad/c;->a(Lcom/duapps/ad/f;)V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/f$1;->a:Lcom/duapps/ad/f;

    invoke-static {v0}, Lcom/duapps/ad/f;->b(Lcom/duapps/ad/f;)Lcom/duapps/ad/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/duapps/ad/f$1;->a:Lcom/duapps/ad/f;

    invoke-static {v0}, Lcom/duapps/ad/f;->c(Lcom/duapps/ad/f;)Lcom/duapps/ad/entity/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/f$1;->a:Lcom/duapps/ad/f;

    invoke-static {v1}, Lcom/duapps/ad/f;->b(Lcom/duapps/ad/f;)Lcom/duapps/ad/e;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/duapps/ad/entity/a/a;->a(Lcom/duapps/ad/e;)V

    .line 173
    :cond_1
    return-void
.end method
