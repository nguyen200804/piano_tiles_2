.class Lcom/duapps/ad/base/o$1;
.super Ljava/lang/Object;
.source "ToolboxDLManager.java"

# interfaces
.implements Lcom/duapps/ad/base/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duapps/ad/base/o;
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
.field final synthetic a:Lcom/duapps/ad/base/o;


# direct methods
.method constructor <init>(Lcom/duapps/ad/base/o;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/duapps/ad/base/o$1;->a:Lcom/duapps/ad/base/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 128
    invoke-static {}, Lcom/duapps/ad/base/o;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "start load cache data--"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/duapps/ad/base/o$1;->a:Lcom/duapps/ad/base/o;

    iput-boolean v2, v0, Lcom/duapps/ad/base/o;->d:Z

    .line 130
    iget-object v0, p0, Lcom/duapps/ad/base/o$1;->a:Lcom/duapps/ad/base/o;

    iput-boolean v2, v0, Lcom/duapps/ad/base/o;->e:Z

    .line 131
    return-void
.end method

.method public a(ILcom/duapps/ad/entity/AdModel;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 135
    iget-object v1, p0, Lcom/duapps/ad/base/o$1;->a:Lcom/duapps/ad/base/o;

    iput-boolean v0, v1, Lcom/duapps/ad/base/o;->d:Z

    .line 136
    const/16 v1, 0xc8

    if-ne p1, v1, :cond_0

    if-nez p2, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/duapps/ad/base/o$1;->a:Lcom/duapps/ad/base/o;

    .line 140
    invoke-static {v1}, Lcom/duapps/ad/base/o;->a(Lcom/duapps/ad/base/o;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/duapps/ad/base/o$1;->a:Lcom/duapps/ad/base/o;

    iget-object v3, p2, Lcom/duapps/ad/entity/AdModel;->h:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/duapps/ad/base/o;->a(Lcom/duapps/ad/base/o;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duapps/ad/base/k;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 141
    iget-object v1, p0, Lcom/duapps/ad/base/o$1;->a:Lcom/duapps/ad/base/o;

    invoke-static {v1}, Lcom/duapps/ad/base/o;->b(Lcom/duapps/ad/base/o;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/duapps/ad/base/k;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    .line 142
    const/4 v1, 0x5

    .line 143
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 144
    if-le v1, v2, :cond_2

    move v1, v2

    .line 145
    :cond_2
    if-gtz v2, :cond_3

    .line 146
    iget-object v0, p0, Lcom/duapps/ad/base/o$1;->a:Lcom/duapps/ad/base/o;

    invoke-static {v0}, Lcom/duapps/ad/base/o;->c(Lcom/duapps/ad/base/o;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/base/o$1;->a:Lcom/duapps/ad/base/o;

    invoke-static {v1}, Lcom/duapps/ad/base/o;->d(Lcom/duapps/ad/base/o;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/duapps/ad/stats/c;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 150
    :cond_3
    iget-object v2, p0, Lcom/duapps/ad/base/o$1;->a:Lcom/duapps/ad/base/o;

    invoke-static {v2}, Lcom/duapps/ad/base/o;->e(Lcom/duapps/ad/base/o;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 151
    :try_start_0
    iget-object v4, p0, Lcom/duapps/ad/base/o$1;->a:Lcom/duapps/ad/base/o;

    invoke-static {v4}, Lcom/duapps/ad/base/o;->e(Lcom/duapps/ad/base/o;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 153
    :goto_1
    if-ge v0, v1, :cond_4

    .line 154
    iget-object v4, p0, Lcom/duapps/ad/base/o$1;->a:Lcom/duapps/ad/base/o;

    invoke-static {v4}, Lcom/duapps/ad/base/o;->e(Lcom/duapps/ad/base/o;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 156
    :cond_4
    invoke-static {}, Lcom/duapps/ad/base/o;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "store data into cache list -- list.size = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/duapps/ad/base/o$1;->a:Lcom/duapps/ad/base/o;

    invoke-static {v3}, Lcom/duapps/ad/base/o;->e(Lcom/duapps/ad/base/o;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
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
    .line 124
    check-cast p2, Lcom/duapps/ad/entity/AdModel;

    invoke-virtual {p0, p1, p2}, Lcom/duapps/ad/base/o$1;->a(ILcom/duapps/ad/entity/AdModel;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 162
    invoke-static {}, Lcom/duapps/ad/base/o;->e()Ljava/lang/String;

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

    .line 163
    iget-object v0, p0, Lcom/duapps/ad/base/o$1;->a:Lcom/duapps/ad/base/o;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/duapps/ad/base/o;->c:Z

    .line 164
    iget-object v0, p0, Lcom/duapps/ad/base/o$1;->a:Lcom/duapps/ad/base/o;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/duapps/ad/base/o;->d:Z

    .line 166
    iget-object v0, p0, Lcom/duapps/ad/base/o$1;->a:Lcom/duapps/ad/base/o;

    iget v0, v0, Lcom/duapps/ad/base/o;->m:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/base/o$1;->a:Lcom/duapps/ad/base/o;

    iget-boolean v0, v0, Lcom/duapps/ad/base/o;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/base/o$1;->a:Lcom/duapps/ad/base/o;

    invoke-static {v0}, Lcom/duapps/ad/base/o;->f(Lcom/duapps/ad/base/o;)Lcom/duapps/ad/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/duapps/ad/base/o$1;->a:Lcom/duapps/ad/base/o;

    invoke-static {v0}, Lcom/duapps/ad/base/o;->g(Lcom/duapps/ad/base/o;)Lcom/duapps/ad/b;

    move-result-object v0

    new-instance v1, Lcom/duapps/ad/a;

    invoke-direct {v1, p1, p2}, Lcom/duapps/ad/a;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/duapps/ad/b;->a(Lcom/duapps/ad/a;)V

    .line 169
    :cond_0
    return-void
.end method
