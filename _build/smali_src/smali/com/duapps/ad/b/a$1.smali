.class Lcom/duapps/ad/b/a$1;
.super Ljava/lang/Object;
.source "DLHighCacheManager.java"

# interfaces
.implements Lcom/duapps/ad/base/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duapps/ad/b/a;
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
.field final synthetic a:Lcom/duapps/ad/b/a;


# direct methods
.method constructor <init>(Lcom/duapps/ad/b/a;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/duapps/ad/b/a$1;->a:Lcom/duapps/ad/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 118
    invoke-static {}, Lcom/duapps/ad/b/a;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "start load cache data--"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/duapps/ad/b/a$1;->a:Lcom/duapps/ad/b/a;

    iput-boolean v2, v0, Lcom/duapps/ad/b/a;->d:Z

    .line 120
    iget-object v0, p0, Lcom/duapps/ad/b/a$1;->a:Lcom/duapps/ad/b/a;

    iput-boolean v2, v0, Lcom/duapps/ad/b/a;->e:Z

    .line 121
    return-void
.end method

.method public a(ILcom/duapps/ad/entity/AdModel;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 125
    const/16 v1, 0xc8

    if-ne p1, v1, :cond_0

    if-nez p2, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/duapps/ad/b/a$1;->a:Lcom/duapps/ad/b/a;

    iput-boolean v0, v1, Lcom/duapps/ad/b/a;->d:Z

    .line 129
    iget-object v1, p0, Lcom/duapps/ad/b/a$1;->a:Lcom/duapps/ad/b/a;

    invoke-static {v1}, Lcom/duapps/ad/b/a;->a(Lcom/duapps/ad/b/a;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/duapps/ad/b/a$1;->a:Lcom/duapps/ad/b/a;

    iget-object v3, p2, Lcom/duapps/ad/entity/AdModel;->h:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/duapps/ad/b/a;->a(Lcom/duapps/ad/b/a;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duapps/ad/base/k;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 130
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 131
    iget-object v0, p0, Lcom/duapps/ad/b/a$1;->a:Lcom/duapps/ad/b/a;

    invoke-static {v0}, Lcom/duapps/ad/b/a;->b(Lcom/duapps/ad/b/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/b/a$1;->a:Lcom/duapps/ad/b/a;

    invoke-static {v1}, Lcom/duapps/ad/b/a;->c(Lcom/duapps/ad/b/a;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/duapps/ad/stats/c;->d(Landroid/content/Context;I)V

    goto :goto_0

    .line 135
    :cond_2
    iget-object v2, p0, Lcom/duapps/ad/b/a$1;->a:Lcom/duapps/ad/b/a;

    invoke-static {v2}, Lcom/duapps/ad/b/a;->d(Lcom/duapps/ad/b/a;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 136
    :try_start_0
    iget-object v3, p0, Lcom/duapps/ad/b/a$1;->a:Lcom/duapps/ad/b/a;

    invoke-static {v3}, Lcom/duapps/ad/b/a;->d(Lcom/duapps/ad/b/a;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 137
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    const/4 v3, 0x5

    if-ge v0, v3, :cond_3

    .line 138
    iget-object v3, p0, Lcom/duapps/ad/b/a$1;->a:Lcom/duapps/ad/b/a;

    invoke-static {v3}, Lcom/duapps/ad/b/a;->d(Lcom/duapps/ad/b/a;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 140
    :cond_3
    invoke-static {}, Lcom/duapps/ad/b/a;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "store data into cache list -- list.size = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/duapps/ad/b/a$1;->a:Lcom/duapps/ad/b/a;

    invoke-static {v3}, Lcom/duapps/ad/b/a;->d(Lcom/duapps/ad/b/a;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 114
    check-cast p2, Lcom/duapps/ad/entity/AdModel;

    invoke-virtual {p0, p1, p2}, Lcom/duapps/ad/b/a$1;->a(ILcom/duapps/ad/entity/AdModel;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 146
    invoke-static {}, Lcom/duapps/ad/b/a;->e()Ljava/lang/String;

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

    .line 147
    iget-object v0, p0, Lcom/duapps/ad/b/a$1;->a:Lcom/duapps/ad/b/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/duapps/ad/b/a;->c:Z

    .line 148
    iget-object v0, p0, Lcom/duapps/ad/b/a$1;->a:Lcom/duapps/ad/b/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/duapps/ad/b/a;->d:Z

    .line 149
    iget-object v0, p0, Lcom/duapps/ad/b/a$1;->a:Lcom/duapps/ad/b/a;

    iget-boolean v0, v0, Lcom/duapps/ad/b/a;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/b/a$1;->a:Lcom/duapps/ad/b/a;

    invoke-static {v0}, Lcom/duapps/ad/b/a;->e(Lcom/duapps/ad/b/a;)Lcom/duapps/ad/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/duapps/ad/b/a$1;->a:Lcom/duapps/ad/b/a;

    invoke-static {v0}, Lcom/duapps/ad/b/a;->f(Lcom/duapps/ad/b/a;)Lcom/duapps/ad/b;

    move-result-object v0

    new-instance v1, Lcom/duapps/ad/a;

    invoke-direct {v1, p1, p2}, Lcom/duapps/ad/a;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/duapps/ad/b;->a(Lcom/duapps/ad/a;)V

    .line 152
    :cond_0
    return-void
.end method
