.class public final Lcom/mnt/impl/d/b;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 19
    iput-object p1, p0, Lcom/mnt/impl/d/b;->a:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 24
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 26
    iget-object v0, p0, Lcom/mnt/impl/d/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mnt/impl/d/e;->a(Landroid/content/Context;)Lcom/mnt/impl/d/e;

    move-result-object v7

    .line 1074
    iget-boolean v0, v7, Lcom/mnt/impl/d/e;->h:Z

    .line 1077
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 1078
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 1079
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 1080
    iget-object v2, v7, Lcom/mnt/impl/d/e;->d:Ljava/util/List;

    monitor-enter v2

    .line 1081
    :try_start_0
    iget-object v0, v7, Lcom/mnt/impl/d/e;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1082
    monitor-exit v2

    .line 1134
    :cond_0
    :goto_0
    return-void

    .line 1085
    :cond_1
    iget-object v0, v7, Lcom/mnt/impl/d/e;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1086
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1139
    :try_start_1
    iget-object v0, v7, Lcom/mnt/impl/d/e;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mnt/impl/e;->pu:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1140
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-result-object v1

    .line 1098
    if-nez v1, :cond_2

    .line 1133
    invoke-static {v1}, Lcom/mnt/impl/d/e;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 1086
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1102
    :cond_2
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 1103
    const/16 v0, 0x9

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1104
    const/16 v0, 0xf

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1107
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1108
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1109
    sget-object v3, Lcom/mnt/impl/e;->pt:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1111
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1112
    iget-object v4, v7, Lcom/mnt/impl/d/e;->c:Ljava/util/List;

    monitor-enter v4
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1113
    :try_start_4
    iget-object v0, v7, Lcom/mnt/impl/d/e;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1114
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1133
    invoke-static {v1}, Lcom/mnt/impl/d/e;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 1116
    :cond_3
    :try_start_5
    iget-object v0, v7, Lcom/mnt/impl/d/e;->e:Ljava/util/Map;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    iget-object v0, v7, Lcom/mnt/impl/d/e;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1118
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1120
    :try_start_6
    iget-object v4, v7, Lcom/mnt/impl/d/e;->f:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1121
    :try_start_7
    iget-object v0, v7, Lcom/mnt/impl/d/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1123
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1124
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mnt/impl/d/g;

    .line 1125
    invoke-interface {v0, v2, v3}, Lcom/mnt/impl/d/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1127
    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1131
    :catch_0
    move-exception v0

    :goto_2
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1133
    invoke-static {v1}, Lcom/mnt/impl/d/e;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 1118
    :catchall_2
    move-exception v0

    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v0
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1133
    :catchall_3
    move-exception v0

    :goto_3
    invoke-static {v1}, Lcom/mnt/impl/d/e;->a(Ljava/io/Closeable;)V

    throw v0

    .line 1127
    :cond_4
    :try_start_c
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1133
    :cond_5
    invoke-static {v1}, Lcom/mnt/impl/d/e;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    move-object v1, v6

    goto :goto_3

    .line 1131
    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_2
.end method
