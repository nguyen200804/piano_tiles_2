.class public Lcom/cmplay/internalpush/data/a;
.super Lcom/cmplay/internalpush/data/o;
.source "ExitGameParseCloudData.java"


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "section_quit_card"

    return-object v0
.end method

.method public c()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/cmplay/internalpush/data/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cmplay/internalpush/data/a;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/data/c;

    .line 49
    iget-object v2, p0, Lcom/cmplay/internalpush/data/a;->j:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->y()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/cmplay/internalpush/a/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cmplay/internalpush/data/c;->l(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-static {}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->getInstance()Lcom/cmplay/internalpush/ipc/IpcSpHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/a;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->sp_getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    .line 52
    invoke-static {}, Lcom/ijinshan/cloudconfig/b/a;->a()Lcom/ijinshan/cloudconfig/b/a;

    move-result-object v1

    const-string v2, "local_version"

    const-string v3, "none"

    invoke-virtual {v1, v2, v3}, Lcom/ijinshan/cloudconfig/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cloudVersion ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 54
    if-eqz v0, :cond_1

    .line 55
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v2, 0x1

    const-string v3, "exit_game"

    const-string v4, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmplay/internalpush/o;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 59
    :goto_1
    invoke-super {p0}, Lcom/cmplay/internalpush/data/o;->c()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    return-object v0

    .line 57
    :cond_1
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v2, 0x2

    const-string v3, "exit_game"

    const-string v4, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmplay/internalpush/o;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public d()V
    .locals 12

    .prologue
    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    .line 64
    .line 65
    invoke-static {}, Lcom/cmplay/internalpush/a/a/b;->a()Lcom/cmplay/internalpush/a/a/b;

    move-result-object v0

    invoke-static {}, Lcom/cmplay/base/util/i;->b()I

    move-result v1

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/internalpush/a/a/b;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6\u7ed3\u679c\u9875\u9b54\u65b9\u6570\u636e--------------------"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, v1}, Lcom/cmplay/internalpush/data/a;->a(Ljava/lang/String;)V

    .line 70
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 71
    iget-object v0, p0, Lcom/cmplay/internalpush/data/a;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v7

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/data/c;

    .line 72
    if-eqz v0, :cond_6

    .line 73
    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->b(Lcom/cmplay/internalpush/data/c;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    :goto_2
    if-eqz v0, :cond_6

    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->a(Lcom/cmplay/internalpush/data/c;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 82
    const/4 v1, 0x1

    move v0, v1

    :goto_3
    move v1, v0

    .line 85
    goto :goto_1

    :cond_0
    move v0, v7

    .line 67
    goto :goto_0

    .line 77
    :cond_1
    const-string v3, "internal_push"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ProID:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "  \u5df2\u7ecf\u8fc7\u671f\uff0c\u4e0d\u4e0b\u8f7d\u8d44\u6e90\u7d20\u6750"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/cmplay/internalpush/data/a;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 89
    if-eqz v1, :cond_4

    const/16 v2, 0x15

    .line 90
    :goto_4
    if-eqz v1, :cond_5

    const-string v6, ""

    .line 91
    :goto_5
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v1, 0x5

    const-string v3, ""

    move v8, v7

    move-wide v9, v4

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    .line 95
    :cond_3
    invoke-static {}, Lcom/cmplay/internalpush/a/a/b;->a()Lcom/cmplay/internalpush/a/a/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/a;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v11, v2}, Lcom/cmplay/internalpush/a/a/b;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/cmplay/internalpush/a/a/b$a;)V

    .line 96
    return-void

    .line 89
    :cond_4
    const/16 v2, 0x16

    goto :goto_4

    .line 90
    :cond_5
    invoke-static {}, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->getInstance()Lcom/cmplay/internalpush/ipc/IpcCloudHelper;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->innpush_getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_6
    move v0, v1

    goto :goto_3
.end method
