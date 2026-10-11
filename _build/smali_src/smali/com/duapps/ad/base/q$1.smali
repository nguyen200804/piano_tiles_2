.class Lcom/duapps/ad/base/q$1;
.super Ljava/lang/Object;
.source "ToolboxOLManager.java"

# interfaces
.implements Lcom/duapps/ad/base/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duapps/ad/base/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/duapps/ad/base/s",
        "<",
        "Lcom/duapps/ad/entity/AdModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/duapps/ad/base/q;


# direct methods
.method constructor <init>(Lcom/duapps/ad/base/q;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/duapps/ad/base/q$1;->a:Lcom/duapps/ad/base/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 102
    invoke-static {}, Lcom/duapps/ad/base/q;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "start load cache data--"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/duapps/ad/base/q$1;->a:Lcom/duapps/ad/base/q;

    iput-boolean v2, v0, Lcom/duapps/ad/base/q;->d:Z

    .line 104
    iget-object v0, p0, Lcom/duapps/ad/base/q$1;->a:Lcom/duapps/ad/base/q;

    iput-boolean v2, v0, Lcom/duapps/ad/base/q;->e:Z

    .line 105
    return-void
.end method

.method public a(ILcom/duapps/ad/entity/AdModel;)V
    .locals 4

    .prologue
    .line 109
    iget-object v0, p0, Lcom/duapps/ad/base/q$1;->a:Lcom/duapps/ad/base/q;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/duapps/ad/base/q;->d:Z

    .line 110
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/base/q$1;->a:Lcom/duapps/ad/base/q;

    invoke-static {v0}, Lcom/duapps/ad/base/q;->a(Lcom/duapps/ad/base/q;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/base/q$1;->a:Lcom/duapps/ad/base/q;

    iget-object v2, p2, Lcom/duapps/ad/entity/AdModel;->h:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/duapps/ad/base/q;->a(Lcom/duapps/ad/base/q;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/k;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 114
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_2

    .line 115
    iget-object v0, p0, Lcom/duapps/ad/base/q$1;->a:Lcom/duapps/ad/base/q;

    invoke-static {v0}, Lcom/duapps/ad/base/q;->b(Lcom/duapps/ad/base/q;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/base/q$1;->a:Lcom/duapps/ad/base/q;

    invoke-static {v1}, Lcom/duapps/ad/base/q;->c(Lcom/duapps/ad/base/q;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/duapps/ad/stats/c;->c(Landroid/content/Context;I)V

    goto :goto_0

    .line 119
    :cond_2
    iget-object v1, p0, Lcom/duapps/ad/base/q$1;->a:Lcom/duapps/ad/base/q;

    invoke-static {v1}, Lcom/duapps/ad/base/q;->d(Lcom/duapps/ad/base/q;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 120
    :try_start_0
    iget-object v2, p0, Lcom/duapps/ad/base/q$1;->a:Lcom/duapps/ad/base/q;

    invoke-static {v2}, Lcom/duapps/ad/base/q;->d(Lcom/duapps/ad/base/q;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 121
    invoke-static {}, Lcom/duapps/ad/base/q;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "store data into cache list -- list.size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/duapps/ad/base/q$1;->a:Lcom/duapps/ad/base/q;

    invoke-static {v3}, Lcom/duapps/ad/base/q;->d(Lcom/duapps/ad/base/q;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/duapps/ad/base/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 98
    check-cast p2, Lcom/duapps/ad/entity/AdModel;

    invoke-virtual {p0, p1, p2}, Lcom/duapps/ad/base/q$1;->a(ILcom/duapps/ad/entity/AdModel;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 127
    invoke-static {}, Lcom/duapps/ad/base/q;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to get cache -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/duapps/ad/base/q$1;->a:Lcom/duapps/ad/base/q;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/duapps/ad/base/q;->c:Z

    .line 129
    iget-object v0, p0, Lcom/duapps/ad/base/q$1;->a:Lcom/duapps/ad/base/q;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/duapps/ad/base/q;->d:Z

    .line 130
    iget-object v0, p0, Lcom/duapps/ad/base/q$1;->a:Lcom/duapps/ad/base/q;

    iget-boolean v0, v0, Lcom/duapps/ad/base/q;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/base/q$1;->a:Lcom/duapps/ad/base/q;

    invoke-static {v0}, Lcom/duapps/ad/base/q;->e(Lcom/duapps/ad/base/q;)Lcom/duapps/ad/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/duapps/ad/base/q$1;->a:Lcom/duapps/ad/base/q;

    invoke-static {v0}, Lcom/duapps/ad/base/q;->f(Lcom/duapps/ad/base/q;)Lcom/duapps/ad/b;

    move-result-object v0

    new-instance v1, Lcom/duapps/ad/a;

    invoke-direct {v1, p1, p2}, Lcom/duapps/ad/a;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/duapps/ad/b;->a(Lcom/duapps/ad/a;)V

    .line 133
    :cond_0
    return-void
.end method
