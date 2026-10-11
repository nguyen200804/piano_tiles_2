.class final Lcom/mnt/impl/d/e$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mnt/impl/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/Object;

.field private synthetic b:Lcom/mnt/impl/d/e;


# direct methods
.method constructor <init>(Lcom/mnt/impl/d/e;)V
    .locals 1

    .prologue
    .line 165
    iput-object p1, p0, Lcom/mnt/impl/d/e$a;->b:Lcom/mnt/impl/d/e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 166
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mnt/impl/d/e$a;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 170
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x111

    if-ne v0, v1, :cond_1

    .line 171
    iget-object v3, p0, Lcom/mnt/impl/d/e$a;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/mnt/impl/d/e$a;->b:Lcom/mnt/impl/d/e;

    invoke-static {v0}, Lcom/mnt/impl/d/e;->a(Lcom/mnt/impl/d/e;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mnt/impl/d/e$a;->b:Lcom/mnt/impl/d/e;

    .line 173
    invoke-static {v0}, Lcom/mnt/impl/d/e;->a(Lcom/mnt/impl/d/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/mnt/impl/d/e$a;->b:Lcom/mnt/impl/d/e;

    invoke-static {v0}, Lcom/mnt/impl/d/e;->a(Lcom/mnt/impl/d/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 175
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 177
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mnt/impl/d/g;

    .line 179
    iget-object v2, p0, Lcom/mnt/impl/d/e$a;->b:Lcom/mnt/impl/d/e;

    invoke-static {v2}, Lcom/mnt/impl/d/e;->b(Lcom/mnt/impl/d/e;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/mnt/impl/d/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/mnt/impl/d/e$a;->b:Lcom/mnt/impl/d/e;

    invoke-static {v1}, Lcom/mnt/impl/d/e;->b(Lcom/mnt/impl/d/e;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v1, p0, Lcom/mnt/impl/d/e$a;->b:Lcom/mnt/impl/d/e;

    invoke-static {v1}, Lcom/mnt/impl/d/e;->c(Lcom/mnt/impl/d/e;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 182
    iget-object v1, p0, Lcom/mnt/impl/d/e$a;->b:Lcom/mnt/impl/d/e;

    invoke-static {v1}, Lcom/mnt/impl/d/e;->d(Lcom/mnt/impl/d/e;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    :cond_1
    return-void
.end method
