.class Lcom/duapps/ad/k$1;
.super Ljava/lang/Object;
.source "ADRequestController.java"

# interfaces
.implements Lcom/duapps/ad/entity/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duapps/ad/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duapps/ad/k;


# direct methods
.method constructor <init>(Lcom/duapps/ad/k;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/duapps/ad/k$1;->a:Lcom/duapps/ad/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/duapps/ad/entity/a/a;)V
    .locals 2

    .prologue
    .line 125
    invoke-static {}, Lcom/duapps/ad/c/b/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/duapps/ad/k$1;->a:Lcom/duapps/ad/k;

    invoke-static {v0}, Lcom/duapps/ad/k;->a(Lcom/duapps/ad/k;)Lcom/duapps/ad/b;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_0

    .line 128
    invoke-interface {v0, p1}, Lcom/duapps/ad/b;->a(Lcom/duapps/ad/entity/a/a;)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/k$1;->a:Lcom/duapps/ad/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/duapps/ad/k;->a(Lcom/duapps/ad/k;Z)Z

    .line 143
    :goto_0
    return-void

    .line 132
    :cond_1
    new-instance v0, Lcom/duapps/ad/k$1$1;

    invoke-direct {v0, p0, p1}, Lcom/duapps/ad/k$1$1;-><init>(Lcom/duapps/ad/k$1;Lcom/duapps/ad/entity/a/a;)V

    invoke-static {v0}, Lcom/duapps/ad/c/b/b;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Lcom/duapps/ad/entity/a/b;)V
    .locals 1

    .prologue
    .line 178
    new-instance v0, Lcom/duapps/ad/k$1$3;

    invoke-direct {v0, p0}, Lcom/duapps/ad/k$1$3;-><init>(Lcom/duapps/ad/k$1;)V

    invoke-static {v0}, Lcom/duapps/ad/c/b/b;->a(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method

.method public a(Lcom/duapps/ad/entity/a/b;Lcom/duapps/ad/a;)V
    .locals 4

    .prologue
    .line 147
    sget-object v0, Lcom/duapps/ad/entity/a/c;->a:Lcom/duapps/ad/entity/a/c;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 148
    invoke-static {}, Lcom/duapps/ad/c/b/b;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    iget-object v0, p0, Lcom/duapps/ad/k$1;->a:Lcom/duapps/ad/k;

    invoke-static {v0}, Lcom/duapps/ad/k;->a(Lcom/duapps/ad/k;)Lcom/duapps/ad/b;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_0

    .line 151
    invoke-interface {v0, p2}, Lcom/duapps/ad/b;->a(Lcom/duapps/ad/a;)V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/k$1;->a:Lcom/duapps/ad/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/duapps/ad/k;->a(Lcom/duapps/ad/k;Z)Z

    .line 173
    :cond_1
    :goto_0
    return-void

    .line 155
    :cond_2
    new-instance v0, Lcom/duapps/ad/k$1$2;

    invoke-direct {v0, p0, p2}, Lcom/duapps/ad/k$1$2;-><init>(Lcom/duapps/ad/k$1;Lcom/duapps/ad/a;)V

    invoke-static {v0}, Lcom/duapps/ad/c/b/b;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 167
    :cond_3
    invoke-virtual {p1}, Lcom/duapps/ad/entity/a/b;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/duapps/ad/entity/a/b;->c()I

    move-result v1

    sub-int/2addr v0, v1

    .line 168
    if-lez v0, :cond_1

    .line 169
    invoke-static {}, Lcom/duapps/ad/k;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "channel-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is filled error."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/duapps/ad/k$1;->a:Lcom/duapps/ad/k;

    invoke-static {v1, v0, p1}, Lcom/duapps/ad/k;->a(Lcom/duapps/ad/k;ILcom/duapps/ad/entity/a/b;)V

    goto :goto_0
.end method
